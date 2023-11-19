import utils

# TODO: add support for alias tags

def collect_zones():
    tbx_file = 'translation_from_crowdin/ClassicUA.tbx'
    print(f'Processing {tbx_file}')

    result = {}

    terms = utils.get_terms_from_tbx(tbx_file)
    for en_text, uk_text, tags in terms:
        if 'локація' in tags:
            result[en_text] = uk_text

    return result

def print_report(zones):
    print('-' * 80)
    for key in zones:
        print(key, '->', zones[key])

    print('-' * 80)
    print('Total zones:', len(zones))

def main():
    zones = collect_zones()
    zones = dict(sorted(zones.items()))
    utils.write_lua_zone_file('translation_from_crowdin/entries', 'zone', zones)
    print_report(zones)

main()
