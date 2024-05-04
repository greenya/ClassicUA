local _, addonTable = ...
local items = {

-- See /entries/classic/item.lua for data format details.

}

if addonTable.item then
    for k, v in pairs(items) do addonTable.item[k] = v end
else
    addonTable.item = items
end
