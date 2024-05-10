local _, addonTable = ...

local mage_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Arcane Potency
[31571] = { "Арканічна Могутність", "Збільшення на {1}% шансу завдати критичного удару будь-яким закляттям, що накладається у стані \"Ясномови\".#Clearcasting by {1}%." }, -- Arcane Potency (Rank 1)
[31572] = { ref=31571 }, -- Arcane Potency (Rank 2)
[31573] = { ref=31571 }, -- Arcane Potency (Rank 3)
-- Blizzard
[31581] = { ref=31578 }, -- Blizzard
-- Empowered Arcane Missiles
[31579] = { "Підсилені Арканічні Снаряди", "\"Арканічні Снаряди\" отримують ще {1}% бонусів до пошкоджень від заклять, але їх вартість підвищується на {2}%.#additional {1}% of your bonus spell damage effects, but mana cost is increased by {2}%." }, -- Empowered Arcane Missiles (Rank 1)
[31582] = { ref=31579 }, -- Empowered Arcane Missiles (Rank 2)
[31583] = { ref=31579 }, -- Empowered Arcane Missiles (Rank 3)
-- Improved Blink
[31569] = { "Покращений Блим", "Знижує ймовірність влучення по вас атак та заклять на {1}% протягом 4 с. після застосування \"Блима\".#is reduced by {1}%." }, -- Improved Blink (Rank 1)
[31570] = { ref=31569 }, -- Improved Blink (Rank 2)
-- Mind Mastery
[31584] = { "Володар розуму", "Підвищення пошкоджень від заклять на {1}% від сумарного інтелекту.#damage by up to {1}%" }, -- Mind Mastery (Rank 1)
[31585] = { ref=31584 }, -- Mind Mastery (Rank 2)
[31586] = { ref=31584 }, -- Mind Mastery (Rank 3)
[31587] = { ref=31584 }, -- Mind Mastery (Rank 4)
[31588] = { ref=31584 }, -- Mind Mastery (Rank 5)
-- Prismatic Cloak
[31574] = { "Призматичний плащ", "Пошкодження зменшено на {1}%.#taken by {1}%." }, -- Prismatic Cloak (Rank 1)
[31575] = { ref=31574 }, -- Prismatic Cloak (Rank 2)
-- Slow
[31589] = { "Сповільнення", "Зменшує швидкість руху цілі на 50%, збільшує інтервал між її атаками дальнього бою на 50% та час застосування заклять на 50%. Час дії – 15 с. Одночасно діє лише на одну ціль.", "Швидкість руху зменшено на 50%. Інтервал між атаками дальнього бою зібльшено на 50%. Час застосування заклять збільшено на 50%." }, -- Slow

}

for k, v in pairs(mage_spells) do addonTable.spell[k] = v end
