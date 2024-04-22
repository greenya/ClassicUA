local _, addonTable = ...
local items = {

-- See /entries/classic/item.lua for data format details.

[7906] = { "роги Нез'ри" }, -- Horns of Nez'ra
[9594] = { "зменшений звір" }, -- Beast Muisek
[9618] = { "посудина зменшення звірів", use="Зменшити та захопити мертвого звіра." }, -- Beast Muisek Vessel
[9628] = { "мішечок трав Зераша" }, -- Xerash's Herb Pouch
[11368] = { "указ Рінна", flavor="Скріплено печаткою Штормовію" }, -- Wrynn's Decree
[13506] = { "зілля скам'яніння", use="Ви перетворюєтеся на камінь, поглинаючи до 6000 шкоди протягом 30 секунд, але не можете рухатися, атакувати або промовляти заклинання." }, -- Potion of Petrification
[50432] = { "шкура хворого вовка" }, -- Diseased Wolf Pelt
}

if addonTable.item then
    for k, v in pairs(items) do addonTable.item[k] = v end
else
    addonTable.item = items
end
