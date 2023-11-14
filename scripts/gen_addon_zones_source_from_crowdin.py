from pathlib import Path
import utils

terms = utils.get_terms_from_tbx('translation_from_crowdin/ClassicUA.tbx')
zones = {}

for en_text, uk_text, tags in terms:
    if 'локація' in tags:
        zones[en_text] = uk_text

zones = dict(sorted(zones.items()))

entries_path = 'translation_from_crowdin/entries'
Path(entries_path).mkdir(parents=True, exist_ok=True)
utils.write_lua_zone_file(entries_path, 'zone', zones)

for key in zones:
    print(key, '->', zones[key])

print('-' * 80)
print('Total zones:', len(zones))
