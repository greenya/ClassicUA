local _, addonTable = ...

local pet_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Anguish
[427742] = { "Страждання", "Підбурює ціль, що збільшує ймовірність того, що вона атакуватиме вартового скверни." }, -- Anguish
-- Cleave
[427744] = { "Розсічення", "Розмашиста атака, яка вражає ціль вартового скверни та одного її союзника, завдаючи збілььшену на {1} шкоду від зброї.#plus {1} to" }, -- Cleave
-- Intercept
[427745] = { "Перехоплення", "Ривок у ворога, що завдає {1} шкоди та приголомшує його на {2} с.#causing {1} damage#for {2} sec" }, -- Intercept
-- Lava Breath
[444678] = { "Подих лави", "Дихає розплавленою лавою на ціль, миттєво завдаючи від {1} до {2} шкоди від вогню та сповільнюючи вимову заклять на {3}% протягом {4} секунд.#{1} to {2} Fire#by {3}% for {4} sec", "Вимову заклять сповільнено на {1}%.#by {1}%" }, -- Lava Breath (Rank 1)
[444680] = { ref=444678 }, -- Lava Breath (Rank 1)
[444681] = { ref=444678 }, -- Lava Breath (Rank 2)
[444682] = { ref=444678 }, -- Lava Breath (Rank 2)

}

for k, v in pairs(pet_spells) do addonTable.spell[k] = v end
