import sys, os, re
import utils

def collect_gossip():
    gossip = { e: {} for e in utils.known_expansions }
    issues = []

    filename_pattern = re.compile(r'^([^_]+)_(\d+)\.xml$')

    for expansion in gossip:
        gossip_folder_name = f'gossip_{expansion}' if expansion != 'classic' else 'gossip'
        gossip_path_en = f'translation_from_crowdin/en/{gossip_folder_name}/'
        gossip_path_uk = f'translation_from_crowdin/uk/{gossip_folder_name}/'

        print(f'Processing {gossip_path_uk}')

        for dirpath, _, filenames in os.walk(gossip_path_uk):
            for filename in filenames:
                if not filename.lower().endswith('.xml'):
                    continue

                print(f'- {filename}')

                npc_name, npc_id = None, None

                if filename == 'common.xml':
                    npc_id = '!common'
                else:
                    re_search_result = re.search(filename_pattern, filename)
                    if not re_search_result:
                        issues.append(f'[!] Bad filename format for [{expansion}] "{filename}". File skipped.')
                        continue

                    npc_name, npc_id = re_search_result.groups()

                    if npc_id in gossip[expansion]:
                        issues.append(f'[!] Duplicated npc #{npc_id} via {filename}. File skipped.')
                        continue

                strings_uk = utils.get_all_strings_from_xml_file(os.path.join(dirpath, filename))
                if not strings_uk:
                    continue

                filename_sub_path = f'{dirpath}/{filename}'.replace(gossip_path_uk, '').replace(filename, '')
                filename_sub_path = '' if filename_sub_path == '/' else filename_sub_path
                strings_en = utils.get_all_strings_from_xml_file(os.path.join(gossip_path_en, filename_sub_path, filename))

                if len(strings_uk) != len(strings_en):
                    issues.append(f'[!] Different number of en->uk strings for {filename}. File skipped.')
                    continue

                npc_gossip_strings, npc_gossip_issues = utils.build_strings_list(strings_en, strings_uk, hash_func=utils.get_text_hash, code_func=utils.get_text_code)
                issues.extend(npc_gossip_issues)

                if not npc_gossip_strings:
                    continue

                # remove en_code if translation doesn't have dynamic codes,
                # e.g. this removes fuzzy key for "Bank", "Auction House", "I want to browse your goods." etc.
                for string in npc_gossip_strings:
                    if '<' not in string['en'] and '>' not in string['en']:
                        string['en_code'] = None

                gossip[expansion][npc_id] = {
                    'name'      : npc_name,
                    'strings'   : sorted(npc_gossip_strings, key=lambda s: s['en']),
                }

        gossip[expansion] = dict(sorted(gossip[expansion].items()))

    return gossip, issues

def print_report(gossip, issues):
    print('-' * 80)

    total_texts = 0
    for expansion in gossip:
        for npc_id in gossip[expansion]:
            npc_name = gossip[expansion][npc_id]['name']
            npc_strings = gossip[expansion][npc_id]['strings']
            print(f'npc [{expansion}] #{npc_id} {npc_name}: {len(npc_strings)}')
            total_texts += len(npc_strings)

    print('-' * 80)
    print('Total npcs:', ', '.join([f'[{e}] {len(gossip[e])}' for e in gossip]))
    print('Total gossip texts:', total_texts)

    if issues:
        print('-' * 80)
        print('ISSUES FOUND:')
        for text in issues:
            print(text)

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    gossip, issues = collect_gossip()

    for expansion in gossip:
        utils.write_lua_gossip_file(f'../entries/{expansion}', 'gossip', gossip[expansion])

    print_report(gossip, issues)

main()
