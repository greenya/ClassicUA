import sys
import utils
from terms import Terms

def collect_zones():
    tbx_file = 'translation_from_crowdin/ClassicUA.tbx'
    print(f'Processing {tbx_file}')

    result = {}
    issues = []
    aliases = []
    terms = Terms.from_tbx(tbx_file)

    for term in terms.locations():
        result[term.text_en] = term.text_uk

        for alias in term.location_aliases():
            if alias not in result:
                result[alias] = term.text_uk
                aliases.append(alias)
            else:
                if alias not in aliases:
                    issues.append(f'[!] Alias "{alias}" in term "{term.text_en}" matches other unique term')

    return result, len(aliases), issues

def print_report(zones, aliases_count, issues):
    print('-' * 80)
    for key in zones:
        print(key, '->', zones[key])

    print('-' * 80)
    print('Total zones: %d (+%d aliases)' % ( len(zones) - aliases_count, aliases_count ))

    if issues:
        print('-' * 80)
        print('ISSUES FOUND:')
        for text in issues:
            print(text)

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    zones, aliases_count, issues = collect_zones()
    zones = dict(sorted(zones.items()))

    utils.write_lua_zone_file('translation_from_crowdin/entries', 'zone', zones, len(zones) - aliases_count)

    print_report(zones, aliases_count, issues)

main()
