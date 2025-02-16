import sys
import utils
from terms import Terms

term_tags_to_export = [ 'група', 'клас', 'подія', 'ремесло' ]

def collect_misc():
    tbx_file = 'translation_from_crowdin/ClassicUA.tbx'
    print(f'Processing {tbx_file}')
    print(f'Exporting terms with tags: {", ".join(term_tags_to_export)}')

    result = {}
    terms = Terms.from_tbx(tbx_file)

    for term in terms:
        for tag in term_tags_to_export:
            if term.has_tag(tag):
                result[term.text_en] = term.translation()

    return result

def print_report(misc):
    print('-' * 80)
    for key in misc:
        print(key, '->', misc[key])

    print('-' * 80)
    print('Total items: %d' % len(misc))

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    misc = collect_misc()
    misc = dict(sorted(misc.items()))

    utils.write_lua_misc_file('translation_from_crowdin/entries', 'misc', misc)

    print_report(misc)

main()
