local _, addonTable = ...
local item_wrath = {

-- See /entries/classic/item.lua for data format details.

[7906] = { "роги Нез'ри" }, -- Horns of Nez'ra

}

for k, v in pairs(item_wrath) do addonTable.item[k] = v end
