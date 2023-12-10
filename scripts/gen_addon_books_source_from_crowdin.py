import sys, os, re
from xml.etree import ElementTree
import utils

# TODO: add expansion support when we actually have books_[expansion] folders

def collect_books():
    books_path = 'translation_from_crowdin/uk/books/'
    print(f'Processing {books_path}')

    result = {}
    filename_pattern = re.compile(r'^([^_]+)_(\d+)\.xml$')

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
                result[int(id)] = (pages, f'{name.strip()} ({len(pages)} {pages_wording})')

    return result

def print_report(books):
    print('-' * 80)
    for id in books:
        _, hint = books[id]
        print(f'book #{id} -> {hint}')

    print('-' * 80)
    print(f'Total books:', len(books))

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    books = collect_books()
    books = dict(sorted(books.items()))

    utils.write_lua_book_file('translation_from_crowdin/entries/classic', 'book', books)

    print_report(books)

main()
