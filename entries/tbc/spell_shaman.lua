local _, addonTable = ...

local shaman_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Fire Elemental Totem
[2894] = { "Тотем елементаля вогню", "Викликає тотем, який закликає великого елементаля вогню нищити ворогів заклинателя. Існує {1} хв.#Lasts {1} min" }, -- Fire Elemental Totem (Rank 1)
-- Focused Mind
[30864] = { "Зосереджений розум", "Зменшує тривалість ефектів знемовлення та переривання, що діють на вас. на {1}%. Цей ефект не поєднується з іншими подібними ефектами.#by {1}%" }, -- Focused Mind (Rank 1)
[30865] = { ref=30864 }, -- Focused Mind (Rank 2)
[30866] = { ref=30864 }, -- Focused Mind (Rank 3)
-- Improved Chain Heal
[30872] = { "Покращене ланцюгове зцілення", "Збільшує ефективність закляття \"Ланцюгове зцілення\" на {1}%.#by {1}%" }, -- Improved Chain Heal (Rank 1)
[30873] = { ref=30872 }, -- Improved Chain Heal (Rank 2)
-- Tidal Focus
[16179] = { "Припливна зосередженість", "Зменшує витрати мани на ваші цілющі закляття на {1}%.#by {1}%" }, -- Tidal Focus (Rank 1)
[16214] = { ref=16179 }, -- Tidal Focus (Rank 2)
[16215] = { ref=16179 }, -- Tidal Focus (Rank 3)

}

for k, v in pairs(shaman_spells) do addonTable.spell[k] = v end
