local _, addonTable = ...

-- see classic/string.lua

local global_strings = {
{ "LEVEL_UP", "Вітаємо! Ви досягли |cffFF4E00|Hlevelup:%d:LEVEL_UP_TYPE_CHARACTER|h[%d-го рівня]|h|r!" }, -- "Congratulations, you have reached |cffFF4E00|Hlevelup:%d:LEVEL_UP_TYPE_CHARACTER|h[Level %d]|h|r!"
}

local tooltip_strings = {
{ "EMPTY_SOCKET_COGWHEEL", "гніздо для шестірні" }, -- "Cogwheel Socket"
{ "HOLY_POWER_COST", "%d сили Світла" }, -- "%s Holy Power"
{ "REFORGED", "Перековано" }, -- "Reforged"
{ "SOUL_SHARDS_COST", "Осколки душі: %d" }, -- "%s Soul |4Shard:Shards;"
}

local tooltip_texts = {
{ "%c%s Mastery", "%c%d майстерності" },
{ "Illustrious", "видатний майстер" },
{ "Reforged from Critical Strike", "перековано з критичного удару" },
{ "Reforged from Dodge", "перековано з ухилення" },
{ "Reforged from Expertise", "перековано з вправності" },
{ "Reforged from Haste", "перековано зі швидкості" },
{ "Reforged from Hit", "перековано з влучності" },
{ "Reforged from Mastery", "перековано з майстерності" },
{ "Reforged from Parry", "перековано з парирування" },
{ "Reforged from Spirit", "перековано з духу" },
{ "Special Ability", "особлива здібність" },
{ "Twilight", "сутінковий" },
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
