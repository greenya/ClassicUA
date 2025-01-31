local _, addonTable = ...

local pet_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Smack
[49966] = { "Удар", "Вдарити ворога, завдаючи йому від {1} до {2} шкоди.#causing {1} to {2} damage", en="Smack" },
[49967] = { ref=49966 }, -- Smack
[49968] = { ref=49966 }, -- Smack
[49969] = { ref=49966 }, -- Smack
[49970] = { ref=49966 }, -- Smack
[49971] = { ref=49966 }, -- Smack
[49972] = { ref=49966 }, -- Smack
[49973] = { ref=49966 }, -- Smack
[49974] = { ref=49966 }, -- Smack
[52475] = { ref=49966 }, -- Smack
[52476] = { ref=49966 }, -- Smack

}

for k, v in pairs(pet_spells) do addonTable.spell[k] = v end
