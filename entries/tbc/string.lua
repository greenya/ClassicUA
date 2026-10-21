local _, addonTable = ...

-- the global strings the tbc client words otherwise than classic (see classic/string.lua); the later clients load
-- these too, so a string they word otherwise again needs a file of their own
-- reference: Helix/GlobalStrings.lua of the tbc client (2.5.6)

local global_strings = {
{ "CONTESTED_TERRITORY", "(Спірна територія)" }, -- "(Contested Territory)"
{ "FACTION_CONTROLLED_TERRITORY", "(Контроль території: %s)" }, -- "(%s Territory)"
{ "FACTION_STANDING_DECREASED", "Репутація з фракцією \"%s\" зменшилась на %d." }, -- "Reputation with %s decreased by %d."
{ "FACTION_STANDING_INCREASED", "Репутація з фракцією \"%s\" зросла на %d." }, -- "Reputation with %s increased by %d."
{ "FREE_FOR_ALL_TERRITORY", "(PvP зона)" }, -- "(PvP Area)"
{ "LEVEL_UP_CHAR_POINTS", "Ви отримали %d |4очко:очка:очок; талантів." }, -- "You have gained %d talent |4point:points;."
{ "SPELL_FAILED_NO_MOUNTS_ALLOWED", "Ви не можете їздити верхи тут." }, -- "You can't mount here."
{ "SPELL_FAILED_NOT_BEHIND", "Ви маєте перебувати за спиною цілі." }, -- "You must be behind your target."
{ "SPELL_FAILED_ONLY_STEALTHED", "Ви маєте перебувати в непомітності." }, -- "You must be in stealth mode."
{ "SPELL_FAILED_UNIT_NOT_INFRONT", "Ціль має бути перед вами." }, -- "Target needs to be in front of you."
{ "TIME_DAYHOURMINUTESECOND", "%d д, %d год, %d хв, %d сек" }, -- "%d |4day:days;, %d |4hour:hours;, %d |4minute:minutes;, %d |4second:seconds;"
}

if not addonTable.string_globals then
    addonTable.string_globals = {}
end
for _, s in ipairs(global_strings) do
    addonTable.string_globals[s[1]] = s[2]
end
