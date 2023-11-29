import sys
import utils

def collect_zones():
    tbx_file = 'translation_from_crowdin/ClassicUA.tbx'
    print(f'Processing {tbx_file}')

    result = {}
    issues = []
    alias_zone_count = 0

    terms = utils.get_terms_from_tbx(tbx_file)
    for en_text, uk_text, tags in terms:
        if 'локація' in tags:
            result[en_text] = uk_text

            for t in tags:
                if t.startswith('~') and t.endswith('~'):
                    zone_alias = t[1:-1].strip()
                    if zone_alias:
                        result[zone_alias] = uk_text
                        alias_zone_count += 1
                    else:
                        issues.append(f'[!] Empty alias tag in term "{en_text}"')

    return result, alias_zone_count, issues

def print_report(zones, alias_zone_count, issues):
    print('-' * 80)
    for key in zones:
        print(key, '->', zones[key])

    print('-' * 80)
    print('Total zones: %d (+%d aliases)' % ( len(zones) - alias_zone_count, alias_zone_count ))

    if issues:
        print('-' * 80)
        print('ISSUES FOUND:')
        for text in issues:
            print(text)

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    zones, alias_zone_count, issues = collect_zones()
    zones = dict(sorted(zones.items()))

    utils.write_lua_zone_file('translation_from_crowdin/entries', 'zone', zones)

    print_report(zones, alias_zone_count, issues)

main()
