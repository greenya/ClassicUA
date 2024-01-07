import re
from pathlib import Path
from xml.etree import ElementTree
from luaparser import ast, astnodes

known_expansions = ('classic', 'sod', 'tbc', 'wrath')
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

# TODO: improve get_terms_from_tbx() so it does:
# - returns ready-to-use special tags (e.g. id_tags, desc_tags, alias_tags etc.)
# - returns resolved desc_tags when needed (e.g. "<Banker>" => "<банкір>" etc.)
# - returns important tags as flags (e.g. is_female, is_npc, is_location etc.)
# ? maybe move all terms related stuff to separate module, and impl it with classes for intellisense (npc gen script should be simple)

def get_terms_from_tbx(filename):
    tree = ElementTree.parse(filename)
    root = tree.getroot()
    namespace_map = { 'xml': 'http://www.w3.org/XML/1998/namespace' }
    terms = []

    for entry in root.findall('.//termEntry', namespaces=namespace_map):
        en = entry.find('langSet[@xml:lang="en"]/tig/term', namespaces=namespace_map)
        en_text = get_clean_text(en.text)

        uk = entry.find('langSet[@xml:lang="uk"]/tig/term', namespaces=namespace_map)
        uk_text = get_clean_text(uk.text)

        desc = entry.find('langSet[@xml:lang="en"]/tig/descrip[@type="definition"]', namespaces=namespace_map)
        tag_text = get_clean_text(', '.join(desc.text.split('\n')))
        tags = list(map(str.strip, tag_text.split(',')))

        terms.append((en_text, uk_text, tags))

    return terms

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

def write_lua_zone_file(path, filename, zones, stats_count):
    Path(path).mkdir(parents=True, exist_ok=True)
    with open(f'{path}/{filename}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        write_lua_autogenerated_file_comment(f)
        f.write('local _, addonTable = ...\n\n')
        f.write('addonTable.zone_stats = { count=%d }\n\n' % stats_count)
        f.write('addonTable.zone = { -- [key] = text\n')

        for key in zones:
            value = zones[key]
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
        f.write('addonTable.gossip = { -- [npc_id] = { [code1] = text1, [code2] = text2, ... }\n')

        for npc_id in gossip:
            npc_texts = gossip[npc_id]

            f.write(f'[{npc_id}] = ' + '{\n')
            for text_code in npc_texts:
                f.write(f'["{text_code}"] = [===[{npc_texts[text_code]}]===],\n')
            f.write('},\n')

        f.write('}\n')

# [!] Any changes made to this func must be kept in sync with Lua impl in main.lua
def get_text_code(text):
    # text = 'Do not turn your back on the Light, warrior, it may be the one thing that saves you some day.'
    result = [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ]
    result_len = len(result)
    text = text.lower()
    # print('TEXT', text)

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

def pack_gossip_string_name(npc_id, en_gossip_text):
    return f'GOSSIP_{npc_id}_{get_text_code(en_gossip_text)}'

def unpack_gossip_string_name(gossip_string_name):
    _, npc_id, text_code = gossip_string_name.split('_', maxsplit=2)
    return int(npc_id), text_code
