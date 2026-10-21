local _, addonTable = ...

-- the global strings the forever client words otherwise than classic (see classic/string.lua)
-- reference: the forever client's global strings (1.60.1.70338)

local global_strings = {
{ "CONTESTED_TERRITORY", "(Спірна територія)" }, -- "(Contested Territory)"
{ "DEFAULT_AGILITY_TOOLTIP", "Збільшує ймовірність |cFFFFFFFFкритичного удару|r на %.1f%%\nЗбільшує |cFFFFFFFFброню|r на %d\nЗбільшує ймовірність |cFFFFFFFFухилення|r на %.1f%%" }, -- "Increases |cFFFFFFFFCritical Strike|r chance by %.1f%%\nIncreases |cFFFFFFFFArmor|r by %d\nIncreases |cFFFFFFFFDodge|r chance by %.1f%%"
{ "DEFAULT_INTELLECT_TOOLTIP", "Збільшує |cFFFFFFFFману|r на %d\nЗбільшує ймовірність |cFFFFFFFFкритичного удару заклять|r на %.1f%%\nПришвидшує розвиток |cFFFFFFFFнавичок володіння зброєю|r" }, -- "Increases |cFFFFFFFFMana|r by %d\nIncreases |cFFFFFFFFSpell Critical Strike|r chance by %.1f%%\nIncreases |cFFFFFFFFWeapon Skill|r improvement rate"
{ "DEFAULT_SPIRIT_TOOLTIP", "Збільшує |cFFFFFFFFвідновлення здоров\'я|r на %d кожні 5 с поза боєм\n\nЗбільшує |cFFFFFFFFвідновлення мани|r на %d кожні 5 с, поки ви не вимовляєте закляття\n\n|cffBCBCBCВідновлення мани від духу зупиняється на 5 с після витрати мани|r" }, -- "Increases |cFFFFFFFFHealth Regeneration|r by %d per 5 sec while not in combat\n\nIncreases |cFFFFFFFFMana Regeneration|r by %d per 5 sec while not casting\n\n|cffBCBCBCMana Regeneration from Spirit is halted for 5 sec after spending Mana|r"
{ "DEFAULT_STAMINA_TOOLTIP", "Збільшує |cFFFFFFFFздоров'я|r на %s" }, -- "Increases |cFFFFFFFFHealth|r by %s"
{ "DEFAULT_STRENGTH_TOOLTIP", "Збільшує |cFFFFFFFFсилу атаки|r на %d" }, -- "Increases |cFFFFFFFFAttack Power|r by %d"
{ "DRUID_AGILITY_TOOLTIP", "Збільшує ймовірність |cFFFFFFFFкритичного удару|r на %.1f%%\nЗбільшує |cFFFFFFFFсилу атаки|r у котячій подобі на %d\nЗбільшує |cFFFFFFFFброню|r на %d\nЗбільшує ймовірність |cFFFFFFFFухилення|r на %.1f%%" }, -- "Increases |cFFFFFFFFCritical Strike|r chance by %.1f%%\nIncreases |cFFFFFFFFAttack Power|r in Cat Form by %d\nIncreases |cFFFFFFFFArmor|r by %d\nIncreases |cFFFFFFFFDodge|r chance by %.1f%%"
{ "ERR_EXHAUSTION_NORMAL", "Ви більше не відпочиваєте." }, -- "You are no longer rested."
{ "FACTION_CONTROLLED_TERRITORY", "(Контроль території: %s)" }, -- "(%s Territory)"
{ "FACTION_STANDING_DECREASED", "Репутація з фракцією \"%s\" зменшилась на %d." }, -- "Reputation with %s decreased by %d."
{ "FACTION_STANDING_INCREASED", "Репутація з фракцією \"%s\" зросла на %d." }, -- "Reputation with %s increased by %d."
{ "FREE_FOR_ALL_TERRITORY", "(PvP зона)" }, -- "(PvP Area)"
{ "HUNTER_AGILITY_TOOLTIP", "Збільшує ймовірність |cFFFFFFFFкритичного удару|r на %.1f%%\nЗбільшує |cFFFFFFFFсилу атаки|r на %d\nЗбільшує |cFFFFFFFFсилу атаки дальнього бою|r на %d\nЗбільшує |cFFFFFFFFброню|r на %d\nЗбільшує ймовірність |cFFFFFFFFухилення|r на %.1f%%" }, -- "Increases |cFFFFFFFFCritical Strike|r chance by %.1f%%\nIncreases |cFFFFFFFFAttack Power|r by %d\nIncreases |cFFFFFFFFRanged Attack Power|r by %d\nIncreases |cFFFFFFFFArmor|r by %d\nIncreases |cFFFFFFFFDodge|r chance by %.1f%%"
{ "LEVEL_UP", "Вітаємо! Ви досягли |cffFF4E00|Hlevelup:%d:LEVEL_UP_TYPE_CHARACTER|h[рівня %d]|h|r!" }, -- "Congratulations, you have reached |cffFF4E00|Hlevelup:%d:LEVEL_UP_TYPE_CHARACTER|h[Level %d]|h|r!"
{ "LOOT_ITEM_PUSHED_SELF", "Ви отримали предмет: %s" }, -- "You receive item: %s"
{ "LOOT_ITEM_PUSHED_SELF_MULTIPLE", "Ви отримали предмет: %sx%d" }, -- "You receive item: %sx%d"
{ "LOOT_ITEM_SELF", "Ваша здобич: %s" }, -- "You receive loot: %s"
{ "LOOT_ITEM_SELF_MULTIPLE", "Ваша здобич: %sx%d" }, -- "You receive loot: %sx%d"
{ "MARKED_DND", "Режим \"Не турбувати\" активовано: %s" }, -- "You are now Busy: %s"
{ "PALADIN_STRENGTH_TOOLTIP", "Збільшує |cFFFFFFFFсилу атаки|r на %d\nЗбільшує |cFFFFFFFFпоказник блокування|r на %d" }, -- "Increases |cFFFFFFFFAttack Power|r by %d\nIncreases |cFFFFFFFFBlock Value|r by %d"
{ "REWARD_SPELL", "Ви навчитеся наступному:" }, -- "You will learn the following:"
{ "ROGUE_AGILITY_TOOLTIP", "Збільшує ймовірність |cFFFFFFFFкритичного удару|r на %.1f%%\nЗбільшує |cFFFFFFFFсилу атаки|r на %d\nЗбільшує |cFFFFFFFFсилу атаки дальнього бою|r на %d\nЗбільшує |cFFFFFFFFброню|r на %d\nЗбільшує ймовірність |cFFFFFFFFухилення|r на %.1f%%" }, -- "Increases |cFFFFFFFFCritical Strike|r chance by %.1f%%\nIncreases |cFFFFFFFFAttack Power|r by %d\nIncreases |cFFFFFFFFRanged Attack Power|r by %d\nIncreases |cFFFFFFFFArmor|r by %d\nIncreases |cFFFFFFFFDodge|r chance by %.1f%%"
{ "ROGUE_INTELLECT_TOOLTIP", "Пришвидшує розвиток |cFFFFFFFFнавичок володіння зброєю|r" }, -- "Increases |cFFFFFFFFWeapon Skill|r improvement rate"
{ "ROGUE_SPIRIT_TOOLTIP", "Збільшує |cFFFFFFFFвідновлення здоров\'я|r на %d кожні 5 с поза боєм" }, -- "Increases |cFFFFFFFFHealth Regeneration|r by %d per 5 sec while not in combat"
{ "SHAMAN_STRENGTH_TOOLTIP", "Збільшує |cFFFFFFFFсилу атаки|r на %d\nЗбільшує |cFFFFFFFFпоказник блокування|r на %d" }, -- "Increases |cFFFFFFFFAttack Power|r by %d\nIncreases |cFFFFFFFFBlock Value|r by %d"
{ "SPELL_FAILED_NO_MOUNTS_ALLOWED", "Ви не можете їздити верхи тут." }, -- "You can't mount here."
{ "SPELL_FAILED_NOT_BEHIND", "Ви маєте перебувати за спиною цілі." }, -- "You must be behind your target."
{ "SPELL_FAILED_ONLY_STEALTHED", "Ви маєте перебувати в непомітності." }, -- "You must be in stealth mode."
{ "SPELL_FAILED_UNIT_NOT_INFRONT", "Ціль має бути перед вами." }, -- "Target needs to be in front of you."
{ "SPIRIT_STANDING_WARNING", "|cffBCBCBCВідновлення здоров\'я збільшується на 33%, коли ви сидите або лежите|r" }, -- "|cffBCBCBCHealth Regeneration is increased by 33% while sitting or reclining|r"
{ "STAT_ENERGY_TOOLTIP", "Ресурс для використання |cFFFFFFFFздібностей|r\n\nВідновлюється автоматично з часом\n\n|cFFBCBCBCВідновлює 1 од. енергії кожні 0,1 с\n(10 од. енергії щосекунди)|r" }, -- "Resource used to perform |cFFFFFFFFAbilities|r\n\nReplenishes automatically over time\n\n|cFFBCBCBCRegenerates 1 Energy per 0.1 sec\n(10 Energy per 1 sec)|r"
{ "STAT_FOCUS_TOOLTIP", "Максимальний запас концентрації. Концентрація витрачається на здібності й автоматично відновлюється з часом." }, -- "Maximum focus.  Focus is consumed when using abilities and is restored automatically over time."
{ "STAT_HEALTH_PET_TOOLTIP", "Витрачається на |cFFFFFFFFотримання шкоди|r\nКоли падає до 0, настає смерть\n\nЗбільшується від |cFFFFFFFFвитривалості господаря|r\n\n|cFFBCBCBCКожна одиниця витривалості додає 2 од. здоров\'я|r" }, -- "Used for |cFFFFFFFFTaking Damage|r\nResults in death when reduced to 0\n\nIncreased by |cFFFFFFFFMaster's Stamina|r\n\n|cFFBCBCBCEvery 1 Stamina adds 2 Health|r"
{ "STAT_HEALTH_TOOLTIP", "Витрачається на |cFFFFFFFFотримання шкоди|r\nКоли падає до 0, настає смерть\n\nМаксимум збільшує |cFFFFFFFFвитривалість|r\nВідновлення збільшує |cFFFFFFFFдух|r\n\n|cFFBCBCBCВідновлюється автоматично поза боєм\n\nКожна одиниця витривалості додає 10 од. здоров\'я|r" }, -- "Used for |cFFFFFFFFTaking Damage|r\nResults in death when reduced to 0\n\nMaximum increased by |cFFFFFFFFStamina|r\nRegeneration increased by |cFFFFFFFFSpirit|r\n\n|cFFBCBCBCReplenishes automatically while out of combat\n\nEvery 1 Stamina adds 10 Health|r"
{ "STAT_MANA_TOOLTIP", "Ресурс для вимови |cFFFFFFFFзаклять|r і використання |cFFFFFFFFздібностей|r\n\nМаксимум збільшує |cFFFFFFFFінтелект|r\nВідновлення збільшує |cFFFFFFFFдух|r\n\n|cFFBCBCBCВідновлюється автоматично, якщо не витрачати ману 5 с\n\nКожна одиниця інтелекту додає 15 од. мани|r" }, -- "Resource used to cast |cFFFFFFFFSpells|r and |cFFFFFFFFAbilities|r\n\nMaximum increased by |cFFFFFFFFIntellect|r\nRegeneration increased by |cFFFFFFFFSpirit|r\n\n|cFFBCBCBCReplenishes automatically after not spending Mana for 5 sec\n\nEvery 1 Intellect adds 15 Mana|r"
{ "STAT_RAGE_TOOLTIP", "Ресурс для використання |cFFFFFFFFздібностей|r\n\nНакопичується від |cFFFFFFFFотримання шкоди|r і |cFFFFFFFFшкоди ударами зброєю в ближньому бою|r\n\n|cFFBCBCBCПовільніша зброя дає більше люті за удар\n\nПоза боєм щосекунди втрачається 1,25 люті (75 люті щохвилини)|r" }, -- "Resource used to perform |cFFFFFFFFAbilities|r\n\nGenerated by |cFFFFFFFFTaking Damage|r and dealing |cFFFFFFFFMelee Swing Damage|r\n\n|cFFBCBCBCSlower weapons generate more Rage per swing\n\nWhile out of combat, 1.25 Rage is lost every 1 sec (75 Rage per 1 min)|r"
{ "TIME_DAYHOURMINUTESECOND", "%d д, %d год, %d хв, %d сек" }, -- "%d |4day:days;, %d |4hour:hours;, %d |4minute:minutes;, %d |4second:seconds;"
{ "WARRIOR_AGILITY_TOOLTIP", "Збільшує ймовірність |cFFFFFFFFкритичного удару|r на %.1f%%\nЗбільшує |cFFFFFFFFсилу атаки дальнього бою|r на %d\nЗбільшує |cFFFFFFFFброню|r на %d\nЗбільшує ймовірність |cFFFFFFFFухилення|r на %.1f%%" }, -- "Increases |cFFFFFFFFCritical Strike|r chance by %.1f%%\nIncreases |cFFFFFFFFRanged Attack Power|r by %d\nIncreases |cFFFFFFFFArmor|r by %d\nIncreases |cFFFFFFFFDodge|r chance by %.1f%%"
{ "WARRIOR_INTELLECT_TOOLTIP", "Пришвидшує розвиток |cFFFFFFFFнавичок володіння зброєю|r" }, -- "Increases |cFFFFFFFFWeapon Skill|r improvement rate"
{ "WARRIOR_SPIRIT_TOOLTIP", "Збільшує |cFFFFFFFFвідновлення здоров\'я|r на %d кожні 5 с поза боєм" }, -- "Increases |cFFFFFFFFHealth Regeneration|r by %d per 5 sec while not in combat"
{ "WARRIOR_STRENGTH_TOOLTIP", "Збільшує |cFFFFFFFFсилу атаки|r на %d\nЗбільшує |cFFFFFFFFпоказник блокування|r на %d" }, -- "Increases |cFFFFFFFFAttack Power|r by %d\nIncreases |cFFFFFFFFBlock Value|r by %d"
}

if not addonTable.string_globals then
    addonTable.string_globals = {}
end
for _, s in ipairs(global_strings) do
    addonTable.string_globals[s[1]] = s[2]
end
