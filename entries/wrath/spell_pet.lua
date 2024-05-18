local _, addonTable = ...

local pet_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Smack
[49966] = { "Удар", "Вдарити ворога, завдаючи йому від {1} до {2} шкоди.#causing {1} to {2} damage" }, -- Smack (Rank 1)
[49967] = { ref=49966 }, -- Smack (Rank 2)
[49968] = { ref=49966 }, -- Smack (Rank 3)
[49969] = { ref=49966 }, -- Smack (Rank 4)
[49970] = { ref=49966 }, -- Smack (Rank 5)
[49971] = { ref=49966 }, -- Smack (Rank 6)
[49972] = { ref=49966 }, -- Smack (Rank 7)
[49973] = { ref=49966 }, -- Smack (Rank 8)
[49974] = { ref=49966 }, -- Smack (Rank 9)
[52475] = { ref=49966 }, -- Smack (Rank 10)
[52476] = { ref=49966 }, -- Smack (Rank 11)

}

for k, v in pairs(pet_spells) do addonTable.spell[k] = v end
