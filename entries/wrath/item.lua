local _, addonTable = ...
local items = {

-- See /entries/classic/item.lua for data format details.

[7906] = { "роги Нез'ри", en="Horns of Nez'ra" },
[9594] = { "зменшений звір", en="Beast Muisek" },
[9618] = { "посудина зменшення звірів", use="Зменшити та захопити мертвого звіра.", en="Beast Muisek Vessel" },
[9628] = { "мішечок трав Зераша", en="Xerash's Herb Pouch" },
[11368] = { "указ Рінна", flavor="Скріплено печаткою Штормовію", en="Wrynn's Decree" },
[13506] = { "зілля скам'яніння", use=17624, en="Potion of Petrification" },
[50432] = { "шкура хворого вовка", en="Diseased Wolf Pelt" },
}

if addonTable.item then
    for k, v in pairs(items) do addonTable.item[k] = v end
else
    addonTable.item = items
end
