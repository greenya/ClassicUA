local _, addonTable = ...
local items = {

-- See /entries/classic/item.lua for data format details.

[3382] = { "крихітний еліксир крові троля", use=3219, en="Minor Troll's Blood Elixir" },
}

if addonTable.item then
    for k, v in pairs(items) do addonTable.item[k] = v end
else
    addonTable.item = items
end
