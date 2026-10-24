local _, addonTable = ...

local item_set = { -- see classic/item_set.lua
[221] = { "вбрання Теро-шана", items={ 7950, 7948, 7952, 7951, 7953, 7949 },
    bonuses={ { 6, 41772 } }, en="Garb of Thero-shan" },
}

if addonTable.item_set then
    for k, v in pairs(item_set) do
        addonTable.item_set[k] = v
    end
else
    addonTable.item_set = item_set
end
