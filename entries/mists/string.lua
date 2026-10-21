local _, addonTable = ...

-- the global strings the mists client words otherwise than classic and tbc (see classic/string.lua, tbc/string.lua)
-- reference: the mists client's global strings (5.5.4.70449)

local global_strings = {
{ "ERR_EXHAUSTION_NORMAL", "Ви більше не відпочиваєте." }, -- "You are no longer rested."
{ "LEVEL_UP", "Вітаємо! Ви досягли |cffFF4E00|Hlevelup:%d:LEVEL_UP_TYPE_CHARACTER|h[%d-го рівня]|h|r!" }, -- "Congratulations, you have reached |cffFF4E00|Hlevelup:%d:LEVEL_UP_TYPE_CHARACTER|h[Level %d]|h|r!"
{ "LEVEL_UP_CHAR_POINTS", "Ви отримали %d |4талант:таланти:талантів;." }, -- "You have gained %d |4talent:talents;."
{ "MARKED_DND", "Режим \"Не турбувати\" активовано: %s" }, -- "You are now Busy: %s"
}

if not addonTable.string_globals then
    addonTable.string_globals = {}
end
for _, s in ipairs(global_strings) do
    addonTable.string_globals[s[1]] = s[2]
end
