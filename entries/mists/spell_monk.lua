local _, addonTable = ...

local monk_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Leather Specialization
[120224] = { ref=86093 }, -- Leather Specialization
[120227] = { ref=86092 }, -- Leather Specialization
-- Parry
[116812] = { ref=3127 }, -- Parry
-- Shadow Resistance
[132295] = { ref=20579 }, -- Shadow Resistance
-- Vengeance
[120267] = { ref=84839 }, -- Vengeance

}

for k, v in pairs(monk_spells) do addonTable.spell[k] = v end
