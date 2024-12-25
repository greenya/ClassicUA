local _, addonTable = ...

local spells = {

-- See /entries/classic/spell.lua for data format details.

[700] = { "Сон", "Змушує ворожу ціль спати на {1} с. Будь-яка шкода розбудить ціль. Одночасно лише одну ціль можна змусити спати. Може не подіяти на ціль вище {2} рівня.#up to {1} sec#above level {2}", "Спить." }, -- Sleep (Rank 1)
[835] = { "Оберіг припливу", "Приголомшує ціль на {1} с. Збільшена ймовірність опору при застосуванні на цілі вище {2} рівня.#target for {1} sec#over level {2}", "Приголомшено." }, -- Tidal Charm
[9774] = { "Свобода", "Усуває наявні ефекти знерухомлення та надає невразливість до ефектів знерухомлення протягом {1} с.#Immobilizing effects for {1} sec", "Невразливість до ефектів знерухомлення протягом {1} с.#effects for {1} sec" }, -- Freedom
[26610] = { ref=8313 }, -- Poison
[27089] = { ref=430 }, -- Drink
[32038] = { "Ілюзія пташиного духа", "Набути подоби пташиного духа. Діє в руїнах Бога'му.", "Замасковано під пташиного духа." }, -- Bird Spirit Illusion
[32355] = { "Зосереджена сила", ref=23271 }, -- Focused Power
[33720] = { "Еліксир натиску", "Збільшує силу атаки на {1} протягом {2} год. Бойовий еліксир.#by {1} for {2} hour", "Силу атаки збільшено на {1}. Бойовий еліксир.#power by {1}." }, -- Onslaught Elixir
[33721] = { "Еліксир адепта", "Збільшує шкоду та зцілення від заклять на {1}, а показник критичного удару заклинань на {2} протягом {3} год. Бойовий еліксир.#up to {1} and#by {2} for {3} hour", "Шкоду та зцілення від заклять збільшено на {1}, а показник критичного удару заклинань збільшено на {2}. Бойовий еліксир.#healing by up to {1} and#rating by {2}." }, -- Adept's Elixir
[34510] = { ref=56 }, -- Stun
[42435] = { "Хмільний фестиваль - приголомшення", ref=56 }, -- Brewfest - Stun
[44893] = { ref=24694 }, -- Attack Power - Feral (+0178)

-- Item effects
[5020] = { "Бурехміль", "Міцний ель, що збільшує вашу силу на {1} та зменшує ваш інтелект на {2} на {3} хв.#by {1} and#by {2} for {3} min", "Силу збільшено на {1}.\nІнтелект зменшено на {2}.#increased by {1}#decreased by {2}" }, -- Stormstout
[5021] = { "Трозький ель", "Збільшує ваше здоров'я на {1}-{2}, але зменшує дух на {3} протягом {4} хв.#health by {1} to {2}#by {3} for {4} min", "Здоров'я збільшено на {1}-{2}.\nДух зменшено на {3}.#increased by {1} to {2}#decreased by {3}" }, -- Trogg Ale
[9783] = { "Мітрилові шпори", "Прикріпити до ваших черевиків шпори, які трохи збільшують швидкість верхової їзди на {1}%.#mounted movement speed by {1}%" }, -- Mithril Spurs
[10351] = { "Шкіра василіска", "Збільшує показник захисту на {1} протягом {2} с.#defense rating by {1} for {2} sec", "Показник захисту збільшено." }, -- Basilisk Skin
[13180] = { "Гномська шапка контролю розуму", "Вступити в ментальний бій з ціллю-гуманоїдом, щоб спробувати захопити контроль над її розумом. Якщо все пройде вдало, ви контролюватимете розум цілі протягом {1} секунд... Шанс невдачі збільшено при застосуванні проти цілей вище {2} рівня.#for {1} sec#over level {2}" }, -- Gnomish Mind Control Cap
[21894] = { "Медитація", ref=18378 }, -- Meditation
[22779] = { "Точноціл Бізніка 247x128", "Оснащення лука або вогнепальної зброї прицілом, що збільшує показник влучності в дальньому бою на {1}.#hit rating by {1}" }, -- Biznicks 247x128 Accurascope
[23008] = { "Потужний сифорієвий заряд", "Підриває міцні замки." }, -- Powerful Seaforium Charge
[24694] = { "Сила атаки в подобі звіра", "Збільшує силу атаки на {1} в подобі кота, ведмедя, лютого ведмедя та місячного совуха.#attack power by {1} in Cat" }, -- Attack Power - Feral (+0574)
[26596] = { ref=25901 }, -- Weapon Damage
[26597] = { ref=25901 }, -- Weapon Damage
[26598] = { ref=25901 }, -- Weapon Damage
[27252] = { ref=758 }, -- Firestone Passive (Rank 5)
[27912] = { ref=18378 }, -- Increased Mana Regen
[28014] = { ref=18378 }, -- Increased Mana Regen
[28486] = { "Напій Скаробою", "Збільшує силу атаки на {1} в бою з невмерлими. Триває {2} хв.#power by {1} against#Lasts {2} min", "Силу атаки в бою з невмерлими збільшено на {1}.#by {1}" }, -- Scourgebane Draught
[28495] = { ref=439 }, -- Healing Potion
[28499] = { ref=436 }, -- Restore Mana
[28517] = { "Зілля омолодження", ref=18832 }, -- Rejuvenation Potion
[30250] = { "Адамантитовий приціл", ref=3974 }, -- Adamantite Scope
[30252] = { "Корієвий приціл", ref=3974 }, -- Khorium Scope
[30255] = { "Стабілізований етернієвий приціл", "Оснащення лука або вогнепальної зброї прицілом, що збільшує показник критичного удару на {1}.#strike rating by {1}" }, -- Stabilized Eternium Scope
[30258] = { ref=30255 }, -- Stabilized Eternium Scope
[30260] = { ref=30255 }, -- Stabilitzed Eternium Scope
[30298] = { "Маскувальний набір", "Перетворює вас на дерево. Не дозволяє рухатись.", "Ви дерево! Тссс!" }, -- Tree Disguise
[30845] = { "Життєва сила пантрувача", "Збільшує витривалість на {1}. Триває {2} хв.#Stamina by {1}#Lasts {2} min", "Витривалість збільшено на {1}.#by {1}" }, -- Tracker's Vitality
[30847] = { "Прозріння пантрувача", "Збільшує інтелект на {1}. Триває {2} хв.#Intellect by {1}#Lasts {2} min", "Інтелект збільшено на {1}.#by {1}" }, -- Tracker's Insight
[30848] = { "Жорстокість пантрувача", "Збільшує силу атаки на {1}. Триває {2} хв.#attack power by {1}#Lasts {2} min", "Силу атаки збільшено на {1}.#by {1}" }, -- Tracker's Ferocity
[31039] = { "Краб зі світанкового каменю", "Збільшує показник ухилення на {1} протягом {2} с.#dodge rating by {1} for {2} sec", "Показник ухилення збільшено на {1}.#dodge rating by {1}" }, -- Dawnstone Crab
[32600] = { "Уникнення", ref=31039 }, -- Avoidance
[32703] = { "Регенерація здоров'я", ref=20885 }, -- Health Regeneration
[32705] = { ref=18378 }, -- Increased Mana Regen
[33035] = { ref=24694 }, -- Attack Power - Feral (+0046)
[33124] = { ref=7675 }, -- Increase Healing 61
[33253] = { ref=5004 }, -- Food
[33488] = { ref=25901 }, -- Weapon Damage
[33780] = { ref=18378 }, -- Increased Mana Regen
[34107] = { ref=16375 }, -- Drain Life
[34696] = { ref=16375 }, -- Drain Life
[35095] = { "Просвітлення", nil, "Відновлення {1} мани кожні {2} с.#by {1} mana per {2} sec", ref=18378 }, -- Enlightenment
[35442] = { ref=18672 }, -- ncreased All Resist 07
[35828] = { ref=18378 }, -- Increased Mana Regen
[35829] = { ref=18378 }, -- Increased Mana Regen
[35833] = { ref=18378 }, -- Increased Mana Regen 12
[35836] = { ref=18378 }, -- Increased Mana Regen
[35867] = { ref=18378 }, -- Increased Mana Regen 36
[35870] = { ref=18378 }, -- Increased Mana Regen 47
[35888] = { ref=18378 }, -- Increased Mana Regen 24
[35890] = { ref=18378 }, -- Increased Mana Regen 32
[35897] = { ref=18378 }, -- Increased Mana Regen 26
[35899] = { ref=18378 }, -- Increased Mana Regen 35
[35901] = { ref=18378 }, -- Increased Mana Regen 45
[35903] = { ref=18378 }, -- Increased Mana Regen 59
[36411] = { ref=18378 }, -- Increased Mana Regen
[37727] = { "Дотик темряви", nil, "Викрадає від {1} до {2} здоров'я у ворожої цілі.#Steals {1} to {2} life", ref=16375 }, -- Touch of Darkness
[37729] = { "Нечестивий обладунок", ref=21956 }, -- Unholy Armor
[37736] = { "Збільшення шкоди Нівечення", "Збільшує шкоду \"Нівечення (кіт)\" на {1}, а шкоду \"Нівечення (ведмідь)\" на {2}.#Cat) by {1} and#Bear) by {2}" }, -- Increased Mangle Damage
[38308] = { "Стрімкий удар", ref=21919 }, -- Blinkstrike
[39546] = { ref=18378 }, -- Increased Mana Regen
[39547] = { ref=18378 }, -- Increased Mana Regen
[39879] = { ref=18378 }, -- Increased Mana Regen
[39882] = { ref=18378 }, -- Increased Mana Regen
[39905] = { ref=18378 }, -- Copy of Increased Mana Regen
[40183] = { ref=18378 }, -- Copy of Increased Mana Regen
[40231] = { ref=18378 }, -- Increased Mana Regen
[40290] = { ref=16375 }, -- Copy of Drain Life
[40343] = { ref=18378 }, -- Increased Mana Regen
[40723] = { ref=25901 }, -- Weapon Damage
[41562] = { ref=18378 }, -- Increased Mana Regen
[41591] = { ref=18378 }, -- Increased Mana Regen
[41655] = { ref=25901 }, -- Weapon Damage
[41659] = { ref=18378 }, -- Increased Mana Regen
[41662] = { ref=18672 }, -- Increased All Resist 08
[41664] = { ref=18672 }, -- Increased All Resist 08
[41666] = { ref=18672 }, -- Increased All Resist 08
[41668] = { ref=18672 }, -- Increased All Resist 08
[41673] = { ref=18672 }, -- Increased All Resist 15
[41675] = { ref=18378 }, -- Increased Mana Regen
[41677] = { ref=18672 }, -- Increased All Resist 04
[41680] = { ref=18672 }, -- Increased All Resist 15
[41721] = { ref=18672 }, -- Increased All Resist 08
[41724] = { ref=18672 }, -- Increased All Resist 15
[41728] = { ref=18672 }, -- Increased All Resist 08
[41737] = { ref=18672 }, -- Increased All Resist 08
[41751] = { ref=18672 }, -- Increased All Resist 08
[41770] = { ref=18378 }, -- Increased Mana Regen
[41775] = { ref=18378 }, -- Increased Mana Regen
[41776] = { ref=18378 }, -- Increased Mana Regen
[41819] = { ref=18672 }, -- Increased All Resist 08
[41822] = { ref=18672 }, -- Increased All Resist 08
[41826] = { ref=18672 }, -- Increased All Resist 15
[41836] = { ref=18672 }, -- Increased All Resist 08
[41838] = { ref=18672 }, -- Increased All Resist 10
[41839] = { ref=18672 }, -- Increased All Resist 08
[41843] = { ref=18672 }, -- Increased All Resist 08
[41857] = { ref=18672 }, -- Increased All Resist 08
[41859] = { ref=18672 }, -- Increased All Resist 08
[41880] = { ref=18672 }, -- Increased All Resist 08
[41883] = { ref=18672 }, -- Increased All Resist 08
[41893] = { ref=18672 }, -- Increased All Resist 08
[41973] = { ref=9342 }, -- Increase Spell Dam 199
[42060] = { ref=18378 }, -- Increased Mana Regen
[42082] = { ref=18378 }, -- Increased Mana Regen
[42100] = { ref=18378 }, -- Increased Mana Regen
[42115] = { ref=18378 }, -- Increased Mana Regen
[42120] = { ref=7675 }, -- Increase Healing 375
[42122] = { ref=9342 }, -- Increase Spell Dam 225
[42127] = { ref=7675 }, -- Increase Healing 423
[45216] = { ref=18378 }, -- Increased Mana Regen
[45731] = { "Загострений рибальський гачок", ref=8087 }, -- Sharpened Fish Hook
[45793] = { ref=25901 }, -- Weapon Damage
[45817] = { ref=25901 }, -- Weapon Damage
[45818] = { ref=25901 }, -- Weapon Damage
[352341] = { "Регенерація", ref=5707 }, -- Regenerate
[354723] = { ref=25901 }, -- Weapon Damage

-- Pets
[24988] = { "Виклик малюка-мурлока", "Клацніть правою кнопкою миші, щоб викликати і відпустити Уррлика." }, -- Summon Baby Murloc (White)

-- Professions
[33359] = { ref=18260 }, -- Cooking (Master)

-- Racial
[28875] = { "Різьба по каменю", "Навичка ювелірної справи підвищена на 5." }, -- Gemcutting (Racial Passive)
[28878] = { "Натхненна присутність", "Збільшення ймовірності завдання удару закляттями на 1% вам та всім учасникам групи в радіусі 30 м.", "Ймовірність завдання удару закляттями збільшено на 1%." }, -- Inspiring Presence (Racial Passive)
[28880] = { "Дар Наару", "Зцілення {1} здоров'я цілі протягом {2} с.#of {1} damage over {2} sec", "Зцілення {1} здоров'я кожні {2} с.#Healing {1} damage every {2} sec" }, -- Gift of the Naaru (Racial)

-- Scrolls
[33077] = { ref=8115 }, -- Agility (Rank 5)
[33078] = { ref=8096 }, -- Intellect (Rank 5)
[33079] = { ref=8091 }, -- Armor (Rank 5)
[33080] = { ref=8112 }, -- Spirit (Rank 5)
[33081] = { ref=8099 }, -- Stamina (Level 5)
[33082] = { ref=8118 }, -- Strength (Rank 5)

}

for k, v in pairs(spells) do addonTable.spell[k] = v end
