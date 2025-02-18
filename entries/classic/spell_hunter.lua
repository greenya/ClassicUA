local _, addonTable = ...

local hunter_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Aimed Shot
[19434] = { "Прицільний постріл", "Прицільний постріл зі збільшеною на {1} шкодою дальнього бою.#by {1}", en="Aimed Shot" },
[20900] = { ref=19434 }, -- Aimed Shot
[20901] = { ref=19434 }, -- Aimed Shot
[20902] = { ref=19434 }, -- Aimed Shot
[20903] = { ref=19434 }, -- Aimed Shot
[20904] = { ref=19434 }, -- Aimed Shot
-- Arcane Shot
[3044] = { "Арканічний постріл", "Миттєвий постріл, завдає {1} шкоди арканою.#causes {1}", en="Arcane Shot" },
[14281] = { ref=3044 }, -- Arcane Shot
[14282] = { ref=3044 }, -- Arcane Shot
[14283] = { ref=3044 }, -- Arcane Shot
[14284] = { ref=3044 }, -- Arcane Shot
[14285] = { ref=3044 }, -- Arcane Shot
[14286] = { ref=3044 }, -- Arcane Shot
[14287] = { ref=3044 }, -- Arcane Shot
-- Aspect of the Beast
[13161] = { "Аспект звіра", "Мисливець переймає аспекти звіра і його стає неможливо відстежити. Одночасно може бути активним лише один аспект.", "Неможливо відстежити.", en="Aspect of the Beast" },
-- Aspect of the Cheetah
[5118] = { "Аспект гепарда", "Мисливець переймає аспекти гепарда, збільшуючи швидкість руху на {1}%. Отримана шкода викличе запаморочення на {2} с. Одночасно може бути активним лише один аспект.#speed by {1}%#for {2} sec", "Швидкість руху збільшено на {1}%. Запаморочення при отриманні удару.#{1}% increased", en="Aspect of the Cheetah" },
-- Aspect of the Hawk
[13165] = { "Аспект яструба", "Мисливець переймає аспекти яструба, збільшуючи силу атаки дальнього бою на {1}. Одночасно може бути активним лише один аспект.#by {1}", "Збільшує силу атаки дальнього бою на {1}.#by {1}", en="Aspect of the Hawk" },
[14318] = { ref=13165 }, -- Aspect of the Hawk
[14319] = { ref=13165 }, -- Aspect of the Hawk
[14320] = { ref=13165 }, -- Aspect of the Hawk
[14321] = { ref=13165 }, -- Aspect of the Hawk
[14322] = { ref=13165 }, -- Aspect of the Hawk
[25296] = { ref=13165 }, -- Aspect of the Hawk
-- Aspect of the Monkey
[13163] = { "Аспект мавпи", "Мисливець переймає аспекти мавпи, збільшуючи ймовірність ухилення на {1}%. Одночасно може бути активним лише один аспект.#by {1}", "Збільшує ймовірність ухилення на {1}%.#by {1}", en="Aspect of the Monkey" },
-- Aspect of the Pack
[13159] = { "Аспект зграї", "Мисливець і учасники групи в межах {1} м переймають аспекти зграї гепардів, збільшуючи швидкість руху на {2}%. Отримана шкода викличе в учасника зграї запаморочення на {3} с. Одночасно може бути активним лише один аспект.#within {1} y#speed by {2}%#for {3} sec", "Швидкість руху збільшено на {1}%. Запаморочення при отриманні удару.#{1}% increased", en="Aspect of the Pack" },
-- Aspect of the Wild
[20043] = { "Аспект первісної природи", "Мисливець і учасники групи в межах {1} м переймають аспект первісної природи, збільшуючи опір природі на {2}. Одночасно може бути активним лише один аспект.#within {1} y#resistance by {2}", "Опір природі збільшено на {1}.#by {1}", en="Aspect of the Wild" },
[20190] = { ref=20043 }, -- Aspect of the Wild
-- Auto Shot
[75] = { "Автоматична стрільба", "Автоматична стрільба по цілі, що діє до скасування.", "Стрільба по цілі.", en="Auto Shot" },
-- Barrage
[19461] = { "Загороджувальний вогонь", "Збільшує шкоду ваших здібностей \"Багатозарядний постріл\" та \"Обстріл\" на {1}%.#by {1}%", en="Barrage" },
[19462] = { ref=19461 }, -- Barrage
[24691] = { ref=19461 }, -- Barrage
-- Beast Lore
[1462] = { "Знання звіра", "Збирає інформацію про вибраного звіра. Підказка відобразить шкоду, здоров'я, броню, особливі опори та дієту.", "Знання виявлено.", en="Beast Lore" },
-- Beast Training
[5149] = { "Дресирування звіра", "Дозволяє мисливцю дресирувати свого вихованця різноманітним здібностям.", en="Beast Training" },
-- Bestial Discipline
[19590] = { "Звіряча дисципліна", "Прискорює відновлення концентрації ваших вихованців на {1}%.#by {1}%", en="Bestial Discipline" },
[19592] = { ref=19590 }, -- Bestial Discipline
-- Bestial Swiftness
[19596] = { "Звіряча стрімкість", "Перебуваючи просто неба, швидкість руху ваших вихованців збільшена на {1}%.#by {1}%", en="Bestial Swiftness" },
-- Bestial Wrath
[19574] = { "Звіриний гнів", "Роздратовує вашого вихованця, що збільшує його шкоду на {1}% протягом {2} с. Розлючений звір не відчуває ні жалю, ні страху, і зупинити його може лише смерть.#causing {1}#for {2} sec", "Несамовитість.", en="Bestial Wrath" },
-- Call Pet
[883] = { "Виклик вихованця", "Викликає вашого вихованця.", en="Call Pet" },
-- Clever Traps
[19239] = { "Розумні пастки", "Збільшує тривалість ефектів \"Заморожувальної пастки\" та \"Крижаної пастки\" на {1}%, а також шкоду від \"Обпалюючої пастки\" та \"Вибухової пастки\" на {2}%.#Frost trap effects by {1}%#Explosive trap effects by {2}%", en="Clever Traps" },
[19245] = { ref=19239 }, -- Clever Traps
-- Concussive Shot
[5116] = { "Запаморочливий постріл", "Паморочить ціль, сповільнюючи рух на {1}% протягом {2} с.#by {1}% for {2} sec", "Рух сповільнено на {1}%.#by {1}", en="Concussive Shot" },
-- Corrupt Weapon
[23436] = { "Осквернення зброї", nil, "Ламає вашу зброю дальнього бою.", en="Corrupt Weapon" },
-- Counterattack
[19306] = { "Контратака", "Удар, який можливо провести лише після парирування атаки опонента. Ця атака завдає {1} шкоди та знерухомлює ціль на {2} с. Контратаку неможливо блокувати, парирувати чи ухилитися від неї.#deals {1} damage#for {2} sec", "Знерухомлено.", en="Counterattack" },
[20909] = { ref=19306 }, -- Counterattack
[20910] = { ref=19306 }, -- Counterattack
-- Dazed
[15571] = { "Запаморочення", nil, "Запаморочення.", en="Dazed" },
-- Deflection
[19295] = { "Відбиття", "Збільшує вашу ймовірність парирування на {1}%.#by {1}%", en="Deflection" },
[19297] = { ref=19295 }, -- Deflection
[19298] = { ref=19295 }, -- Deflection
[19300] = { ref=19295 }, -- Deflection
[19301] = { ref=19295 }, -- Deflection
-- Deterrence
[19263] = { "Стримування", "При активації збільшує вашу ймовірність ухилитися та парирувати на {1}% на {2} с.#by {1}% for {2} sec", "Імовірність ухилитися та парирувати збільшено на {1}%.#by {1}%", en="Deterrence" },
-- Disengage
[781] = { "Відступ", "Провести спробу відступити від цілі, зменшуючи загрозу. Персонаж виходить з бою.", en="Disengage" },
[14272] = { "Відступ", "Провести спробу відступити від цілі, зменшуючи загрозу. Дієвіше за \"Відступ\" (Ранг {1}). Персонаж виходить з бою.#(Rank {1})", en="Disengage" },
[14273] = { ref=14272 }, -- Disengage
-- Dismiss Pet
[2641] = { "Відклик вихованця", "Відкликає вашого вихованця та зменшує його щастя на {1}.#by {1}", en="Dismiss Pet" },
-- Distracting Shot
[14274] = { "Відволікаючий постріл", "Відволікає ціль, спричиняє загрозу. Дієвіше за \"Відволікаючий постріл\" (Ранг {1}).#(Rank {1})", en="Distracting Shot" },
[15629] = { ref=14274 }, -- Distracting Shot
[15630] = { ref=14274 }, -- Distracting Shot
[15631] = { ref=14274 }, -- Distracting Shot
[15632] = { ref=14274 }, -- Distracting Shot
[20736] = { "Відволікаючий постріл", "Відволікає ціль, спричиняє загрозу.", en="Distracting Shot" },
-- Eagle Eye
[6197] = { "Орлине око", "Загострює зір мисливця. Можна використовувати лише просто неба. Триває {1} хв.#Lasts {1} min", en="Eagle Eye" },
-- Efficiency
[19416] = { "Ефективність", "Зменшує витрати мани на ваші \"Постріли\"[, \"Удари\"#Strikes] та \"Жала\" на {1}%.#by {1}", en="Efficiency" },
[19417] = { ref=19416 }, -- Efficiency
[19418] = { ref=19416 }, -- Efficiency
[19419] = { ref=19416 }, -- Efficiency
[19420] = { ref=19416 }, -- Efficiency
-- Endurance Training
[19583] = { "Тренування витримки", "Збільшує здоров'я ваших вихованців на {1}%.#by {1}%", en="Endurance Training" },
[19584] = { ref=19583 }, -- Endurance Training
[19585] = { ref=19583 }, -- Endurance Training
[19586] = { ref=19583 }, -- Endurance Training
[19587] = { ref=19583 }, -- Endurance Training
-- Entrapment
[19184] = { "Западня", "Надає вашим здібностям \"Обпалююча пастка\", \"Крижана пастка\" та \"Вибухова пастка\" {1}% ймовірності схопити ціль, унеможливлюючи її рух протягом {2} с.#a {1}% chance#for {2} sec", en="Entrapment" },
[19185] = { "Западня", nil, "Знерухомлено.", en="Entrapment" },
[19387] = { ref=19184 }, -- Entrapment
[19388] = { ref=19184 }, -- Entrapment
[19389] = { ref=19184 }, -- Entrapment
[19390] = { ref=19184 }, -- Entrapment
-- Explosive Trap
[13813] = { "Вибухова пастка", "Встановити вогняну пастку, яка вибухне при наближенні ворога, завдаючи від {1} до {2} шкоди вогнем і додатково {3} шкоди вогнем протягом {4} с усім у радіусі {5} м. Пастка існуватиме {6} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#causing {1} to {2}#{3} additional Fire damage over {4} sec#within {5} y#exist for {6} min", en="Explosive Trap" },
[14316] = { ref=13813 }, -- Explosive Trap
[14317] = { ref=13813 }, -- Explosive Trap
-- Explosive Trap Effect
[13812] = { "Ефект вибухової пастки", nil, "{1} шкоди вогнем кожні {2} c.#{1} Fire damage every {2} sec", en="Explosive Trap Effect" },
[14314] = { ref=13812 }, -- Explosive Trap Effect
[14315] = { ref=13812 }, -- Explosive Trap Effect
-- Eyes of the Beast
[1002] = { "Очі звіра", "Узяти безпосередній контроль над вашим вихованцем і бачити його очима протягом {1} хв.#for {1} min", "Безпосередній контроль вихованця.", en="Eyes of the Beast" },
-- Feed Pet
[6991] = { "Годування вихованця", "Нагодувати вашого вихованця вибраним предметом. Годівля вихованця збільшує його щастя. Використання їжі рівня близького до рівня вихованця дасть кращий результат.", en="Feed Pet" },
-- Feed Pet Effect
[1539] = { "Ефект годування вихованця", nil, "Збільшує щастя.", en="Feed Pet Effect" },
-- Feign Death
[5384] = { "Удавання мертвого", "Прикинутися мертвим, що може ввести в оману ворогів та змусити їх вас ігнорувати. Триває до {1} хв.#Lasts up to {1} min", "Удає мертвого.", en="Feign Death" },
-- Ferocity
[19598] = { "Лютість", "Збільшує ймовірність критичного удару ваших вихованців на {1}%.#by {1}%", en="Ferocity" },
[19599] = { ref=19598 }, -- Ferocity
[19600] = { ref=19598 }, -- Ferocity
[19601] = { ref=19598 }, -- Ferocity
[19602] = { ref=19598 }, -- Ferocity
-- Flare
[1543] = { "Освітлювальна ракета", "Викриває всіх прихованих та невидимих ворогів в межах {1} м від вибраного місця протягом {2} с.#within {1} y#for {2} sec", "Виявлення прихованих та невидимих істот.", en="Flare" },
-- Freezing Trap
[1499] = { "Заморожувальна пастка", "Встановити крижану пастку, яка заморозить першого ворога при наближенні та унеможливить всі його дії впродовж {1} с. Будь-яка шкода розіб'є лід. Пастка існуватиме {2} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#action for up to {1} sec#exist for {2} min", en="Freezing Trap" },
[14310] = { ref=1499 }, -- Freezing Trap
[14311] = { ref=1499 }, -- Freezing Trap
[27753] = { ref=1499 }, -- Freezing Trap
-- Freezing Trap Effect
[3355] = { "Ефект заморожувальної пастки", nil, "Заморожено.", en="Freezing Trap Effect" },
[14308] = { ref=3355 }, -- Freezing Trap Effect
[14309] = { ref=3355 }, -- Freezing Trap Effect
-- Frenzy
[19621] = { "Оскаженіння", "Ваш вихованець з ймовірністю {1}% збільшить швидкість атаки на {2}% протягом {3} с після завдання критичного удару.#{1}% chance#{2}% attack speed#for {3} sec", en="Frenzy" },
[19622] = { ref=19621 }, -- Frenzy
[19623] = { ref=19621 }, -- Frenzy
[19624] = { ref=19621 }, -- Frenzy
[19625] = { ref=19621 }, -- Frenzy
-- Frenzy Effect
[19615] = { "Ефект оскаженіння", "Ваш вихованець з ймовірністю {1}% збільшить швидкість атаки на протягом {2} с після завдання критичного удару.#a {1}% attack speed#for {2} sec", "Швидкість атаки збільшено на {1}%.#by {1}%", en="Frenzy Effect" },
-- Frost Trap
[13809] = { "Крижана пастка", "Встановити крижану пастку, яка вкриває льодом місцевість навколо на {1} с при наближенні першого ворога. Всі вороги в радіусі {2} м будуть сповільнені на {3}% допоки перебувають в зоні ефекту. Пастка існуватиме {4} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#around itself for {1} sec#within {2} y#slowed by {3}#exist for {4} min", en="Frost Trap" },
-- Frost Trap Aura
[13810] = { "Аура крижаної пастки", nil, "Швидкість руху зменшено на {1}%.#by {1}%", en="Frost Trap Aura" },
-- Hawk Eye
[19498] = { "Яструбине око", "Збільшує дальність вашої зброї дальнього бою на {1} м.#by {1} y", en="Hawk Eye" },
[19499] = { ref=19498 }, -- Hawk Eye
[19500] = { ref=19498 }, -- Hawk Eye
-- Humanoid Slaying
[19151] = { "Знищення гуманоїдів", "Збільшує всю шкоду проти гуманоїдів на {1}% та критичну шкоду проти гуманоїдів додатково на {2}%.#targets by {1}#additional {2}", en="Humanoid Slaying" },
[19152] = { ref=19151 }, -- Humanoid Slaying
[19153] = { ref=19151 }, -- Humanoid Slaying
-- Hunter's Mark
[1130] = { "Мітка мисливця", "Відмічає ціль, збільшуючи силу атаки дальнього бою всіх нападників проти неї на {1}. На додаток, мисливець завжди бачить відмічену ціль, навіть якщо та стає непомітною або невидимою. Ціль також відображається на мінімапі. Триває {2} хв.#by {1}#Lasts for {2} min", "Всі нападники отримують додатково {1} сили атаки дальнього бою проти цієї цілі.#gain {1} Ranged", en="Hunter's Mark" },
[14323] = { ref=1130 }, -- Hunter's Mark
[14324] = { ref=1130 }, -- Hunter's Mark
[14325] = { ref=1130 }, -- Hunter's Mark
-- Immolation Trap
[13795] = { "Обпалююча пастка", "Встановити вогняну пастку, яка підпалить першого ворога при наближенні й завдасть {1} шкоди вогнем протягом {2} с. Пастка існуватиме {3} хв. Пастки можна встановлювати лише поза боєм. Одночасно може бути активною лише одна пастка.#for {1} Fire damage over {2} sec#exist for {3} min", en="Immolation Trap" },
[14302] = { ref=13795 }, -- Immolation Trap
[14303] = { ref=13795 }, -- Immolation Trap
[14304] = { ref=13795 }, -- Immolation Trap
[14305] = { ref=13795 }, -- Immolation Trap
-- Immolation Trap Effect
[13797] = { "Ефект обпалюючої пастки", nil, "{1} шкоди вогнем кожні {2} c.#{1} Fire damage every {2} sec", en="Immolation Trap Effect" },
[14298] = { ref=13797 }, -- Immolation Trap Effect
[14299] = { ref=13797 }, -- Immolation Trap Effect
[14300] = { ref=13797 }, -- Immolation Trap Effect
[14301] = { ref=13797 }, -- Immolation Trap Effect
-- Impale
[24049] = { "Пронизування", "Завдає ворогу фізичної шкоди кожні {1} с протягом {2} с.#for {1} sec#for {2} sec", "Завдає від {1} до {2} шкоди кожні {3} с.#{1} to {2} damage#every {3} sec", en="Impale" },
[26548] = { ref=24049 }, -- Impale
-- Improved Arcane Shot
[19454] = { "Покращений арканічний постріл", "Зменшує час відновлення вашого \"Арканічного пострілу\" на {1} с.#by {1} sec", en="Improved Arcane Shot" },
[19455] = { ref=19454 }, -- Improved Arcane Shot
[19456] = { ref=19454 }, -- Improved Arcane Shot
[19457] = { ref=19454 }, -- Improved Arcane Shot
[19458] = { ref=19454 }, -- Improved Arcane Shot
-- Improved Aspect of the Hawk
[19552] = { "Покращений аспект яструба", "Допоки \"Аспект яструба\" активний, всі звичайні атаки дальнього бою з ймовірністю {1}% збільшать швидкість атаки дального бою на {2}% протягом {3} с.#{1}% chance#by {2}% for {3} sec", en="Improved Aspect of the Hawk" },
[19553] = { ref=19552 }, -- Improved Aspect of the Hawk
[19554] = { ref=19552 }, -- Improved Aspect of the Hawk
[19555] = { ref=19552 }, -- Improved Aspect of the Hawk
[19556] = { ref=19552 }, -- Improved Aspect of the Hawk
-- Improved Aspect of the Monkey
[19549] = { "Покращений аспект мавпи", "Збільшує бонус до ймовірності ухилення від вашого \"Аспекту мавпи\" на {1}%.#by {1}%", en="Improved Aspect of the Monkey" },
[19550] = { ref=19549 }, -- Improved Aspect of the Monkey
[19551] = { ref=19549 }, -- Improved Aspect of the Monkey
[24386] = { ref=19549 }, -- Improved Aspect of the Monkey
[24387] = { ref=19549 }, -- Improved Aspect of the Monkey
-- Improved Concussive Shot
[19407] = { "Покращений запаморочливий постріл", "Надає вашому \"Запаморочливому пострілу\" {1}% ймовірності приголомшити ціль на {2} с.#{1}% chance#for {2} sec", en="Improved Concussive Shot" },
[19410] = { "Покращений запаморочливий постріл", nil, "Приголомшено.", en="Improved Concussive Shot" },
[19412] = { ref=19407 }, -- Improved Concussive Shot
[19413] = { ref=19407 }, -- Improved Concussive Shot
[19414] = { ref=19407 }, -- Improved Concussive Shot
[19415] = { ref=19407 }, -- Improved Concussive Shot
-- Improved Eyes of the Beast
[19557] = { "Покращені очі звіра", "Збільшує тривалість дії вашої здібності \"Очі звіра\" на {1} с.#by {1} sec", en="Improved Eyes of the Beast" },
[19558] = { ref=19557 }, -- Improved Eyes of the Beast
-- Improved Feign Death
[19286] = { "Покращене вдавання мертвого", "Зменшує ймовірність протидіяти вашій здібності \"Удавання мертвого\" на {1}%.#by {1}%", en="Improved Feign Death" },
[19287] = { ref=19286 }, -- Improved Feign Death
-- Improved Hunter's Mark
[19421] = { "Покращена мітка мисливця", "Збільшує бонус до сили атаки дальнього бою вашої \"Мітки мисливця\" на {1}%.#by {1}%", en="Improved Hunter's Mark" },
[19422] = { ref=19421 }, -- Improved Hunter's Mark
[19423] = { ref=19421 }, -- Improved Hunter's Mark
[19424] = { ref=19421 }, -- Improved Hunter's Mark
[19425] = { ref=19421 }, -- Improved Hunter's Mark
-- Improved Mend Pet
[19572] = { "Покращене зцілення вихованця", "\"Зцілення вихованця\" з ймовірністю {1}% зніме {2} ефект прокляття, хвороби, магії або отрути на кожному такті зцілення.#{1}% chance#cleansing {2}", en="Improved Mend Pet" },
[19573] = { ref=19572 }, -- Improved Mend Pet
-- Improved Revive Pet
[19575] = { ref=24443 }, -- Improved Revive Pet
[24443] = { "Покращене оживлення вихованця", "Зменшує час вимови \"Оживлення вихованця\" на {1} с та витрати мани на {2}%. Також збільшує обсяг здоров'я, з яким вихованець повертається до життя, на {3}%.#time is reduced by {1}#cost is reduced by {2}#additional {3}", en="Improved Revive Pet" },
-- Improved Scorpid Sting
[19491] = { "Покращене жало скорпіда", "Зменшує витривалість цілей під дією вашого \"Жала скорпіда\" на {1}% від обсягу зменшеної сили.#by {1}%", en="Improved Scorpid Sting" },
[19493] = { ref=19491 }, -- Improved Scorpid Sting
[19494] = { ref=19491 }, -- Improved Scorpid Sting
[19486] = { "Покращене жало скорпіда", nil, "Витривалість зменшено на {1}.#by {1}", en="Improved Scorpid Sting" },
-- Improved Serpent Sting
[19464] = { "Покращене жало змії", "Збільшує шкоду вашої здібності \"Жало змії\" на {1}%.#by {1}%", en="Improved Serpent Sting" },
[19465] = { ref=19464 }, -- Improved Serpent Sting
[19466] = { ref=19464 }, -- Improved Serpent Sting
[19467] = { ref=19464 }, -- Improved Serpent Sting
[19468] = { ref=19464 }, -- Improved Serpent Sting
-- Improved Wing Clip
[19228] = { "Покращене підрізання крил", "Надає вашій здібності \"Підрізати крила\" {1}% ймовірності знерухомити ціль на {2} с.#{1}% chance#for {2} sec", en="Improved Wing Clip" },
[19229] = { "Покращене підрізання крил", nil, "Знерухомлено.", en="Improved Wing Clip" },
[19232] = { ref=19228 }, -- Improved Wing Clip
[19233] = { ref=19228 }, -- Improved Wing Clip
[19234] = { ref=19228 }, -- Improved Wing Clip
[19235] = { ref=19228 }, -- Improved Wing Clip
-- Intimidation
[19577] = { "Залякування", "Наказати вашому вихованцю залякати ціль із наступною успішною атакою ближнього бою, спричиняючи високий рівень загрози та приголомшуючи ціль на {1} с.#for {1} sec", "Лячний.", en="Intimidation" },
[24394] = { "Залякування", nil, "Приголомшено.", en="Intimidation" },
-- Killer Instinct
[19370] = { "Інстинкт вбивці", "Збільшує ймовірність завдати критичного удару всіма видами атак на {1}%.#by {1}%", en="Killer Instinct" },
[19371] = { ref=19370 }, -- Killer Instinct
[19373] = { ref=19370 }, -- Killer Instinct
-- Lethal Shots
[19426] = { "Летальні постріли", "Збільшує ймовірність критичних атак зі зброєю дальнього бою на {1}%.#by {1}%", en="Lethal Shots" },
[19427] = { ref=19426 }, -- Lethal Shots
[19429] = { ref=19426 }, -- Lethal Shots
[19430] = { ref=19426 }, -- Lethal Shots
[19431] = { ref=19426 }, -- Lethal Shots
-- Lightning Reflexes
[19168] = { "Блискавичні рефлекси", "Збільшує вашу спритність на {1}%.#by {1}%", en="Lightning Reflexes" },
[19180] = { ref=19168 }, -- Lightning Reflexes
[19181] = { ref=19168 }, -- Lightning Reflexes
[24296] = { ref=19168 }, -- Lightning Reflexes
[24297] = { ref=19168 }, -- Lightning Reflexes
-- Mend Pet
[136] = { "Зцілення вихованця", "Відновлює {1} здоров'я щосекунди вашому вихованцю поки ви зосереджуєтеся на зціленні. Триває {2} с.#pet {1} health#Lasts {2} sec", "Відновлює {1} здоров'я щосекунди.#Heals {1}", en="Mend Pet" },
[3111] = { ref=136 }, -- Mend Pet
[3661] = { ref=136 }, -- Mend Pet
[3662] = { ref=136 }, -- Mend Pet
[13542] = { ref=136 }, -- Mend Pet
[13543] = { ref=136 }, -- Mend Pet
[13544] = { ref=136 }, -- Mend Pet
-- Mongoose Bite
[1495] = { "Укус мангусти", "Контратакує ворога, завдаючи {1} шкоди. Можна виконати лише після того, як ви ухилилися.#for {1} damage", en="Mongoose Bite" },
[14269] = { ref=1495 }, -- Mongoose Bite
[14270] = { ref=1495 }, -- Mongoose Bite
[14271] = { ref=1495 }, -- Mongoose Bite
-- Monster Slaying
[24293] = { "Знищення монстрів", "Збільшує всю шкоду проти звірів, велетнів та драконів на {1}%, а критичну шкоду проти звірів, велетнів та драконів додатково на {2}%.#targets by {1}#additional {2}", en="Monster Slaying" },
[24294] = { ref=19151 }, -- Monster Slaying
[24295] = { ref=19151 }, -- Monster Slaying
-- Mortal Shots
[19485] = { "Смертельні постріли", "Збільшує додаткову шкоду від критичних ударів зброї дальнього бою[ та здібностей ближнього бою#and melee ability] на {1}%.#damage bonus by {1}%", en="Mortal Shots" },
[19487] = { ref=19485 }, -- Mortal Shots
[19488] = { ref=19485 }, -- Mortal Shots
[19489] = { ref=19485 }, -- Mortal Shots
[19490] = { ref=19485 }, -- Mortal Shots
-- Multi-Shot
[2643] = { "Багатозарядний постріл", "Вистрілює декілька набоїв, вражаючи {1} цілі.#{1} targets", en="Multi-Shot" },
[14288] = { "Багатозарядний постріл", "Вистрілює декілька набоїв, вражаючи {1} цілі та завдаючи додатково {2} шкоди.#{1} targets#{2} damage", en="Multi-Shot" },
[14289] = { ref=14288 }, -- Multi-Shot
[14290] = { ref=14288 }, -- Multi-Shot
[25294] = { ref=14288 }, -- Multi-Shot
-- Pathfinding
[19559] = { "Орієнтування на місцевості", "Збільшує бонус до швидкості руху від \"Аспекту гепарда\" та \"Аспекту зграї\" на {1}%.#by {1}%", en="Pathfinding" },
[19560] = { ref=19559 }, -- Pathfinding
-- Quick Shots
[6150] = { "Швидкі постріли", nil, "Швидкість атаки дальнього бою збільшено на {1}%.#by {1}%", en="Quick Shots" },
-- Ranged Weapon Specialization
[19507] = { "Спеціалізація на зброї дальнього бою", "Збільшує шкоду зброї дальнього бою на {1}%.#by {1}%", en="Ranged Weapon Specialization" },
[19508] = { ref=19507 }, -- Ranged Weapon Specialization
[19509] = { ref=19507 }, -- Ranged Weapon Specialization
[19510] = { ref=19507 }, -- Ranged Weapon Specialization
[19511] = { ref=19507 }, -- Ranged Weapon Specialization
-- Rapid Fire
[3045] = { "Швидка стрілянина", "Збільшує швидкість атаки дальнього бою на {1}%[, а швидкість атаки ближнього бою на {1}%#melee attack speed by {1}%] протягом {2} с.#ranged attack speed by {1}%#for {2} sec", "Збільшує швидкість атаки дальнього бою на {1}%[, а швидкість ближнього бою - на {1}%#melee attack speed by {1}%].#ranged attack speed by {1}%", en="Rapid Fire" },
-- Raptor Strike
[2973] = { "Удар раптора", "Потужна атака зі збільшенням шкоди ближнього бою на {1}.#by {1}", en="Raptor Strike" },
[14260] = { ref=2973 }, -- Raptor Strike
[14261] = { ref=2973 }, -- Raptor Strike
[14262] = { ref=2973 }, -- Raptor Strike
[14263] = { ref=2973 }, -- Raptor Strike
[14264] = { ref=2973 }, -- Raptor Strike
[14265] = { ref=2973 }, -- Raptor Strike
[14266] = { ref=2973 }, -- Raptor Strike
-- Readiness
[23989] = { "Готовність", "При активації миттєво завершує відновлення ваших здібностей \"Стримування\", \"Удавання мертвого\" та пасток.", en="Readiness" },
-- Revive Pet
[982] = { "Оживлення вихованця", "Оживляє вашого вихованця, повертаючи його до життя з {1}% здоров'я.#with {1}%", en="Revive Pet" },
-- Savage Strikes
[19159] = { "Жорстокі удари", "Збільшує ймовірність критичного ефекту \"Удару раптора\" та \"Укусу мангусти\" на {1}%.#by {1}%", en="Savage Strikes" },
[19160] = { ref=19159 }, -- Savage Strikes
-- Scare Beast
[1513] = { "Відлякування звіра", "Відлякує звіра, змушуючи його тікати з переляку протягом {1} с. Завдана шкода може перервати ефект. Одночасно лише один звір може бути наляканим.#for up to {1} sec", "Налякано.", en="Scare Beast" },
[14326] = { ref=1513 }, -- Scare Beast
[14327] = { ref=1513 }, -- Scare Beast
-- Scatter Shot
[19503] = { "Дезорієнтуючий постріл", "Постріл з короткої дистанції, що завдає {1}% шкоди від зброї та дезорієнтує ціль на {2} с. Будь-яка шкода скасує ефект. Припиняє вашу атаку при використанні.#deals {1}%#for {2} sec", "Дезорієнтовано.", en="Scatter Shot" },
-- Scorpid Sting
[3043] = { "Жало скорпіда", "Жалить ціль, зменшуючи силу та спритність на {1} протягом {2} с. Лише один ефект жала від кожного мисливця може бути активним на одній цілі.#by {1} for {2} sec", "Силу та спритність зменшено на {1}.#by {1}", en="Scorpid Sting" },
[14275] = { ref=3043 }, -- Scorpid Sting
[14276] = { ref=3043 }, -- Scorpid Sting
[14277] = { ref=3043 }, -- Scorpid Sting
-- Serpent Sting
[1978] = { "Жало змії", "Жалить ціль, завдаючи {1} шкоди від природи протягом {2} с. Лише один ефект жала від кожного мисливця може бути активним на одній цілі.#{1} Nature damage over {2} sec", "Завдає {1} шкоди від природи кожні {2} с.#{1} Nature damage every {2} sec", en="Serpent Sting" },
[13549] = { ref=1978 }, -- Serpent Sting
[13550] = { ref=1978 }, -- Serpent Sting
[13551] = { ref=1978 }, -- Serpent Sting
[13552] = { ref=1978 }, -- Serpent Sting
[13553] = { ref=1978 }, -- Serpent Sting
[13554] = { ref=1978 }, -- Serpent Sting
[13555] = { ref=1978 }, -- Serpent Sting
[25295] = { ref=1978 }, -- Serpent Sting
-- Spirit Bond
[19578] = { "Духовний зв'язок", "Поки ваш вихованець активний, ви обоє відновлюватимете {1}% від загального здоров'я кожні {2} с.#{1}% of total health every {2} sec", en="Spirit Bond" },
[19579] = { "Духовний зв'язок", nil, "Відновлення {1}% від загального здоров'я кожні {2} с.#{1}% of total health every {2} sec", en="Spirit Bond" },
[20895] = { ref=19578 }, -- Spirit Bond
[24529] = { ref=19579 }, -- Spirit Bond
-- Surefooted
[19290] = { "Впевнені кроки", "Збільшує ймовірність поцілити на {1}% та ймовірність протидіяти ефектам обмеження руху на додаткові {2}%.#hit chance by {1}%#resisted by an additional {2}%", en="Surefooted" },
[19294] = { ref=19290 }, -- Surefooted
[24283] = { ref=19290 }, -- Surefooted
-- Survivalist
[19255] = { "Фахівець із виживання", "Збільшує загальний обсяг здоров'я на {1}%.#by {1}%", en="Survivalist" },
[19256] = { ref=19255 }, -- Survivalist
[19257] = { ref=19255 }, -- Survivalist
[19258] = { ref=19255 }, -- Survivalist
[19259] = { ref=19255 }, -- Survivalist
-- Tame Beast
[1515] = { "Приручення звіра", "Почати приручення звіра, який стане вашим супутником. Ваша броня знижується на {1}%, поки ви зосереджуєтеся на процесі приручення звіра протягом {2} с. Якщо ви втратите увагу звіра з будь-якої причини, процес приручення провалиться. Після приручення, звір буде дуже нещасливим та недовірливим. Спробуйте одразу погодувати вихованця, щоб зробити його щасливим.#by {1}%#for {2} sec", "Приручення вихованця.", en="Tame Beast" },
-- Thick Hide
[19609] = { "Товста шкура", "Збільшує показник броні ваших вихованців на {1}%.#by {1}%", en="Thick Hide" },
[19610] = { ref=19609 }, -- Thick Hide
[19612] = { ref=19609 }, -- Thick Hide
-- Track Beasts
[1494] = { "Вистежування звірів", "Відображає на мінімапі місцезнаходження звірів неподалік. Одночасно можна вистежувати лише щось одне.", "Вистежування звірів.", en="Track Beasts" },
-- Track Demons
[19878] = { "Вистежування демонів", "Відображає на мінімапі місцезнаходження демонів неподалік. Одночасно можна вистежувати лише щось одне.", "Вистежування демонів.", en="Track Demons" },
-- Track Dragonkin
[19879] = { "Вистежування драконів", "Відображає на мінімапі місцезнаходження драконів неподалік. Одночасно можна вистежувати лише щось одне.", "Вистежування драконів.", en="Track Dragonkin" },
-- Track Elementals
[19880] = { "Вистежування елементалів", "Відображає на мінімапі місцезнаходження елементалів неподалік. Одночасно можна вистежувати лише щось одне.", "Вистежування елементалів.", en="Track Elementals" },
-- Track Giants
[19882] = { "Вистежування велетнів", "Відображає на мінімапі місцезнаходження велетнів неподалік. Одночасно можна вистежувати лише щось одне.", "Вистежування велетнів.", en="Track Giants" },
-- Track Hidden
[19885] = { "Вистежування прихованого", "Підсилює здатність виявлення непомітності та відображає на мінімапі прихованих істот в межах радіусу виявлення. Одночасно можна вистежувати лише щось одне.", "Вистежування прихованих цілей.", en="Track Hidden" },
-- Track Humanoids
[19883] = { "Вистежування гуманоїдів", "Відображає на мінімапі місцезнаходження гуманоїдів неподалік. Одночасно можна вистежувати лише щось одне.", "Вистежування гуманоїдів.", en="Track Humanoids" },
-- Track Undead
[19884] = { "Вистежування невмерлих", "Відображає на мінімапі місцезнаходження невмерлих неподалік. Одночасно можна вистежувати лише щось одне.", "Вистежування невмерлих.", en="Track Undead" },
-- Tranquilizing Shot
[19801] = { "Заспокійливий постріл", "Спроба зняти {1} ефект навіженості з ворожої істоти.#remove {1}", en="Tranquilizing Shot" },
-- Trap Mastery
[19376] = { "Опанування пасток", "Зменшує ймовірність ворогів протидіяти ефектам пасток на {1}%.#by {1}%", en="Trap Mastery" },
[19377] = { ref=19376 }, -- Trap Mastery
-- Trueshot Aura
[19506] = { "Аура влучного пострілу", "Збільшує силу атаки[ дальнього бою#the ranged attack power of party] учасників групи в межах {1} м на {2}[, а силу атаки дальнього бою мисливця додатково на {1}#ranged attack power by an additional {1}]. Триває {3} хв.#within {1} yards by {2}#Lasts {3} min", "Силу атаки[ дальнього бою#Ranged Attack Power increased by {1}] збільшено на {1}[, а силу атаки дальнього бою мисливця додатково на {1}#Ranged Attack Power increased by an additional {1}].#increased by {1}", en="Trueshot Aura" },
[20905] = { ref=19506 }, -- Trueshot Aura
[20906] = { ref=19506 }, -- Trueshot Aura
-- Unleashed Fury
[19616] = { "Вивільнена лють", "Збільшує шкоду ваших вихованців на {1}%.#by {1}%", en="Unleashed Fury" },
[19617] = { ref=19616 }, -- Unleashed Fury
[19618] = { ref=19616 }, -- Unleashed Fury
[19619] = { ref=19616 }, -- Unleashed Fury
[19620] = { ref=19616 }, -- Unleashed Fury
-- Viper Sting
[3034] = { "Жало гадюки", "Уколює ціль, висушує {1} мани протягом {2} с. Лише один ефект жала від кожного мисливця може бути активним на одній цілі.#{1} mana over {2} sec", "Висушує {1} мани кожні {2} с.#{1} mana every {2} sec", en="Viper Sting" },
[14279] = { ref=3034 }, -- Viper Sting
[14280] = { ref=3034 }, -- Viper Sting
-- Volley
[1510] = { "Обстріл", "Безперервно обстрілює вибране місце, завдаючи {1} шкоди від аркани ворожим цілям в межах {2} м щосекунди протягом {3} с.#causing {1}#within {2} y#for {3} sec", en="Volley" },
[14294] = { ref=1510 }, -- Volley
[14295] = { ref=1510 }, -- Volley
-- Wing Clip
[2974] = { "Підрізати крила", "Завдає {1} шкоди та сповільнює рух ворога на {2}% протягом {3} с.#Inflicts {1}#by {2}% for {3} sec", "Швидкість руху зменшено на {1}%.#by {1}", en="Wing Clip" },
[14267] = { ref=2974 }, -- Wing Clip
[14268] = { ref=2974 }, -- Wing Clip
-- Wyvern Sting
[19386] = { "Жало виверни", "Постріл, що жалить ціль та занурює її в сон на {1} с. Будь-яка шкода пробудить ціль. Коли ціль прокинеться, жало завдасть {2} шкоди від природи протягом {3} с. Можна використовувати лише поза боєм. Лише один ефект жала від кожного мисливця може бути активним на одній цілі.#sleep for {1} sec#causes {2}#over {3} sec", "Сон.", en="Wyvern Sting" },
[24132] = { ref=19386 }, -- Wyvern Sting
[24133] = { ref=19386 }, -- Wyvern Sting
[24131] = { "Жало виверни", "Постріл, що жалить ціль та занурює її в сон на {1} с. Будь-яка шкода пробудить ціль. Коли ціль прокинеться, жало завдасть {2} шкоди від природи протягом {3} с. Лише один ефект жала від кожного мисливця може бути активним на одній цілі.#sleep for {1} sec#causes {2}#over {3} sec", "{1} шкоди від природи кожні {2} с.#{1} Nature#every {2} sec", en="Wyvern Sting" },
[24134] = { "Жало виверни", nil, "{1} шкоди від природи кожні {2} с.#{1} Nature#every {2} sec", en="Wyvern Sting" },
[24135] = { ref=24134 }, -- Wyvern Sting
[24335] = { "Жало виверни", "Постріл, що жалить ціль та занурює її в сон на {1} с. Будь-яка шкода пробудить ціль. Коли ціль прокинеться, жало завдасть від {2} до {3} шкоди від природи протягом {4} с.#sleep for {1} sec#causes {2} to {3} Nature#over {4} sec", "Сон.", en="Wyvern Sting" },
[24336] = { "Жало виверни", nil, "Від {1} до {2} шкоди від природи кожні {3} с.#{1} to {2} Nature#every {3} sec", en="Wyvern Sting" },
[26180] = { "Жало виверни", "Постріл, що жалить ціль та занурює її в сон на {1} с. Будь-яка шкода пробудить ціль.#for {1} sec", "Сон.", en="Wyvern Sting" },

-- Item effects
[23721] = { "Вливання аркани", "Наповнює вас енергією аркани, внаслідок чого наступне застосування \"Арканічного пострілу\" протягом {1} с підриває ціль. Акранічний вибух завдає від {2} до {3} шкоди ворогам поруч з ціллю.#fired within {1} sec#will deal {2} to {3} damage", "Наступний \"Арканічний постріл\" спричинить акранічний вибух.", en="Arcane Infused" },
[23157] = { "Зменшення витрат арканічного пострілу", "Зменшує витрати мани на здібність \"Арканічний постріл\" на {1}.#Shot by {1}", en="Arcane Shot Mana Reduction" },
[23560] = { "Покращене зцілення вихованця", "Збільшує дальність дії \"Зцілення вихованця\" на {1}%, а обсяг зцілення - на {2}%. Також зменшує витрати мани на {3}%.#Pet spell by {1}% and the effect by {2}%#cost by {3}%", en="Improved Mend Pet" },
[28539] = { "Збільшення шкоди Багатозарядного пострілу", "Збільшує шкоду \"Багатозарядного пострілу\" на {1}%.#Shot by {1}%", en="Multi-Shot Damage Increase" },

}

for k, v in pairs(hunter_spells) do addonTable.spell[k] = v end
