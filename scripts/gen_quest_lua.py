import sys
import sqlite3
from xml.etree import ElementTree
import utils

def collect_quests():
    database_path = 'database/classicua.db'
    print(f'Processing {database_path}')
    print('-' * 80)

    conn = sqlite3.connect(database_path)
    quest_expansion_and_id_pairs = [
        r for r in conn.execute('SELECT expansion, id FROM quests ORDER BY id')
    ]

    quests = { e: { s: [] for s in utils.known_sides } for e in utils.known_expansions }
    quests_cat_count = { e: {} for e in utils.known_expansions }
    quests_cat_total = { e: {} for e in utils.known_expansions }
    text_chars_used = {}
    issues = []

    for expansion, id in quest_expansion_and_id_pairs:
        if not expansion in quests:
            issues.append(f'[!] Unexpected expansion "{expansion}" for #{id}.')
            continue

        cat, side, title = conn.execute(
            f'SELECT cat, side, title FROM quests WHERE expansion="{expansion}" AND id={id}'
        ).fetchone()

        quests_folder_name = f'quests_{expansion}' if expansion != 'classic' else 'quests'
        quest_path = f'translation_from_crowdin/uk/{quests_folder_name}/{cat}'
        quest_filename = utils.get_quest_filename(id, title)
        xml_path_filename = f'{quest_path}/{quest_filename}.xml'

        try:
            tree = ElementTree.parse(xml_path_filename)
        except FileNotFoundError:
            issues.append(f'[!] File not found {xml_path_filename}')
            continue

        root = tree.getroot()
        strings = root.findall('./string')

        quests_cat_total[expansion][cat] =\
            1 + quests_cat_total[expansion][cat] if cat in quests_cat_total[expansion] else 1

        if not strings:
            continue

        new_quest = {
            'id': id,
            'en': title,
            'title': False,
            'objective': False,
            'description': False,
            'progress': False,
            'completion': False,
        }

        new_quest_chars = {}
        for s in strings:
            if s.text:
                string_attr = s.attrib['name'].lower()
                string_text = utils.get_clean_text(s.text)
                new_quest[string_attr] = string_text

                for c in string_text:
                    code = ord(c)
                    new_quest_chars[code] = 1 + new_quest_chars[code] if code in new_quest_chars else 1
                    text_chars_used[code] = 1 + text_chars_used[code] if code in text_chars_used else 1

        for b1, b2 in [ ('(', ')'), ('[', ']'), ('{', '}'), ('<', '>')]:
            b1_code, b2_code = ord(b1), ord(b2)

            b1_code_count = new_quest_chars[b1_code] if b1_code in new_quest_chars else 0
            b2_code_count = new_quest_chars[b2_code] if b2_code in new_quest_chars else 0

            if b1_code_count != b2_code_count:
                issues.append(f'[?] Bracers "{b1}" and "{b2}" don\'t match\n\t- quest: {new_quest}')

        if new_quest['title']:
            print(f'{expansion} quest #{id} -> {new_quest["title"]}')
            quests[expansion][side].append(new_quest)
            quests_cat_count[expansion][cat] =\
                1 + quests_cat_count[expansion][cat] if cat in quests_cat_count[expansion] else 1

    return quests, quests_cat_count, quests_cat_total, text_chars_used, issues

def print_report(quests, quests_cat_count, quests_cat_total, text_chars_used, issues):
    print('-' * 80)
    total = 0

    for expansion in quests:
        expansion_total = 0
        for side in quests[expansion]:
            expansion_side_total = len(quests[expansion][side])
            expansion_total += expansion_side_total
            total += expansion_side_total
            print(f'[{expansion}] [{side}] quests: {expansion_side_total}')
        print(f'[{expansion}] quests: {expansion_total}\n')

    print(f'Total quests: {total}')

    print('-' * 80)
    for expansion in quests_cat_count:
        for cat in sorted(quests_cat_count[expansion].keys()):
            total = quests_cat_total[expansion][cat]
            count = quests_cat_count[expansion][cat]
            percent = (count * 100) // total if total > 0 else 0
            print(f'{expansion} {cat} - {count}/{total} - {percent}%')

    print('-' * 80)
    print('[Code]\t[Count]\t[Print]')
    untraceable_chars = { 0xa: 'new line', 0x20: 'space' }
    for code in sorted(text_chars_used.keys()):
        p = untraceable_chars[code] if code in untraceable_chars else chr(code)
        print('\\u%04X\t%d\t> %s <' % ( code, text_chars_used[code], p ))

    if issues:
        print('-' * 80)
        print('ISSUES FOUND:')
        for text in issues:
            print(text)

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    quests, quests_cat_count, quests_cat_total, text_chars_used, issues = collect_quests()

    for expansion in quests:
        for side in quests[expansion]:
            utils.write_lua_quest_file(
                path    =f'../entries/{expansion}',
                filename=f'quest_{side}',
                var     =f'quest_{side}',
                quests  =quests[expansion][side]
            )

    print_report(quests, quests_cat_count, quests_cat_total, text_chars_used, issues)

main()
