local _, addonTable = ...

local enchant = { -- see classic/enchant.lua
}

if addonTable.enchant then
    for k, v in pairs(enchant) do
        addonTable.enchant[k] = v
    end
else
    addonTable.enchant = enchant
end
