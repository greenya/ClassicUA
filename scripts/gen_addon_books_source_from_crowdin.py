from pathlib import Path
from xml.etree import ElementTree
import os, re
import utils

books = {}

# TODO: add expansion support when we actually have books_[expansion] folders

for dirpath, _, filenames in os.walk('translation_from_crowdin/uk/books/'):
    for filename in filenames:
        tree = ElementTree.parse(os.path.join(dirpath, filename))
        root = tree.getroot()
        pages = []

        for s in root.findall('./string'):
            if s.text:
                pages.append(s.text.strip())

        # TODO: we don't check page number here (e.g. "PAGE_1", ...), that should be fine for now,
        # until we have partially translated books, e.g. translated only page 2

        if pages:
            name, id = re.search('^([^_]+)_(\d+)\.xml$', filename).groups()
            books[int(id)] = (
                pages,
                f'{name.strip()} ({len(pages)} {"page" if len(pages) == 1 else "pages"})'
            )

books = dict(sorted(books.items()))

entries_path = 'translation_from_crowdin/entries'
Path(entries_path).mkdir(parents=True, exist_ok=True)
utils.write_lua_book_file(entries_path, 'book', books)

for id in books:
    _, hint = books[id]
    print(id, '->', hint)

print('-' * 80)
print(f'Total books:', len(books))
