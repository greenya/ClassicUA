import sys
import sqlite3
from xml.etree import ElementTree
import stats
import utils

quest_text_names = ('title', 'objective', 'description', 'progress', 'completion')

# AI's translations by expansion and id: the texts by name, and the task lines (line n translates line n of the
# quest's tasks)
def get_ai_quests(conn):
    return {
        (expansion, id): (dict(zip(quest_text_names, texts)), tasks.split('\n') if tasks else [])
        for expansion, id, *texts, tasks in conn.execute(
            f'SELECT expansion, id, {", ".join(quest_text_names)}, tasks FROM quests_ai')
    }

def collect_quests():
    database_path = 'database/classicua.db'
    print(f'Processing {database_path}')
    print('-' * 80)

    conn = sqlite3.connect(database_path)
    quest_expansion_and_id_pairs = [
        r for r in conn.execute('SELECT expansion, id FROM quests ORDER BY id')
    ]
    ai_quests = get_ai_quests(conn)

    quests = { e: { s: [] for s in utils.known_sides } for e in utils.known_expansions }
    quests_cat_count = { e: {} for e in utils.known_expansions }
    quests_cat_total = { e: {} for e in utils.known_expansions }
    text_chars_used = {}
    issues = []

    for expansion, id in quest_expansion_and_id_pairs:
        if not expansion in quests:
            issues.append(f'[!] Unexpected expansion "{expansion}" for #{id}.')
            continue

        cat, side, title, tasks = conn.execute(
            f'SELECT cat, side, title, tasks FROM quests WHERE expansion="{expansion}" AND id={id}'
        ).fetchone()
        tasks_en = tasks.split('\n') if tasks else []
        ai_quest = ai_quests.get((expansion, id))

        quests_folder_name = f'quests_{expansion}' if expansion != 'classic' else 'quests'
        quest_path = f'translation_from_crowdin/uk/{quests_folder_name}/{cat}'
        quest_filename = utils.get_quest_filename(id, title)
        xml_path_filename = f'{quest_path}/{quest_filename}.xml'

        try:
            strings = ElementTree.parse(xml_path_filename).getroot().findall('./string')
            quests_cat_total[expansion][cat] =\
                1 + quests_cat_total[expansion][cat] if cat in quests_cat_total[expansion] else 1
        except FileNotFoundError:
            issues.append(f'[!] File not found {xml_path_filename}')
            strings = []

        if not strings and not ai_quest:
            continue

        new_quest = {
            'id': id,
            'en': title,
            'ai': False,
            'title': False,
            'objective': False,
            'description': False,
            'progress': False,
            'completion': False,
            'tasks': {},
        }

        approved_names = []
        for s in strings:
            if s.text:
                string_attr = s.attrib['name'].lower()
                string_text = utils.get_clean_text(s.text)
                if string_attr.startswith('task_'):
                    n = int(string_attr[len('task_'):])
                    task_en = tasks_en[n - 1] if n <= len(tasks_en) else None
                    if not task_en or s.attrib.get('comment', '').rsplit(': ', 1)[0] != task_en:
                        issues.append(f'[!] Quest #{id} {string_attr}: the database has another line ({task_en})')
                        continue
                    new_quest['tasks'][task_en] = string_text
                else:
                    new_quest[string_attr] = string_text
                approved_names.append(string_attr)

        # AI's translation for the texts not approved on Crowdin yet
        if ai_quest:
            ai_texts, ai_tasks = ai_quest
            ai_names = []
            for name in quest_text_names:
                if ai_texts[name] and not new_quest[name]:
                    new_quest[name] = utils.get_clean_text(ai_texts[name])
                    ai_names.append(name)
            for n, (task_en, task) in enumerate(zip(tasks_en, ai_tasks), 1):
                if task_en not in new_quest['tasks']:
                    new_quest['tasks'][task_en] = utils.get_clean_text(task)
                    ai_names.append(f'task_{n}')

            new_quest['ai'] = bool(ai_names)
            if ai_names and approved_names:
                issues.append(f'[?] Quest #{id} is partly approved on Crowdin, still AI: {", ".join(ai_names)}')

        # the tasks in the order of the english lines
        new_quest['tasks'] = { t: new_quest['tasks'][t] for t in tasks_en if t in new_quest['tasks'] }

        texts = [ (name, new_quest[name]) for name in quest_text_names if new_quest[name] ]
        texts += [ (f'task_{tasks_en.index(t) + 1}', text) for t, text in new_quest['tasks'].items() ]

        new_quest_chars = {}
        for name, text in texts:
            for issue in utils.get_inline_code_issues(text):
                issues.append(f'[!] Quest #{id} {name}: {issue}')

            for c in text:
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
            print(f'{expansion} quest #{id} -> {new_quest["title"]}' + (' (AI)' if new_quest['ai'] else ''))
            quests[expansion][side].append(new_quest)
            # the counts are of the proofread translations
            if not new_quest['ai']:
                quests_cat_count[expansion][cat] =\
                    1 + quests_cat_count[expansion][cat] if cat in quests_cat_count[expansion] else 1

    return quests, quests_cat_count, quests_cat_total, text_chars_used, issues

def generate_and_write_lua_stat_quest_file(tbx_path, entries_path, filename, var, quests_cat_count, quests_cat_total) -> None:
    stats.Stats.init(tbx_path, allow_set_locale_collate=True)
    st = stats.Row(keep_rows_sorted=False)

    for expansion in quests_cat_total:
        for cat in sorted(quests_cat_total[expansion].keys()):
            st.row(f'{expansion}/{cat}').add(
                count = quests_cat_count[expansion][cat] if cat in quests_cat_count[expansion] else 0,
                total = quests_cat_total[expansion][cat],
            )

    st.write_lua_file(
        entries_path    = entries_path,
        filename        = filename,
        var             = var,
    )

def print_report(quests, quests_cat_count, quests_cat_total, text_chars_used, issues):
    print('-' * 80)
    total = 0
    total_ai = 0

    for expansion in quests:
        expansion_total = 0
        expansion_ai = 0
        for side in quests[expansion]:
            expansion_side_total = len(quests[expansion][side])
            expansion_side_ai = sum(1 for q in quests[expansion][side] if q['ai'])
            expansion_total += expansion_side_total
            expansion_ai += expansion_side_ai
            total += expansion_side_total
            total_ai += expansion_side_ai
            print(f'[{expansion}] [{side}] quests: {expansion_side_total} (AI: {expansion_side_ai})')
        print(f'[{expansion}] quests: {expansion_total} (AI: {expansion_ai})\n')

    print(f'Total quests: {total} (AI: {total_ai})')

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

    generate_and_write_lua_stat_quest_file(
        tbx_path        = 'translation_from_crowdin/ClassicUA.tbx',
        entries_path    = '../entries',
        filename        = 'stat_quest',
        var             = 'stat_quest',
        quests_cat_count= quests_cat_count,
        quests_cat_total= quests_cat_total,
    )

    print_report(quests, quests_cat_count, quests_cat_total, text_chars_used, issues)

main()
