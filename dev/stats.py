import locale
from pathlib import Path
from terms import Terms
import utils

# list of extra translations for stat keys (categories) in case the direct value is absent in terms
# add more as necessary; keep in alphabetical order for easier tracking
# add "===" prefix to the value to translate it via terms using provided text (alias)
known_extra_translations = {
    # expansion keys
    "classic"                   : "Класична (Classic)",
    "sod"                       : "Сезон Відкриттів (SOD)",
    "tbc"                       : "Палаючий Похід (TBC)",
    "wrath"                     : "Гнів Короля-ліча (WOTLK)",
    "cata"                      : "Катаклізм (Cataclysm)",

    # general category names, not in terms; maybe we should add them to terms as they probably can be found
    # in Quest Log categories, so having translation of them in terms is beneficial not only to this script
    "Battlegrounds"             : "Поля битв",
    "Classes"                   : "Класи",
    "Dungeons"                  : "Підземелля",
    "Epic"                      : "Епічні",
    "Legendary"                 : "Легендарні",
    "Miscellaneous"             : "Різне",
    "Professions"               : "Професії",
    "Raids"                     : "Рейди",
    "Reputation"                : "Репутація",
    "Special"                   : "Спеціальні",
    "Uncategorized"             : "Без категорії",
    "World Events"              : "Свята",

    # proper category names which most likely should be in terms as they also can be seen as Quest Log categories
    "Ahn'Qiraj War Effort"      : "Військова кампанія Ан'Кіража",   # todo: maybe add to Crowdin terms (event?)
    "Cataclysm"                 : "Катаклізм",                      # todo: maybe add to Crowdin terms (event?)
    "Day of the Dead"           : "День мертвих",                   # todo: maybe add to Crowdin terms (world event)
    "Death Knight"              : "Лицар смерті",                   # todo: maybe add to Crowdin terms (class)
    "Elemental Bonds"           : "Кайдани стихій",                 # todo: maybe add to Crowdin terms (event?, epic quest chain)
    "Firelands Invasion"        : "Вторгнення у Вогнезем'я",        # todo: maybe add to Crowdin terms (event)
    "Lost City Of The Tolvir"   : "Загублене місто Толвірів",       # todo: maybe add to Crowdin terms (location, dungeon)
    "New Year's Eve"            : "Новий рік",                      # todo: maybe add to Crowdin terms (world event)
    "Scourge Invasion"          : "Навала Скари",                   # todo: maybe add to Crowdin terms (event)
    "Tournament"                : "Турнір",                         # todo: maybe add to Crowdin terms (event?)

    # proper category names which just has different name in the database; sometimes its different because in database
    # we use names which are also used as directory names, and some characters cannot be part of the disk file name,
    # for example ":"
    "Acherus The Ebon Hold"     : "===Acherus: The Ebon Hold",
    "Ahnkahet The Old Kingdom"  : "===Ahn'kahet: The Old Kingdom",
    "Azjol Nerub"               : "===Azjol-Nerub",
    "Blades Edge Mountains"     : "===Blade's Edge Mountains",
    "Draktharon Keep"           : "===Drak'Tharon Keep",
    "Isle Of Queldanas"         : "===Isle of Quel'Danas",
    "Kelpthar Forest"           : "===Kelp'thar Forest",
    "Magisters Terrace"         : "===Magisters' Terrace",
    "Magtheridons Lair"         : "===Magtheridon's Lair",
    "Mana Tombs"                : "===Mana-Tombs",
    "Scarlet Enclave"           : "===The Scarlet Enclave",
    "Vashjir"                   : "===Vashj'ir",
}

class Stats:

    terms = None

    @staticmethod
    def init(tbx_path, allow_set_locale_collate = False):
        Stats.terms = Terms.from_tbx(tbx_path)
        Row.translate_name = Stats.translate_name
        if allow_set_locale_collate:
            locale.setlocale(locale.LC_COLLATE, "uk_UA.UTF-8")

    @staticmethod
    def translate_name(name: str) -> str:
        found_name = None

        if name in known_extra_translations:
            found_name = known_extra_translations[name]
            if found_name.startswith("==="):
                found_name = Stats.terms.translate(found_name[3:])
        else:
            found_name = Stats.terms.translate(name)

        return found_name[:1].upper() + found_name[1:] if found_name else name

class Row:

    @staticmethod
    def translate_name(name: str) -> str:
        return name

    def __init__(self, name="root", keep_rows_sorted=True):
        self.name = Row.translate_name(name)
        self.count = 0
        self.total = 0

        self.parent = None
        self.rows = []
        self.keep_rows_sorted = keep_rows_sorted

    def __repr__(self) -> str:
        pad = "|-" * self._depth()
        return f"@row {pad}[{self.name}] {self.count}/{self.total} ({len(self.rows)})"

    def _depth(self) -> int:
        d = 0
        row = self
        while row.parent:
            d += 1
            row = row.parent
        return d

    def _add_child(self, child: "Row") -> None:
        child.parent = self
        self.rows.append(child)

        if self.keep_rows_sorted:
            self.rows.sort(key=lambda r: locale.strxfrm(r.name))

    def row(self, path: str) -> "Row":
        row = self
        for name in path.split("/"):
            name = Row.translate_name(name.strip())
            if not name:
                raise Exception("Part of path cannot be empty", path)

            child_row = next((r for r in row.rows if r.name == name), None)
            if not child_row:
                child_row = Row(name)
                row._add_child(child_row)

            row = child_row

        return row

    def add(self, count=0, total=0) -> "Row":
        if len(self.rows) > 0:
            raise Exception("Cannot add values for row with sub rows", self, count, total)

        prev_count = self.count
        prev_total = self.total

        self.count += count
        self.total += total

        if self.count > self.total:
            raise Exception("Count cannot be greater than total", self, count, total)

        row = self.parent
        while row:
            row.count += -prev_count + self.count
            row.total += -prev_total + self.total
            row = row.parent

        return self

    def print(self) -> None:
        print(self)
        for row in self.rows: row.print()

    def write_lua_file(self, entries_path: str, filename: str, var: str) -> None:
        Path(entries_path).mkdir(parents=True, exist_ok=True)
        with open(f"{entries_path}/{filename}.lua", mode="w", encoding="utf-8", newline="\n") as f:
            utils.write_lua_autogenerated_file_comment(f)
            f.write("local _, addonTable = ...\n\n")
            f.write(f"addonTable.{var} = ")
            self._write_lua_file_row(f)

    def _write_lua_file_row(self, f) -> None:
        pad = "    " * self._depth()
        f.write(pad + "{ ")

        name    = self.name
        count   = self.count
        total   = self.total
        f.write(f"name=\"{name}\", count={count}, total={total}")

        if len(self.rows) > 0:
            f.write(", rows={\n")
            for row in self.rows: row._write_lua_file_row(f)
            f.write(pad + "}")

        final_comma_maybe = "," if self.parent != None else ""
        f.write(" }" + final_comma_maybe + "\n")
