import sys, os
from xml.etree import ElementTree
import utils

# TODO: add expansion support when we actually have gossip_[expansion] folders

def collect_gossip():
    gossip_path = 'translation_from_crowdin/uk/gossip/'
    print(f'Processing {gossip_path}')

    result = {}
    issues = []

    for dirpath, _, filenames in os.walk(gossip_path):
        for filename in filenames:
            if not filename.lower().endswith('.xml'):
                continue

            tree = ElementTree.parse(os.path.join(dirpath, filename))
            root = tree.getroot()

            for s in root.findall('./string'):
                if s.text:
                    s_name = s.attrib['name']
                    npc_id, text_code = utils.unpack_gossip_string_name(s_name)
                    text_ua = utils.get_clean_text(s.text)

                    if not npc_id in result:
                        result[npc_id] = {}

                    if text_code in result[npc_id]:
                        issues.append(f'[!] Replacing text #{text_code} for npc #{npc_id}\n\tOld text: {result[npc_id][text_code]}\n\tNew text: {text_ua}')

                    result[npc_id][text_code] = text_ua

    for npc_id in result:
        result[npc_id] = dict(sorted(result[npc_id].items()))

    result = dict(sorted(result.items()))

    return result, issues

def print_report(gossip, issues):
    print('-' * 80)

    total_gossip_texts = 0
    for npc_id in gossip:
        print(f'npc #{npc_id}: {", ".join(gossip[npc_id].keys())}')
        total_gossip_texts += len(gossip[npc_id])

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
