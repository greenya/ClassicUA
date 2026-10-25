local _, addonTable = ...

-- see classic/string.lua

local tooltip_texts = {
{ "Bloodied", "закривавлений" },
{ "Core Forged", "викуваний у Ядрі" },
{ "Draconic", "драконічний" },
{ "Molten", "палаючий" },
{ "Raid Unique (%d)", "унікальний у рейді (%d)" },
{ "Sanctified", "освячений" },
{ "Scarlet Uniform", "форма Багряного Походу" },
{ "Season of Discovery", "Сезон відкриттів" },
{ "Shadowflame", "загартований тіньовим полум'ям" },
{ "Timeworn", "зношений часом" },
{ "Void-Touched", "просякнутий Порожнечею" },
}

if not addonTable.string_globals then
    addonTable.string_globals = {}
    addonTable.string_tooltip = {}
    addonTable.string_tooltip_text = {}
end
for _, s in ipairs(tooltip_texts) do
    addonTable.string_tooltip_text[s[1]] = s[2]
end
