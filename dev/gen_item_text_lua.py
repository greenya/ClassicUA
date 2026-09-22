import sys, os, re
from xml.etree import ElementTree
import utils

def collect_item_texts():
    item_texts = { e: {} for e in utils.known_expansions }
    filename_pattern = re.compile(r'^([^_]+)_(\d+)\.xml$')

    for expansion in item_texts:
        folder_name = f'item_texts_{expansion}' if expansion != 'classic' else 'item_texts'
        texts_path = f'translation_from_crowdin/uk/{folder_name}/'
        print(f'Processing {texts_path}')

        for dirpath, _, filenames in os.walk(texts_path):
            for filename in filenames:
                tree = ElementTree.parse(os.path.join(dirpath, filename))
                root = tree.getroot()
                pages = []

                for s in root.findall('./string'):
                    if s.text:
                        pages.append(utils.get_clean_text(s.text))

                # TODO: we don't check page number here (e.g. "PAGE_1", ...), that should be fine for now,
                # until we have partially translated books, e.g. translated only page 2

                if pages:
                    name, id = re.search(filename_pattern, filename).groups()
                    pages_wording = 'page' if len(pages) == 1 else 'pages'
                    item_texts[expansion][int(id)] = (pages, f'{name.strip()} ({len(pages)} {pages_wording})')

        item_texts[expansion] = dict(sorted(item_texts[expansion].items()))

    return item_texts

def print_report(item_texts):
    print('-' * 80)
    for expansion in item_texts:
        for id in item_texts[expansion]:
            _, hint = item_texts[expansion][id]
            print(f'{expansion} item text #{id} -> {hint}')

    print('-' * 80)
    print('Total item texts:', ', '.join([f'[{e}] {len(item_texts[e])}' for e in item_texts]))

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    item_texts = collect_item_texts()

    for expansion in item_texts:
        utils.write_lua_item_text_file(
            path        =f'../entries/{expansion}',
            filename    ='item_text',
            item_texts  =item_texts[expansion]
        )

    print_report(item_texts)

main()
