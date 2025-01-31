local _, addonTable = ...

local shaman_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Fire Elemental Totem
[2894] = { "Тотем елементаля вогню", "Викликає тотем, який закликає великого елементаля вогню нищити ворогів заклинателя. Існує {1} хв.#Lasts {1} min", en="Fire Elemental Totem" },
-- Focused Mind
[30864] = { "Зосереджений розум", "Зменшує тривалість ефектів знемовлення та переривання, що діють на вас. на {1}%. Цей ефект не поєднується з іншими подібними ефектами.#by {1}%", en="Focused Mind" },
[30865] = { ref=30864 }, -- Focused Mind
[30866] = { ref=30864 }, -- Focused Mind
-- Improved Chain Heal
[30872] = { "Покращене ланцюгове зцілення", "Збільшує ефективність закляття \"Ланцюгове зцілення\" на {1}%.#by {1}%", en="Improved Chain Heal" },
[30873] = { ref=30872 }, -- Improved Chain Heal
-- Tidal Focus
[16179] = { "Припливна зосередженість", "Зменшує витрати мани на ваші цілющі закляття на {1}%.#by {1}%", en="Tidal Focus" },
[16214] = { ref=16179 }, -- Tidal Focus
[16215] = { ref=16179 }, -- Tidal Focus

}

for k, v in pairs(shaman_spells) do addonTable.spell[k] = v end
