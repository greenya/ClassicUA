import sys, re
import utils

def collect_spells_and_items(glossary):
    entries_path = '../entries'
    comment_pattern = re.compile(r'--([^,\($]+)')

    for lua_file, lua_var in [
        (f'{entries_path}/spell.lua',           'addonTable.spell'),
        (f'{entries_path}/spell_druid.lua',     'druid_spells'),
        (f'{entries_path}/spell_hunter.lua',    'hunter_spells'),
        (f'{entries_path}/spell_mage.lua',      'mage_spells'),
        (f'{entries_path}/spell_paladin.lua',   'paladin_spells'),
        (f'{entries_path}/spell_pet.lua',       'pet_spells'),
        (f'{entries_path}/spell_priest.lua',    'priest_spells'),
        (f'{entries_path}/spell_rogue.lua',     'rogue_spells'),
        (f'{entries_path}/spell_shaman.lua',    'shaman_spells'),
        (f'{entries_path}/spell_warlock.lua',   'warlock_spells'),
        (f'{entries_path}/spell_warrior.lua',   'warrior_spells'),

        (f'{entries_path}/item.lua',            'addonTable.item'),
        (f'{entries_path}/item_tbc.lua',        'item_tbc'),
    ]:
        print(f'Processing {lua_file}')

        table = utils.get_lua_value_from_lua_file(lua_file, lua_var)
        for key, value, comment in table:
            title = list(filter(lambda x: x[0] == 1, value))
            if not title or not title[0][1] or '{1}' in title[0][1]:
                continue

            if not comment or comment[:3] != '-- ':
                continue

            match = comment_pattern.search(comment.lower())
            if not match:
                continue

            glossary_key = None
            if lua_var == 'addonTable.item' and key == 9317:
                glossary_key = 'Red, White and Blue Firework'.lower()
            else:
                glossary_key = utils.get_clean_text(match.group(1).strip())

            glossary_value = utils.get_clean_text(title[0][1].strip())
            glossary[glossary_key] = glossary_value

# ? This function is very very slow
# ? Maybe rework it: instead of parsing Lua, use sqlite database (classicua.db)
def collect_quests(glossary):
    entries_path = '../entries'

    for lua_file, lua_var in [
        (f'{entries_path}/quest_alliance.lua',          'quest_alliance'),
        (f'{entries_path}/quest_alliance_tbc.lua',      'quest_alliance'),
        (f'{entries_path}/quest_alliance_wrath.lua',    'quest_alliance'),

        (f'{entries_path}/quest_horde.lua',             'quest_horde'),
        (f'{entries_path}/quest_horde_tbc.lua',         'quest_horde'),
        (f'{entries_path}/quest_horde_wrath.lua',       'quest_horde'),

        (f'{entries_path}/quest_both.lua',             'quest_both'),
        (f'{entries_path}/quest_both_tbc.lua',         'quest_both'),
        (f'{entries_path}/quest_both_wrath.lua',       'quest_both'),
    ]:
        print(f'Processing {lua_file}')

        table = utils.get_lua_value_from_lua_file(lua_file, lua_var)
        for _, value, _ in table:
            glossary_key = utils.get_clean_text(value[0][2][3:].strip().lower())
            glossary_value = utils.get_clean_text(value[0][1].strip())
            glossary[glossary_key] = glossary_value

def collect_objects(glossary):
    lua_file = '../entries/object.lua'
    print(f'Processing {lua_file}')

    table = utils.get_lua_value_from_lua_file(lua_file, 'addonTable.object')
    for key, value, _ in table:
        glossary_key = utils.get_clean_text(key.lower().strip())
        glossary_value = utils.get_clean_text(value.strip())
        glossary[glossary_key] = glossary_value

def collect_terms(glossary):
    tbx_file = 'translation_from_crowdin/ClassicUA.tbx'
    print(f'Processing {tbx_file}')

    assert False, "FIXME"
    # terms = utils.get_terms_from_tbx(tbx_file)
    # for en_text, uk_text, tags in terms:
    #     glossary_key = en_text.lower()
    #     glossary_value = uk_text.split('/')[0] if '/' in uk_text else uk_text
    #     glossary[glossary_key] = glossary_value

    #     if glossary_key.startswith('the ') and len(glossary_key) > 8:
    #         glossary_key_no_the = glossary_key[4:]
    #         if glossary_key_no_the not in glossary:
    #             glossary[glossary_key_no_the] = glossary_value

    #     if 'локація' in tags:
    #         for t in tags:
    #             if t.startswith('~') and t.endswith('~'):
    #                 glossary_key_alias = utils.get_clean_text(t[1:-1].lower().strip())
    #                 if glossary_key_alias not in glossary:
    #                     glossary[glossary_key_alias] = glossary_value

def print_report(glossary):
    print('-' * 80)
    for key in glossary:
        print(key, '->', glossary[key])

    print('-' * 80)
    print('Total glossary items:', len(glossary))

def main():
    sys.stdout.reconfigure(encoding='utf-8')

    glossary = {}

    collect_spells_and_items(glossary)
    collect_quests(glossary)
    collect_objects(glossary)
    collect_terms(glossary)

    glossary = dict(sorted(glossary.items()))

    utils.write_lua_glossary_file('translation_from_crowdin/entries', 'glossary', glossary)

    print_report(glossary)

main()
