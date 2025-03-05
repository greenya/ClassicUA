import math
import re
from pathlib import Path
from xml.etree import ElementTree
from luaparser import ast, astnodes

known_expansions = ('classic', 'sod', 'tbc', 'wrath', 'cata')
known_sides = ('alliance', 'horde', 'both')

is_str_and_has_only_ascii_chars =\
    lambda s: isinstance(s, str) and s == s.encode(encoding='utf-8').decode('ascii', errors='ignore')

def get_quest_filename(quest_id, quest_title):
    valid_chars = frozenset('-.() abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789')
    return ''.join(c for c in quest_title if c in valid_chars) + '_' + str(quest_id)

def get_clean_text(text):
    '''
    Cleans up given text.

    Examples:
    ```
    * 'ab c' -> (no changes)
    * '\\nabc' -> (no changes)
    * 'abc\\n\\n\\nabc' -> (no changes)
    * ' ' -> ''
    * ' abc ' -> ' abc'
    * 'abc\\n' -> 'abc'
    * 'abc \\n abc' -> 'abc\\n abc'
    * 'ab\u2019c' -> "ab'c"
    * 'a \u201Dbc\u201D' -> 'a "bc"'
    * 'ab \u2013 c' -> 'ab \u2014 c'
    ```
    '''

    lines = text.split('\n')

    last_non_empty_line_idx = -1
    for i in range(len(lines)):
        lines[i] = lines[i]\
            .rstrip()\
            .replace('\u2019', "'")\
            .replace('\u201D', '"')\
            .replace('\u2013', '\u2014')

        if lines[i]:
            last_non_empty_line_idx = i

    return '\n'.join(lines[:last_non_empty_line_idx + 1]) if last_non_empty_line_idx >= 0 else ''

def get_all_strings_from_xml_file(filename) -> list:
    result = []

    for s in ElementTree.parse(filename).getroot().findall('./string'):
        if s.text:
            t = get_clean_text(s.text)
            result.append(t)

    return result

def build_strings_list(strings_en: list, strings_uk: list, hash_func: callable = None, code_func: callable = None) -> list:
    result, issues = [], []
    all_en_hashes, all_en_codes = [], []

    for i in range(len(strings_uk)):
        uk = strings_uk[i]
        en = strings_en[i]

        if uk == en:
            continue

        en_hash = hash_func(en) if hash_func else None
        en_code = code_func(en) if code_func else None

        if en_hash in all_en_hashes:
            issues.append(f'[!] Text hash {en_hash} collision -- new data skipped: "{en}", "{uk}"')
            continue

        if en_code in all_en_codes:
            issues.append(f'[!] Text code "{en_code}" collision -- new data skipped: "{en}", "{uk}"')
            continue

        result.append({
            'en'        : en,
            'uk'        : uk,
            'en_hash'   : en_hash,
            'en_code'   : en_code,
        })

    return result, issues

def get_lua_table_from_ast_node(node: astnodes.Table):
    result = []

    for field in node.fields:
        result.append((
            get_lua_value_from_ast_node(field.key),
            get_lua_value_from_ast_node(field.value),
            field.comments[-1].s if field.comments else None
        ))

    return result

def get_lua_value_from_ast_node(node: astnodes.Node):
    if isinstance(node, astnodes.String):
        return node.s.replace('\\"', '"').replace("\\'", "'")
    elif isinstance(node, astnodes.Number):
        return node.n
    elif isinstance(node, astnodes.Name):
        return f'@{node.id}'
    elif isinstance(node, astnodes.Nil):
        return None
    elif isinstance(node, astnodes.Table):
        return get_lua_table_from_ast_node(node)

    raise Exception('Unsupported node type', node)

def get_lua_value_from_lua_file(filename: str, target_lua_var: str):
    with open(filename, mode='r', encoding='utf-8') as f:
        tree = ast.parse(f.read())
        for node in ast.walk(tree):
            if isinstance(node, astnodes.Assign) and node.values:
                value = node.values[0]
                if isinstance(value, astnodes.Table) and node.targets:
                    target = node.targets[0]

                    lua_var = None
                    if isinstance(target, astnodes.Index):
                        lua_var = f'{target.value.id}.{target.idx.id}'
                    elif isinstance(target, astnodes.Name):
                        lua_var = target.id

                    if lua_var == target_lua_var:
                        return get_lua_value_from_ast_node(value)

def write_xml_quest_file(filename, title, objective, description, progress, completion):
    with open(filename, mode='w', encoding='utf-8', newline='\n') as f:
        f.write('<?xml version="1.0" encoding="utf-8"?>\n')
        f.write('<resources>\n')
        f.write(f'<string name="TITLE"><![CDATA[{title}]]></string>\n')
        if objective:
            f.write(f'<string name="OBJECTIVE"><![CDATA[{objective}]]></string>\n')
        if description:
            f.write(f'<string name="DESCRIPTION"><![CDATA[{description}]]></string>\n')
        if progress:
            f.write(f'<string name="PROGRESS"><![CDATA[{progress}]]></string>\n')
        if completion:
            f.write(f'<string name="COMPLETION"><![CDATA[{completion}]]></string>\n')
        f.write('</resources>\n')

def write_lua_autogenerated_file_comment(f):
    f.write('-- -------------------------------- --\n')
    f.write('-- AUTOGENERATED FILE. DO NOT EDIT. --\n')
    f.write('-- -------------------------------- --\n\n')

def write_lua_assign_or_copy_table_code(f, var):
    f.write(f'if addonTable.{var} then\n')
    f.write(f'    for k, v in pairs({var}) do addonTable.{var}[k] = v end\n')
    f.write('else\n')
    f.write(f'    addonTable.{var} = {var}\n')
    f.write('end\n')

def write_lua_assign_or_merge_table_one_level_code(f, var):
    f.write(f'if addonTable.{var} then\n')
    f.write(f'    for k, v in pairs({var}) do\n')
    f.write(f'        if type(addonTable.{var}[k]) == "table" and type(v) == "table" then\n')
    f.write(f'            for vk, vv in pairs(v) do\n')
    f.write(f'                addonTable.{var}[k][vk] = vv\n')
    f.write(f'            end\n')
    f.write(f'        else\n')
    f.write(f'            addonTable.{var}[k] = v\n')
    f.write(f'        end\n')
    f.write(f'    end\n')
    f.write('else\n')
    f.write(f'    addonTable.{var} = {var}\n')
    f.write('end\n')

def write_lua_quest_file(path, filename, var, quests):
    Path(path).mkdir(parents=True, exist_ok=True)
    with open(f'{path}/{filename}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        write_lua_autogenerated_file_comment(f)
        f.write('local _, addonTable = ...\n\n')
        f.write('local ' + var + ' = { -- [id] = { title, description, objective, progress, completion }\n')

        for q in quests:
            id, en, title, objective, description, progress, completion = q.values()

            title = f'[===[{title}]===]'
            objective = f'[===[{objective}]===]' if objective else 'nil'
            description = f'[===[{description}]===]' if description else 'nil'
            progress = f'[===[{progress}]===]' if progress else 'nil'
            completion = f'[===[{completion}]===]' if completion else 'nil'

            f.write(f'[{id}] = ' + '{ en="' + en.replace('"', r'\"') + '",\n')
            f.write(f'{title},\n')
            f.write(f'{description},\n')
            f.write(f'{objective},\n')
            f.write(f'{progress},\n')
            f.write(f'{completion},\n')
            f.write('},\n')

        f.write('}\n\n')
        write_lua_assign_or_copy_table_code(f, var)

def write_lua_book_file(path, filename, books):
    Path(path).mkdir(parents=True, exist_ok=True)
    with open(f'{path}/{filename}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        write_lua_autogenerated_file_comment(f)
        f.write('local _, addonTable = ...\n\n')
        f.write('local book = { -- [id] = { page1, page2 (optional), page3 (optional), ... }\n')

        for id in books:
            pages, hint = books[id]

            f.write(f'[{id}] = ' + '{' + f' -- {hint}\n')
            for page in pages:
                f.write(f'[===[{page}]===],\n')
            f.write('},\n')

        f.write('}\n\n')
        write_lua_assign_or_copy_table_code(f, 'book')

def write_lua_npc_file(path, filename, npcs):
    Path(path).mkdir(parents=True, exist_ok=True)
    with open(f'{path}/{filename}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        write_lua_autogenerated_file_comment(f)
        f.write('local _, addonTable = ...\n\n')
        f.write('local npc = { -- [id] = { title, description (optional) }\n')

        for id in npcs:
            title, desc, en, hint = npcs[id]
            f.write('[' + str(id) + '] = { "' + title.replace('"', r'\"') + '"')

            if desc:
                f.write(', "' + desc.replace('"', r'\"') + '"')

            if en:
                f.write(', en="' + en.replace('"', r'\"') + '"')

            f.write(' },' + f' -- {hint}\n')

        f.write('}\n\n')
        write_lua_assign_or_copy_table_code(f, 'npc')

def write_lua_zone_file(path, filename, zones):
    Path(path).mkdir(parents=True, exist_ok=True)
    with open(f'{path}/{filename}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        write_lua_autogenerated_file_comment(f)
        f.write('local _, addonTable = ...\n\n')
        f.write('addonTable.zone = { -- [key] = text\n')

        for key in zones:
            value = zones[key]
            f.write('["' + key.replace('"', r'\"') + '"] = ' + '"' + value.replace('"', r'\"') + '",\n')

        f.write('}\n')

def write_lua_misc_file(path, filename, misc):
    Path(path).mkdir(parents=True, exist_ok=True)
    with open(f'{path}/{filename}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        write_lua_autogenerated_file_comment(f)
        f.write('local _, addonTable = ...\n\n')
        f.write('addonTable.misc = { -- [key] = text\n')

        for key in misc:
            value = misc[key]
            f.write('["' + key.replace('"', r'\"') + '"] = ' + '"' + value.replace('"', r'\"') + '",\n')

        f.write('}\n')

def write_lua_glossary_file(path, filename, glossary):
    Path(path).mkdir(parents=True, exist_ok=True)
    with open(f'{path}/{filename}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        write_lua_autogenerated_file_comment(f)
        f.write('local _, addonTable = ...\n\n')
        f.write('addonTable.glossary = { -- [key] = text\n')

        for key in glossary:
            value = glossary[key]
            f.write('["' + key.replace('"', r'\"') + '"] = ' + '"' + value.replace('"', r'\"') + '",\n')

        f.write('}\n')

def write_lua_gossip_file(path, filename, gossip):
    Path(path).mkdir(parents=True, exist_ok=True)
    with open(f'{path}/{filename}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        write_lua_autogenerated_file_comment(f)
        f.write('local _, addonTable = ...\n\n')
        f.write('local gossip = { -- [npc_id] = { [hash]=translation, ..., [!fuzzy]={...} (optional) }, ... }\n')

        for npc_id in gossip:
            npc_name = gossip[npc_id]['name']
            npc_strings = gossip[npc_id]['strings']

            if npc_name:
                f.write(f'[{npc_id}] = ' + '{' + f' -- {npc_name}\n')
            else:
                f.write(f'["{npc_id}"] = ' + '{\n')

            has_en_codes = False

            for string in npc_strings:
                en = string['en']
                uk = string['uk']
                en_hash = string['en_hash']
                en_code = string['en_code']

                if en_code:
                    has_en_codes = True

                for s in en.split('\n'):
                    f.write(f'--{' ' + s if s else ''}\n')

                f.write(f'[{en_hash}] = [===[{uk}]===],\n')

            if has_en_codes:
                f.write('["!fuzzy"] = {\n')

                for string in npc_strings:
                    en_hash = string['en_hash']
                    en_code = string['en_code']
                    if en_code:
                        f.write(f'["{en_code}"] = {en_hash},\n')

                f.write('},\n')

            f.write('},\n')

        f.write('}\n\n')
        write_lua_assign_or_merge_table_one_level_code(f, 'gossip')

def write_lua_chat_file(path, filename, chats):
    Path(path).mkdir(parents=True, exist_ok=True)
    with open(f'{path}/{filename}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        write_lua_autogenerated_file_comment(f)
        f.write('local _, addonTable = ...\n\n')
        f.write('local chat = { -- [npc_name_en] = { [1] = npc_name_uk (optional), [code1] = text1, [code2] = text2, ... }\n')

        for npc_name in chats:
            npc_name_uk = chats[npc_name]['uk']
            npc_strings = chats[npc_name]['strings']

            if npc_name_uk:
                f.write('["' + npc_name.replace('"', r'\"') + '"] = { "' + npc_name_uk.replace('"', r'\"') + '",\n')
            else:
                f.write('["' + npc_name.replace('"', r'\"') + '"] = {\n')

            for text_code in npc_strings:
                text_en = npc_strings[text_code]['en']
                text_uk = npc_strings[text_code]['uk']

                for s in text_en.split('\n'):
                    f.write(f'--{' ' + s if s else ''}\n')

                f.write(f'["{text_code}"] = [===[{text_uk}]===],\n')

            f.write('},\n')

        f.write('}\n\n')
        write_lua_assign_or_merge_table_one_level_code(f, 'chat')

# [!] Any changes made to string_hash() func must be kept in sync with Lua impl
def string_hash(text: str) -> int:
    if not text:
        return 0

    counter = 1
    text_len = len(text)
    for i in range(0, text_len, 3):
        counter = math.fmod(counter * 8161, 4294967279) +\
            (ord(text[i]) * 16776193) +\
            ((ord(text[i+1]) if text_len > i+1 else (text_len - (i+1) + 256)) * 8372226) +\
            ((ord(text[i+2]) if text_len > i+2 else (text_len - (i+1) + 256)) * 3932164)

    return int(math.fmod(counter, 4294967291))

# [!] Any changes made to get_text_hash() func must be kept in sync with Lua impl
def get_text_hash(text: str) -> int:
    return string_hash(text.strip().lower()) if isinstance(text, str) else 0

# [!] Keep in sync with prepare_get_text_code_replace_seq in main.lua (except runtime player name)
get_text_code_replace_seq = (
    # player races (keep in sync with entries/race.lua)
    '<race>',
    'human',
    'dwarf',
    'night elf',
    'gnome',
    'orc',
    'troll',
    'undead',
    'tauren',
    'draenei',
    'blood elf',
    'worgen',
    'goblin',

    # player classes (keep in sync with entries/class.lua)
    '<class>',
    'warrior',
    'paladin',
    'hunter',
    'rogue',
    'priest',
    'shaman',
    'mage',
    'warlock',
    'druid',
    'death knight',

    # player name
    '<name>',
)

# [!] Any changes made to get_text_code() func must be kept in sync with Lua impl in main.lua
def get_text_code(text):
    # text = 'Do not turn your back on the Light, warrior, it may be the one thing that saves you some day.'
    # text = 'Hello, Death Knight. Every hunter of our tribe worships shamanistic duty.'
    # text = 'I was wondering when I'd see you again, <name>.'
    # text = 'Hail, <class>!'
    # print('TEXT1', text)

    result = [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ]
    result_len = len(result)
    text = text.lower()
    # print('TEXT2', text)

    for p in get_text_code_replace_seq:
        text = text.replace(p, '')
    # print('TEXT3', text)

    result_fill_idx = 0
    for word in re.findall(r'(\w+)', text):
        if len(word) > 0:
            if result_fill_idx >= result_len:
                break

            for i in range(len(word)):
                result[result_fill_idx] = word[i]
                # print(result_fill_idx, ''.join(result))
                result_fill_idx += 1
                if result_fill_idx >= result_len:
                    break

    result_idx = 0
    result_rewind = 0
    for word in re.findall(r'(\w+)', text):
        if len(word) > 0:
            result[result_idx] = word[0]
            # print(result_idx, ''.join(result))
            result_idx += 1
            if result_idx >= result_len:
                result_rewind = result_rewind + 1 if result_rewind < result_len - 1 else result_len - 4
                result_idx = result_rewind

    # print('CODE', ''.join(result))
    return ''.join(result)

known_gossip_dynamic_seq_with_multiple_words_for_get_text_code = (
    ("night elf", "nightelf"),
    ("blood elf", "bloodelf"),
    ("death knight", "deathknight"),
    ("demon hunter", "demonhunter"),
    ("void elf", "voidelf"),
    ("lightforged draenei", "lightforgeddraenei"),
    ("dark iron dwarf", "darkirondwarf"),
    ("kul tiran", "kultiran"),
    ("highmountain tauren", "highmountaintauren"),
    ("mag'har orc", "magharorc"),
    ("zandalari troll", "zandalaritroll"),
)

def get_chat_code(text):
    text = text.lower()
    for p in known_gossip_dynamic_seq_with_multiple_words_for_get_text_code:
        text = text.replace(p[0], p[1])

    words = re.findall(r"""([\w<][\w\-'/]*[\w>])""", text)  # matches words with at least 2 word-characters and allows punctuation characters inside (boss-lady, ma'am, etc)
    result = list()
    for word in words:
        if len(word) > 0:
            if word.startswith('<') and word.endswith('>'):
                #  It is <class>, <race>, <name>, <target> or gender-specific text (<his/her>)
                template_type = word[1:-1]
                if template_type in ('class', 'race'):
                    result.append('..')
                elif template_type in ('name', 'target'):
                    result.append('.-')
                elif '/' in template_type:
                    # FIXME: if gender template contains space - it will not work (like <he's a king/she's a queen>)
                    male_word, female_word = template_type.split('/')
                    if male_word[0] == female_word[0]:
                        result.append(male_word[0])
                    else:
                        result.append('.')
                    if male_word[-1] == female_word[-1]:
                        result.append(male_word[-1])
                    else:
                        result.append('.')
            else:
                result.append(word[0])
                result.append(word[-1])

    return ''.join(result)
