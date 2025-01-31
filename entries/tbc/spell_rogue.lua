local _, addonTable = ...

local rogue_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Aggression
[18427] = { "Агресивність", "Збільшує шкоду здібностей \"Підступний удар\", \"Удар у спину\" та \"Потрошіння\" на {1}%.#by {1}%", en="Aggression" },
[18428] = { ref=18427 }, -- Aggression
[18429] = { ref=18427 }, -- Aggression
-- Crippling Poison
[3408] = { "Травматична отрута", "Покриває зброю отрутою на {1} год. Кожен удар з ймовірністю {2}% отруює ворога, сповільнюючи рух на {3}% протягом {4} с.#lasts for {1} hour#{2}% chance#speed by {3}% for {4} sec", en="Crippling Poison" },
[3420] = { ref=3408 }, -- Crippling Poison
[11202] = { ref=3408 }, -- Crippling Poison
[30981] = { ref=3409 }, -- Crippling Poison
[44289] = { ref=3409 }, -- Crippling Poison
-- Crippling Poison II
[3421] = { "Травматична отрута II", ref=3408, en="Crippling Poison II" },
-- Dirty Deeds
[14082] = { "Брудні справи", "Зменшує витрати енергії на ваші здібності \"Брудний прийом\" та \"Гарота\" на {1}. Окрім того, ваші здібності завдають на {2}% більше шкоди цілям, що мають менше {3}% здоров'я.#abilities by {1}#cause {2}% more#below {3}%", en="Dirty Deeds" },
[14083] = { ref=14082 }, -- Dirty Deeds
-- Master of Subtlety
[31223] = { "Майстер непомітності", "Атаки, здійснені з непомітності та протягом {1} секунд після виходу з неї, завдають на {2}% більше шкоди.#for {1} seconds#additional {2}% damage", en="Master of Subtlety" },
-- Puncturing Wounds
[13733] = { "Колоті рани", "Збільшує шанс критичного удару здібності \"Удар у спину\" на {1}% і шанс критичного удару здібності \"Скалічити\" на {2}%.#Backstab ability by {1}%#Mutilate ability by {2}%", en="Puncturing Wounds" },
[13865] = { ref=13733 }, -- Puncturing Wounds
[13866] = { ref=13733 }, -- Puncturing Wounds
-- Ruthlessness
[14156] = { "Нещадність", "Ваші завершальні рухи ближнього бою з ймовірністю {1}% збільшать довжину комбінації на один прийом.#a {1}% chance", en="Ruthlessness" },
[14160] = { ref=14156 }, -- Ruthlessness
[14161] = { ref=14156 }, -- Ruthlessness
-- Seal Fate
[14186] = { "Відбиток долі", "Критичні удари здібностей, що збільшують довжину комбінації, з ймовірністю {1}% додають додатковий прийом до комбінації.#a {1}%", en="Seal Fate" },
[14190] = { ref=14186 }, -- Seal Fate
-- Weapon Expertise
[30919] = { "Вправність володіння зброєю", "Збільшує вашу вправність на {1}.#by {1}", en="Weapon Expertise" },
[30920] = { ref=30919 }, -- Weapon Expertise

}

for k, v in pairs(rogue_spells) do addonTable.spell[k] = v end
