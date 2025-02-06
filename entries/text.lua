local _, addonTable = ...

-- direct translation of some global strings
-- please keep in alphabetical order for easier maintenance
-- reference: https://www.townlong-yak.com/framexml/era/Helix/GlobalStrings.lua
-- use /dump command to query any value in-game, e.g. "/dump CONTESTED_TERRITORY"

local global_strings = {
{ "AMMOSLOT", "Набої" }, -- "Ammo"
{ "AVAILABLE_QUESTS", "Доступні завдання" }, -- "Available Quests"
{ "AZEROTH", "Азерот"}, -- "Azeroth"
{ "BACKSLOT", "Спина" }, -- "Back"
{ "BAGSLOT", "Сумка" }, -- "Bag"
{ "CHESTSLOT", "Груди" }, -- "Chest"
{ "COMBAT_ZONE", "(Бойова зона)" }, -- "(Combat Zone)"
{ "COMPLETE", "Завершено" }, -- "Complete"
{ "CONTESTED_TERRITORY", "Спірна територія" }, -- "Contested Territory"
{ "CURRENT_QUESTS", "Поточні завдання" }, -- "Current Quests"
{ "EXPERIENCE_COLON", "Досвід:" }, -- "Experience:"
{ "FACTION_ALLIANCE", "Альянс" }, -- "Alliance"
{ "FACTION_CONTROLLED_TERRITORY", "Контроль території: %s" }, -- "%s Territory"
{ "FACTION_HORDE", "Орда" }, -- "Horde"
{ "FEETSLOT", "Ступні" }, -- "Feet"
{ "FINGER0SLOT", "Палець" }, -- "Finger"
{ "FINGER1SLOT", "Палець" }, -- "Finger"
{ "FREE_FOR_ALL_TERRITORY", "PvP зона" }, -- "PvP Area"
{ "GREED", "Не відмовлюсь" }, -- "Greed"
{ "HANDSSLOT", "Руки" }, -- "Hands"
{ "HEADSLOT", "Голова" }, -- "Head"
{ "ITEM_OPENABLE", "<Клацніть правою кнопкою щоб відкрити>" }, -- "<Right Click to Open>"
{ "ITEM_READABLE", "<Клацніть правою кнопкою щоб прочитати>" }, -- "<Right Click to Read>"
{ "ITEM_SIGNABLE", "<Клацніть правою кнопкою для подробиць>" }, -- "<Right Click for Details>"
{ "ITEM_STARTS_QUEST", "Цей предмет розпочинає завдання" }, -- "This Item Begins a Quest"
{ "KEYRING", "Кільце для ключів" }, -- "Keyring"
{ "LEGSSLOT", "Ноги" }, -- "Legs"
{ "MAINHANDSLOT", "Основна рука" }, -- "Main Hand"
{ "MINIMAP_LABEL", "Мінікарта" }, -- "Minimap"
{ "NECKSLOT", "Шия" }, -- "Neck"
{ "NEED", "Потрібно" }, -- "Need"
{ "PASS", "Відмовляюсь" }, -- "Pass"
{ "POSTMASTER_PIPE_DRAENOR", "Дренор" }, -- "Draenor"
{ "POSTMASTER_PIPE_EASTERNKINGDOMS", "Східні Королівства" }, -- "Eastern Kingdoms"
{ "POSTMASTER_PIPE_KALIMDOR", "Калімдор" }, -- "Kalimdor"
{ "POSTMASTER_PIPE_NORTHREND", "Нортренд" }, -- "Northrend"
{ "POSTMASTER_PIPE_OUTLAND", "Позамежжя" }, -- "Outland"
{ "POSTMASTER_PIPE_PANDARIA", "Пандарія" }, -- "Pandaria"
{ "QUEST_DESCRIPTION", "Опис" }, -- "Description"
{ "QUEST_MONSTERS_KILLED", "%s: %d/%d вбито" }, -- "%s slain: %d/%d" -- keep "%s:...", addon will split by ":" and lookup left part for translation
{ "QUEST_OBJECTIVES", "Доручення" }, -- "Quest Objectives"
{ "RAID_TARGET_1", "Зірка" }, -- "Star"
{ "RAID_TARGET_2", "Коло" }, -- "Circle"
{ "RAID_TARGET_3", "Ромб" }, -- "Diamond"
{ "RAID_TARGET_4", "Трикутник" }, -- "Triangle"
{ "RAID_TARGET_5", "Місяць" }, -- "Moon"
{ "RAID_TARGET_6", "Квадрат" }, -- "Square"
{ "RAID_TARGET_7", "Хрест" }, -- "Cross"
{ "RAID_TARGET_8", "Череп" }, -- "Skull"
{ "RAID_TARGET_ICON", "Мітка цілі рейду" }, -- "Raid Target Icon"
{ "RAID_TARGET_NONE", "Немає" }, -- "None"
{ "RANGEDSLOT", "Дальній бій" }, -- "Ranged"
{ "RELICSLOT", "Реліквія" }, -- "Relic"
{ "REQUIRED_MONEY", "Потрібні гроші:" }, -- "Required Money:"
{ "REWARDS", "Винагороди" }, -- "Rewards"
{ "REWARD_ABILITY", "Ви навчитеся наступному:" }, -- "You will learn the following:"
{ "REWARD_AURA", "Ви отримаєте ефект наступного закляття:" }, -- "The following will be cast on you:"
{ "REWARD_CHOICES", "Ви зможете обрати одну з цих винагород:" }, -- "You will be able to choose one of these rewards:"
{ "REWARD_CHOOSE", "Оберіть собі винагороду:" }, -- "Choose your reward:"
{ "REWARD_ITEMS", "Ви також отримаєте:" }, -- "You will also receive:"
{ "REWARD_ITEMS_ONLY", "Ви отримаєте:" }, -- "You will receive:"
{ "REWARD_SPELL", "Ви навчитеся:" }, -- "You will learn:"
{ "REWARD_TITLE", "Вас буде удостоєно званням:" }, -- "You shall be granted the title:"
{ "REWARD_TRADESKILL_SPELL", "Ви навчитеся створювати:" }, -- "You will learn how to create:"
{ "SANCTUARY_TERRITORY", "(Прихисток)" }, -- "(Sanctuary)"
{ "SECONDARYHANDSLOT", "Неосновна рука" }, -- "Off Hand"
{ "SHIELDSLOT", "Щит" }, -- "Shield"
{ "SHIRTSLOT", "Сорочка" }, -- "Shirt"
{ "SHOULDERSLOT", "Плечі" }, -- "Shoulders"
{ "TABARDSLOT", "Гербова накидка" }, -- "Tabard"
{ "TRACKING", "Вистежування" }, -- "Tracking"
{ "TRINKET0SLOT", "Дрібничка" }, -- "Trinket"
{ "TRINKET1SLOT", "Дрібничка" }, -- "Trinket"
{ "TURN_IN_ITEMS", "Потрібні предмети:" }, -- "Required items:"
{ "WAISTSLOT", "Пояс" }, -- "Waist"
{ "WRISTSLOT", "Зап'ястя" }, -- "Wrist"
{ "ZOOM_IN", "Наблизити" }, -- "Zoom In"
{ "ZOOM_OUT", "Віддалити" }, -- "Zoom Out"
}

addonTable.text = {}
for _, s in ipairs(global_strings) do
    local key = s[1]
    local text_en = _G[key]
    if type(text_en) == "string" then
        local text_uk = s[2]
        addonTable.text[text_en] = text_uk
        _G[key] = text_uk
    end
end
