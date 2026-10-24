local _, addonTable = ...

local item_set = { -- see classic/item_set.lua
[208] = { "обладунки законника", items={ 16858, 16859, 16857, 16853, 16860, 16854, 16855, 16856 },
    bonuses={ { 3, 23564 }, { 5, 41784 }, { 8, 21747 } }, en="Lawbringer Armor" },
[261] = { "дух Ешхандара", items={ 18203, 18202 },
    bonuses={ { 2, 22648 } }, en="Spirit of Eskhandar" },
[462] = { "зосередження Занзіла", items={ 19893, 19905 },
    bonuses={ { 2, 39702 }, { 2, 41894 } }, en="Zanzil's Concentration" },
}

if addonTable.item_set then
    for k, v in pairs(item_set) do
        addonTable.item_set[k] = v
    end
else
    addonTable.item_set = item_set
end
