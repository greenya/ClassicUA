import csv
import json
import os
import re
import sys
import urllib.request
import utils

# mists has no rank-based trees, sod shared with classic
expansion_majors = {
    'classic'   : 1,
    'tbc'       : 2,
    'wrath'     : 3,
    'cata'      : 4,
}
live_products = ('wow_classic_era', 'wow_anniversary', 'wow_classic')

# keyed by ClassMask field of a talent tab
class_tokens = {
    1: 'WARRIOR', 2: 'PALADIN', 4: 'HUNTER', 8: 'ROGUE', 16: 'PRIEST',
    32: 'DEATHKNIGHT', 64: 'SHAMAN', 128: 'MAGE', 256: 'WARLOCK', 1024: 'DRUID',
}

def download(url):
    print(f'Downloading {url}')
    # wago.tools answers 403 to the default user agent of urllib
    request = urllib.request.Request(url, headers={ 'User-Agent': 'ClassicUA generator' })
    return urllib.request.urlopen(request).read().decode('utf-8')

def download_table(table, build):
    return list(csv.DictReader(download(f'https://wago.tools/db2/{table}/csv?build={build}').splitlines()))

def find_latest_builds():
    # newest live build of every major version
    latest = {}
    for product, builds in json.loads(download('https://wago.tools/api/builds')).items():
        if product in live_products:
            for build in builds:
                version = tuple(int(part) for part in build['version'].split('.'))
                latest[version[0]] = max(version, latest.get(version[0], version))

    return { expansion: '.'.join(map(str, latest[major])) for expansion, major in expansion_majors.items() }

def collect_talents(expansion, build):
    # tabs of the talent frame; pet trees and development leftovers ("OLD", "CC Slim"...) have no class or a negative order index
    tabs = {}
    for tab in download_table('TalentTab', build):
        mask = int(tab['ClassMask'])
        if mask in class_tokens and int(tab['OrderIndex']) >= 0:
            tabs[tab['ID']] = tab

    # talents of those tabs with the spell of every rank
    talents = []
    issues = []
    for row in download_table('Talent', build):
        tab = tabs.get(row['TabID'])
        if not tab:
            continue

        ranks = [int(row[f'SpellRank_{i}']) for i in range(9) if row[f'SpellRank_{i}'] != '0']
        if not ranks:
            issues.append(f'[!] {expansion}: talent {row["ID"]} of tab {tab["Name_lang"]} has no ranks')
            continue

        talents.append({
            'id': int(row['ID']),
            'ranks': ranks,
            'class': class_tokens[int(tab['ClassMask'])],
            'tab': tab['Name_lang'],
            'order': (int(tab['ClassMask']), int(tab['OrderIndex']), int(row['TierID']), int(row['ColumnIndex'])),
        })

    # classes, then tabs as in the talent frame, then talents by row and column
    talents.sort(key=lambda t: t['order'])

    return talents, issues

def describe_changes(path, talents):
    old = {}
    if os.path.exists(path):
        for line in open(path, encoding='utf-8'):
            m = re.match(r'^\[(\d+)\] = \{ (.+) \},', line)
            if m:
                old[int(m.group(1))] = m.group(2)

    new = { t['id']: ', '.join(str(rank) for rank in t['ranks']) for t in talents }
    added = set(new) - set(old)
    removed = set(old) - set(new)
    changed = { id for id in set(old) & set(new) if old[id] != new[id] }

    if not (added or removed or changed):
        return 'no changes'

    return f'{len(added)} added, {len(removed)} removed, {len(changed)} changed'

def print_report(results, issues):
    print('-' * 80)
    for expansion, build, talents, changes in results:
        print(f'{expansion} ({build}): {len(talents)} talents, {changes}')

    if all(changes == 'no changes' for _, _, _, changes in results):
        print('No changes.')

    if issues:
        print('-' * 80)
        print('ISSUES FOUND:')
        for text in issues:
            print(text)

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    results = []
    issues = []
    for expansion, build in find_latest_builds().items():
        talents, talent_issues = collect_talents(expansion, build)
        path = f'../entries/{expansion}'
        changes = describe_changes(f'{path}/talent_tree.lua', talents)
        utils.write_lua_talent_tree_file(path, 'talent_tree', talents)
        results.append((expansion, build, talents, changes))
        issues.extend(talent_issues)

    print_report(results, issues)

main()
