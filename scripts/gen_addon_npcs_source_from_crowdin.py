import utils

class Npc:

    def __init__(self, id: int, expansion: str, name: str, desc: str, hint: str):
        self.id = id
        self.expansion = expansion
        self.name = name
        self.desc = desc
        self.hint = hint

    def name_desc_hint_tuple(self):
        return self.name, self.desc, self.hint

def get_npc_from_id_tag(id_tag, term_en_text, term_uk_text, term_tags, all_terms, issues):
    assert(id_tag.startswith('#'))

    # id_tag format: #ID[:EXPANSION][ NPC NAME CAN INCLUDE SPACES]

    npc_id, npc_name = id_tag.split(' ', maxsplit=1) if ' ' in id_tag else (id_tag, False)
    npc_id, npc_expansion = npc_id.split(':', maxsplit=1) if ':' in npc_id else (npc_id, 'classic')
    npc_id = int(npc_id[1:])

    if not npc_expansion in utils.known_expansions:
        issues.append(f'[!] Unexpected expansion "{npc_expansion}".\n\t- term: {term_en_text}\n\t- tags: {term_tags}')
        return

    if not npc_name:
        npc_name = term_uk_text

    npc_name = npc_name.replace('_', ',')

    npc_desc = False
    npc_desc_original = False

    for t in term_tags:
        if t.startswith('<') and t.endswith('>'):
            npc_desc = t[1:-1]
            npc_desc_original = npc_desc
            break

    if npc_desc:
        npc_desc_lower = npc_desc.lower()

        npc_desc_lower_patterns = [
            npc_desc_lower,
            npc_desc_lower.replace('&', 'and'),
            npc_desc_lower.replace('weapons', 'weapon') # in "... weapon vendor"
        ]

        if npc_desc_lower.startswith('the '):
            npc_desc_lower_patterns.append(npc_desc_lower[4:])

        npc_is_female = 'жін' in term_tags
        for en_text2, uk_text2, _ in all_terms:
            en_text2_lower = en_text2.lower()
            if en_text2_lower in npc_desc_lower_patterns:
                cases = uk_text2.split('/', maxsplit=1)
                npc_desc = cases[1] if npc_is_female and len(cases) > 1 else cases[0]
                break

    npc_hint = term_en_text + (f' <{npc_desc_original}>' if npc_desc_original != npc_desc else '')

    return Npc(npc_id, npc_expansion, npc_name, npc_desc, npc_hint)

def collect_npcs():
    tbx_file = 'translation_from_crowdin/ClassicUA.tbx'
    print(f'Processing {tbx_file}')

    npcs = { e: {} for e in utils.known_expansions }
    issues = []

    terms = utils.get_terms_from_tbx(tbx_file)
    for en_text, uk_text, tags in terms:
        if not 'нпц' in tags:
            continue

        for tag in tags:
            if not tag.startswith('#'):
                continue

            new_npc = get_npc_from_id_tag(tag, en_text, uk_text, tags, terms, issues)
            if not new_npc:
                continue

            if new_npc.id in npcs[new_npc.expansion]:
                issue_npc_old = npcs[new_npc.expansion][new_npc.id]
                issue_npc_new = new_npc.name_desc_hint_tuple()
                issues.append(f'[!] NPC #{new_npc.id} duplication! Probably terms has one of these NPCs with wrong ID.\n\t- old NPC: {issue_npc_old}\n\t- new NPC: {issue_npc_new}')

            if utils.is_str_and_has_only_ascii_chars(new_npc.name) or utils.is_str_and_has_only_ascii_chars(new_npc.desc):
                npc_desc_formatted_text = f'<{new_npc.desc}>' if new_npc.desc else ''
                issues.append(f'[?] NPC #{new_npc.id} has name/desc with only ASCII chars: {new_npc.name} {npc_desc_formatted_text}')

            npcs[new_npc.expansion][new_npc.id] = new_npc.name_desc_hint_tuple()

    return npcs, issues

def print_report(npcs, issues):
    print('-' * 80)
    for expansion in npcs:
        for id in npcs[expansion]:
            name, desc, _ = npcs[expansion][id]
            print(f'{expansion} npc #{id} -> {name} {f"<{desc}>" if desc else ""}')

    print('-' * 80)
    print('Total npcs:', ', '.join([f'[{e}] {len(npcs[e])}' for e in npcs]))

    if issues:
        print('-' * 80)
        print('ISSUES FOUND:')
        for text in issues:
            print(text)

def main():
    npcs, issues = collect_npcs()

    for expansion in npcs:
        npcs[expansion] = dict(sorted(npcs[expansion].items()))

    for expansion in npcs:
        filename = f'npc_{expansion}' if expansion != 'classic' else 'npc'
        utils.write_lua_npc_file('translation_from_crowdin/entries', filename, npcs[expansion])

    print_report(npcs, issues)

main()
