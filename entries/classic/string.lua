local _, addonTable = ...

-- direct translation of some global strings, by the name of the global
-- please keep in alphabetical order for easier maintenance
-- a later expansion's string.lua replaces the ones its client words otherwise
-- reference: https://www.townlong-yak.com/framexml/era/Helix/GlobalStrings.lua
-- use /dump command to query any value in-game, e.g. "/dump CONTESTED_TERRITORY"

local global_strings = {
{ "AMMOSLOT", "Набої" }, -- "Ammo"
{ "AVAILABLE_QUESTS", "Доступні завдання" }, -- "Available Quests"
{ "AZEROTH", "Азерот"}, -- "Azeroth"
{ "BACKSLOT", "Спина" }, -- "Back"
{ "BAGSLOT", "Сумка" }, -- "Bag"
{ "CHARACTER_INFO", "Інформація про персонажа" }, -- "Character Info"
{ "CHESTSLOT", "Груди" }, -- "Chest"
{ "CLEARED_AFK", "Ви повернулися." }, -- "You are no longer AFK."
{ "CLEARED_DND", "Режим \"Не турбувати\" деактивовано." }, -- "You are no longer marked DND."
{ "COMBAT_ZONE", "(Бойова зона)" }, -- "(Combat Zone)"
{ "COMPLETE", "Завершено" }, -- "Complete"
{ "CONTESTED_TERRITORY", "Спірна територія" }, -- "Contested Territory"
{ "COPPER_AMOUNT", "%d |4мідна монета:мідні монети:мідних монет;" }, -- "%d Copper"
{ "COPPER_AMOUNT_SYMBOL", "м" }, -- "c"
{ "CURRENT_QUESTS", "Поточні завдання" }, -- "Current Quests"
{ "CURRENTLY_EQUIPPED", "Наразі споряджено" }, -- "Currently Equipped"
{ "DEFAULT_AFK_MESSAGE", "Відлучилися" }, -- "Away from Keyboard"
{ "DEFAULT_AGILITY_TOOLTIP", "Збільшує силу атаки зброєю дальнього бою.\nЗбільшує ймовірність завдання критичного удару всією зброєю.\nЗбільшує броню та ймовірність ухилення від атак." }, -- "Increases attack power with ranged weapons.\nImproves chance to score a critical hit with all weapons.\nIncreases armor and chance to dodge attacks."
{ "DEFAULT_DND_MESSAGE", "Не турбувати" }, -- "Do not Disturb"
{ "DEFAULT_STAMINA_TOOLTIP", "Збільшує запас здоров'я." }, -- "Increases health points."
{ "DEFAULT_STRENGTH_TOOLTIP", "Збільшує силу атаки зброєю ближнього бою." }, -- "Increases attack power with melee weapons."
{ "ENTERING_COMBAT", "Початок бою" }, -- "Entering Combat"
{ "EXPERIENCE_COLON", "Досвід:" }, -- "Experience:"
{ "ERR_ABILITY_COOLDOWN", "Здібність ще не готова." }, -- "Ability is not ready yet."
{ "ERR_AUTOLOOT_MONEY_S", "Ваша здобич: %s" }, -- "You loot %s"
{ "ERR_EXHAUSTION_EXHAUSTED", "Ви виснажені." }, -- "You feel exhausted."
{ "ERR_EXHAUSTION_NORMAL", "Ви почуваєтеся нормально." }, -- "You feel normal."
{ "ERR_EXHAUSTION_RESTED", "Ви відпочиваєте." }, -- "You feel rested."
{ "ERR_EXHAUSTION_TIRED", "Ви втомлені." }, -- "You feel tired."
{ "ERR_EXHAUSTION_WELLRESTED", "Ви добре відпочили." }, -- "You feel well rested."
{ "ERR_GENERIC_NO_TARGET", "У вас немає цілі." }, -- "You have no target."
{ "ERR_INTERNAL_BAG_ERROR", "Внутрішня помилка сумки" }, -- "Internal Bag Error"
{ "ERR_INVALID_ATTACK_TARGET", "Ви не можете атакувати цю ціль." }, -- "You cannot attack that target."
{ "ERR_ITEM_COOLDOWN", "Предмет ще не готовий." }, -- "Item is not ready yet."
{ "ERR_LEARN_ABILITY_S", "Ви вивчили нову здібність: %s." }, -- "You have learned a new ability: %s."
{ "ERR_LEARN_PASSIVE_S", "Ви отримали новий пасивний ефект: %s." }, -- "You have learned a new passive effect: %s."
{ "ERR_LEARN_SPELL_S", "Ви вивчили нове закляття: %s." }, -- "You have learned a new spell: %s."
{ "ERR_LEFT_GROUP_S", "%s полишає групу." }, -- "%s leaves the party."
{ "ERR_LEFT_GROUP_YOU", "Ви полишаєте групу." }, -- "You leave the group."
{ "ERR_MAIL_INVALID_ATTACHMENT_SLOT", "Ви не можете прикріпити більше 12 предметів до листа." }, -- "You cannot attach more than 12 items to mail."
{ "ERR_NEWTAXIPATH", "Відкрито новий маршрут польоту!" }, -- "New flight path discovered!"
{ "ERR_NO_ATTACK_TARGET", "Немає чого атакувати." }, -- "There is nothing to attack."
{ "ERR_OUT_OF_COMBO_POINTS", "Ця здібність має завершувати комбінацію" }, -- "That ability requires combo points"
{ "ERR_OUT_OF_ENERGY", "Недостатньо енергії" }, -- "Not enough energy"
{ "ERR_OUT_OF_FOCUS", "Недостатньо концентрації" }, -- "Not enough focus"
{ "ERR_OUT_OF_HEALTH", "Недостатньо здоров'я" }, -- "Not enough health"
{ "ERR_OUT_OF_MANA", "Недостатньо мани" }, -- "Not enough mana"
{ "ERR_OUT_OF_RAGE", "Недостатньо люті" }, -- "Not enough rage"
{ "ERR_OUT_OF_RANGE", "Поза зоною дії." }, -- "Out of range."
{ "ERR_QUEST_ACCEPTED_S", "Завдання прийнято: %s" }, -- "Quest accepted: %s"
{ "ERR_QUEST_COMPLETE_S", "Завдання виконано: %s" }, -- "%s completed."
{ "ERR_QUEST_REWARD_EXP_I", "Досвіду отримано: %d." }, -- "Experience gained: %d."
{ "ERR_QUEST_REWARD_MONEY_MOD_S", "Отримано %s (+%s)." }, -- "Received %s (+%s)."
{ "ERR_QUEST_REWARD_MONEY_S", "Отримано %s." }, -- "Received %s."
{ "ERR_SKILL_GAINED_S", "Ви отримали вміння \"%s\"." }, -- "You have gained the %s skill."
{ "ERR_SKILL_UP_SI", "Ваше вміння \"%s\" збільшено до %d." }, -- "Your skill in %s has increased to %d."
{ "ERR_SPELL_COOLDOWN", "Закляття ще не готове." }, -- "Spell is not ready yet."
{ "ERR_SPELL_OUT_OF_RANGE", "Поза зоною дії." }, -- "Out of range."
{ "ERR_ZONE_EXPLORED", "Відкрито нову територію: %s" }, -- "Discovered: %s"
{ "ERR_ZONE_EXPLORED_XP", "Відкрито нову територію: %s. Отримано %d |4очко:очка:очок; досвіду." }, -- "Discovered %s: %d experience gained"
{ "FACTION_ALLIANCE", "Альянс" }, -- "Alliance"
{ "FACTION_CONTROLLED_TERRITORY", "Контроль території: %s" }, -- "%s Territory"
{ "FACTION_HORDE", "Орда" }, -- "Horde"
{ "FACTION_STANDING_DECREASED", "Ваша репутація з фракцією \"%s\" зменшилась на %d." }, -- "Your %s reputation has decreased by %d."
{ "FACTION_STANDING_DECREASED_GENERIC", "Репутація з фракцією \"%s\" погіршилась." }, -- "Reputation with %s decreased."
{ "FACTION_STANDING_INCREASED", "Ваша репутація з фракцією \"%s\" зросла на %d." }, -- "Your %s reputation has increased by %d."
{ "FACTION_STANDING_INCREASED_GENERIC", "Репутація з фракцією \"%s\" покращилась." }, -- "Reputation with %s increased."
{ "FEETSLOT", "Ступні" }, -- "Feet"
{ "FINGER0SLOT", "Палець" }, -- "Finger"
{ "FINGER1SLOT", "Палець" }, -- "Finger"
{ "FREE_FOR_ALL_TERRITORY", "PvP зона" }, -- "PvP Area"
{ "GOLD_AMOUNT", "%d |4золота:золоті:золотих;" }, -- "%d Gold"
{ "GOLD_AMOUNT_SYMBOL", "з" }, -- "g"
{ "GREED", "Не відмовлюсь" }, -- "Greed"
{ "HANDSSLOT", "Руки" }, -- "Hands"
{ "HEADSLOT", "Голова" }, -- "Head"
{ "HONOR", "Честь" }, -- "Honor"
{ "IGNORED_QUEST_DISPLAY", "|cff000000%s (ігнорується)|r" }, -- "|cff000000%s (ignored)|r"
{ "ITEM_DELTA_DESCRIPTION", "Заміна цього предмету призведе до зміни наступних характеристик:" }, -- "If you replace this item, the following stat changes will occur:"
{ "ITEM_DELTA_MULTIPLE_COMPARISON_DESCRIPTION", "Заміна цих предметів призведе до зміни наступних характеристик:" }, -- "If you replace these items, the following stat changes will occur:"
{ "ITEM_OPENABLE", "<Клацніть правою кнопкою щоб відкрити>" }, -- "<Right Click to Open>"
{ "ITEM_READABLE", "<Клацніть правою кнопкою щоб прочитати>" }, -- "<Right Click to Read>"
{ "ITEM_SIGNABLE", "<Клацніть правою кнопкою для подробиць>" }, -- "<Right Click for Details>"
{ "ITEM_STARTS_QUEST", "Цей предмет розпочинає завдання" }, -- "This Item Begins a Quest"
{ "KEYRING", "Кільце для ключів" }, -- "Keyring"
{ "LEARN_SPELL_OBJECTIVE", "Вивчіть закляття:" }, -- "Learn Spell:"
{ "LEAVING_COMBAT", "Завершення бою" }, -- "Leaving Combat"
{ "LEGSSLOT", "Ноги" }, -- "Legs"
{ "LEVEL_UP", "Вітаємо! Ви досягли %d-го рівня!" }, -- "Congratulations, you have reached level %d!"
{ "LEVEL_UP_CHAR_POINTS", "Ви отримали %d очко таланту." }, -- "You have gained %d talent point."
{ "LEVEL_UP_HEALTH", "Ви отримали %d од. здоров'я." }, -- "You have gained %d hit points."
{ "LEVEL_UP_HEALTH_MANA", "Ви отримали %d од. здоров'я і %d од. мани." }, -- "You have gained %d hit points and %d mana."
{ "LEVEL_UP_STAT", "Ваша характеристика \"%s\" збільшена на %d." }, -- "Your %s increases by %d."
{ "LOOT_ITEM_PUSHED_SELF", "Ви отримали предмет: %s." }, -- "You receive item: %s."
{ "LOOT_ITEM_PUSHED_SELF_MULTIPLE", "Ви отримали предмет: %sx%d." }, -- "You receive item: %sx%d."
{ "LOOT_ITEM_SELF", "Ваша здобич: %s." }, -- "You receive loot: %s."
{ "LOOT_ITEM_SELF_MULTIPLE", "Ваша здобич: %sx%d." }, -- "You receive loot: %sx%d."
{ "MAINHANDSLOT", "Основна рука" }, -- "Main Hand"
{ "MARKED_AFK", "Ви тимчасово відсутні." }, -- "You are now AFK."
{ "MARKED_AFK_MESSAGE", "Ви тимчасово відсутні: %s" }, -- "You are now AFK: %s"
{ "MARKED_DND", "Режим \"Не турбувати\" активовано: %s." }, -- "You are now DND: %s."
{ "MINIMAP_LABEL", "Мінікарта" }, -- "Minimap"
{ "NECKSLOT", "Шия" }, -- "Neck"
{ "NEED", "Потрібно" }, -- "Need"
{ "OUT_OF_ENERGY", "Недостатньо енергії" }, -- "Not enough energy"
{ "OUT_OF_FOCUS", "Недостатньо концентрації" }, -- "Not enough focus"
{ "OUT_OF_HEALTH", "Недостатньо здоров'я" }, -- "Not enough health"
{ "OUT_OF_MANA", "Недостатньо мани" }, -- "Not enough mana"
{ "OUT_OF_RAGE", "Недостатньо люті" }, -- "Not enough rage"
{ "PASS", "Відмовляюсь" }, -- "Pass"
{ "POSTMASTER_PIPE_DRAENOR", "Дренор" }, -- "Draenor"
{ "POSTMASTER_PIPE_EASTERNKINGDOMS", "Східні Королівства" }, -- "Eastern Kingdoms"
{ "POSTMASTER_PIPE_KALIMDOR", "Калімдор" }, -- "Kalimdor"
{ "POSTMASTER_PIPE_NORTHREND", "Нортренд" }, -- "Northrend"
{ "POSTMASTER_PIPE_OUTLAND", "Позамежжя" }, -- "Outland"
{ "POSTMASTER_PIPE_PANDARIA", "Пандарія" }, -- "Pandaria"
{ "QUEST_DESCRIPTION", "Опис" }, -- "Description"
{ "QUEST_OBJECTIVES", "Доручення" }, -- "Quest Objectives"
{ "QUEST_SPELL_NEEDED", "Вивчіть закляття: %s" }, -- "Learn Spell: %s"
-- @taint
-- { "RAID_TARGET_1", "Зірка" }, -- "Star"
-- { "RAID_TARGET_2", "Коло" }, -- "Circle"
-- { "RAID_TARGET_3", "Ромб" }, -- "Diamond"
-- { "RAID_TARGET_4", "Трикутник" }, -- "Triangle"
-- { "RAID_TARGET_5", "Місяць" }, -- "Moon"
-- { "RAID_TARGET_6", "Квадрат" }, -- "Square"
-- { "RAID_TARGET_7", "Хрест" }, -- "Cross"
-- { "RAID_TARGET_8", "Череп" }, -- "Skull"
-- { "RAID_TARGET_ICON", "Мітка цілі рейду" }, -- "Raid Target Icon"
-- { "RAID_TARGET_NONE", "Немає" }, -- "None"
{ "RANGEDSLOT", "Дальній бій" }, -- "Ranged"
{ "RELICSLOT", "Реліквія" }, -- "Relic"
{ "REPUTATION", "Репутація" }, -- "Reputation"
{ "REQUIRED_MONEY", "Потрібні гроші:" }, -- "Required Money:"
{ "REWARDS", "Винагороди" }, -- "Rewards"
{ "REWARD_ABILITY", "Ви навчитеся наступному:" }, -- "You will learn the following:"
{ "REWARD_AURA", "На вас буде накладено наступне закляття:" }, -- "The following will be cast on you:"
{ "REWARD_CHOICES", "Ви зможете обрати одну з цих винагород:" }, -- "You will be able to choose one of these rewards:"
{ "REWARD_CHOOSE", "Оберіть собі винагороду:" }, -- "Choose your reward:"
{ "REWARD_FOLLOWER", "До вас приєднаються послідовники:" }, -- "You will gain these followers:"
{ "REWARD_ITEMS", "Ви також отримаєте:" }, -- "You will also receive:"
{ "REWARD_ITEMS_ONLY", "Ви отримаєте:" }, -- "You will receive:"
{ "REWARD_SPELL", "Ви навчитеся:" }, -- "You will learn:"
{ "REWARD_TITLE", "Вас буде удостоєно званням:" }, -- "You shall be granted the title:"
{ "REWARD_TRADESKILL_SPELL", "Ви навчитеся створювати:" }, -- "You will learn how to create:"
{ "REWARD_UNLOCK", "Ви відкриєте доступ до наступного:" }, -- "You will unlock access to the following:"
{ "SANCTUARY_TERRITORY", "(Прихисток)" }, -- "(Sanctuary)"
{ "SECONDARYHANDSLOT", "Неосновна рука" }, -- "Off Hand"
{ "SHIELDSLOT", "Щит" }, -- "Shield"
{ "SHIRTSLOT", "Сорочка" }, -- "Shirt"
{ "SHOULDERSLOT", "Плечі" }, -- "Shoulders"
{ "SILVER_AMOUNT", "%d |4срібна:срібні:срібних;" }, -- "%d Silver"
{ "SILVER_AMOUNT_SYMBOL", "с" }, -- "s"
{ "SKILL_RANK_UP", "Ваше вміння \"%s\" збільшено до %d." }, -- "Your skill in %s has increased to %d."
{ "SKILLS", "Навички" }, -- "Skills"
{ "SPELL_FAILED_AURA_BOUNCED", "На ціль діє потужніше закляття" }, -- "A more powerful spell is already active"
{ "SPELL_FAILED_BAD_TARGETS", "Хибна ціль" }, -- "Invalid target"
{ "SPELL_FAILED_ERROR", "Внутрішня помилка" }, -- "Internal error"
{ "SPELL_FAILED_HIGHLEVEL", "Рівень цілі надто високий" }, -- "Target is too high level"
{ "SPELL_FAILED_INTERRUPTED", "Перервано" }, -- "Interrupted"
{ "SPELL_FAILED_INTERRUPTED_COMBAT", "Перервано" }, -- "Interrupted"
{ "SPELL_FAILED_ITEM_NOT_READY", "Предмет ще не готовий" }, -- "Item is not ready yet"
{ "SPELL_FAILED_LOWLEVEL", "Рівень цілі надто низький" }, -- "Target is too low level"
{ "SPELL_FAILED_MOVING", "Не можна робити це в русі" }, -- "Can't do that while moving"
{ "SPELL_FAILED_NO_COMBO_POINTS", "Ця здібність має завершувати комбінацію" }, -- "That ability requires combo points"
{ "SPELL_FAILED_NO_MOUNTS_ALLOWED", "Ви не можете їздити верхи тут" }, -- "You can't mount here"
{ "SPELL_FAILED_NOT_BEHIND", "Ви маєте перебувати за спиною цілі" }, -- "You must be behind your target"
{ "SPELL_FAILED_NOTHING_TO_DISPEL", "Немає чого розвіювати" }, -- "Nothing to dispel"
{ "SPELL_FAILED_ONLY_MOUNTED", "Можна використовувати лише верхи" }, -- "Can only use while mounted"
{ "SPELL_FAILED_ONLY_OUTDOORS", "Можна використовувати лише просто неба" }, -- "Can only use outside"
{ "SPELL_FAILED_ONLY_STEALTHED", "Ви маєте перебувати в непомітності" }, -- "You must be in stealth mode"
{ "SPELL_FAILED_ONLY_UNDERWATER", "Можна використовувати лише у воді" }, -- "Can only use while swimming"
{ "SPELL_FAILED_UNIT_NOT_INFRONT", "Ціль має бути перед вами" }, -- "Target needs to be in front of you"
{ "SPELL_STAT1_NAME", "Сила" }, -- "Strength"
{ "SPELL_STAT2_NAME", "Спритність" }, -- "Agility"
{ "SPELL_STAT3_NAME", "Витривалість" }, -- "Stamina"
{ "SPELL_STAT4_NAME", "Інтелект" }, -- "Intellect"
{ "SPELL_STAT5_NAME", "Дух" }, -- "Spirit"
{ "STRENGTH_COLON", "Сила:" }, -- "Strength:"
{ "TABARDSLOT", "Гербова накидка" }, -- "Tabard"
{ "TAXINODEYOUAREHERE", "Ви знаходитесь тут" }, -- "You are here"
{ "TIME_DAYHOURMINUTESECOND", "%d д, %s год, %d хв, %d сек" }, -- "%d days, %s hours, %d minutes, %d seconds"
{ "TIME_PLAYED_LEVEL", "Час гри на цьому рівні: %s" }, -- "Time played this level: %s"
{ "TIME_PLAYED_TOTAL", "Загальний час гри: %s" }, -- "Total time played: %s"
{ "TIME_REMAINING", "Часу залишилось:" }, -- "Time Remaining:"
{ "TIME_TEMPLATE_LONG", "%d д, %d год, %d хв, %d сек" }, -- "%d days, %d hours, %d minutes, %d seconds"
{ "TRACKING", "Вистежування" }, -- "Tracking"
{ "TRINKET0SLOT", "Дрібничка" }, -- "Trinket"
{ "TRINKET1SLOT", "Дрібничка" }, -- "Trinket"
{ "TRIVIAL_QUEST_DISPLAY", "|cff000000%s (низький рівень)|r" }, -- "|cff000000%s (low level)|r"
{ "TURN_IN_ITEMS", "Потрібні предмети:" }, -- "Required items:"
{ "WAISTSLOT", "Пояс" }, -- "Waist"
{ "WRISTSLOT", "Зап'ястя" }, -- "Wrist"
-- { "XP", "Досвід" }, -- "XP" // floating combat text font isn't rendering this correctly
{ "YOU_LOOT_MONEY", "Ваша здобич: %s" }, -- "You loot %s"
{ "YOU_LOOT_MONEY_MOD", "Ваша здобич: %s (+%s)" }, -- "You loot %s (+%s)"
{ "ZOOM_IN", "Наблизити" }, -- "Zoom In"
{ "ZOOM_OUT", "Віддалити" }, -- "Zoom Out"
}

-- the game's phrases in its tooltips, by the name of the global; never written into the game's globals, tooltips.lua puts ours into the lines
-- "%S" is ours: it puts the value with the first letter of each of its names capitalized ("Класи: Друїд, Шаман")
-- "%N" is ours: it puts the value as the game wrote it, a player's own text ("<Виготовлено: Varmi>")
-- a number the game writes with "%s" takes "%d" in ours ("%.2f" for a weapon's speed), so a name is never read as that number: the set piece "Bonelink Armor" is no "%s Armor" line
local tooltip_strings = {
{ "AMMO_DAMAGE_TEMPLATE", "Додає %s шкоди за секунду" }, -- "Adds %s damage per second"
{ "AMMO_SCHOOL_DAMAGE_TEMPLATE", "Додає %s шкоди (%s) за секунду" }, -- "Adds %s %s damage per second"
{ "ARMOR_TEMPLATE", "%d броні" }, -- "%s Armor"
{ "CONTAINER_SLOTS", "%2$s (комірок: %1$d)" }, -- "%d Slot %s"
{ "DAMAGE_TEMPLATE", "Шкода: %s – %s" }, -- "%s - %s Damage"
{ "DAMAGE_TEMPLATE_WITH_SCHOOL", "Шкода (%3$s): %1$s – %2$s" }, -- "%s - %s %s Damage"
{ "DPS_TEMPLATE", "(%s шкоди за секунду)" }, -- "(%s damage per second)"
{ "DURABILITY_TEMPLATE", "Міцність: %d / %d" }, -- "Durability %d / %d"
{ "EQUIPMENT_SETS", "Набори спорядження: |cFFFFFFFF%N|r" }, -- "Equipment Sets: |cFFFFFFFF%s|r"
{ "HOURS_ABBR", "%d год" }, -- "%d |4Hr:Hrs;"
{ "INVTYPE_2HWEAPON", "Дворучна" }, -- "Two-Hand"
{ "INVTYPE_AMMO", "Набої" }, -- "Ammo"
{ "INVTYPE_BAG", "Сумка" }, -- "Bag"
{ "INVTYPE_BODY", "Сорочка" }, -- "Shirt"
{ "INVTYPE_CHEST", "Груди" }, -- "Chest"
{ "INVTYPE_CLOAK", "Спина" }, -- "Back"
{ "INVTYPE_FEET", "Ступні" }, -- "Feet"
{ "INVTYPE_FINGER", "Палець" }, -- "Finger"
{ "INVTYPE_HAND", "Руки" }, -- "Hands"
{ "INVTYPE_HEAD", "Голова" }, -- "Head"
{ "INVTYPE_HOLDABLE", "У неосновній руці" }, -- "Held In Off-hand"
{ "INVTYPE_LEGS", "Ноги" }, -- "Legs"
{ "INVTYPE_NECK", "Шия" }, -- "Neck"
{ "INVTYPE_QUIVER", "Сагайдак" }, -- "Quiver"
{ "INVTYPE_RANGED", "Дальній бій" }, -- "Ranged"
{ "INVTYPE_RANGEDRIGHT", "Дальній бій" }, -- "Ranged"
{ "INVTYPE_RELIC", "Реліквія" }, -- "Relic"
{ "INVTYPE_ROBE", "Груди" }, -- "Chest"
{ "INVTYPE_SHIELD", "Неосновна рука" }, -- "Off Hand"
{ "INVTYPE_SHOULDER", "Плечі" }, -- "Shoulder"
{ "INVTYPE_TABARD", "Гербова накидка" }, -- "Tabard"
{ "INVTYPE_THROWN", "Метальна зброя" }, -- "Thrown", the type of the weapon too
{ "INVTYPE_TRINKET", "Дрібничка" }, -- "Trinket"
{ "INVTYPE_WAIST", "Пояс" }, -- "Waist"
{ "INVTYPE_WEAPON", "Одноручна" }, -- "One-Hand"
{ "INVTYPE_WEAPONMAINHAND", "Основна рука" }, -- "Main Hand"
{ "INVTYPE_WEAPONOFFHAND", "Неосновна рука" }, -- "Off Hand"
{ "INVTYPE_WRIST", "Зап'ястя" }, -- "Wrist"
{ "ITEM_BIND_ON_EQUIP", "Прив'язується при спорядженні" }, -- "Binds when equipped"
{ "ITEM_BIND_ON_PICKUP", "Прив'язується при отриманні" }, -- "Binds when picked up"
{ "ITEM_BIND_ON_USE", "Прив'язується при використанні" }, -- "Binds when used"
{ "ITEM_BIND_QUEST", "Предмет завдання" }, -- "Quest Item"
{ "ITEM_CLASSES_ALLOWED", "Класи: %S" }, -- "Classes: %s"
{ "ITEM_CONJURED", "Начаклований предмет" }, -- "Conjured Item"
{ "ITEM_COOLDOWN_TIME", "Відновлення: ще %s" }, -- "Cooldown remaining: %s"
{ "ITEM_COOLDOWN_TIME_MIN", "Відновлення: ще %d хв" }, -- "Cooldown remaining: %d min"
{ "ITEM_COOLDOWN_TIME_SEC", "Відновлення: ще %d с" }, -- "Cooldown remaining: %d sec"
{ "ITEM_COOLDOWN_TOTAL", "(Відновлення: %s)" }, -- "(%s Cooldown)"
{ "ITEM_COOLDOWN_TOTAL_DAYS", "(Відновлення: %d д)" }, -- "(%d |4Day:Days; Cooldown)"
{ "ITEM_COOLDOWN_TOTAL_HOURS", "(Відновлення: %d год)" }, -- "(%d |4Hour:Hours; Cooldown)"
{ "ITEM_COOLDOWN_TOTAL_MIN", "(Відновлення: %d хв)" }, -- "(%d Min Cooldown)"
{ "ITEM_COOLDOWN_TOTAL_SEC", "(Відновлення: %d с)" }, -- "(%d Sec Cooldown)"
{ "ITEM_CREATED_BY", "|cff00ff00<Виготовлено: %N>|r" }, -- "|cff00ff00<Made by %s>|r"
{ "ITEM_DISENCHANT_ANY_SKILL", "Можна розчарувати" }, -- "Disenchantable"
{ "ITEM_DISENCHANT_MIN_SKILL", "Для розчарування потрібно: %S (%d)" }, -- "Disenchanting requires %s (%d)"
{ "ITEM_DISENCHANT_NOT_DISENCHANTABLE", "Не можна розчарувати" }, -- "Cannot be disenchanted"
{ "ITEM_DURATION_DAYS", "Тривалість: %d д" }, -- "Duration: %d days"
{ "ITEM_DURATION_HOURS", "Тривалість: %d год" }, -- "Duration: %d hrs"
{ "ITEM_DURATION_MIN", "Тривалість: %d хв" }, -- "Duration: %d min"
{ "ITEM_DURATION_SEC", "Тривалість: %d с" }, -- "Duration: %d sec"
{ "ITEM_LIMIT_CATEGORY", "Унікальний: %s (%d)" }, -- "Unique: %s (%d)"
{ "ITEM_LIMIT_CATEGORY_MULTIPLE", "Унікальний у спорядженні: %s (%d)" }, -- "Unique-Equipped: %s (%d)"
{ "ITEM_MIN_LEVEL", "Потрібний рівень: %d" }, -- "Requires Level %d"
{ "ITEM_MIN_SKILL", "Потрібно: %S (%d)" }, -- "Requires %s (%d)"
{ "ITEM_MOD_AGILITY", "%c%d спритності" }, -- "%c%d Agility"
{ "ITEM_MOD_BLOCK_VALUE", "Збільшує силу блокування щитом на %s." }, -- "Increases the block value of your shield by %s."
{ "ITEM_MOD_HEALTH", "%c%d здоров'я" }, -- "%c%d Health"
{ "ITEM_MOD_HEALTH_REGEN", "Відновлює %s здоров'я кожні 5 с." }, -- "Restores %s health per 5 sec."
{ "ITEM_MOD_HEALTH_REGENERATION", "Відновлює %s здоров'я кожні 5 с." }, -- "Restores %s health per 5 sec."
{ "ITEM_MOD_INTELLECT", "%c%d інтелекту" }, -- "%c%d Intellect"
{ "ITEM_MOD_MANA", "%c%d мани" }, -- "%c%d Mana"
{ "ITEM_MOD_MANA_REGENERATION", "Відновлює %s мани кожні 5 с." }, -- "Restores %s mana per 5 sec."
{ "ITEM_MOD_SPELL_DAMAGE_DONE", "Збільшує шкоду від магічних заклять і ефектів на %s." }, -- "Increases damage done by magical spells and effects by up to %s."
{ "ITEM_MOD_SPELL_HEALING_DONE", "Збільшує зцілення від магічних заклять і ефектів на %s." }, -- "Increases healing done by magical spells and effects by up to %s."
{ "ITEM_MOD_SPIRIT", "%c%d духу" }, -- "%c%d Spirit"
{ "ITEM_MOD_STAMINA", "%c%d витривалості" }, -- "%c%d Stamina"
{ "ITEM_MOD_STRENGTH", "%c%d сили" }, -- "%c%d Strength"
{ "ITEM_RACES_ALLOWED", "Раси: %S" }, -- "Races: %s"
{ "ITEM_REQ_ALLIANCE", "Лише для Альянсу" }, -- "Alliance Only"
{ "ITEM_REQ_HORDE", "Лише для Орди" }, -- "Horde Only"
{ "ITEM_REQ_REPUTATION", "Потрібна репутація: %s – %s" }, -- "Requires %s - %s"
{ "ITEM_REQ_SKILL", "Потрібно: %S" }, -- "Requires %s"
{ "ITEM_RESIST_ALL", "%c%d опору всім школам" }, -- "%c%d to All Resistances"
{ "ITEM_SOULBOUND", "Прив'язаний до персонажа" }, -- "Soulbound"
{ "ITEM_SPELL_CHARGES", "Зарядів: %d" }, -- "%d |4Charge:Charges;"
{ "ITEM_SPELL_CHARGES_NONE", "Зарядів немає" }, -- "No charges"
{ "ITEM_SPELL_KNOWN", "Уже вивчено" }, -- "Already known"
{ "ITEM_UNIQUE", "Унікальний" }, -- "Unique"
{ "ITEM_UNIQUE_EQUIPPABLE", "Унікальний у спорядженні" }, -- "Unique-Equipped"
{ "ITEM_UNIQUE_MULTIPLE", "Унікальний (%d)" }, -- "Unique (%d)"
{ "ITEM_WRAPPED_BY", "|cff00ff00<Подарунок від: %N>|r" }, -- "|cff00ff00<Gift from %s>|r"
{ "ITEM_WRITTEN_BY", "Автор: %N" }, -- "Written by %s"
{ "MINUTES_ABBR", "%d хв" }, -- "%d |4Min:Mins;"
{ "RETRIEVING_ITEM_INFO", "Отримання інформації про предмет" }, -- "Retrieving item information"
{ "SECONDS_ABBR", "%d с" }, -- "%d |4Sec:Secs;"
{ "SELL_PRICE", "Ціна продажу" }, -- "Sell Price"
{ "SHIELD_BLOCK_TEMPLATE", "%d блокування" }, -- "%d Block"
{ "TRANSMOGRIFY_TOOLTIP_APPEARANCE_UNKNOWN", "Ви ще не зібрали цей вигляд" }, -- "You haven't collected this appearance"
}

-- the phrases and names the game has no global of (item classes, stats, reputation standings), by the english text;
-- lowercase as inside a line, tooltips.lua capitalizes a line's first letter
local tooltip_texts = {
{ "Ammo Pouch", "підсумок" },
{ "Arcane", "аркана" },
{ "Arcane Damage", "шкода від аркани" },
{ "%c%d Arcane Resistance", "%c%d опору аркані" },
{ "Arcane Resistance", "опір аркані" },
{ "%c%d Armor", "%c%d броні" }, -- a bonus to armor: an enchantment ("+10 Armor"), or a line under the armor on WoW: Forever
{ "Armor", "броня" },
{ "Armor Penetration", "пробиття броні" },
{ "Arrow", "стріла" },
{ "Attack Power", "сила атаки" },
{ "Attack Power In Forms", "сила атаки у формах" },
{ "Axe", "сокира" },
{ "Block", "блокування" },
{ "Block Value", "сила блокування" },
{ "Bonus Armor", "додаткова броня" },
{ "Bonus Damage", "бонус шкоди" },
{ "Bonus Healing", "бонус зцілення" },
{ "Bow", "лук" },
{ "Bullet", "куля" },
{ "Cloth", "тканина" },
{ "Critical Strike", "критичний удар" },
{ "Critical Strike (Melee)", "критичний удар (ближній бій)" },
{ "Critical Strike (Ranged)", "критичний удар (дальній бій)" },
{ "Critical Strike (Spell)", "критичний удар (закляття)" },
{ "Crossbow", "арбалет" },
{ "Dagger", "кинджал" },
{ "Damage Per Second", "шкода за секунду" },
{ "%d |4Day:Days; %d |4Hr:Hrs;", "%d д %d год" }, -- a time of two units ("(1 Day 2 Hrs Cooldown)")
{ "Defense", "захист" },
{ "Dodge", "ухилення" },
{ "Enchanting Bag", "сумка зачарувальника" },
{ "Engineering Bag", "сумка інженера" },
{ "Exalted", "возвеличена" },
{ "Expertise", "вправність" },
{ "Fire", "вогонь" },
{ "Fire Damage", "шкода від вогню" },
{ "%c%d Fire Resistance", "%c%d опору вогню" },
{ "Fire Resistance", "опір вогню" },
{ "Fishing Pole", "вудка" },
{ "Fist Weapon", "кулачна зброя" },
{ "Friendly", "дружня" },
{ "Frost", "крига" },
{ "Frost Damage", "шкода від криги" },
{ "%c%d Frost Resistance", "%c%d опору кризі" },
{ "Frost Resistance", "опір кризі" },
{ "Gun", "рушниця" },
{ "Haste", "швидкість" },
{ "Hated", "ненависна" },
{ "Health", "здоров'я" },
{ "Health Per 5 Sec.", "здоров'я кожні 5 с" },
{ "Health Regeneration", "відновлення здоров'я" },
{ "Herb Bag", "сумка травника" },
{ "Hit", "влучання" },
{ "Hit (Melee)", "влучання (ближній бій)" },
{ "Hit (Ranged)", "влучання (дальній бій)" },
{ "Hit (Spell)", "влучання (закляття)" },
{ "Holy", "святість" },
{ "Holy Damage", "шкода святістю" },
{ "%c%d Holy Resistance", "%c%d опору святості" },
{ "Holy Resistance", "опір святості" },
{ "Honored", "почесна" },
{ "Hostile", "ворожа" },
{ "%d |4Hr:Hrs; %d |4Min:Mins;", "%d год %d хв" },
{ "Idol", "ідол" },
{ "Leather", "шкіра" },
{ "Libram", "лібрам" },
{ "Lockpicking", "зламування замків" },
{ "Mace", "булава" },
{ "Mail", "кольчуга" },
{ "Mana", "мана" },
{ "Mana Regeneration", "відновлення мани" },
{ "%d |4Min:Mins; %d |4Sec:Secs;", "%d хв %d с" },
{ "Miscellaneous", "різне" },
{ "Nature", "природа" },
{ "Nature Damage", "шкода від природи" },
{ "%c%d Nature Resistance", "%c%d опору природі" },
{ "Nature Resistance", "опір природі" },
{ "Neutral", "нейтральна" },
{ "Parry", "парирування" },
{ "Plate", "лати" },
{ "Polearm", "держакова зброя" },
{ "PvP Resilience", "PvP-стійкість" },
{ "Ranged Attack Power", "сила атаки дальнього бою" },
{ "Revered", "шанована" },
{ "Riding", "верхова їзда" },
{ "Shadow", "тінь" },
{ "Shadow Damage", "шкода від тіні" },
{ "%c%d Shadow Resistance", "%c%d опору тіні" },
{ "Shadow Resistance", "опір тіні" },
{ "Shield", "щит" },
{ "Soul Bag", "сумка для душ" },
{ "Spear", "спис" },
{ "Speed %s", "Швидкість %.2f" },
{ "Spell Penetration", "проникність заклять" },
{ "Spell Power", "сила заклять" },
{ "Staff", "посох" },
{ "Sword", "меч" },
{ "Totem", "тотем" },
{ "Unfriendly", "недружня" },
{ "Wand", "жезл" },
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
if not addonTable.string_tooltip_text then
    addonTable.string_tooltip_text = {}
end
for _, s in ipairs(tooltip_texts) do
    addonTable.string_tooltip_text[s[1]] = s[2]
end
