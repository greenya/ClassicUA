local _, addonTable = ...

local sod_spells = {

-- See /entries/classic/spell.lua for data format details.
[408953] = { "Сповнення натхненням", nil, "Сповнюється натхненням." }, -- Building Inspiration

-- Chest Rune Ability
[399954] = { "Здібність руни нагрудника", "Надягніть нагрудних з руною, щоб активувати цю здібність.", nil }, -- Chest Rune Ability

-- Crushing Darkness
[427774] = { "Нищівна пітьма", "Ви відчуваєте потойбічний тиск нищівної сили.", "Вас огортає нищівна пітьма..." }, -- Crushing Darkness

-- Hands Rune Ability
[399967] = { "Здібність руни рукавиць", "Надягніть рукавиці з руною, щоб активувати цю здібність.", nil }, -- Hands Rune Ability

-- Legs Rune Ability
[399966] = { "Здібність руни штанів", "Надягніть штани з руною, щоб активувати цю здібність.", nil }, -- Legs Rune Ability

-- Pockets of Treats
[398117] = { "Смаколик в кишені", "Відкрити мішок і покласти в кишеню цілі смаколик, що збільшить шкоду від звірів по цій цілі на {1}.#target by {1}", "Пахне смачно! Звірі наносять на {1} більше шкоди.#deal {1} extra" }, -- Pockets of Treats

-- Runecarving
[398603] = { "Вирізання рун", "Нанести на ваше спорядження потужні руни.", nil }, -- Runecarving

}

for k, v in pairs(sod_spells) do addonTable.spell[k] = v end
