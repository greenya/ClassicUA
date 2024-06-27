local _, addonTable = ...

local priest_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Mass Dispel
[32375] = { "Масове розвіювання", "Розвіює магію в радіусі {1} м, знімаючи 1 шкідливий магічний ефект з кожної дружньої цілі та 1 сприятливий магічний ефект з кожної ворожої цілі. Діє максимум на 10 дружніх та 10 ворожих цілей. Це розвіювання досить сильне, щоб розвіювати магічні ефекти, які зазвичай неможливо розвіяти.#in a {1} yard" }, -- Mass Dispel

}

for k, v in pairs(priest_spells) do addonTable.spell[k] = v end
