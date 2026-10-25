local _, addonTable = ...

local enchant = { -- see classic/enchant.lua
["Firestone"] = "камінь вогню",
["Greater Firestone"] = "великий камінь вогню",
["Greater Spellstone"] = "великий камінь чарів",
["Lesser Firestone"] = "менший камінь вогню",
["Major Firestone"] = "величезний камінь вогню",
["Major Spellstone"] = "величезний камінь чарів",
["Rune of Spellbreaking"] = "руна відбитих заклять",
["Rune of Spellshattering"] = "руна розбитих заклять",
["Spellstone"] = "камінь чарів",
}

if addonTable.enchant then
    for k, v in pairs(enchant) do
        addonTable.enchant[k] = v
    end
else
    addonTable.enchant = enchant
end
