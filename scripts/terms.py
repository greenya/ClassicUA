import re
from xml.etree import ElementTree
import utils

# TODO: impl Terms.get_issues(), which should check for all possible/known issues

class Terms(list['Term']):

    def __repr__(self) -> str:
        return f'@terms len={len(self)}'

    def npcs(self) -> 'Terms':
        return filter(lambda t: t.is_npc(), self)

    def locations(self) -> 'Terms':
        return filter(lambda t: t.is_location(), self)

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

class Term:

    def __init__(self, text_en: str, desc_en: str, text_uk: str) -> None:
        self.text_en = text_en
        self.text_uk = text_uk
        self.tags = list(x.replace('_', ',') for x in map(str.strip, desc_en.split(',')))

    def __repr__(self) -> str:
        return f'@term {self.text_en} -> {self.text_uk}'

    def is_npc(self) -> bool:
        return 'нпц' in self.tags

    def is_female(self) -> bool:
        return 'жін' in self.tags

    def is_location(self) -> bool:
        return 'локація' in self.tags

    def desc(self, known_terms: Terms = None) -> str:
        for tag in self.tags:
            if tag.startswith('<') and tag.endswith('>'):
                desc = tag[1:-1].strip()
                return self._resolve_desc(desc, known_terms) if known_terms else desc

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

            if not npc_name:
                npc_name = self.text_uk

        npc_desc = self._resolve_desc(npc_desc_orig, known_terms)
        if npc_desc == npc_desc_orig:
            npc_desc_orig = ''

        return NpcIdTag(npc_id, npc_exp, npc_name, npc_desc, npc_name_en, npc_desc_orig)

    def _resolve_desc(self, desc: str, known_terms: Terms) -> str:
        desc_lower = desc.lower()

        desc_lower_patterns = [
            desc_lower,
            desc_lower.replace('&', 'and'),
            desc_lower.replace('weapons', 'weapon'), # in "... weapon vendor"
        ]

        if desc_lower.startswith('the '):
            desc_lower_patterns.append(desc_lower[4:])

        for term in known_terms:
            if term.text_en.lower() in desc_lower_patterns:
                cases = term.text_uk.split('/', maxsplit=1)
                return cases[1] if self.is_female() and len(cases) > 1 else cases[0]

        return desc

class NpcIdTag:

    def __init__(self, id: int, exp: str, name: str, desc: str = '', name_en: str = '', desc_en: str = '') -> None:
        self.id = id
        self.exp = exp
        self.name = name
        self.desc = desc
        self.name_en = name_en
        self.desc_en = desc_en

    def __repr__(self) -> str:
        return str.strip(' '.join(filter(None, [
            f'@npc_id_tag #{self.id}:{self.exp} {self.name}',
            f'<{self.desc}>' if self.desc else '',
            f'name_en={self.name_en}' if self.name_en else '',
            f'desc_en={self.desc_en}' if self.desc_en else '',
        ])))
