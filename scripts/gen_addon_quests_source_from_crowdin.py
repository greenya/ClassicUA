import sqlite3
from pathlib import Path
from xml.etree import ElementTree
import utils

conn = sqlite3.connect('database/classicua.db')
quest_ids = [ r[0] for r in conn.execute('SELECT id FROM quests ORDER BY id') ]

quests = {
    'alliance': [],
    'horde': [],
    'both': [],
}

quests_cat_count = {}
quests_cat_total = {}

for id in quest_ids:
    cat, side, title = conn.execute(f'SELECT cat, side, title FROM quests WHERE id={id}').fetchone()
    path = f'translation_from_crowdin/uk/quests/{cat}'
    filename = utils.get_quest_filename(id, title)

    tree = ElementTree.parse(f'{path}/{filename}.xml')
    root = tree.getroot()
    strings = root.findall('./string')
    if strings:
        q = {
            'id': id,
            'title': False,
            'objective': False,
            'description': False,
            'progress': False,
            'completion': False,
        }

        for s in strings:
            if s.text:
                q[ s.attrib['name'].lower() ] = s.text

        if q['title']:
            print(f'{id} => {q["title"]}')
            quests[side].append(q)
            if cat not in quests_cat_count:
                quests_cat_count[cat] = 0
            quests_cat_count[cat] += 1

    if cat not in quests_cat_total:
        quests_cat_total[cat] = 0
    quests_cat_total[cat] += 1

print('-' * 40)
total = 0

entries_name = {
    'alliance': 'quest_a',
    'horde': 'quest_h',
    'both': 'quest_n',
}

entries_path = 'translation_from_crowdin/entries'
Path(entries_path).mkdir(parents=True, exist_ok=True)

for x in [ 'alliance', 'horde', 'both' ]:
    total += len(quests[x])
    print(f'{x} quests:', len(quests[x]))
    utils.write_lua_quest_file(entries_path, entries_name[x], quests[x])

print('-' * 40)
print(f'total quests: {total}')

print('-' * 20)
for cat, count in quests_cat_count.items():
    total = quests_cat_total[cat]
    percent = (count * 100) // total
    print(f'{cat} - {count}/{total} - {percent}%')
