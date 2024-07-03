local _, addonTable = ...

local warrior_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Challenging Shout
[1161] = { "Провокуючий клич", "Змушує всіх ворогів в межах {1} м зосередити атаки на вас протягом {2} с.#within {1} y#for {2} sec", "Підбурено." }, -- Challenging Shout
-- Piercing Howl
[12323] = { "Пронизливе виття", "Викликає запаморочення у ворогів в межах {1} м, що зменшує швидкість руху на {2}% протягом {3} с.#within {1} y#by {2}% for {3} sec", "Запаморочення." }, -- Piercing Howl
-- Rend
[772] = { "Розрив", "Ранить ціль, змушуючи її стікати кров'ю на {1} шкоди і додатково на {2} (в залежності від шкоди зброї) протягом {3} с.#for {1} damage#additional {2}#over {3} sec", "Кровотеча завдає {1} шкоди та відсоток від шкоди зброї кожні {2} с.#for {1} plus#every {2} sec" }, -- Rend (Rank 1)

}

for k, v in pairs(warrior_spells) do addonTable.spell[k] = v end
