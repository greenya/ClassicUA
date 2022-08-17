from pathlib import Path
import utils

terms = utils.get_terms_from_tbx('translation_from_crowdin/ClassicUA.tbx')
npcs = {}

for en_text, uk_text, tags in terms:
    if 'нпц' in tags:
        for tag in tags:
            if tag.startswith('#'):
                npc_id, npc_text = tag.split(' ', maxsplit=1) if ' ' in tag else (tag, False)
                npc_id = int(npc_id[1:])

                if not npc_text:
                    npc_text = uk_text

                npc_text = npc_text.replace('_', ',')

                npc_desc = False
                npc_desc_original = False

                for t in tags:
                    if t.startswith('<') and t.endswith('>'):
                        npc_desc = t[1:-1]
                        npc_desc_original = npc_desc
                        break

                if npc_desc:
                    npc_desc_lower = [
                        npc_desc.lower(),
                        npc_desc.lower().replace('&', 'and')
                    ]
                    for en_text2, uk_text2, _ in terms:
                        en_text2_lower = en_text2.lower()
                        if en_text2_lower in npc_desc_lower:
                            cases = uk_text2.split('/', maxsplit=1)
                            npc_is_female = 'жін' in tags
                            npc_desc = cases[1] if npc_is_female and len(cases) > 1 else cases[0]
                            break

                npcs[npc_id] = (
                    npc_text,
                    npc_desc,
                    en_text + (f' <{npc_desc_original}>' if npc_desc_original != npc_desc else '')
                )

npcs = dict(sorted(npcs.items()))

entries_path = 'translation_from_crowdin/entries'
Path(entries_path).mkdir(parents=True, exist_ok=True)
utils.write_lua_npc_file(entries_path, 'npc', npcs)

for id in npcs:
    name, desc, _ = npcs[id]
    print(id, '->', name, f'<{desc}>' if desc else '')

print('-' * 40)
print('total npcs:', len(npcs))
