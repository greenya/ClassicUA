local _, addonTable = ...

-- the item tags of season of discovery (see classic/string.lua)
local tooltip_texts = {
{ "Bloodied", "закривавлений" },
{ "Core Forged", "викуваний у Ядрі" },
{ "Draconic", "драконячий" },
{ "Molten", "палаючий" },
{ "Raid Unique (%d)", "унікальний у рейді (%d)" },
{ "Sanctified", "освячений" },
{ "Scarlet Uniform", "уніформа Багряного Походу" },
{ "Season of Discovery", "Сезон відкриттів" },
{ "Shadowflame", "тіньового полум'я" },
{ "Soulfrost", "душеморозу" },
{ "Timeworn", "зношений часом" },
{ "Void-Touched", "торкнутий Порожнечею" },
}

if not addonTable.string_tooltip_text then
    addonTable.string_tooltip_text = {}
end
for _, s in ipairs(tooltip_texts) do
    addonTable.string_tooltip_text[s[1]] = s[2]
end
