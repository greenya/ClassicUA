import sys, os, re
import sqlite3
import utils

def resolve_npc_name_pair(npc_exp: str, npc_id: int, db_npcs_rows: list) -> tuple:
    for exp, id, name_en, name_uk in db_npcs_rows:
        if exp in utils.known_expansions_inclusion[npc_exp] and id == npc_id:
            return name_en, name_uk

    return None, None

def collect_chats():
    database_path = 'database/classicua.db'
    print(f'Using {database_path} to resolve npc names')

    conn = sqlite3.connect(database_path)
    db_npcs_rows = [
        r for r in conn.execute('SELECT expansion, id, name, name_ua FROM npcs ORDER BY id, expansion')
    ]

    chats = { e: {} for e in utils.known_expansions }
    issues = []

    filename_pattern = re.compile(r'^([^_]+)_(\d+)\.xml$')

    for expansion in chats:
        chats_folder_name = f'chats_{expansion}' if expansion != 'classic' else 'chats'
        chats_path_en = f'translation_from_crowdin/en/{chats_folder_name}/'
        chats_path_uk = f'translation_from_crowdin/uk/{chats_folder_name}/'

        print(f'Processing {chats_path_uk}')

        for dirpath, _, filenames in os.walk(chats_path_uk):
            for filename in filenames:
                if not filename.lower().endswith('.xml'):
                    continue

                print(f'- {filename}')

                npc_name_en, npc_name_uk = None, None

                if filename == 'common.xml':
                    npc_name_en = '!common'
                elif filename == 'player.xml':
                    npc_name_en = '!player'
                else:
                    re_search_result = re.search(filename_pattern, filename)
                    if not re_search_result:
                        issues.append(f'[!] Bad filename format for [{expansion}] "{filename}". File skipped.')
                        continue

                    npc_name_from_filename, npc_id = re_search_result.groups()
                    npc_id = int(npc_id)
                    npc_name_en, npc_name_uk = resolve_npc_name_pair(expansion, npc_id, db_npcs_rows)

                    if not npc_name_en:
                        npc_name_en = npc_name_from_filename

                if npc_name_en in chats[expansion]:
                    issues.append(f'[!] Duplicated npc name \"{npc_name_en}\" via {filename}. File skipped.')
                    continue

                uk_strings_map, uk_strings_issues = utils.get_strings_map_from_xml_file(os.path.join(dirpath, filename))
                if not uk_strings_map: continue
                issues.extend(uk_strings_issues)

                filename_sub_path = f'{dirpath}/{filename}'.replace(chats_path_uk, '').replace(filename, '')
                filename_sub_path = '' if filename_sub_path == '/' else filename_sub_path
                en_strings_map, en_strings_issues = utils.get_strings_map_from_xml_file(os.path.join(chats_path_en, filename_sub_path, filename))
                if not en_strings_map: continue
                issues.extend(en_strings_issues)

                npc_chats, npc_chats_issues = utils.build_strings_list(
                    en_strings_map  = en_strings_map,
                    uk_strings_map  = uk_strings_map,
                    hash_func       = utils.get_text_hash,
                    code_func       = utils.get_text_code,
                )
                issues.extend(npc_chats_issues)

                if not npc_chats:
                    continue

                if not npc_name_uk and npc_name_en not in [ '!common', '!player' ]:
                    issues.append(f'[?] Missing translation for [{expansion}] {npc_name_en}')

                # remove en_code if translation doesn't have dynamic codes,
                # e.g. this removes fuzzy key for "Bank", "Auction House", "I want to browse your goods." etc.
                for string in npc_chats:
                    if '<' not in string['en'] and '>' not in string['en']:
                        string['en_code'] = None

                chats[expansion][npc_name_en] = {
                    'uk'        : npc_name_uk,
                    'strings'   : sorted(npc_chats, key=lambda s: s['en']),
                }

        chats[expansion] = dict(sorted(chats[expansion].items()))

    return chats, issues

def print_report(chats, issues):
    print('-' * 80)

    total_texts = 0
    for expansion in chats:
        for npc_name in chats[expansion]:
            npc_strings = chats[expansion][npc_name]['strings']
            print(f'npc [{expansion}] \"{npc_name}\": {len(npc_strings)}')
            total_texts += len(npc_strings)

    print('-' * 80)
    print('Total npcs:', ', '.join([f'[{e}] {len(chats[e])}' for e in chats]))
    print(f'Total chats texts: {total_texts}')

    if issues:
        print('-' * 80)
        print('ISSUES FOUND:')
        for text in issues:
            print(text)

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    chats, issues = collect_chats()

    for expansion in chats:
        utils.write_lua_chat_file(f'../entries/{expansion}', 'chat', chats[expansion])

    print_report(chats, issues)

main()
