local _, addonTable = ...

local paladin_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Blood Corruption
[356110] = { "Осквернення крові", nil, "{1} шкоди святістю кожні {2} с.#{1} Holy damage every {2} sec", en="Blood Corruption" },
-- Judgement of Corruption
[356112] = { "Присуд осквернення", en="Judgement of Corruption" },
-- Righteous Defense
[31789] = { "Праведний захист", "Стати на захист дружньої цілі, змусивши до {1} ворогів, що атакують ціль, атакувати паладина.#up to {1} enemies", en="Righteous Defense" },
-- Turn Evil
[10326] = { "Вигнання зла", "Ціль, що є невмерлою або демоном, буде змушена тікати протягом {1} с. Завдана шкода може перервати дію ефекту. Одночасно може діяти лише на одну ціль.#up to {1} sec", "Змушений втікати.", en="Turn Evil" },

}

for k, v in pairs(paladin_spells) do addonTable.spell[k] = v end
