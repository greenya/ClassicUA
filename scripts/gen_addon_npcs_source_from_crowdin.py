from pathlib import Path
import utils

terms = utils.get_terms_from_tbx('translation_from_crowdin/ClassicUA.tbx')
npcs = { e: {} for e in utils.known_expansion_codes }
issues = []

for en_text, uk_text, tags in terms:
    if not 'нпц' in tags:
        continue

    for tag in tags:
        if not tag.startswith('#'):
            continue

        # tag format: #ID[:EXPANSION][ NPC NAME CAN INCLUDE SPACES]

        npc_id, npc_name = tag.split(' ', maxsplit=1) if ' ' in tag else (tag, False)
        npc_id, npc_expansion = npc_id.split(':', maxsplit=1) if ':' in npc_id else (npc_id, 'classic')
        npc_id = int(npc_id[1:])

        if not npc_expansion in npcs:
            issues.append(f'[!] Unexpected expansion code "{npc_expansion}".\n\t- term: {en_text}\n\t- tags: {tags}')
            continue

        if not npc_name:
            npc_name = uk_text

        npc_name = npc_name.replace('_', ',')

        npc_desc = False
        npc_desc_original = False

        for t in tags:
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

            for en_text2, uk_text2, _ in terms:
                en_text2_lower = en_text2.lower()
                if en_text2_lower in npc_desc_lower_patterns:
                    cases = uk_text2.split('/', maxsplit=1)
                    npc_is_female = 'жін' in tags
                    npc_desc = cases[1] if npc_is_female and len(cases) > 1 else cases[0]
                    break

        new_npc = (
            npc_name,
            npc_desc,
            en_text + (f' <{npc_desc_original}>' if npc_desc_original != npc_desc else '')
        )

        if npc_id in npcs[npc_expansion]:
            issues.append(f'[!] NPC #{npc_id} duplication! Probably terms has one of these NPCs with wrong ID.\n\t- old NPC: {npcs[npc_expansion][npc_id]}\n\t- new NPC: {new_npc}')

        if utils.is_str_and_has_only_ascii_chars(npc_name) or utils.is_str_and_has_only_ascii_chars(npc_desc):
            npc_desc_formatted_text = f'<{npc_desc}>' if npc_desc else ''
            issues.append(f'[?] NPC #{npc_id} has name/desc with only ASCII chars: {npc_name} {npc_desc_formatted_text}')

        npcs[npc_expansion][npc_id] = new_npc

for expansion in npcs:
    npcs[expansion] = dict(sorted(npcs[expansion].items()))

    entries_path = 'translation_from_crowdin/entries'
    Path(entries_path).mkdir(parents=True, exist_ok=True)
    filename = f'npc_{expansion}' if expansion != 'classic' else 'npc'
    utils.write_lua_npc_file(entries_path, filename, npcs[expansion])

for expansion in npcs:
    for id in npcs[expansion]:
        name, desc, _ = npcs[expansion][id]
        print(f'{expansion} #{id} -> {name} {f"<{desc}>" if desc else ""}')

print('-' * 80)
print('Total npcs:', ', '.join([f'[{e}] {len(npcs[e])}' for e in npcs]))

if len(issues):
    print('-' * 80)
    print('ISSUES FOUND:')
    for text in issues:
        print(text)
