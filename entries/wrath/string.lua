local _, addonTable = ...

-- see classic/string.lua

local global_strings = {
{ "POSTMASTER_PIPE_NORTHREND", "Нортренд" }, -- "Northrend"
}

local tooltip_strings = {
{ "ITEM_LEVEL", "Рівень предмета: %d" }, -- "Item Level %d"
{ "ITEM_LEVEL_RANGE_CURRENT", "Потрібний рівень: %d – %d (%d)" }, -- "Requires level %d to %d (%d)"
{ "ITEM_REQ_ARENA_RATING", "Потрібен рейтинг арени %d" }, -- "Requires arena rating of %d"
{ "ITEM_REQ_ARENA_RATING_3V3", "Потрібен рейтинг арени %d|nу категоріях 3 на 3 або 5 на 5" }, -- "Requires arena rating of %d|nin 3v3 or 5v5 brackets"
{ "ITEM_REQ_ARENA_RATING_5V5", "Потрібен рейтинг арени %d|nу категорії 5 на 5" }, -- "Requires arena rating of %d|nin 5v5 brackets"
{ "MAJOR_GLYPH", "Великий символ" }, -- "Major Glyph"
{ "MINOR_GLYPH", "Малий символ" }, -- "Minor Glyph"
{ "RUNIC_POWER_COST", "%d рунічної сили" }, -- "%s Runic Power"
}

local tooltip_texts = {
{ "Grand Master", "великий майстер" },
{ "Heroic", "героїчний" },
{ "Inscription Bag", "сумка писаря" },
}

if not addonTable.string_globals then
    addonTable.string_globals = {}
    addonTable.string_tooltip = {}
    addonTable.string_tooltip_text = {}
end
for _, s in ipairs(global_strings) do
    addonTable.string_globals[s[1]] = s[2]
end
for _, s in ipairs(tooltip_strings) do
    addonTable.string_tooltip[s[1]] = s[2]
end
for _, s in ipairs(tooltip_texts) do
    addonTable.string_tooltip_text[s[1]] = s[2]
end
