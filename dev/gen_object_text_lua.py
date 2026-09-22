import sys, os, re, sqlite3
from xml.etree import ElementTree
import utils

def load_object_names():
    names = {}
    conn = sqlite3.connect('database/classicua.db')
    for id, expansion, name in conn.execute('SELECT id, expansion, name FROM objects'):
        names.setdefault(int(id), {})[expansion] = name
    conn.close()
    return names

def resolve_name(names, id, expansion):
    by_expansion = names.get(id)
    if not by_expansion:
        return None
    return by_expansion.get(expansion) or next(iter(by_expansion.values()))

def collect_objects():
    objects = { e: {} for e in utils.known_expansions }
    issues = []
    filename_pattern = re.compile(r'^(.+)_(\d+)\.xml$')
    names = load_object_names()

    for expansion in objects:
        folder_name = f'object_texts_{expansion}' if expansion != 'classic' else 'object_texts'
        uk_path = f'translation_from_crowdin/uk/{folder_name}/'
        en_path = f'translation_from_crowdin/en/{folder_name}/'
        print(f'Processing {uk_path}')

        by_name = {} # name -> [ (id, pages, h1) ]

        for dirpath, _, filenames in os.walk(uk_path):
            for filename in filenames:
                match = re.search(filename_pattern, filename)
                if not match:
                    issues.append(f'{expansion}: unexpected file name "{filename}"')
                    continue

                filename_name, id = match.groups()
                id = int(id)

                pages = []
                for s in ElementTree.parse(os.path.join(dirpath, filename)).getroot().findall('./string'):
                    if s.text:
                        pages.append(utils.get_clean_text(s.text))

                # TODO: like the books, the page numbers ("PAGE_1", ...) are not checked; fine until a
                # partially translated object shows up

                if not pages:
                    continue

                name = resolve_name(names, id, expansion)
                if not name:
                    name = filename_name.strip()
                    issues.append(f'{expansion}: object #{id} is not in the objects table of the database, '
                                  f'the file name "{name}" is used, which may lack a character ("&", ":", "?")')

                en_file = os.path.join(en_path, os.path.relpath(dirpath, uk_path), filename)
                h1 = None
                if os.path.isfile(en_file):
                    en_strings, _ = utils.get_strings_map_from_xml_file(en_file)
                    if isinstance(en_strings, dict) and en_strings.get('PAGE_1'):
                        h1 = utils.get_text_hash(en_strings['PAGE_1'])
                if h1 is None:
                    issues.append(f'{expansion}: object #{id} "{name}" has no english first page in {en_file}; '
                                  f'it cannot be told apart from a namesake')

                by_name.setdefault(name, []).append((id, pages, h1))

        for name in sorted(by_name):
            variants = sorted(by_name[name])
            if len(variants) == 1:
                id, pages, _ = variants[0]
                objects[expansion][name] = (pages, f'object #{id} ({len(pages)} {"page" if len(pages) == 1 else "pages"})')
                continue

            # namesakes: every variant needs a distinct first page
            kept = []
            for id, pages, h1 in variants:
                clash = next((k for k in kept if k[2] == h1), None)
                if h1 is None or clash:
                    issues.append(f'{expansion}: object #{id} "{name}" shares its first page with #{clash[0]}, '
                                  f'the game cannot tell them apart; #{id} is dropped' if clash else
                                  f'{expansion}: object #{id} "{name}" has no first page hash; dropped')
                    continue
                kept.append((id, pages, h1))

            objects[expansion][name] = [
                (pages, f'object #{id} ({len(pages)} {"page" if len(pages) == 1 else "pages"})', h1)
                for id, pages, h1 in kept
            ]

    return objects, issues

def print_report(objects, issues):
    print('-' * 80)
    for expansion in objects:
        for name, entry in objects[expansion].items():
            if isinstance(entry, list):
                print(f'{expansion} "{name}" -> ' + ', '.join(hint for _, hint, _ in entry) + ' (namesakes, told apart by the first page)')
            else:
                print(f'{expansion} "{name}" -> {entry[1]}')

    print('-' * 80)
    print('Total objects:', ', '.join([f'[{e}] {len(objects[e])}' for e in objects]))

    print('-' * 80)
    print('ISSUES FOUND:', len(issues))
    for issue in issues:
        print(issue)

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    objects, issues = collect_objects()

    for expansion in objects:
        utils.write_lua_object_text_file(
            path    =f'../entries/{expansion}',
            filename='object_text',
            objects =objects[expansion]
        )

    print_report(objects, issues)

main()
