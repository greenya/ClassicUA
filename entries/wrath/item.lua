local _, addonTable = ...
local item_wrath = {

-- [id] = {
--     [ref]    = ID (optional),
--     [1]      = title (optional),
--     [desc]   = description (optional),
--     [equip]  = text or number (spell id) for "Equip: ..." (green color)
--     [hit]    = text or number (spell id) for "Chance on hit: ..." (green color)
--     [use]    = text or number (spell id) for "Use: ..." (green color)
--     [flavor] = quoted text (golden color)
--     --------
--     note: value can be string or table (multiple strings)
-- }

[7906] = { "роги Нез'ри" }, -- Horns of Nez'ra
}

for k, v in pairs(item_wrath) do addonTable.item[k] = v end
