import re
from xml.etree import ElementTree
import utils

# TODO: impl Terms.get_issues(), which should check for all possible/known issues

# the tags of the terms an npc description may refer to
npc_desc_tags = ('ранг', 'група', 'клас', 'титул')

class Terms(list['Term']):

    @staticmethod
    def from_tbx(filename: str) -> 'Terms':
        tree = ElementTree.parse(filename)
        root = tree.getroot()
        namespace_map = { 'xml': 'http://www.w3.org/XML/1998/namespace' }
        result = Terms()

        for entry in root.findall('.//termEntry', namespaces=namespace_map):
            term_elem_en = entry.find('langSet[@xml:lang="en"]/tig/term', namespaces=namespace_map)
            text_en = utils.get_clean_text(term_elem_en.text)

            descrip_elem_en = entry.find('langSet[@xml:lang="en"]/tig/descrip[@type="definition"]', namespaces=namespace_map)
            desc_en = utils.get_clean_text(', '.join(descrip_elem_en.text.split('\n')))

            term_elem_uk = entry.find('langSet[@xml:lang="uk"]/tig/term', namespaces=namespace_map)
            text_uk = utils.get_clean_text(term_elem_uk.text)

            term = Term(text_en, desc_en, text_uk)
            result.append(term)

        return result

    def __repr__(self) -> str:
        return f'@terms len={len(self)}'

    def npcs(self) -> 'Terms':
        return filter(lambda t: t.is_npc(), self)

    def locations(self) -> 'Terms':
        return filter(lambda t: t.is_location(), self)

    def translate_npc_desc(self, text_en: str, fallback=None, is_female=False) -> str:
        return self.translate(text_en, fallback, is_female, only_tags=npc_desc_tags)

    def translate(self, text_en: str, fallback=None, is_female=False, only_tags=None) -> str:
        text_en_lower = text_en.lower()

        text_en_lower_patterns = [
            text_en_lower,
            text_en_lower.replace('&', 'and'),
            text_en_lower.replace('weapons', 'weapon'), # in "... weapon vendor"
        ]

        if text_en_lower.startswith('the '):
            text_en_lower_patterns.append(text_en_lower[4:])

        # only the terms whose english or alias is one of the patterns, in the glossary's order (a term's english before
        # its alias), rather than all of them on every call
        matches = sorted((match for pattern in text_en_lower_patterns for match in self._index().get(pattern, [])),
                         key=lambda match: (match[0], match[1]))

        for _, is_alias, term in matches:
            if only_tags and not any(term.has_tag(tag) for tag in only_tags):
                continue

            return term.text_uk if is_alias else term.translation(is_female=is_female)

        return fallback

    def _index(self) -> dict:
        # english, lowercased, and a location's aliases -> [(position, is_alias, term)], built once
        if not hasattr(self, '_matches'):
            self._matches = {}
            for position, term in enumerate(self):
                self._matches.setdefault(term.text_en.lower(), []).append((position, False, term))
                if term.is_location():
                    for alias in term.location_aliases():
                        self._matches.setdefault(alias.lower(), []).append((position, True, term))
        return self._matches

class Term:

    def __init__(self, text_en: str, desc_en: str, text_uk: str) -> None:
        self.text_en = text_en
        self.text_uk = text_uk
        self.tags = list(x.replace('_', ',') for x in map(str.strip, desc_en.split(',')))

    def __repr__(self) -> str:
        return f'@term {self.text_en} -> {self.text_uk}'

    def has_tag(self, tag: str) -> bool:
        return tag in self.tags

    def is_npc(self) -> bool:
        return self.has_tag('нпц')

    def is_female(self) -> bool:
        return self.has_tag('жін')

    def is_minor(self) -> bool:
        return self.has_tag('мінорний')

    def is_location(self) -> bool:
        return self.has_tag('локація')

    def translation(self, is_female=False) -> str:
        cases = self.text_uk.split('/', maxsplit=1)
        return cases[1] if is_female and len(cases) > 1 else cases[0]

    def name_forms(self, name: str) -> tuple[str, str]:
        if not self.is_minor():
            return name, ''

        masculine, _, feminine = name.partition('/')
        return masculine, feminine

    def desc(self, known_terms: Terms = None) -> str:
        for tag in self.tags:
            if tag.startswith('<') and tag.endswith('>'):
                desc = tag[1:-1].strip()
                return known_terms.translate_npc_desc(desc, fallback=desc, is_female=self.is_female()) if known_terms else desc

        return ''

    def npc_id_tags(self, known_terms: Terms = []) -> list['NpcIdTag']:
        assert self.is_npc()

        result = []
        for tag in self.tags:
            if tag.startswith('#'):
                id_npc = self._parse_npc_id_tag(tag, known_terms)
                result.append(id_npc)

        return result

    def location_aliases(self) -> list[str]:
        assert self.is_location()

        result = []
        for tag in self.tags:
            if tag.startswith('~') and tag.endswith('~') and len(tag) > 2:
                alias = tag[1:-1].strip()
                if alias:
                    result.append(alias)

        return result

    def _parse_npc_id_tag(self, tag: str, known_terms: Terms) -> 'NpcIdTag':
        assert tag.startswith('#')

        # npc id_tag format: #ID[:EXPANSION][ NPC NAME CAN INCLUDE SPACES][ <NPC DESC CAN INCLUDE SPACES>]

        npc_id, npc_name = tag.split(' ', maxsplit=1) if ' ' in tag else (tag, None)
        npc_id, npc_exp = npc_id.split(':', maxsplit=1) if ':' in npc_id else (npc_id, 'classic')
        npc_id = int(npc_id[1:])
        npc_desc_orig = self.desc()

        npc_name_en = '' if npc_name else self.text_en
        if not npc_name:
            npc_name = self.text_uk

        match_name_with_desc = re.search('^(.*)<(.*)>$', npc_name)
        if match_name_with_desc:
            npc_name = match_name_with_desc[1].strip()
            npc_desc_orig = match_name_with_desc[2].strip()

            # only a description after the id: the name is the term's own, and so is its english
            if not npc_name:
                npc_name = self.text_uk
                npc_name_en = self.text_en

        npc_desc = known_terms.translate_npc_desc(npc_desc_orig, fallback=npc_desc_orig, is_female=self.is_female())

        npc_name, npc_name_feminine = self.name_forms(npc_name)
        npc_desc_feminine = ''
        if npc_name_feminine and npc_desc:
            npc_desc_feminine = known_terms.translate_npc_desc(npc_desc_orig, fallback=npc_desc_orig, is_female=True)
            if npc_desc_feminine == npc_desc:
                npc_desc_feminine = ''

        if npc_desc == npc_desc_orig:
            npc_desc_orig = ''

        return NpcIdTag(npc_id, npc_exp, npc_name, npc_desc, npc_name_en, npc_desc_orig,
                        npc_name_feminine, npc_desc_feminine)

class NpcIdTag:

    def __init__(self, id: int, exp: str, name: str, desc: str = '', name_en: str = '', desc_en: str = '',
                 name_feminine: str = '', desc_feminine: str = '') -> None:
        self.id = id
        self.exp = exp
        self.name = name
        self.desc = desc
        self.name_en = name_en
        self.desc_en = desc_en
        self.name_feminine = name_feminine
        self.desc_feminine = desc_feminine

    def __repr__(self) -> str:
        return str.strip(' '.join(filter(None, [
            f'@npc_id_tag #{self.id}:{self.exp} {self.name}',
            f'<{self.desc}>' if self.desc else '',
            f'name_feminine={self.name_feminine}' if self.name_feminine else '',
            f'desc_feminine={self.desc_feminine}' if self.desc_feminine else '',
            f'name_en={self.name_en}' if self.name_en else '',
            f'desc_en={self.desc_en}' if self.desc_en else '',
        ])))
