import re
import sys
import utils
from terms import Terms

def split_issue(masculine: str, feminine: str, text_en: str) -> str:
    # correct split assumptions: as many words, each keeping its first letter, original has no slash
    if '/' in text_en:
        return 'the english has the slash too'

    words_m, words_f = (re.findall(r'[^\s/-]+', side.lower()) for side in (masculine, feminine))
    if len(words_m) != len(words_f):
        return 'the forms differ in word count'

    if any(m[0] != f[0] for m, f in zip(words_m, words_f)):
        return 'the forms differ in a word\'s first letter'

    return ''

def collect_npcs():
    tbx_file = 'translation_from_crowdin/ClassicUA.tbx'
    print(f'Processing {tbx_file}')

    npcs = { e: {} for e in utils.known_expansions }
    issues = []
    terms = Terms.from_tbx(tbx_file)
    desc_texts_en = set() # descs the terms translate, which they split at the slash by sex too

    for term in terms.npcs():
        for npc in term.npc_id_tags(terms):
            if npc.id in npcs[npc.exp]:
                issues.append(f'[!] NPC #{npc.id} duplication! Probably terms has one of these NPCs with wrong ID.\n\t- old NPC: {npcs[npc.exp][npc.id][0]}\n\t- new NPC: {npc}')

            npc_texts = [ npc.name ] + [ text for text in (npc.desc, npc.name_feminine, npc.desc_feminine) if text ]

            if any(utils.is_str_and_has_only_ascii_chars(text) for text in npc_texts):
                issues.append(f'[?] NPC #{npc.id} has name/desc with only ASCII chars: {npc}')

            if any('<' in text or '>' in text for text in npc_texts):
                issues.append(f'[?] NPC #{npc.id} has name/desc with "<>" chars, probably name and desc are mixed up: {npc}')

            if npc.name_feminine == npc.name:
                issues.append(f'[?] NPC #{npc.id} has the same masculine and feminine names: {npc}')

            issue = split_issue(npc.name, npc.name_feminine, term.text_en) if npc.name_feminine else ''
            if issue:
                issues.append(f'[?] NPC #{npc.id} name is split at the slash, but {issue} (term "{term.text_en}"): {npc}')

            if npc.desc_en:
                desc_texts_en.add(npc.desc_en)

            npcs[npc.exp][npc.id] = (npc, term.text_en + (f' <{npc.desc_en}>' if npc.desc_en else ''))

    for text_en in sorted(desc_texts_en):
        masculine, feminine = terms.translate(text_en), terms.translate(text_en, is_female=True)
        issue = split_issue(masculine, feminine, text_en) if masculine != feminine else ''
        if issue:
            issues.append(f'[?] NPC desc <{text_en}> is split at the slash, but {issue}: {masculine}/{feminine}')

    return npcs, issues

def print_report(npcs, issues):
    print('-' * 80)
    for expansion in npcs:
        for id in npcs[expansion]:
            npc, _ = npcs[expansion][id]
            name = npc.name + (f' / {npc.name_feminine}' if npc.name_feminine else '')
            desc = npc.desc + (f' / {npc.desc_feminine}' if npc.desc_feminine else '')
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
            path    =f'../entries/{expansion}',
            filename='npc',
            npcs    =npcs[expansion]
        )

    print_report(npcs, issues)

main()
