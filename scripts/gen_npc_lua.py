import sys
import utils
from terms import Terms

def collect_npcs():
    tbx_file = 'translation_from_crowdin/ClassicUA.tbx'
    print(f'Processing {tbx_file}')

    npcs = { e: {} for e in utils.known_expansions }
    issues = []
    terms = Terms.from_tbx(tbx_file)

    for term in terms.npcs():
        for npc in term.npc_id_tags(terms):
            if npc.id in npcs[npc.exp]:
                issues.append(f'[!] NPC #{npc.id} duplication! Probably terms has one of these NPCs with wrong ID.\n\t- old NPC: {npcs[npc.exp][npc.id]}\n\t- new NPC: {npc}')

            if utils.is_str_and_has_only_ascii_chars(npc.name) or (npc.desc and utils.is_str_and_has_only_ascii_chars(npc.desc)):
                issues.append(f'[?] NPC #{npc.id} has name/desc with only ASCII chars: {npc}')

            npc_name_has_issue_char = '<' in npc.name or '>' in npc.name
            npc_desc_has_issue_char = '<' in npc.desc or '>' in npc.desc
            if npc_name_has_issue_char or npc_desc_has_issue_char:
                issues.append(f'[?] NPC #{npc.id} has name/desc with "<>" chars, probably name and desc are mixed up: {npc}')

            npcs[npc.exp][npc.id] = (
                npc.name,
                npc.desc,
                npc.name_en,
                term.text_en + (f' <{npc.desc_en}>' if npc.desc_en else '')
            )

    return npcs, issues

def print_report(npcs, issues):
    print('-' * 80)
    for expansion in npcs:
        for id in npcs[expansion]:
            name, desc, _, _ = npcs[expansion][id]
            if desc:
                print(f'{expansion} npc #{id} -> {name} <{desc}>')
            else:
                print(f'{expansion} npc #{id} -> {name}')

    print('-' * 80)
    print('Total npcs:', ', '.join([f'[{e}] {len(npcs[e])}' for e in npcs]))

    if issues:
        print('-' * 80)
        print('ISSUES FOUND:')
        for text in issues:
            print(text)

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    npcs, issues = collect_npcs()

    for expansion in npcs:
        npcs[expansion] = dict(sorted(npcs[expansion].items()))

    for expansion in npcs:
        utils.write_lua_npc_file(
            path    =f'translation_from_crowdin/entries/{expansion}',
            filename='npc',
            npcs    =npcs[expansion]
        )

    print_report(npcs, issues)

main()
