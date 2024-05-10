local _, addonTable = ...

local spells = {

-- See /entries/classic/spell.lua for data format details.

[27089] = { ref=430 }, -- Drink

-- Professions
[33359] = { ref=18260 }, -- Cooking (Master)

-- Racial
[28875] = { "Різьба по каменю", "Навичка ювелірної справи підвищена на 5." }, -- Gemcutting (Racial Passive)
[28878] = { "Натхненна присутність", "Збільшення ймовірності завдання удару закляттями на 1% вам та всім учасникам групи в радіусі 30 м.", "Ймовірність завдання удару закляттями збільшено на 1%." }, -- Inspiring Presence (Racial Passive)
[28880] = { "Дар Наару", "Зцілення {1} здоров'я цілі протягом {2} с.#of {1} damage over {2} sec", "Зцілення {1} здоров'я кожні {2} с.#Healing {1} damage every {2} sec" }, -- Gift of the Naaru (Racial)

-- Scrolls
[33077] = { ref=8115 }, -- Agility (Rank 5)
[33078] = { ref=8096 }, -- Intellect (Rank 5)
[33079] = { ref=8091 }, -- Armor (Rank 5)
[33080] = { ref=8112 }, -- Spirit (Rank 5)
[33081] = { ref=8099 }, -- Stamina (Level 5)
[33082] = { ref=8118 }, -- Strength (Rank 5)

}

for k, v in pairs(spells) do addonTable.spell[k] = v end
