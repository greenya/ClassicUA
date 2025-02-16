import sys, os, re
from xml.etree import ElementTree
import utils

def collect_books():
    books = { e: {} for e in utils.known_expansions }
    filename_pattern = re.compile(r'^([^_]+)_(\d+)\.xml$')

    for expansion in books:
        books_folder_name = f'books_{expansion}' if expansion != 'classic' else 'books'
        books_path = f'translation_from_crowdin/uk/{books_folder_name}/'
        print(f'Processing {books_path}')

        for dirpath, _, filenames in os.walk(books_path):
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
                    books[expansion][int(id)] = (pages, f'{name.strip()} ({len(pages)} {pages_wording})')

        books[expansion] = dict(sorted(books[expansion].items()))

    return books

def print_report(books):
    print('-' * 80)
    for expansion in books:
        for id in books[expansion]:
            _, hint = books[expansion][id]
            print(f'{expansion} book #{id} -> {hint}')

    print('-' * 80)
    print('Total books:', ', '.join([f'[{e}] {len(books[e])}' for e in books]))

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    books = collect_books()

    for expansion in books:
        utils.write_lua_book_file(
            path    =f'../entries/{expansion}',
            filename='book',
            books   =books[expansion]
        )

    print_report(books)

main()
