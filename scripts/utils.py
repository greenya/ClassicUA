from xml.etree import ElementTree

def get_quest_filename(quest_id, quest_title):
    valid_chars = frozenset('-.() abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789')
    return ''.join(c for c in quest_title if c in valid_chars) + '_' + str(quest_id)

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

def get_terms_from_tbx(filename):
    tree = ElementTree.parse(filename)
    root = tree.getroot()
    nsmap = { 'xml': 'http://www.w3.org/XML/1998/namespace' }
    terms = []

    for entry in root.findall('.//termEntry', namespaces=nsmap):
        en = entry.find('langSet[@xml:lang="en"]/tig/term', namespaces=nsmap)
        en_text = en.text

        uk = entry.find('langSet[@xml:lang="uk"]/tig/term', namespaces=nsmap)
        uk_text = uk.text

        desc = entry.find('langSet[@xml:lang="en"]/tig/descrip[@type="definition"]', namespaces=nsmap)
        tag_text = ', '.join(desc.text.split('\n'))
        tags = list(map(str.strip, tag_text.split(',')))

        terms.append((en_text, uk_text, tags))

    return terms

def write_lua_quest_file(path, name, quests):
    with open(f'{path}/{name}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        f.write('local _, addonTable = ...\n')
        f.write('addonTable.' + name + ' = { -- [id] = { title, description, objective, progress, completion }\n')

        for q in quests:
            id, title, objective, description, progress, completion = q.values()

            title = f'[===[{title}]===]'
            objective = f'[===[{objective}]===]' if objective else 'nil'
            description = f'[===[{description}]===]' if description else 'nil'
            progress = f'[===[{progress}]===]' if progress else 'nil'
            completion = f'[===[{completion}]===]' if completion else 'nil'

            f.write(f'[{id}] = ' + '{\n')
            f.write(f'{title},\n')
            f.write(f'{description},\n')
            f.write(f'{objective},\n')
            f.write(f'{progress},\n')
            f.write(f'{completion},\n')
            f.write('},\n')

        f.write('}\n')

def write_lua_zone_file(path, name, zones):
    with open(f'{path}/{name}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        f.write('local _, addonTable = ...\n')
        f.write('addonTable.zone = { -- [key] = text\n')

        for key in zones:
            value = zones[key]
            f.write('["' + key.replace('"', r'\"') + '"] = ' + '"' + value.replace('"', r'\"') + '",\n')

        f.write('}\n')

def write_lua_npc_file(path, name, npcs):
    with open(f'{path}/{name}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        f.write('local _, addonTable = ...\n')
        f.write('addonTable.npc = { -- [id] = { title, description (optional) }\n')

        for id in npcs:
            title, desc, hint = npcs[id]
            f.write('[' + str(id) + '] = { "' + title.replace('"', r'\"') + '"')
            if desc:
                f.write(', "' + desc.replace('"', r'\"') + '"')
            f.write(' },' + f' -- {hint}\n')

        f.write('}\n')

def write_lua_book_file(path, name, books):
    with open(f'{path}/{name}.lua', mode='w', encoding='utf-8', newline='\n') as f:
        f.write('local _, addonTable = ...\n')
        f.write('addonTable.book = { -- [id] = { page1, page2 (optional), page3 (optional), ... }\n')

        for id in books:
            pages, hint = books[id]

            f.write(f'[{id}] = ' + '{' + f' -- {hint}\n')
            for page in pages:
                f.write(f'[===[{page}]===],\n')
            f.write('},\n')

        f.write('}\n')
