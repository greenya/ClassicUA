local _, addonTable = ...

local rogue_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Aggression
[18427] = { "Агресивність", "Збільшує шкоду здібностей \"Підступний удар\", \"Удар у спину\" та \"Потрошіння\" на {1}%.#by {1}%" }, -- Aggression (Rank 1)
[18428] = { ref=18427 }, -- Aggression (Rank 2)
[18429] = { ref=18427 }, -- Aggression (Rank 3)
-- Dirty Deeds
[14082] = { "Брудні справи", "Зменшує витрати енергії на ваші здібності \"Брудний прийом\" та \"Гарота\" на {1}. Окрім того, ваші здібності завдають на {2}% більше шкоди цілям, що мають менше {3}% здоров'я.#abilities by {1}#cause {2}% more#below {3}%" }, -- Dirty Deeds (Rank 1)
[14083] = { ref=14082 }, -- Dirty Deeds (Rank 2)
-- Master of Subtlety
[31223] = { "Майстер непомітності", "Атаки, здійснені з непомітності та протягом {1} секунд після виходу з неї, завдають на {2}% більше шкоди.#for {1} seconds#additional {2}% damage" }, -- Master of Subtlety (Rank 3)
-- Puncturing Wounds
[13733] = { "Колоті рани", "Збільшує шанс критичного удару здібності \"Удар у спину\" на {1}% і шанс критичного удару здібності \"Скалічити\" на {2}%.#Backstab ability by {1}%#Mutilate ability by {2}%" }, -- Puncturing Wounds (Rank 1)
[13865] = { ref=13733 }, -- Puncturing Wounds (Rank 2)
[13866] = { ref=13733 }, -- Puncturing Wounds (Rank 3)
-- Ruthlessness
[14156] = { "Нещадність", "Ваші завершальні рухи ближнього бою з ймовірністю {1}% збільшать довжину комбінації на один прийом.#a {1}% chance" }, -- Ruthlessness (Rank 1)
[14160] = { ref=14156 }, -- Ruthlessness (Rank 2)
[14161] = { ref=14156 }, -- Ruthlessness (Rank 3)
-- Seal Fate
[14186] = { "Відбиток долі", "Критичні удари здібностей, що збільшують довжину комбінації, з ймовірністю {1}% додають додатковий прийом до комбінації.#a {1}%" }, -- Seal Fate (Rank 1)
[14190] = { ref=14186 }, -- Seal Fate (Rank 2)
-- Weapon Expertise
[30919] = { "Вправність володіння зброєю", "Збільшує вашу вправність на {1}.#by {1}" }, -- Weapon Expertise (Rank 1)
[30920] = { ref=30919 }, -- Weapon Expertise (Rank 2)

}

for k, v in pairs(rogue_spells) do addonTable.spell[k] = v end
