import sys, os, re
import utils

# TODO: add expansion support when we actually have gossip_[expansion] folders

def collect_gossip():
    source_path         = 'translation_from_crowdin/en/gossip/'
    translation_path    = 'translation_from_crowdin/uk/gossip/'
    filename_pattern    = re.compile(r'^([^_]+)_(\d+)\.xml$')

    print(f'Processing {translation_path}')
    print(f'Using source from {source_path}')

    result = {}
    issues = []

    for dirpath, _, filenames in os.walk(translation_path):
        for filename in filenames:
            if not filename.lower().endswith('.xml'):
                continue

            npc_name, npc_id = re.search(filename_pattern, filename).groups()

            if npc_id in result:
                issues.append(f'[!] Duplicated npc #{npc_id} via {filename}. File skipped.')
                continue

            strings_uk = utils.get_all_strings_from_xml_file(os.path.join(dirpath, filename))
            if not strings_uk:
                continue

            filename_sub_path = f'{dirpath}/{filename}'.replace(translation_path, '').replace(filename, '')
            strings_en = utils.get_all_strings_from_xml_file(os.path.join(source_path, filename_sub_path, filename))

            if len(strings_uk) != len(strings_en):
                issues.append(f'[!] Different number of en->uk strings for {filename}. File skipped.')
                continue

            npc_gossip, npc_gossip_issues = utils.build_text_codes_map(strings_en, strings_uk)
            issues.extend(npc_gossip_issues)

            if not npc_gossip:
                continue

            result[npc_id] = {
                'name'      : npc_name,
                'strings'   : dict(sorted(npc_gossip.items()))
            }

    result = dict(sorted(result.items()))

    return result, issues

def print_report(gossip, issues):
    print('-' * 80)

    total_gossip_texts = 0
    for npc_id in gossip:
        npc_name = gossip[npc_id]['name']
        npc_strings = gossip[npc_id]['strings']
        print(f'npc #{npc_id} {npc_name}: {", ".join(npc_strings.keys())}')
        total_gossip_texts += len(npc_strings)

    print('-' * 80)
    print(f'Total npcs with gossip: {len(gossip)}')
    print(f'Total gossip texts: {total_gossip_texts}')

    if issues:
        print('-' * 80)
        print('ISSUES FOUND:')
        for text in issues:
            print(text)

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    gossip, issues = collect_gossip()
    utils.write_lua_gossip_file('translation_from_crowdin/entries/classic', 'gossip', gossip)

    print_report(gossip, issues)

main()
