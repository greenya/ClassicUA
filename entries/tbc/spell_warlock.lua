local _, addonTable = ...

local warlock_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Curse of Tongues
[1714] = { "Прокляття мов", "Примушує ціль говорити мовою демонів, сповільнюючи час вимови всіх заклять на {1}%. Одночасно лише одне прокляття кожного чорнокнижника може бути задіяне на цілі. Триває {2} с.#by {1}%#Lasts {2} sec", "Говорить мовою демонів, що збільшує час вимови на {1}%.#by {1}%" }, -- Curse of Tongues (Rank 1)
-- Demonic Knowledge
[35691] = { "Демонічні знання", "Збільшує вашу силу заклять на {1}% від суми витривалості та інтелекту вашого активного демона.#to {1}%" }, -- Demonic Knowledge (Rank 1)
[35692] = { ref=35691 }, -- Demonic Knowledge (Rank 2)
[35693] = { ref=35691 }, -- Demonic Knowledge (Rank 3)
-- Demonic Resilience
[30319] = { "Демонічна стійкість", "Зменшує ймовірність отримання критичного удару від атак ближнього бою та заклять на {1}% та зменшує отриману вашим демоном шкоду на {2}%.#spells by {1}%#takes by {2}%" }, -- Demonic Resilience (Rank 1)
[30320] = { ref=30319 }, -- Demonic Resilience (Rank 2)
[30321] = { ref=30319 }, -- Demonic Resilience (Rank 3)
-- Demonic Tactics
[30242] = { "Демонічна тактика", "Збільшує ймовірність завдання критичного удару атаками ближнього бою та закляттями для вас та вашого демона на {1}%.#by {1}%" }, -- Demonic Tactics (Rank 1)
[30245] = { ref=30242 }, -- Demonic Tactics (Rank 2)
[30246] = { ref=30242 }, -- Demonic Tactics (Rank 3)
[30247] = { ref=30242 }, -- Demonic Tactics (Rank 4)
[30248] = { ref=30242 }, -- Demonic Tactics (Rank 5)
-- Destructive Reach
[17917] = { "Досяжність руйнації", "Збільшує дальність дії заклять спеціалізації \"Руйнація\" на {1}% та зменшує загрозу від них на {2}%.#range of your Destruction spells by {1}%#threat caused by Destruction spells by {2}%" }, -- Destructive Reach (Rank 1)
[17918] = { ref=17917 }, -- Destructive Reach (Rank 2)
-- Fel Domination
[18708] = { "Домінування скверни", "Ваше наступне закляття виклику біса, пустотника, сукуба, інкуба, скверногончої або вартового скверни матиме зменшений час вимови на {1} с і витрати мани на {2}%.#time reduced by {1} sec#cost reduced by {2}%", "Виклик біса, пустотника, сукуба, інкуба, скверногончої або вартового скверни вимагає на {1} с менше часу на вимову та на {2}% менше мани.#time reduced by {1} sec#cost reduced by {2}%" }, -- Fel Domination
-- Improved Howl of Terror
[30054] = { "Покращене виття жаху", "Зменшує час вимови \"Виття жаху\" на {1} с.#by {1} sec" }, -- Improved Howl of Terror (Rank 1)
[30057] = { ref=30054 }, -- Improved Howl of Terror (Rank 2)
-- Soulshatter
[29858] = { "Розкол душі", "Зменшує вашу загрозу для всіх цілей в межах {2} м на {1}%.#by {1}%#within {2} y" }, -- Soulshatter
-- Unholy Power
[18769] = { "Нечестива сила", "Збільшує шкоду атак ближнього бою пустотника, сукуба, інкуба, скверногончої та вартового скверни, а також \"Вогняної стріли\" біса на {1}%.#by {1}%" }, -- Unholy Power (Rank 1)
[18770] = { ref=18769 }, -- Unholy Power (Rank 2)
[18771] = { ref=18769 }, -- Unholy Power (Rank 3)
[18772] = { ref=18769 }, -- Unholy Power (Rank 4)
[18773] = { ref=18769 }, -- Unholy Power (Rank 5)

}

for k, v in pairs(warlock_spells) do addonTable.spell[k] = v end
