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

-- the tbc client's own tooltip phrases (see classic/string.lua)
local tooltip_strings = {
{ "EMPTY_SOCKET_BLUE", "Синє гніздо" }, -- "Blue Socket"
{ "EMPTY_SOCKET_META", "Гніздо для мета-самоцвіта" }, -- "Meta Socket"
{ "EMPTY_SOCKET_NO_COLOR", "Призматичне гніздо" }, -- "Prismatic Socket"
{ "EMPTY_SOCKET_PRISMATIC", "Призматичне гніздо" }, -- "Prismatic Socket"
{ "EMPTY_SOCKET_RED", "Червоне гніздо" }, -- "Red Socket"
{ "EMPTY_SOCKET_YELLOW", "Жовте гніздо" }, -- "Yellow Socket"
{ "GEM_TEXT_BLUE", "Пасує до синього гнізда." }, -- "Matches a Blue Socket."
{ "GEM_TEXT_GREEN", "Пасує до синього або жовтого гнізда." }, -- "Matches a Blue or Yellow Socket."
{ "GEM_TEXT_META", "Вставляється лише в гніздо для мета-самоцвіта." }, -- "Only fits in a Meta socket."
{ "GEM_TEXT_ORANGE", "Пасує до червоного або жовтого гнізда." }, -- "Matches a Red or Yellow Socket."
{ "GEM_TEXT_PRISMATIC", "Пасує до червоного, жовтого або синього гнізда." }, -- "Matches a Red, Yellow or Blue Socket."
{ "GEM_TEXT_PURPLE", "Пасує до червоного або синього гнізда." }, -- "Matches a Red or Blue Socket."
{ "GEM_TEXT_RED", "Пасує до червоного гнізда." }, -- "Matches a Red Socket."
{ "GEM_TEXT_YELLOW", "Пасує до жовтого гнізда." }, -- "Matches a Yellow Socket."
{ "ITEM_ACCOUNTBOUND", "Прив'язаний до облікового запису" }, -- "Account Bound"
{ "ITEM_BIND_TO_ACCOUNT", "Прив'язується до облікового запису" }, -- "Binds to account"
{ "ITEM_BIND_TO_BNETACCOUNT", "Прив'язується до облікового запису Blizzard" }, -- "Binds to Blizzard account"
{ "ITEM_BNETACCOUNTBOUND", "Прив'язаний до облікового запису Blizzard" }, -- "Blizzard Account Bound"
{ "ITEM_COOLDOWN_TIME_DAYS", "Відновлення: ще %d д" }, -- "Cooldown remaining: %d |4day:days;"
{ "ITEM_COOLDOWN_TIME_HOURS", "Відновлення: ще %d год" }, -- "Cooldown remaining: %d |4hour:hours;"
{ "ITEM_MOD_ARMOR_PENETRATION_RATING", "Збільшує показник пробиття броні на %s." }, -- "Increases your armor penetration by %s."
{ "ITEM_MOD_ATTACK_POWER", "Збільшує силу атаки на %s." }, -- "Increases attack power by %s."
{ "ITEM_MOD_BLOCK_RATING", "Збільшує показник блокування щитом на %s." }, -- "Increases your shield block rating by %s."
{ "ITEM_MOD_CRIT_MELEE_RATING", "Збільшує показник критичного удару ближнього бою на %s." }, -- "Improves melee critical strike rating by %s."
{ "ITEM_MOD_CRIT_RANGED_RATING", "Збільшує показник критичного удару дальнього бою на %s." }, -- "Improves ranged critical strike rating by %s."
{ "ITEM_MOD_CRIT_RATING", "Збільшує показник критичного удару на %s." }, -- "Improves critical strike rating by %s."
{ "ITEM_MOD_CRIT_SPELL_RATING", "Збільшує показник критичного удару заклять на %s." }, -- "Improves spell critical strike rating by %s."
{ "ITEM_MOD_DEFENSE_SKILL_RATING", "Збільшує показник захисту на %s." }, -- "Increases defense rating by %s."
{ "ITEM_MOD_DODGE_RATING", "Збільшує показник ухилення на %s." }, -- "Increases your dodge rating by %s."
{ "ITEM_MOD_EXPERTISE_RATING", "Збільшує показник вправності на %s." }, -- "Increases your expertise rating by %s."
{ "ITEM_MOD_FERAL_ATTACK_POWER", "Збільшує силу атаки на %s в подобі кота, ведмедя, лютого ведмедя та місячного совуха." }, -- "Increases attack power by %s in Cat, Bear, Dire Bear, and Moonkin forms only."
{ "ITEM_MOD_HASTE_MELEE_RATING", "Збільшує показник швидкості ближнього бою на %s." }, -- "Improves melee haste rating by %s."
{ "ITEM_MOD_HASTE_RANGED_RATING", "Збільшує показник швидкості дальнього бою на %s." }, -- "Improves ranged haste rating by %s."
{ "ITEM_MOD_HASTE_RATING", "Збільшує показник швидкості на %s." }, -- "Improves haste rating by %s."
{ "ITEM_MOD_HASTE_SPELL_RATING", "Збільшує показник швидкості заклять на %s." }, -- "Improves spell haste rating by %s."
{ "ITEM_MOD_HIT_MELEE_RATING", "Збільшує показник влучності ближнього бою на %s." }, -- "Improves melee hit rating by %s."
{ "ITEM_MOD_HIT_RANGED_RATING", "Збільшує показник влучності дальнього бою на %s." }, -- "Improves ranged hit rating by %s."
{ "ITEM_MOD_HIT_RATING", "Збільшує показник влучності на %s." }, -- "Improves hit rating by %s."
{ "ITEM_MOD_HIT_SPELL_RATING", "Збільшує показник влучності заклять на %s." }, -- "Improves spell hit rating by %s."
{ "ITEM_MOD_PARRY_RATING", "Збільшує показник парирування на %s." }, -- "Increases your parry rating by %s."
{ "ITEM_MOD_RANGED_ATTACK_POWER", "Збільшує силу атаки дальнього бою на %s." }, -- "Increases ranged attack power by %s."
{ "ITEM_MOD_RESILIENCE_RATING", "Збільшує показник стійкості на %s." }, -- "Improves your resilience rating by %s."
{ "ITEM_MOD_SPELL_PENETRATION", "Збільшує проникність заклять на %s." }, -- "Increases spell penetration by %s."
{ "ITEM_MOD_SPELL_POWER", "Збільшує силу заклять на %s." }, -- "Increases spell power by %s."
{ "ITEM_RANDOM_ENCHANT", "<Випадкові чари>" }, -- "<Random enchantment>"
{ "ITEM_REQ_ARENA_RATING", "Потрібен особистий і командний рейтинг арени %d" }, -- "Requires personal and team arena rating of %d"
{ "ITEM_REQ_ARENA_RATING_3V3", "Потрібен особистий рейтинг арени %d|nу категорії 3 на 3." }, -- "Requires personal arena rating of %d|nin the 3v3 bracket."
{ "ITEM_REQ_ARENA_RATING_5V5", "Потрібен особистий рейтинг арени %d|nу категорії 5 на 5" }, -- "Requires personal arena rating of %d|nin 5v5 brackets"
{ "ITEM_REQ_ARENA_RATING_BG", "Потрібен рейтинг полів битв %d або|nособистий рейтинг арени %d" }, -- "Requires battleground rating of %d or|npersonal arena rating of %d"
{ "ITEM_SOCKETABLE", "<Shift + клацання правою кнопкою: вставити самоцвіти>" }, -- "<Shift Right Click to Socket>"
{ "ITEM_SOCKET_BONUS", "Бонус гнізд: %s" }, -- "Socket Bonus: %s"
}

if not addonTable.string_globals then
    addonTable.string_globals = {}
end
for _, s in ipairs(global_strings) do
    addonTable.string_globals[s[1]] = s[2]
end
if not addonTable.string_tooltip then
    addonTable.string_tooltip = {}
end
for _, s in ipairs(tooltip_strings) do
    addonTable.string_tooltip[s[1]] = s[2]
end
