local _, addonTable = ...

local hunter_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Aspect of the Viper
[34074] = { "Аспект гадюки", "Мисливець переймає аспекти гадюки, через що атаки дальнього та ближнього бою відновлюють ману, але шкода зменшується на {1}%. Крім того, ви відновлюєте {2}% від максимального запасу мани кожні {3} секунди. Кількість отриманої мани залежить від швидкості вашої зброї дальнього бою. Для використання необхідна зброя дальнього бою. Одночасно може бути активним лише один аспект.#done by {1}%#gain {2}% of#every {3} sec", "Ваші атаки дальнього та ближнього бою відновлюють певний відсоток вашої мани, але ваша шкода зменшується на {1}%.  Крім того, ви відновлюєте {2}% від максимального запасу мани кожні {3} секунди.#reduced by {1}%#gain {2}% of#every {3} sec" }, -- Aspect of the Viper
[415423] = { "Аспект гадюки", "Мисливець переймає аспекти гадюки, через що атаки дальнього та ближнього бою відновлюють ману, але шкода зменшується на {1}%. Крім того, ви відновлюєте {2}% від максимального запасу мани кожні {3} секунди. Кількість отриманої мани залежить від швидкості вашої зброї. Одночасно може бути активним лише один аспект.#done by {1}%#gain {2}% of#every {3} sec", "Ваші атаки дальнього та ближнього бою відновлюють певний відсоток вашої мани, але ваша шкода зменшується на {1}%.  Крім того, ви відновлюєте {2}% від максимального запасу мани кожні {3} секунди.#reduced by {1}%#gain {2}% of#every {3} sec" }, -- Aspect of the Viper
[415718] = { "Аспект гадюки", "Отримати здібність \"Аспект гадюки\":", rune=415423 }, -- Aspect of the Viper
-- Auto Shot
[413446] = { "Автоматична стрільба", "Автоматична стрільба з лука по цілі, що діє до скасування.", "Стрільба по цілі." }, -- Auto Shot (Bow)
-- Avoidance
[415431] = { "Уникнення" }, -- Avoidance
-- Beast Mastery
[409368] = { "Влада над звірами", "Шкода і здоров'я вашого вихованця збільшуються на {1}%, а відновлення концентрації - на {2}%. Крім того, \"Рик\" вашого вихованця тепер також підбурює ціль, змушуючи її атакувати його протягом 3 секунд.#increased by {1}%#regeneration by {2}%" }, -- Beast Mastery
[409962] = { "Влада над звірами", "Отримати здібність \"Влада над звірами\":", rune=409368 }, -- Beast Mastery
-- Carve
[425711] = { "Розтинання", "Розмашиста атака, яка вражає всіх ворогів перед вами завдаючи {1}% шкоди від зброї. Ваша основна ціль отримує на {2}% більше шкоди.#for {1}% weapon#takes {2}% increased" }, -- Carve
[425754] = { "Розтинання", "Отримати здібність \"Розтинання\":", rune=425711 }, -- Carve
[433100] = { "Розтинання", "Розмашиста атака, яка вражає всіх ворогів перед вами завдаючи {1}% шкоди від зброї.#for {1}% weapon" }, -- Carve
-- Catlike Reflexes
[415428] = { "Котячі рефлекси", "Збільшує ваш шанс ухилення на {1}% і шанс ухилення вашого вихованця на {2}%. Крім того, зменшує час відновлення \"Флангового удару\" на {3}%.#your chance to dodge by {1}% and#s chance to dodge by {2}%.#ability by {3}%" }, -- Catlike Reflexes
[415717] = { "Котячі рефлекси", "Отримати здібність \"Котячі рефлекси\":", rune=415428 }, -- Catlike Reflexes
-- Chimera Shot
[409433] = { "Постріл химери", "Ви завдаєте {1}% шкоди від зброї, оновлюючи поточне жало на вашій цілі та викликаючи спрацювання ефекту:\n\nЖало змії - миттєво завдає {2}% від шкоди, завданої вашим \"Жалом змії\".\n\nЖало гадюки - миттєво відновлює вам {3}% мани від кількості, висмоктаної вашим \"Жалом гадюки\".\n\nЖало скорпіда - Спроба роззброїти ціль на {4} с. Цей ефект не може спрацьовувати частіше, ніж раз на хвилину.#deal {1}% weapon#deals {2}% of#to {3}% of#for {4} sec." }, -- Chimera Shot
[409976] = { "Постріл химери", "Отримати здібність \"Постріл химери\":", rune=409433 }, -- Chimera Shot
-- Chimera Shot - Scorpid
[409495] = { "Постріл химери - скорпід", nil, "Роззброєно.", ref=409433 }, -- Chimera Shot - Scorpid
-- Chimera Shot - Serpent
[409493] = { "Постріл химери - змія", ref=409433 }, -- Chimera Shot - Serpent
[436393] = { ref=409493 }, -- Chimera Shot - Serpent
[436394] = { ref=409493 }, -- Chimera Shot - Serpent
[436395] = { ref=409493 }, -- Chimera Shot - Serpent
-- Chimera Shot - Viper
[409494] = { "Постріл химери - гадюка", ref=409433 }, -- Chimera Shot - Viper
-- Cobra Slayer
[458393] = { "Вбивця кобр", "\"Укус мангусти\" з ймовірністю {1}% завершує відновлення від ваших атак ближнього бою і з ймовірністю {2}%, коли ворог ухиляється. Ця ймовірність накопичується, збільшуючись на {3}% від кожної атаки, що не завершила час відновлення. \"Укус мангусти\" також завдає додаткової шкоди в обсязі {4}% від вашої сили атаки.#has a {1}% chance to#a {2}% chance when#rising by {3}% from#equal to {4}% of" }, -- Cobra Slayer
[409960] = { "Вбивця кобр", "Отримати здібність \"Вбивця кобр\":", rune=458393 }, -- Cobra Slayer
-- Cobra Strikes
[425713] = { "Удари кобри", "Коли ваші \"Постріли\", \"Удари\" чи \"Укус мангусти\" завдають критичних ударів, наступні 2 особливі атаки вашого вихованця також завдадуть критичних ударів." }, -- Cobra Strikes
[425714] = { "Удари кобри", "Коли ваші здібності \"Постріл\" завдають критичних ударів, наступні 2 особливі атаки вашого вихованця також завдадуть критичних ударів.", "Особливі атаки вихованця гарантовано завдадуть критичних ударів." }, -- Cobra Strikes
[425718] = { ref=425714 }, -- Cobra Strikes
[425755] = { "Удари кобри", "Отримати здібність \"Удари кобри\":", rune=425713 }, -- Cobra Strikes
-- Dual Wield Specialization
[409687] = { "Спеціалізація на бою з двох рук", "Збільшує шкоду від зброї в лівій руці на {1}%, а \"Удар раптора\" тепер б'є зброєю з обох рук.#weapon by {1}%" }, -- Dual Wield Specialization
[409961] = { "Спеціалізація на бою з двох рук", "Отримати здібність \"Спеціалізація на бою з двох рук\":", rune=409687 }, -- Dual Wield Specialization
-- Explosive Shot
[409552] = { "Вибуховий постріл", "Ви стріляєте вибуховим зарядом у ворожу ціль, завдаючи {1}-{2} шкоди від вогню всім ворогам в радіусі {3} м. Заряд завдаватиме шкоду щосекунди протягом додаткових {4} с.#dealing {1}-{2} Fire#within {3} yards#additional {4} sec", "Щосекунди отримує від {1} до {2} шкоди від вогню.#{1} to {2}" }, -- Explosive Shot
[409554] = { "Вибуховий постріл", "Ви стріляєте вибуховим зарядом у ворожу ціль, завдаючи {1}-{2} шкоди від вогню. Заряд буде підривати ціль щосекунди протягом деякого часу. Має спільний час відновлення з \"Арканічним пострілом\".#dealing {1}-{2} Fire", "Щосекунди отримує шкоду від вогню." }, -- Explosive Shot
[409978] = { "Вибуховий постріл", "Отримати здібність \"Вибуховий постріл\":", rune=409552 }, -- Explosive Shot
-- Explosive Trap
[409532] = { "Вибухова пастка", "Встановити вогняну пастку, яка вибухне при наближенні ворога, завдаючи від {1} до {2} шкоди від вогню і додатково {3} шкоди від вогню протягом {4} с усім ворогам у радіусі {5} м. Пастка існуватиме {6} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#causing {1} to {2}#{3} additional Fire damage over {4} sec#within {5} y#exist for {6} min" }, -- Explosive Trap (Rank 1)
[409534] = { ref=409532 }, -- Explosive Trap (Rank 2)
[409535] = { ref=409532 }, -- Explosive Trap (Rank 3)
-- Expose Weakness
[409504] = { "Виявлення слабких місць", "Ваші критичні удари в ближньому і дальньому бою збільшують вашу силу атаки на {1}% від спритності на {2} секунд.#power by {1}%#for {2} sec" }, -- Expose Weakness
[409507] = { "Виявлення слабких місць", "Ваші критичні удари в дальньому бою збільшують вашу силу атаки на {1}% від спритності на {2} секунд.#power by {1}%#for {2} sec", "Силу атаки збільшено на {1}.#by {1}" }, -- Expose Weakness
[409959] = { "Виявлення слабких місць", "Отримати здібність \"Виявлення слабких місць\":", rune=409504 }, -- Expose Weakness
-- Flanking Strike
[415320] = { "Фланговий удар", "Ви і ваш вихованець одночасно завдаєте {1}% шкоди в ближньому бою. Після цього ви завдаєте на {2}% більше шкоди протягом {3} секунд, ефект накопичується до {4} разів. Базові атаки вашого вихованця з ймовірністю {5}% завершують відновлення \"Флангового удару\".#instant {1}% melee damage#deal {2}% increased damage for {3} sec#up to {4} times#a {5}% chance", "Всю шкоду збільшено на {1}%.#by {1}%" }, -- Flanking Strike
[415326] = { "Фланговий удар", "Ви і ваш вихованець одночасно завдаєте {1}% шкоди в ближньому бою. Після цього ваші здібності \"Укус мангусти\" та \"Удар раптора\" завдають на {2}% більше шкоди, ефект накопичується до {3} разів. \"Удар раптора\" має {4}% шанс скинути відновлення \"Флангового удару\".#instant {1}% melee damage#deal {2}% increased damage#up to {3} times#a {4}% chance" }, -- Flanking Strike
[425757] = { "Фланговий удар", "Отримати здібність \"Фланговий удар\":", rune=415320 }, -- Flanking Strike
[415327] = { "Фланговий удар" }, -- Flanking Strike
-- Focus Fire
[428726] = { "Сконцентрований вогонь", "Поглинає всі ефекти \"Оскаженіння\" вашого вихованця, збільшуючи швидкість вашої атаки дальнього бою на {1}% і відновлюючи {2} концентрації вашому вихованцеві за кожен ефект \"Оскаженіння\". Триває {3} секунд.\n\nВаш вихованець отримує ефект \"Оскаженіння\" щоразу, коли використовує базову атаку, збільшуючи швидкість атаки ближнього бою на {4}% на {5} сек, Ефект \"Оскаженіння\" може накопичуватися до {6} разів.#ranged attack speed by {1}% and granting {2} Focus#Lasts {3} sec#melee attack speed by {4}% for {5} sec#up to {6} times", "Швидкість вашої атаки дальнього бою збільшено на {1}%.#by {1}%" }, -- Focus Fire
[431600] = { "Сконцентрований вогонь", "Отримати здібність \"Сконцентрований вогонь\":", rune=428726 }, -- Focus Fire
-- Freezing Trap
[409510] = { "Заморожувальна пастка", "Встановити крижану пастку, яка заморозить ворога при наближенні та унеможливить всі його дії впродовж {1} с. Будь-яка шкода розіб'є лід. Пастка існуватиме {2} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#action for up to {1} sec#exist for {2} min" }, -- Freezing Trap (Rank 1)
[409512] = { ref=409510 }, -- Freezing Trap (Rank 2)
[409519] = { ref=409510 }, -- Freezing Trap (Rank 3)
-- Frenzy
[428728] = { "Оскаженіння", "Збільшує швидкість атаки ближнього бою вихованця на {1}% протягом {2} сек.#by {1}% for {2} sec", "Швидкість атаки ближнього бою вихованця збільшено на {1}%.#by {1}%" }, -- Frenzy
[431606] = { ref=428728 }, -- Frenzy
-- Frost Trap
[409520] = { "Крижана пастка", "Встановити крижану пастку, яка вкриває льодом місцевість навколо на {1} с при наближенні ворога. Всі вороги в радіусі {2} м будуть сповільнені на {3}% допоки перебувають в зоні ефекту. Пастка існуватиме {4} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#around itself for {1} sec#within {2} y#slowed by {3}#exist for {4} min" }, -- Frost Trap
-- Growl
[409372] = { "Рик", "Підбурює ціль атакувати вас, але не діє, якщо ціль вже атакує вас.", "Підбурено." }, -- Growl
-- Heart of the Lion
[409580] = { "Левине серце", "Мисливець звертається до левиного серця, збільшуючи характеристики всіх союзників поблизу на {1}%, їхню силу атаки на {2} і збільшуючи власні характеристики ще на {3}%.#stats by {1}%#Power by {2} for all#additional {3}%", "Характеристики мисливця збільшено на {1}%.#by {1}%" }, -- Heart of the Lion
[409583] = { nil, "Мисливець звертається до левиного серця, збільшуючи характеристики всіх союзників поблизу на {1}% і збільшуючи власні характеристики ще на {2}%.#stats by {1}%#additional {2}%", "Характеристики збільшено на {1}%, а силу атаки - на {2}.#stats by {1}%#Power by {2}", ref=409580 }, -- Heart of the Lion
-- Hit and Run
[440533] = { "Бий-біжи", "Ваша швидкість руху збільшується на {1}% протягом {2} секунд після застосування \"Удару раптора\".#gain {1}%#for {2} sec" }, -- Hit and Run
[440564] = { "Бий-біжи", "Отримати здібність \"Бий-біжи\":", rune=440533 }, -- Hit and Run
-- Immolation Trap
[409521] = { "Обпалююча пастка", "Встановити вогняну пастку, яка підпалить ворога при наближенні й завдасть {1} шкоди від вогню протягом {2} с. Пастка існуватиме {3} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#for {1} Fire damage over {2} sec#exist for {3} min" }, -- Immolation Trap (Rank 1)
[409524] = { ref=409521 }, -- Immolation Trap (Rank 2)
[409526] = { ref=409521 }, -- Immolation Trap (Rank 3)
[409528] = { ref=409521 }, -- Immolation Trap (Rank 4)
[409530] = { ref=409521 }, -- Immolation Trap (Rank 5)
-- Improved Volley
[440520] = { "Покращений обстріл", "Зменшує витрати мани на \"Обстріл\" на {1}%, зменшує час його відновлення на {2}%, збільшує шкоду {3}%, а його застосування більше не затримується від отриманої шкоди. \"Обстріл\" також щоразу завдає додатково {4}% від вашої сили атаки дальнього бою.#Volley by {1}%#cooldown by {2}%#damage by {3}%#deals {4}% of" }, -- Improved Volley
[440561] = { "Покращений обстріл", "Отримати здібність \"Покращений обстріл\":", rune=440520 }, -- Improved Volley
-- Invigoration
[437997] = { "Збадьорення", "Коли ваш вихованець завдає критичного удару здібністю, ви миттєво відновлюєте {1}% від максимального запасу мани.#regenerate {1}% of" }, -- Invigoration
-- Kill Command
[409379] = { "Команда \"Вбити\"", "Віддати вихованцю команду \"вбити\", що збільшить шкоду від його здібностей \"Дряпання\" та \"Укус\" на {1}% протягом {2} с.  Кожне \"Дряпання\" та \"Укус\"  вихованця зменшує бонус до шкоди на {3}%.#by {1}% for {2} sec#damage bonus by {3}%" }, -- Kill Command
[409396] = { "Команда \"Вбити\"", "Віддати вихованцю команду \"вбити\", що збільшить шкоду від його здібностей \"Дряпання\" та \"Укус\" на {1}% протягом {2} с.  Кожне \"Дряпання\" та \"Укус\"  вихованця зменшує бонус до шкоди на {3}%.#by {1}% for {2} sec#damage bonus by {3}%", "Шкода від здібностей \"Дряпання\" та \"Укус\" збільшена на {1}%#increased by {1}%" }, -- Kill Command
[409418] = { ref=409396 }, -- Kill Command
-- Kill Shot
[409593] = { "Вбивчий постріл", "Ви намагаєтеся добити поранену ціль точним пострілом, завдаючи їй {1}% шкоди від зброї плюс {2}. \"Вбивчий постріл\" не має мінімальної дальності застосування. При застосуванні проти ворогів, що мають менше {3}% здоров'я, його відновленя завершується.#dealing {1}% weapon damage plus {2}#has {3}% or" }, -- Kill Shot
[409974] = { "Вбивчий постріл", "Отримати здібність \"Вбивчий постріл\":", rune=409593 }, -- Kill Shot
[415720] = { ref=409974 }, -- Kill Shot
-- Lethal Shots
[462653] = { ref=19426 }, -- Lethal Shots (Rank 5)
[462654] = { ref=19426 }, -- Lethal Shots (Rank 5)
[462656] = { ref=19426 }, -- Lethal Shots (Rank 3)
[462657] = { ref=19426 }, -- Lethal Shots (Rank 2)
[462658] = { ref=19426 }, -- Lethal Shots (Rank 1)
-- Lock and Load
[415413] = { "Захоплення цілі", "Щоразу, коли спрацьовує одна з ваших пасток, ваша наступна здібність \"Постріл\" (окрім \"Дезорієнтуючого пострілу\") протягом 20 секунд не витрачає ману і не вимагає часу на відновлення." }, -- Lock and Load
[415414] = { "Захоплення цілі", nil, "Наступна здібність \"Постріл\" не витрачає ману і не вимагає часу на відновлення." }, -- Lock and Load
[415719] = { "Захоплення цілі", "Отримати здібність \"Захоплення цілі\":", rune=415413 }, -- Lock and Load
-- Lone Wolf
[409979] = { "Самотній вовк", "Отримати здібність \"Самотній вовк\":", rune=415370 }, -- Lone Wolf
[415370] = { "Самотній вовк", "Ви завдаєте на {1}% більше шкоди всіма атаками, поки у вас немає активного вихованця.#deal {1}% increased" }, -- Lone Wolf
[415372] = { "Самотній вовк" }, -- Lone Wolf
[438640] = { "Самотній вовк" }, -- Lone Wolf
-- Master Marksman
[409428] = { "Майстер-стрілець", "Збільшує шанс критичного удару на 5% і зменшує витрати мани ваших здібностей \"Постріл\" на 25%." }, -- Master Marksman
[409958] = { "Майстер-стрілець", "Отримати здібність \"Майстер-стрілець\":", rune=409428 }, -- Master Marksman
-- Melee Specialist
[415352] = { "Фахівець з ближнього бою", "\"Укус мангусти\" та \"Удар раптора\" з ймовірністю {1}% завершують відновлення \"Укусу мангусти\" та \"Удару раптора\".#a {1}% chance" }, -- Melee Specialist
[415723] = { "Фахівець з ближнього бою", "Отримати здібність \"Фахівець з ближнього бою\":", rune=415352 }, -- Melee Specialist
-- Rapid Killing
[415405] = { "Швидке вбивство", "Зменшує час відновлення \"Швидкої стрілянини\" на {1}%, \"Швидка стрілянина\" також збільшує швидкість атак ближнього бою на {2}%, а ваша наступна здібність \"Постріл\" протягом {3} секунд після вбивства цілі, що приносить досвід або честь, завдає на {4}% більше шкоди.#by {1}%#grants {2}% increased#within {3} sec#deals {4}% increased" }, -- Rapid Killing
[415407] = { "Швидке вбивство", nil, "Наступна здібність \"Постріл\" завдає на 20% більше шкоди." }, -- Rapid Killing
[415817] = { "Швидке вбивство", "Отримати здібність \"Швидке вбивство\":", rune=415405 }, -- Rapid Killing
-- Raptor Fury
[415358] = { "Лють раптора", "\"Удар раптора\" збільшує шкоду від \"Удару раптора\" і \"Укусу мангусти\" на {1}% протягом {2} с. Ефект накопичується до {3} разів, а подальші отримання ефекту не поновлюють його тривалість.#by {1}% for {2} sec#up to {3} times" }, -- Raptor Fury
[415362] = { "Лють раптора", nil, "\"Удар раптора\" і \"Укус мангусти\" завдають на {1}% більше шкоди.#by {1}%" }, -- Raptor Fury
[415822] = { "Лють раптора", "Отримати здібність \"Лють раптора\":", rune=415358 }, -- Raptor Fury
-- Raptor Strike
[409691] = { "Удар раптора", "Потужна атака зі збільшеною на {1}-{2} шкодою ближнього бою.#by {1} to {2}" }, -- Raptor Strike (Rank 1)
[409693] = { "Удар раптора", "Потужна атака зі збільшеною на {1} шкодою ближнього бою.#by {1}" }, -- Raptor Strike (Rank 2)
[409748] = { ref=409691 }, -- Raptor Strike (Rank 3)
[409750] = { ref=409693 }, -- Raptor Strike (Rank 4)
[409751] = { ref=409693 }, -- Raptor Strike (Rank 5)
[409752] = { ref=409693 }, -- Raptor Strike (Rank 6)
[409754] = { ref=409693 }, -- Raptor Strike (Rank 7)
[409755] = { ref=409693 }, -- Raptor Strike (Rank 8)
[415335] = { ref=409693 }, -- Raptor Strike (Rank 1)
[415336] = { ref=409693 }, -- Raptor Strike (Rank 2)
[415337] = { ref=409693 }, -- Raptor Strike (Rank 3)
[415338] = { ref=409693 }, -- Raptor Strike (Rank 4)
[415340] = { ref=409693 }, -- Raptor Strike (Rank 5)
[415341] = { ref=409693 }, -- Raptor Strike (Rank 6)
[415342] = { ref=409693 }, -- Raptor Strike (Rank 7)
[415343] = { ref=409693 }, -- Raptor Strike (Rank 8)
-- Resourcefulness
[440529] = { "Винахідливість", "Зменшує витрати мани на пастки на {1}% та зменшує час їхнього відновлення на {2}%.#Traps by {1}%#cooldowns by {2}%" }, -- Resourcefulness
[440558] = { "Винахідливість", "Отримати здібність \"Винахідливість\":", rune=440529 }, -- Resourcefulness
-- Serpent Spread
[425738] = { "Зміїний розмах", "Цілі, уражені вашим \"Багатозарядним пострілом\", також отримують ефект вашого \"Жала змії\" на {1} с.#for {1} sec" }, -- Serpent Spread
[425756] = { "Зміїний розмах", "Отримати здібність \"Зміїний розмах\":", rune=425738 }, -- Serpent Spread
-- Serpent Sting
[425728] = { "Жало змії", "Жалить ціль, завдаючи їй {1} шкоди від природи протягом {2} с. Лише один ефект жала від кожного мисливця може бути активним на одній цілі.#causing {1} Nature damage over {2} sec", "Завдає {1} шкоди від природи кожні {2} с.#Causes {1} Nature damage every {2} sec" }, -- Serpent Sting (Rank 1)
[425729] = { ref=425728 }, -- Serpent Sting (Rank 2)
[425730] = { ref=425728 }, -- Serpent Sting (Rank 3)
[425732] = { ref=425728 }, -- Serpent Sting (Rank 4)
[425733] = { ref=425728 }, -- Serpent Sting (Rank 5)
[425734] = { ref=425728 }, -- Serpent Sting (Rank 6)
[425735] = { ref=425728 }, -- Serpent Sting (Rank 7)
[425736] = { ref=425728 }, -- Serpent Sting (Rank 8)
[425737] = { ref=425728 }, -- Serpent Sting (Rank 9)
-- Sniper Training
[415399] = { "Снайперська підготовка", "Ймовірність критичного удару ваших здібностей \"Постріл\" збільшується на {1}%, якщо ви не рухалися протягом останніх {2} секунд. Ефект накопичується до {3} разів. За наявності {4} ефектів, здібність \"Прицільний постріл\" застосовується миттєво. Під час руху ви втрачатимете один ефект щосекунди.#gain {1}% increased#the last {2} sec#up to {3} times#At {4} stacks" }, -- Sniper Training
[415401] = { "Снайперська підготовка", nil, "Ймовірність критичного удару здібностей \"Постріл\" збільшено на {1}%. За наявності п'яти ефектів \"Прицільний постріл\" застосовується миттєво.#by {1}%" }, -- Sniper Training
[415818] = { "Снайперська підготовка", "Отримати здібність \"Снайперська підготовка\":", rune=415399 }, -- Sniper Training
-- Steady Shot
[409957] = { "Впевнений постріл", "Отримати здібність \"Впевнений постріл\":", rune=437123 }, -- Steady Shot
[437123] = { "Впевнений постріл", "Впевнений постріл, що завдає {1}% шкоди від зброї дальнього бою.#causes {1}% ranged" }, -- Steady Shot
-- T.N.T.
[428717] = { "Тротил", "\"Вибуховий постріл\" та пастки завдають на {1}% більше шкоди. Окрім того, первинна шкода \"Вибухової пастки\" та періодична шкода \"Обпалюючої пастки\" збільшуються на {2}% від вашої сили атаки ближнього бою.#traps by {1}%#increased by {2}% of" }, -- T.N.T.
[431610] = { "Тротил", "Отримати здібність \"Тротил\":", rune=428717 }, -- T.N.T.
-- Trap Launcher
[409541] = { "Кидання пасток", "Тепер заморожувальну, обпалюючу та вибухову пастки можна розміщувати в будь-якому місці на відстані до {1} м. Крім того, ваші вогняні та крижані пастки тепер мають окремий час відновлення.#within {1} yard" }, -- Trap Launcher
[409968] = { "Кидання пасток", "Отримати здібність \"Кидання пасток\":", rune=409541 }, -- Trap Launcher
-- Wyvern Strike
[458436] = { "Удар виверни", "Жорстокий удар, що завдає {1}% шкоди зброї та спричиняє кровотечу, що завдає {2} фізичної шкоди цілі протягом {3} с.#deals {1}% weapon#for {2} Physical damage over {3} sec", "{1} шкоди від кровотечі кожні {2} с.#{1} Bleed damage every {2} sec" }, -- Wyvern Strike (Rank 1)
[458481] = { ref=415816 }, -- Wyvern Strike (Rank 2)
[458482] = { ref=415816 }, -- Wyvern Strike (Rank 3)
[458479] = { "Удар виверни", "Замінює здібність \"Жало виверни\" на \"Удар виверни\" - жорстокий удар, що завдає {1}% шкоди зброї та спричиняє кровотечу, що завдає періодичної шкоди цілі.\n\n\"Удар виверни\" вимагає наявного таланту \"Жало виверни\" та замінює здібності \"Жало виверни\" зі сторінки заклять спеціалізації \"Виживання\".#deals {1}% weapon" }, -- Wyvern Strike (Rank 1)
[415816] = { "Удар виверни", "Отримати здібність \"Удар виверни\":", rune=458479 }, -- Wyvern Strike

-- Engraving
[410115] = { "Гравіювання рукавиць - Вбивця кобр", "Вигравіювати на рукавицях руну \"Вбивця кобр\":", rune=458393 }, -- Cobra Slayer
[410114] = { "Гравіювання пояса - Виявлення слабких місць", "Вигравіювати на поясі руну \"Виявлення слабких місць\":", rune=409504 }, -- Engrave Belt - Expose Weakness
[416086] = { "Гравіювання пояса - Фахівець з ближнього бою", "Вигравіювати на поясі руну \"Фахівець з ближнього бою\":", rune=415352 }, -- Engrave Belt - Melee Specialist
[410109] = { "Гравіювання пояса - Впевнений постріл", "Вигравіювати на поясі руну \"Впевнений постріл\":", rune=437123 }, -- Engrave Belt - Steady Shot
[410116] = { "Гравіювання чоботів - Спеціалізація на бою з двох рук", "Вигравіювати на чоботях руну \"Спеціалізація на бою з двох рук\":", rune=409687 }, -- Engrave Boots - Dual Wield Specialization
[410118] = { "Гравіювання чоботів - Кидання пасток", "Вигравіювати на чоботях руну \"Кидання пасток\":", rune=409541 }, -- Engrave Boots - Trap Launcher
[416089] = { "Гравіювання чоботів - Удар виверни", "Вигравіювати на чоботях руну \"Удар виверни\":", rune=458479 }, -- Engrave Boots - Wyvern Strike
[431601] = { "Гравіювання браслетів - Сконцентрований вогонь", "Вигравіювати на браслетах руну \"Сконцентрований вогонь\":", rune=428726 }, -- Engrave Bracers - Focus Fire
[416093] = { "Гравіювання браслетів - Лють раптора", "Вигравіювати на браслетах руну \"Лють раптора\":", rune=415358 }, -- Engrave Bracers - Raptor Fury
[431611] = { "Гравіювання браслетів - Тротил", "Вигравіювати на браслетах руну \"Тротил\":", rune=428717 }, -- Engrave Bracers - T.N.T.
[410110] = { "Гравіювання нагрудника - Влада над звірами", "Вигравіювати на нагруднику руну \"Влада над звірами\":", rune=409368 }, -- Engrave Chest - Beast Mastery
[425759] = { "Гравіювання нагрудника - Удари кобри", "Вигравіювати на нагруднику руну \"Удари кобри\":", rune=425713 }, -- Engrave Chest - Cobra Strikes
[410122] = { "Гравіювання нагрудника - Самотній вовк", "Вигравіювати на нагруднику руну \"Самотній вовк\":", rune=415370 }, -- Engrave Chest - Lone Wolf
[410113] = { "Гравіювання нагрудника - Майстер-стрілець", "Вигравіювати на нагруднику руну \"Майстер-стрілець\":", rune=409428 }, -- Engrave Chest - Master Marksman
[440563] = { "Гравіювання плаща - Бий-біжи", "Вигравіювати на плащі руну \"Бий-біжи\":", rune=440533 }, -- Engrave Cloak - Hit and Run
[440560] = { "Гравіювання плаща - Покращений обстріл", "Вигравіювати на плащі руну \"Покращений обстріл\":", rune=440520 }, -- Engrave Cloak - Improved Volley
[440557] = { "Гравіювання плаща - Винахідливість", "Вигравіювати на плащі руну \"Винахідливість\":", rune=440529 }, -- Engrave Cloak - Resourcefulness
[425758] = { "Гравіювання рукавиць - Розтинання", "Вигравіювати на рукавицях руну \"Розтинання\":", rune=425711 }, -- Engrave Gloves - Carve
[410121] = { "Гравіювання рукавиць - Постріл химери", "Вигравіювати на рукавицях руну \"Постріл химери\":", rune=409433 }, -- Engrave Gloves - Chimera Shot
[410123] = { "Гравіювання рукавиць - Вибуховий постріл", "Вигравіювати на рукавицях руну \"Вибуховий постріл\":", rune=409552 }, -- Engrave Gloves - Explosive Shot
[416083] = { "Гравіювання шолома - Котячі рефлекси", "Вигравіювати на шоломі руну \"Котячі рефлекси\":", rune=415428 }, -- Engrave Helm - Catlike Reflexes
[416085] = { "Гравіювання шолома - Захоплення цілі", "Вигравіювати на шоломі руну \"Захоплення цілі\":", rune=415413 }, -- Engrave Helm - Lock and Load
[416090] = { "Гравіювання шолома - Швидке вбивство", "Вигравіювати на шоломі руну \"Швидке вбивство\":", rune=415405 }, -- Engrave Helm - Rapid Killing
[425762] = { "Гравіювання штанів - Фланговий удар", "Вигравіювати на штанях руну \"Фланговий удар\":", rune=415320 }, -- Engrave Pants - Flanking Strike
[410111] = { "Гравіювання штанів - Вбивчий постріл", "Вигравіювати на штанях руну \"Вбивчий постріл\":", rune=409593 }, -- Engrave Pants - Kill Shot
[425760] = { "Гравіювання штанів - Зміїний розмах", "Вигравіювати на штанях руну \"Зміїний розмах\":", rune=425738 }, -- Engrave Pants - Serpent Spread
[416091] = { "Гравіювання штанів - Снайперська підготовка", "Вигравіювати на штанях руну \"Снайперська підготовка\":", rune=415399 }, -- Engrave Pants - Sniper Training

-- Item effects
[467446] = { "Вливання аркани", "Наповнює вас енергією аркани, внаслідок чого здібності \"Розтинання\" та \"Багатозарядний постріл\" протягом {1} с викликають до {2} вибухів. Акранічний вибух завдає від {3} до {4} шкоди ворогам поруч з ціллю.#the next {1} sec#up to {2} detonations#will deal {3} to {4} damage", "Здібності \"Розтинання\" та \"Багатозарядний постріл\" спричинить акранічні вибухи." }, -- Arcane Infused
[469148] = { "Боривітер", "Збільшує швидкість бігу на {1}% протягом {2} с.#by {1}% for {2} sec", "Швидкість бігу збільшено на {1}%.#by {1}%" }, -- Kestrel
[468388] = { "Наведення", "Наступні {1} застосовані постріли чи здібності ближнього бою протягом {2} с не матимуть часу відновлення.#next {1} Shot#within {2} sec", "Наступні {1} застосовані постріли чи здібності ближнього бою не матимуть часу відновлення.#next {1} Shot" }, -- Locked In
[459593] = { ref=28539 }, -- Multi-Shot Damage Increase
[459598] = { "Збільшення шкоду Удару раптора", "Збільшує шкоду здібності \"Удар раптора\" на {1}%.#Raptor Strike by {1}%" }, -- Raptor Strike Damage Increase

-- Rune progress
[416861] = { "Феромон гадюки", "Ваша здібність \"Приручення звіра\" також діє на гадюк (як на улюбленців-компаньйонів)", "Ваша здібність \"Приручення звіра\" також діє на гадюк (як на улюбленців-компаньйонів)" }, -- Adder Pheromone
[424553] = { "Постріл!", nil, "Обережно! Тільки для досвідчених стрільців!" }, -- Call Your Shot
[435428] = { "Небезпека!", nil, "Ви відчуваєте, що поруч хтось причаївся." }, -- Danger!
[435546] = { "Небезпека!", nil, "Ви відчуваєте, що поруч хтось причаївся." }, -- Danger!
[435548] = { "Небезпека!", nil, "Ви відчуваєте, що поруч хтось причаївся." }, -- Danger!
[421311] = { "Оленячий мускус", "Ваша здібність \"Приручення звіра\" також діє на оленів (як на улюбленців-компаньйонів)", "Ваша здібність \"Приручення звіра\" також діє на оленів (як на улюбленців-компаньйонів)" }, -- Deer Musk
[420543] = { "У русі", nil, "Рухається надто швидко, щоб влучити" }, -- On the Move
[411622] = { "Мускус лугової собачки", "Ваша здібність \"Приручення звіра\" також діє на лугових собачок (як на улюбленців-компаньйонів)", "Ваша здібність \"Приручення звіра\" також діє на лугових собачок (як на улюбленців-компаньйонів)" }, -- Prairie Dog Musk
[418236] = { "Мускус кролика", "Ваша здібність \"Приручення звіра\" також діє на кроликів (як на улюбленців-компаньйонів)", "Ваша здібність \"Приручення звіра\" також діє на кроликів (як на улюбленців-компаньйонів)" }, -- Rabbit Musk

}

for k, v in pairs(hunter_spells) do addonTable.spell[k] = v end
