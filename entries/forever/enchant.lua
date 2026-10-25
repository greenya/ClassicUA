local _, addonTable = ...

local enchant = { -- see classic/enchant.lua
["+%d Healing Power & +%d Spell Damage"] = "+%d сили зцілення та +%d шкоди заклять",
["+%d%% Crit"] = "+%d%% критичного удару",
["Attack Power +%d and Armor +%d"] = "сила атаки +%d та броня +%d",
["Defense +%d and Stamina +%d"] = "захист +%d та витривалість +%d",
["Haste +%d%%"] = "швидкість +%d%%",
["Healing Spells +%d, Damage Spells +%d"] = "зцілення заклять +%d, шкода заклять +%d",
["Healing Spells +%d/Damage Spells +%d"] = "зцілення заклять +%d/шкода заклять +%d",
["Insight"] = "прозріння",
["Nature Damage +%d"] = "шкода від природи +%d",
["Poison (%d Dmg)"] = "отрута (%d шкоди)",
["Spell Power +%d"] = "сила заклять +%d",
["Spell Power +%d and Armor +%d"] = "сила заклять +%d та броня +%d",
}

if addonTable.enchant then
    for k, v in pairs(enchant) do
        addonTable.enchant[k] = v
    end
else
    addonTable.enchant = enchant
end
