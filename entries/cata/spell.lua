local _, addonTable = ...

local spells = {

-- See /entries/classic/spell.lua for data format details.

[1090] = { ref=700 }, -- Sleep (Rank 2)
[3594] = { "Тіньова олія", "При нанесенні на зброю ближнього бою дає {1}% ймовірності застосувати \"Тіньову стрілу\" на опонента при ударі. Триває {2} хв. Не можна застосувати на предмети вище {3} рівня.#a {1}% chance#Lasts {2} min#than level {3}" }, -- Shadow Oil
[68174] = { "Благословення Нептулона", ref=8747 }, -- Neptulon's Blessing

-- Item effects
[2828] = { "Заточка леза", "Збільшує шкоду гострої зброї на {1} протягом {2} год. Не можна застосувати на предмети вище {3} рівня.#by {1} for {2} hour#than level {3}" }, -- Sharpen Blade (Rank 1)
[2829] = { ref=2828 }, -- Sharpen Blade II
[2830] = { ref=2828 }, -- Sharpen Blade III
[3112] = { "Покращення дробильної зброї", "Збільшує шкоду дробильної зброї на {1} протягом {2} год. Не можна застосувати на предмети вище {3} рівня.#by {1} for {2} hour#than level {3}" }, -- Enhance Blunt Weapon
[3113] = { ref=3112 }, -- Enhance Blunt Weapon II
[3114] = { ref=3112 }, -- Enhance Blunt Weapon III
[5021] = { "Трозький ель", "Збільшує ваше здоров'я на {1}-{2}, але зменшує інтелект на {3} протягом {4} хв.#health by {1} to {2}#by {3} for {4} min", "Здоров'я збільшено на {1}-{2}.\nІнтелект зменшено на {3}.#increased by {1} to {2}#decreased by {3}" }, -- Trogg Ale
[9900] = { ref=2828 }, -- Sharpen Blade IV
[9903] = { ref=3112 }, -- Enhance Blunt Weapon IV
[10351] = { "Шкіра василіска", "Збільшує показник ухилення на {1} протягом {2} с.#dodge rating by {1} for {2} sec", "Показник ухилення збільшено." }, -- Basilisk Skin
[16138] = { ref=2828 }, -- Sharpen Blade V
[16622] = { ref=3112 }, -- Enhance Blunt Weapon V
[18153] = { "Комбобулятор кодо", "Активувати поруч з древнім або старим  кодо, щоб він пішов за вами (по одному за раз)." }, -- Kodo Kombobulator
[29348] = { "Особливе зілля Золотого Туману", "Збільшує максимальний запас здоров'я на {1} протягом {2} хв. Захисний еліксир.#health by {1} for {2} min", "Запас здоров'я збільшено на {1}. Захисний еліксир.#by {1}" }, -- Goldenmist Special Brew
[78989] = { ref=439 }, -- Healing Potion
[78990] = { ref=436 }, -- Restore Mana
[78992] = { "Зілля омолодження", ref=18832 }, -- Rejuvenation Potion
[87646] = { "Перната приманка", ref=8087 }, -- Feathered Lure
[95244] = { "Жаростійка вертка приманка", ref=8087 }, -- Heat-Treated Spinning Lure
[98849] = { "Скляний поплавок", ref=8087 }, -- Glass Fishing Bobber

-- Mounts
[32235] = { "Золотий грифон", "Викликає та відпускає верхового золотого грифона. Це літаюча верхова тварина.", "Швидкість руху збільшено на {1}%.#by {1}%" }, -- Golden Gryphon

}

for k, v in pairs(spells) do addonTable.spell[k] = v end
