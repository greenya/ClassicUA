local _, addonTable = ...
local item_wrath = {

-- See /entries/classic/item.lua for data format details.

[7906] = { "роги Нез'ри" }, -- Horns of Nez'ra
[9594] = { "зменшений звір" }, -- Beast Muisek
[9618] = { "посудина зменшення звірів", use="Зменшити та захопити мертвого звіра." }, -- Beast Muisek Vessel, @use Shrink and Capture a Fallen Beast.
[9628] = { "мішечок трав Зераша" }, -- Xerash's Herb Pouch
[11368] = { "указ Рінна", flavor="Скріплено печаткою Штормовія" }, -- Wrynn's Decree, @flavor Bears the Seal of Stormwind
[13506] = { "зілля скам'яніння", use="Ви перетворюєтеся на камінь, поглинаючи до 6000 шкоди протягом 30 секунд, але не можете рухатися, атакувати або промовляти заклинання." }, -- Flask of Petrification, @use You turn to stone, absorbing up to 6000 total damage, but you are unable to move, attack, or cast spells.  Lasts 30 sec.
[50432] = { "шкура хворого вовка" }, -- Diseased Wolf Pelt
}

for k, v in pairs(item_wrath) do addonTable.item[k] = v end
