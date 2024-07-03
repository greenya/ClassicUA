local _, addonTable = ...

local spells = {

-- See /entries/classic/spell.lua for data format details.


-- Racial
[59752] = { "Воля до виживання", "Знімає всі ефекти обмеження руху і всі ефекти, що призводять до втрати контролю над вашим персонажем. Цей ефект має спільний час відновлення з іншими подібними ефектами." }, -- Will to Survive (Racial)

}

for k, v in pairs(spells) do addonTable.spell[k] = v end
