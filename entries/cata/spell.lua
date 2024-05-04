local _, addonTable = ...
local spells = {

-- See /entries/classic/spell.lua for data format details.

}

for k, v in pairs(spells) do addonTable.spell[k] = v end
