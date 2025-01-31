local _, addonTable = ...

local shaman_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Ancestral Fortitude
[16177] = { "Стійкість пращурів", nil, "Збільшує броню від предметів на {1}%.#by {1}%", en="Ancestral Fortitude" },
[16236] = { ref=16177 }, -- Ancestral Fortitude
[16237] = { ref=16177 }, -- Ancestral Fortitude
-- Ancestral Healing
[16176] = { "Зцілення пращурів", "Збільшує броню вашої цілі на {1}% протягом {2} с після отримання критичного ефекту ваших цілющих заклять.#by {1}% for {2} sec", en="Ancestral Healing" },
[16235] = { ref=16176 }, -- Ancestral Healing
[16240] = { ref=16176 }, -- Ancestral Healing
-- Ancestral Knowledge
[17485] = { "Знання пращурів", "Збільшує ваш максимальний запас мани на {1}%.#by {1}%", en="Ancestral Knowledge" },
[17486] = { ref=17485 }, -- Ancestral Knowledge
[17487] = { ref=17485 }, -- Ancestral Knowledge
[17488] = { ref=17485 }, -- Ancestral Knowledge
[17489] = { ref=17485 }, -- Ancestral Knowledge
-- Ancestral Spirit
[2008] = { "Дух пращурів", "Повертає дух до тіла, відроджуючи ціль з {1} здоров'я та {2} мани. Не можна використовувати в бою.#{1} health and {2} mana", en="Ancestral Spirit" },
[20609] = { ref=2008 }, -- Ancestral Spirit
[20610] = { ref=2008 }, -- Ancestral Spirit
[20776] = { ref=2008 }, -- Ancestral Spirit
[20777] = { ref=2008 }, -- Ancestral Spirit
-- Anticipation
[16254] = { "Передчуття", "Збільшує вашу ймовірність ухилення на {1}%.#additional {1}%", en="Anticipation" },
[16271] = { ref=16254 }, -- Anticipation
[16272] = { ref=16254 }, -- Anticipation
[16273] = { ref=16254 }, -- Anticipation
[16274] = { ref=16254 }, -- Anticipation
-- Astral Recall
[556] = { "Астральне повернення", "Повертає заклинача крізь Підсвітню Крутоверть додому. Поговоріть з корчмарем в іншому місці, щоб змінити домівку.", en="Astral Recall" },
-- Call of Flame
[16038] = { "Поклик полум'я", "Збільшує шкоду ваших вогняних тотемів на {1}%.#by {1}%", en="Call of Flame" },
[16160] = { ref=16038 }, -- Call of Flame
[16161] = { ref=16038 }, -- Call of Flame
-- Call of Thunder
[16041] = { "Поклик грому", "Збільшує ймовірність критичного удару заклять \"Блискавка\" та \"Ланцюгова блискавка\" на {1}%.#additional {1}%", en="Call of Thunder" },
[16117] = { ref=16041 }, -- Call of Thunder
[16118] = { ref=16041 }, -- Call of Thunder
[16119] = { ref=16041 }, -- Call of Thunder
[16120] = { ref=16041 }, -- Call of Thunder
-- Chain Heal
[1064] = { "Ланцюгове зцілення", "Зцілює дружній цілі від {1} до {2} здоров'я та перестрибує на інші цілі неподалік. Якщо закляття було націлене на учасника групи, подальші стрибки переходитимуть лише на інших її учасників. Кожен наступний стрибок зцілює на {3}% менше здоров'я. Зцілює до {4} цілей.#for {1} to {2}#{3}% as effective#{4} total targets.", en="Chain Heal" },
[10622] = { ref=1064 }, -- Chain Heal
[10623] = { ref=1064 }, -- Chain Heal
-- Chain Lightning
[421] = { "Ланцюгова блискавка", "Кидає в ціль блискавку, що завдає від {1} до {2} шкоди від природи та перестрибує на інших ворогів поруч. Кожен стрибок завдає на {3}% менше шкоди. Вражає до {4} цілей.#dealing {1} to {2}#damage by {3}#{4} total targets.", en="Chain Lightning" },
[930] = { ref=421 }, -- Chain Lightning
[2860] = { ref=421 }, -- Chain Lightning
[10605] = { ref=421 }, -- Chain Lightning
-- Clearcasting
[16246] = { "Ясномова", nil, "Ваше наступне стихійне бойове закляття витратить на {1}% менше мани.#by {1}%", en="Clearcasting" },
-- Concussion
[16035] = { "Струс", "Збільшує шкоду заклять \"Блискавка\", \"Ланцюгова блискавка\" та заклять-шоків на {1}%.#by {1}%", en="Concussion" },
[16105] = { ref=16035 }, -- Concussion
[16106] = { ref=16035 }, -- Concussion
[16107] = { ref=16035 }, -- Concussion
[16108] = { ref=16035 }, -- Concussion
-- Convection
[16039] = { "Конвекція", "Зменшує витрати мани заклять \"Блискавка\", \"Ланцюгова блискавка\" та заклять-шоків на {1}%.#by {1}%", en="Convection" },
[16109] = { ref=16039 }, -- Convection
[16110] = { ref=16039 }, -- Convection
[16111] = { ref=16039 }, -- Convection
[16112] = { ref=16039 }, -- Convection
-- Corrupted Totems
[23425] = { "Осквернені тотеми", nil, "Ви викликаєте осквернені тотеми.", en="Corrupted Totems" },
-- Cure Disease
[2870] = { "Лікування хвороби", "Виліковує {1} хворобу з цілі.#Cures {1}", en="Cure Disease" },
-- Cure Poison
[526] = { "Лікування отрути", "Виліковує {1} ефект отрути з цілі.#Cures {1}", en="Cure Poison" },
-- Disease Cleansing Totem
[8170] = { "Тотем очищення хвороб", "Викликає тотем очищення хвороб із {1} здоров'я біля заклинача. Тотем буде намагатися зняти {2} ефект хвороби з учасників групи в межах {3} м кожні {4} с. Триває {5} хв.#with {1} health#remove {2}#within {3} yards every {4} sec#Lasts {5} min", en="Disease Cleansing Totem" },
-- Dual Wield
[30798] = { "Бій з двох рук", "Дозволяє брати в ліву руку зброю для однієї руки або зброю для лівої руки.", en="Dual Wield" },
-- Earth Shock
[8042] = { "Земний шок", "Миттєво вражає ціль ударною хвилею, завдаючи від {1} до {2} шкоди від природи. Також перериває вимову закляття та унеможливлює вимову будь-яких інших заклять тієї ж школи магії протягом {3} с. Спричиняє високий рівень загрози.#causing {1} to {2}#for {3} sec", en="Earth Shock" },
[8044] = { ref=8042 }, -- Earth Shock
[8045] = { ref=8042 }, -- Earth Shock
[8046] = { ref=8042 }, -- Earth Shock
[10412] = { ref=8042 }, -- Earth Shock
[10413] = { ref=8042 }, -- Earth Shock
[10414] = { ref=8042 }, -- Earth Shock
-- Earth's Grasp
[16043] = { "Хватка землі", "Збільшує здоров'я вашого тотема кам'яного пазура на {1}%, а радіус дії тотема земного зв'язування на {2}%.#Stoneclaw Totem by {1}%#Earthbind Totem by {2}%", en="Earth's Grasp" },
[16130] = { ref=16043 }, -- Earth's Grasp
-- Earthbind
[3600] = { "Земне зв'язування", nil, "Швидкість руху зменшено на {1}%.#by {1}%", en="Earthbind" },
-- Earthbind Totem
[2484] = { "Тотем земного зв'язування", "Викликає тотем земного зв'язування з {1} здоров'я біля заклинача на {2} с. Тотем сповільнює рух ворогів в межах {3} м.#with {1} health#for {2} sec#within {3} y", en="Earthbind Totem" },
-- Elemental Devastation
[29177] = { ref=30165 }, -- Elemental Devastation
[29178] = { ref=30165 }, -- Elemental Devastation
[29179] = { ref=30160 }, -- Elemental Devastation
[29180] = { ref=30160 }, -- Elemental Devastation
[30160] = { "Стихійне спустошення", "Критичні удари ваших бойових заклять збільшують ймовірність завдання критичного удару атаками ближнього бою на {1}% протягом {2} с.#by {1}% for {2} sec", en="Elemental Devastation" },
[30165] = { "Стихійне спустошення", nil, "Збільшує ймовірність завдати критичного удару атаками ближнього бою на {1}%.#by {1}%", en="Elemental Devastation" },
-- Elemental Focus
[16164] = { "Стихійна зосередженість", "Після вимови будь-якого бойового закляття вогню, криги чи природи ви з ймовірністю {1}% отримаєте ефект \"Ясномова\". \"Ясномова\" зменшує витрати мани вашого наступного бойового закляття на {2}%.#a {1}% chance#spell by {2}%", en="Elemental Focus" },
-- Elemental Fury
[16089] = { "Стихійна лють", "Збільшує додаткову шкоду від критичних ударів тотемів обпалення, магми та вогненного спалаху, а також заклять вогню, криги та природи на {1}%.#by {1}%", en="Elemental Fury" },
-- Elemental Mastery
[16166] = { "Опанування стихій", "При активації збільшує ймовірність критичного ефекту наступного бойового закляття вогню, криги чи природи на {1}% і зменшує витрати мани на нього на {2}%.#a {1}% critical#cost by {2}%", "Ваше наступне бойове закляття вогню, криги чи природи витратить на {1}% менше мани й гарантовано матиме критичний ефект.#by {1}%", en="Elemental Mastery" },
-- Elemental Warding
[28996] = { "Оберіг стихій", "Зменшує отриману шкоду від ефектів вогню, криги та природи на {1}%.#by {1}%", en="Elemental Warding" },
[28997] = { ref=28996 }, -- Elemental Warding
[28998] = { ref=28996 }, -- Elemental Warding
-- Elemental Weapons
[16266] = { "Зброя стихій", "Збільшує бонус сили атаки ближнього бою від \"Зброї каменолома\" на {1}%, ефект \"Зброї буревію\" на {2}% та шкоду \"Зброї язика полум'я\" та \"Зброї крижаного тавра\" на {3}%.#Rockbiter Weapon by {1}#effect by {2}#Frostbrand Weapon by {3}", en="Elemental Weapons" },
[29079] = { ref=16266 }, -- Elemental Weapons
[29080] = { ref=16266 }, -- Elemental Weapons
-- Enhancing Totems
[16259] = { "Покращення тотемів", "Посилює ефекти ваших тотемів сили землі та поваби вітру на {1}%.#by {1}%", en="Enhancing Totems" },
[16295] = { ref=16259 }, -- Enhancing Totems
-- Eye of the Storm
[29062] = { "Око бурі", "Після отримання критичного удару в ближньому чи дальньому бою ви з ймовірністю {1}% отримаєте ефект \"Зосередженої вимови\" на {2} с. \"Зосереджена вимова\" оберігає вас від затримки вимови заклять при отриманні шкоди.#a {1}% chance#for {2} sec", en="Eye of the Storm" },
[29064] = { ref=29062 }, -- Eye of the Storm
[29065] = { ref=29062 }, -- Eye of the Storm
-- Far Sight
[6196] = { "Далекозорість", "Переносить поле зору заклинача до обраного місця. Триває {1} хв. Можна використовувати лише просто неба.#Lasts {1} min", "Не може рухатися під час використання \"Далекозорості\".", en="Far Sight" },
-- Fire Nova Totem
[1535] = { "Тотем вогненного спалаху", "Викликає тотем вогненного спалаху з {1} здоров'я на {2} с. Якщо тотем не буде знищено за {3} с, він завдасть від {4} до {5} шкоди вогнем усім ворогам в межах {6} м.#has {1} health and lasts {2} sec#within {3} sec#inflicts {4} to {5}#within {6} y", en="Fire Nova Totem" },
[8498] = { ref=1535 }, -- Fire Nova Totem
[8499] = { ref=1535 }, -- Fire Nova Totem
[11314] = { ref=1535 }, -- Fire Nova Totem
[11315] = { ref=1535 }, -- Fire Nova Totem
-- Fire Resistance
[8185] = { "Опір вогню", nil, "Опір вогню збільшено на {1}#by {1}", en="Fire Resistance" },
[10534] = { ref=8185 }, -- Fire Resistance
[10535] = { ref=8185 }, -- Fire Resistance
-- Fire Resistance Totem
[8184] = { "Тотем опору вогню", "Викликає тотем опору вогню з {1} здоров'я біля заклинача на {2} хв, який збільшує опір вогню учасників групи в межах {3} м на {4}.#with {1} health#for {2} min#within {3} yards by {4}", en="Fire Resistance Totem" },
[10537] = { ref=8184 }, -- Fire Resistance Totem
[10538] = { ref=8184 }, -- Fire Resistance Totem
-- Flame Shock
[8050] = { "Вогняний шок", "Миттєво обпалює ціль вогнем, завдаючи {1} шкоди вогнем одразу та ще {2} шкоди вогнем протягом {3} с.#causing {1}#{2} Fire damage over {3} sec", "{1} шкоди вогнем кожні {2} с.#{1} Fire damage every {2} sec", en="Flame Shock" },
[8052] = { ref=8050 }, -- Flame Shock
[8053] = { ref=8050 }, -- Flame Shock
[10447] = { ref=8050 }, -- Flame Shock
[10448] = { ref=8050 }, -- Flame Shock
[29228] = { ref=8050 }, -- Flame Shock
-- Flametongue Totem
[8227] = { "Тотем язика полум'я", "Викликає тотем язика полум'я з {1} здоров'я біля заклинача. Тотем підсилює вогнем зброю в основній руці всіх учасників групи в межах {2} м. Кожен удар завдає від {3} до {4} додаткової шкоди вогнем залежно від швидкості зброї. Повільна зброя завдає більшої шкоди за удар. Триває {5} хв.#with {1} health#within {2} y#causes {3} to {4}#Lasts {5} min", en="Flametongue Totem" },
[8249] = { ref=8227 }, -- Flametongue Totem
[10526] = { ref=8227 }, -- Flametongue Totem
[16387] = { ref=8227 }, -- Flametongue Totem
-- Flametongue Weapon
[8024] = { "Зброя язика полум'я", "Підсилює зброю шамана вогнем. Кожен удар завдає цілі від {1} до {2} додаткової шкоди вогнем залежно від швидкості зброї. Повільна зброя завдає більшої шкоди за удар. Триває {3} хв.#causes {1} to {2}#Lasts for {3} min", en="Flametongue Weapon" },
[8027] = { ref=8024 }, -- Flametongue Weapon
[8030] = { ref=8024 }, -- Flametongue Weapon
[16339] = { ref=8024 }, -- Flametongue Weapon
[16341] = { ref=8024 }, -- Flametongue Weapon
[16342] = { ref=8024 }, -- Flametongue Weapon
-- Flurry
[16256] = { "Шквал", "Збільшує вашу швидкість атаки на {1}% для наступних {2} ударів після того, як ви завдали критичного удару.#speed by {1}%#next {2} swings", en="Flurry" },
[16257] = { "Шквал", nil, "Швидкість атаки збільшено на {1}%.#by {1}%", en="Flurry" },
[16277] = { ref=16257 }, -- Flurry
[16278] = { ref=16257 }, -- Flurry
[16279] = { ref=16257 }, -- Flurry
[16280] = { ref=16257 }, -- Flurry
[16281] = { ref=16256 }, -- Flurry
[16282] = { ref=16256 }, -- Flurry
[16283] = { ref=16256 }, -- Flurry
[16284] = { ref=16256 }, -- Flurry
-- Focused Casting
[29063] = { "Зосереджена вимова", "Ви не зазнаєте затримки вимови заклять при отриманні шкоди. Діє {1} секунд.#Lasts {1} sec", "Не зазнає затримки вимови заклять при отриманні шкоди.", en="Focused Casting" },
-- Frost Resistance
[8182] = { "Опір кризі", nil, "Опір кризі збільшено на {1}#by {1}", en="Frost Resistance" },
[10476] = { ref=8182 }, -- Frost Resistance
[10477] = { ref=8182 }, -- Frost Resistance
-- Frost Resistance Totem
[8181] = { "Тотем опору кризі", "Викликає тотем опору кризі з {1} здоров'я біля заклинача на {2} хв, який збільшує опір кризі учасників групи в межах {4} м на {3}.#with {1} health#for {2} min#resistance by {3}#within {4} y", en="Frost Resistance Totem" },
[10478] = { ref=8181 }, -- Frost Resistance Totem
[10479] = { ref=8181 }, -- Frost Resistance Totem
-- Frost Shock
[8056] = { "Крижаний шок", "Миттєво вражає ціль кригою, завдаючи від {1} до {2} шкоди кригою та сповільнюючи рух на {3}%. Триває {4} с.#causing {1} to {2}#speed by {3}%#Lasts {4} sec", "Рух сповільнено на {1}%.#by {1}%", en="Frost Shock" },
[8058] = { ref=8056 }, -- Frost Shock
[10472] = { ref=8056 }, -- Frost Shock
[10473] = { ref=8056 }, -- Frost Shock
-- Frostbrand Weapon
[8033] = { "Зброя крижаного тавра", "Підсилює зброю шамана кригою. Кожен удар може завдати цілі додатково {1} шкоди кригою та сповільнити її рух на {2}% протягом {3} с. Триває {4} хв.#causing {1}#by {2}% for {3} sec#Lasts for {4} min", en="Frostbrand Weapon" },
[8038] = { ref=8033 }, -- Frostbrand Weapon
[10456] = { ref=8033 }, -- Frostbrand Weapon
[16355] = { ref=8033 }, -- Frostbrand Weapon
[16356] = { ref=8033 }, -- Frostbrand Weapon
-- Ghost Wolf
[2645] = { "Примарний вовк", "Перетворює шамана на примарного вовка, збільшуючи швидкість руху на {1}%. Можна використовувати лише просто неба.#by {1}", "Збільшує швидкість руху на {1}%.#by {1}%", en="Ghost Wolf" },
-- Grace of Air
[8836] = { "Поваба вітру", nil, "Збільшує спритність на {1}.#by {1}", en="Grace of Air" },
[10626] = { ref=8836 }, -- Grace of Air
[25360] = { ref=8836 }, -- Grace of Air
-- Grace of Air Totem
[8835] = { "Тотем поваби вітру", "Викликає тотем поваби вітру з {1} здоров'я біля заклинача. Тотем збільшує спритність учасників групи в межах {2} м на {3}. Триває {4} хв.#with {1} health#within {2} yards by {3}#Lasts {4} min", en="Grace of Air Totem" },
[10627] = { ref=8835 }, -- Grace of Air Totem
[25359] = { ref=8835 }, -- Grace of Air Totem
-- Grounding Totem
[8177] = { "Тотем заземлення", "Викликає тотем заземлення з {1} здоров'я біля заклинача, який перенаправлятиме на себе одне вороже бойове закляття, ціллю якого є учасник групи неподалік раз на {2} с. Не перенаправляє закляття з ураженням по області. Триває {3} с.#with {1} health#every {2} sec#Lasts {3} sec", en="Grounding Totem" },
-- Grounding Totem Effect
[8178] = { "Ефект тотему заземлення", nil, "Перенаправить одне вороже бойове закляття на тотем заземлення.", en="Grounding Totem Effect" },
-- Guardian Totems
[16258] = { "Вартові тотеми", "Посилює ефекти зменшення шкоди від ваших тотемів кам'яної шкіри та стіни вітру на {1}%, а також зменшує час відновлення вашого тотема заземлення на {2} с.#Windwall Totem by {1}%#Grounding Totem by {2} sec", en="Guardian Totems" },
[16293] = { ref=16258 }, -- Guardian Totems
-- Healing Focus
[16181] = { "Зосередженість на зціленні", "З ймовірністю {1}% ви уникнете затримки вимови цілющих заклять при отриманні шкоди.#a {1}% chance", en="Healing Focus" },
[16230] = { ref=16181 }, -- Healing Focus
[16232] = { ref=16181 }, -- Healing Focus
[16233] = { ref=16181 }, -- Healing Focus
[16234] = { ref=16181 }, -- Healing Focus
-- Healing Grace
[29187] = { "Цілюще благовоління", "Зменшує загрозу від ваших заклять зцілення на {1}%.#by {1}%", en="Healing Grace" },
[29189] = { ref=29187 }, -- Healing Grace
[29191] = { ref=29187 }, -- Healing Grace
-- Healing Stream
[5672] = { "Цілющий потік", nil, "Зцілює {1} здоров'я кожні {2} с.#Heals {1} every {2} sec", en="Healing Stream" },
[6371] = { ref=5672 }, -- Healing Stream
[6372] = { ref=5672 }, -- Healing Stream
[10460] = { ref=5672 }, -- Healing Stream
[10461] = { ref=5672 }, -- Healing Stream
-- Healing Stream Totem
[5394] = { "Тотем цілющого потоку", "Викликає тотем цілющого потоку з {1} здоров'я біля заклинача на {2} хв. Тотем зцілює учасникам групи в межах {3} м {4} здоров'я кожні {5} с.#with {1} health#for {2} min#within {3} yards for {4} every {5} sec", en="Healing Stream Totem" },
[6375] = { ref=5394 }, -- Healing Stream Totem
[6377] = { ref=5394 }, -- Healing Stream Totem
[10462] = { ref=5394 }, -- Healing Stream Totem
[10463] = { ref=5394 }, -- Healing Stream Totem
-- Healing Wave
[331] = { "Хвиля зцілення", "Зцілює дружній цілі від {1} до {2} здоров'я.#for {1} to {2}", en="Healing Wave" },
[332] = { ref=331 }, -- Healing Wave
[547] = { ref=331 }, -- Healing Wave
[913] = { ref=331 }, -- Healing Wave
[939] = { ref=331 }, -- Healing Wave
[959] = { ref=331 }, -- Healing Wave
[8005] = { ref=331 }, -- Healing Wave
[10395] = { ref=331 }, -- Healing Wave
[10396] = { ref=331 }, -- Healing Wave
[25357] = { ref=331 }, -- Healing Wave
-- Healing Way
[29202] = { ref=29206 }, -- Healing Way
[29205] = { ref=29206 }, -- Healing Way
[29206] = { "Шлях зцілення", "Закляття \"Хвиля зцілення\" з імовірністю {1}% підсилить повторні ефекти цього закляття на ту саму ціль на {2}% протягом {3} с. Ефект накопичується до {4} разів.#a {1}% chance#by {2}% for {3} sec#up to {4} times", en="Healing Way" },
[29203] = { "Шлях зцілення", nil, "Підсилює ефект \"Хвилі зцілення\" на {1}%.#by up to {1}%", en="Healing Way" },
-- Improved Fire Totems
[16086] = { "Покращені тотеми вогню", "Зменшує час активації вашого тотема вогненного спалаху на {1} с, а рівень загрози від тотема магми на {2}%.#activates by {1} sec#Magma Totem by {2}%", en="Improved Fire Totems" },
[16544] = { ref=16086 }, -- Improved Fire Totems
-- Improved Ghost Wolf
[16262] = { "Покращений примарний вовк", "Зменшує час вимови закляття \"Примарний вовк\" на {1} с.#by {1} sec", en="Improved Ghost Wolf" },
[16287] = { ref=16262 }, -- Improved Ghost Wolf
-- Improved Healing Wave
[16182] = { "Покращена хвиля зцілення", "Зменшує час вимови закляття \"Хвиля зцілення\" на {1} с.#by {1} sec", en="Improved Healing Wave" },
[16226] = { ref=16182 }, -- Improved Healing Wave
[16227] = { ref=16182 }, -- Improved Healing Wave
[16228] = { ref=16182 }, -- Improved Healing Wave
[16229] = { ref=16182 }, -- Improved Healing Wave
-- Improved Lightning Shield
[16261] = { "Покращений блискавковий щит", "Збільшує шкоду від зарядів \"Блискавкового щита\" на {1}%.#by {1}%", en="Improved Lightning Shield" },
[16290] = { ref=16261 }, -- Improved Lightning Shield
[16291] = { ref=16261 }, -- Improved Lightning Shield
-- Improved Reincarnation
[16184] = { "Покращена реінкарнація", "Зменшує час відновлення вашої здібності \"Реінкарнація\" на {1} хв та збільшує обсяг здоров'я і мани, з яким ви повертаєтеся до життя, на {2}%.#by {1} min#additional {2}%", en="Improved Reincarnation" },
[16209] = { ref=16184 }, -- Improved Reincarnation
-- Improved Weapon Totems
[29192] = { "Покращені тотеми зброї", "Збільшує бонус до сили атаки ближнього бою від вашого тотему буревію на {1}%, а шкоду вашого тотема язика полум'я на {2}%.#Windfury Totem by {1}%#Flametongue Totem by {2}%", en="Improved Weapon Totems" },
[29193] = { ref=29192 }, -- Improved Weapon Totems
-- Lesser Healing Wave
[8004] = { "Мала хвиля зцілення", "Зцілює дружній цілі від {1} до {2} здоров'я.#for {1} to {2}", en="Lesser Healing Wave" },
[8008] = { ref=8004 }, -- Lesser Healing Wave
[8010] = { ref=8004 }, -- Lesser Healing Wave
[10466] = { ref=8004 }, -- Lesser Healing Wave
[10467] = { ref=8004 }, -- Lesser Healing Wave
[10468] = { ref=8004 }, -- Lesser Healing Wave
-- Lightning Bolt
[403] = { "Блискавка", "Кидає в ціль блискавку, завдаючи від {1} до {2} шкоди від природи.#for {1} to {2}", en="Lightning Bolt" },
[529] = { ref=403 }, -- Lightning Bolt
[548] = { ref=403 }, -- Lightning Bolt
[915] = { ref=403 }, -- Lightning Bolt
[943] = { ref=403 }, -- Lightning Bolt
[6041] = { ref=403 }, -- Lightning Bolt
[10391] = { ref=403 }, -- Lightning Bolt
[10392] = { ref=403 }, -- Lightning Bolt
[15207] = { ref=403 }, -- Lightning Bolt
[15208] = { ref=403 }, -- Lightning Bolt
-- Lightning Mastery
[16578] = { "Опанування блискавки", "Зменшує час вимови заклять \"Блискавка\" та \"Ланцюгова блискавка\" на {1} с.#by {1} sec", en="Lightning Mastery" },
[16579] = { ref=16578 }, -- Lightning Mastery
[16580] = { ref=16578 }, -- Lightning Mastery
[16581] = { ref=16578 }, -- Lightning Mastery
[16582] = { ref=16578 }, -- Lightning Mastery
-- Lightning Shield
[26364] = { "Блискавковий щит", "Кидає в ціль блискавку, що завдає {1} шкоди від природи.#for {1} Nature", en="Lightning Shield" },
[26365] = { ref=26363 }, -- Lightning Shield
[26366] = { ref=26363 }, -- Lightning Shield
[26367] = { ref=26363 }, -- Lightning Shield
[26369] = { ref=26363 }, -- Lightning Shield
[26370] = { ref=26363 }, -- Lightning Shield
[27635] = { ref=26363 }, -- Lightning Shield
[324] = { "Блискавковий щит", "Оточує заклинача {1} кульовими блискавками. Коли будь-яке закляття, атака ближнього чи дальнього бою влучає у заклинача, нападнику завдається {2} шкоди від природи. При цьому витрачається одна кульова блискавка. Кульові блискавки можуть активуватися лише раз на кілька секунд. Триває {3} хв.#by {1} balls#struck for {2} Nature#Lasts {3} min", "Завдає {1} шкоди від природи нападникам при отриманні удару.#Causes {1} Nature", en="Lightning Shield" },
[325] = { ref=324 }, -- Lightning Shield
[905] = { ref=324 }, -- Lightning Shield
[945] = { ref=324 }, -- Lightning Shield
[8134] = { ref=324 }, -- Lightning Shield
[10431] = { ref=324 }, -- Lightning Shield
[10432] = { ref=324 }, -- Lightning Shield
-- Magma Totem
[8190] = { "Тотем магми", "Викликає тотем магми з {1} здоров'я біля заклинача на {2} с, який завдає {3} шкоди вогнем усім істотам в межах {4} м кожні {5} с.#with {1} health#for {2} sec#causes {3}#within {4} yards every {5} sec", en="Magma Totem" },
[10585] = { ref=8190 }, -- Magma Totem
[10586] = { ref=8190 }, -- Magma Totem
[10587] = { ref=8190 }, -- Magma Totem
-- Mana Spring
[5677] = { "Джерело мани", nil, "Відновлює {1} мани кожні {2} с.#Gain {1} mana every {2} sec", en="Mana Spring" },
[10491] = { ref=5677 }, -- Mana Spring
[10493] = { ref=5677 }, -- Mana Spring
[10494] = { ref=5677 }, -- Mana Spring
[24853] = { ref=5677 }, -- Mana Spring
-- Mana Spring Totem
[5675] = { "Тотем джерела мани", "Викликає тотем джерела мани з {1} здоров'я біля заклинача на {2} хв. Тотем відновлює {3} мани кожні {4} с учасникам групи в межах {5} м.#with {1} health#for {2} min#{3} mana every {4} sec#within {5} y", en="Mana Spring Totem" },
[10495] = { ref=5675 }, -- Mana Spring Totem
[10496] = { ref=5675 }, -- Mana Spring Totem
[10497] = { ref=5675 }, -- Mana Spring Totem
-- Mana Tide
[16191] = { "Приплив мани", nil, "Відновлює {1} мани кожні {2} с.#Gain {1} mana every {2} sec", en="Mana Tide" },
[17355] = { ref=16191 }, -- Mana Tide
[17360] = { ref=16191 }, -- Mana Tide
-- Mana Tide Totem
[16190] = { "Тотем припливу мани", "Викликає тотем припливу мани з {1} здоров'я біля заклинача на {2} с. Тотем відновлює {3} мани кожні {4} с учасникам групи в межах {5} м.#with {1} health#for {2} sec#{3} mana every {4} sec#within {5} y", en="Mana Tide Totem" },
[17354] = { ref=16190 }, -- Mana Tide Totem
[17359] = { ref=16190 }, -- Mana Tide Totem
-- Nature Resistance
[10596] = { "Опір природі", nil, "Опір природі збільшено на {1}#by {1}", en="Nature Resistance" },
[10598] = { ref=10596 }, -- Nature Resistance
[10599] = { ref=10596 }, -- Nature Resistance
-- Nature Resistance Totem
[10595] = { "Тотем опору природі", "Викликає тотем опору природі з {1} здоров'я біля заклинача на {2} хв, який збільшує опір природі учасників групи в межах {3} м на {4}.#with {1} health#for {2} min#within {3} yards by {4}", en="Nature Resistance Totem" },
[10600] = { ref=10595 }, -- Nature Resistance Totem
[10601] = { ref=10595 }, -- Nature Resistance Totem
-- Nature's Guidance
[16180] = { "Сприяння природи", "Збільшує вашу ймовірність завдати удару в ближньому бою та закляттями на {1}%.#by {1}%", en="Nature's Guidance" },
[16196] = { ref=16180 }, -- Nature's Guidance
[16198] = { ref=16180 }, -- Nature's Guidance
-- Nature's Swiftness
[16188] = { "Стрімкість природи", "При активації ваше наступне закляття природи з тривалістю вимови менше {1} с буде миттєвим.#than {1} sec", "Ваше наступне закляття природи з тривалістю вимови менше {1} с буде миттєвим.#than {1} sec", en="Nature's Swiftness" },
-- Parry
[16268] = { ref=3127 }, -- Parry
[18848] = { ref=3127 }, -- Parry
-- Poison Cleansing Totem
[8166] = { "Тотем очищення отрут", "Викликає тотем очищення отрут із {1} здоров'я біля заклинача. Тотем буде намагатися зняти {2} ефект отрути з учасників групи в межах {3} м кожні {4} с. Триває {5} хв.#with {1} health#remove {2}#within {3} yards every {4} sec#Lasts {5} min", en="Poison Cleansing Totem" },
-- Purge
[370] = { "Очищення", "Очищує ворожу ціль, знімаючи з неї {1} магічний ефект.#removing {1}", en="Purge" },
[8012] = { "Очищення", "Очищує ворожу ціль, знімаючи з неї {1} сприятливі магічні ефекти.#removing {1}", en="Purge" },
-- Purification
[16178] = { "Очищення", "Збільшує ефективність ваших заклять зцілення на {1}%.[ Додатково збільшує ефективність зцілення \"Бистрини\" та \"Щита землі\" на {1}%.#Earth Shield by an additional {1}%]#healing spells by {1}%", en="Purification" },
[16210] = { ref=16178 }, -- Purification
[16211] = { ref=16178 }, -- Purification
[16212] = { ref=16178 }, -- Purification
[16213] = { ref=16178 }, -- Purification
-- Reincarnation
[20608] = { "Реінкарнація", "Дозволяє вам після смерті повернутися до життя з {1}% здоров'я та мани.#with {1}%", en="Reincarnation" },
-- Restorative Totems
[16187] = { "Відновлювальні тотеми", "Посилює ефекти ваших тотемів джерела мани та цілющого потоку на {1}%.#by {1}%", en="Restorative Totems" },
[16205] = { ref=16187 }, -- Restorative Totems
[16206] = { ref=16187 }, -- Restorative Totems
[16207] = { ref=16187 }, -- Restorative Totems
[16208] = { ref=16187 }, -- Restorative Totems
-- Reverberation
[16040] = { "Відлуння", "Зменшує час відновлення ваших заклять-шоків на {1} с.#by {1} sec", en="Reverberation" },
[16113] = { ref=16040 }, -- Reverberation
[16114] = { ref=16040 }, -- Reverberation
[16115] = { ref=16040 }, -- Reverberation
[16116] = { ref=16040 }, -- Reverberation
-- Rockbiter Weapon
[8017] = { "Зброя каменолома", "Підсилює зброю шамана, внаслідок чого сила атаки ближнього бою збільшується на {1}, а атаки ближнього бою цією зброєю спричиняють додаткову загрозу. Триває {2} хв.#power by {1} and#for {2} min", en="Rockbiter Weapon" },
[8018] = { ref=8017 }, -- Rockbiter Weapon
[8019] = { ref=8017 }, -- Rockbiter Weapon
[10399] = { ref=8017 }, -- Rockbiter Weapon
[16314] = { ref=8017 }, -- Rockbiter Weapon
[16315] = { ref=8017 }, -- Rockbiter Weapon
[16316] = { ref=8017 }, -- Rockbiter Weapon
-- Searing Totem
[3599] = { "Тотем обпалення", "Викликає тотем обпалення з {1} здоров'я біля вас на {2} с. Тотем періодично атакує ворогів у радіусі {3} м, завдаючи від {4} до {5} шкоди вогнем.#with {1} health#for {2} sec#within {3} yards for {4} to {5} Fire", en="Searing Totem" },
[6363] = { ref=3599 }, -- Searing Totem
[6364] = { ref=3599 }, -- Searing Totem
[6365] = { ref=3599 }, -- Searing Totem
[10437] = { ref=3599 }, -- Searing Totem
[10438] = { ref=3599 }, -- Searing Totem
-- Sentry Totem
[6495] = { "Сторожовий тотем", "Викликає нерухомий сторожовий тотем зі {1} здоров'я біля вас на {2} хв. Тотем дозволяє спостерігати за територією навколо нього та попереджає про ворогів, що атакують його. Натисніть правою кнопкою миші на іконку ефекту, щоб перемикатися між зором шамана та зором тотема.#with {1} health#for {2} min", "Дозволяє бачити крізь сторожовий тотем. Натисніть правою кнопкою миші на іконку ефекту, щоб перемикатися між зором шамана та зором тотема.", en="Sentry Totem" },
-- Shield Specialization
[16253] = { "Спеціалізація на щитах", "Збільшує ймовірність блокування атаки щитом на {1}% та збільшує обсяг заблокованої шкоди на {2}%.#shield by {1}%#blocked by {2}%", en="Shield Specialization" },
[16298] = { ref=16253 }, -- Shield Specialization
[16299] = { ref=16253 }, -- Shield Specialization
[16300] = { ref=16253 }, -- Shield Specialization
[16301] = { ref=16253 }, -- Shield Specialization
-- Stoneclaw Totem
[5730] = { "Тотем кам'яного пазура", "Викликає тотем кам'яного пазура з {1} здоров'я біля заклинача на {2} с. Тотем провокує істот в межах {3} м атакувати його.#with {1} health#for {2} sec#within {3} y", en="Stoneclaw Totem" },
[6390] = { ref=5730 }, -- Stoneclaw Totem
[6391] = { ref=5730 }, -- Stoneclaw Totem
[6392] = { ref=5730 }, -- Stoneclaw Totem
[10427] = { ref=5730 }, -- Stoneclaw Totem
[10428] = { ref=5730 }, -- Stoneclaw Totem
-- Stoneskin
[8072] = { "Кам'яна шкіра", nil, "Зменшує отриману шкоду в ближньому бою на {1}.#by {1}", en="Stoneskin" },
[8156] = { ref=8072 }, -- Stoneskin
[8157] = { ref=8072 }, -- Stoneskin
[10403] = { ref=8072 }, -- Stoneskin
[10404] = { ref=8072 }, -- Stoneskin
[10405] = { ref=8072 }, -- Stoneskin
-- Stoneskin Totem
[8071] = { "Тотем кам'яної шкіри", "Викликає тотем кам'яної шкіри з {1} здоров'я біля заклинача. Тотем захищає учасників групи в межах {2} м, зменшуючи отриману шкоду в ближньому бою на {3}. Триває {4} хв.#with {1} health#within {2} y#taken by {3}#Lasts {4} min", en="Stoneskin Totem" },
[8154] = { ref=8071 }, -- Stoneskin Totem
[8155] = { ref=8071 }, -- Stoneskin Totem
[10406] = { ref=8071 }, -- Stoneskin Totem
[10407] = { ref=8071 }, -- Stoneskin Totem
[10408] = { ref=8071 }, -- Stoneskin Totem
-- Storm Reach
[28999] = { "Досяжність бурі", "Збільшує дальність дії ваших заклять \"Блискавка\" та \"Ланцюгова блискавка\" на {1} м.#by {1} y", en="Storm Reach" },
[29000] = { ref=28999 }, -- Storm Reach
-- Stormstrike
[17364] = { "Штормовий удар", "Дає вам додаткову атаку. Окрім цього, наступні два ураження цілі шкодою від природи посилені на {1}%. Триває {2} с.#increased by {1}#{2} sec", "Отриману шкоду від природи збільшено на {1}%.#by {1}%", en="Stormstrike" },
-- Strength of Earth
[8076] = { "Сила землі", nil, "Збільшує силу на {1}.#by {1}", en="Strength of Earth" },
[8162] = { ref=8076 }, -- Strength of Earth
[8163] = { ref=8076 }, -- Strength of Earth
[10441] = { ref=8076 }, -- Strength of Earth
[25362] = { ref=8076 }, -- Strength of Earth
-- Strength of Earth Totem
[8075] = { "Тотем сили землі", "Викликає тотем сили землі з {1} здоров'я біля заклинача. Тотем збільшує силу учасників групи в межах {2} м на {3}. Триває {4} хв.#with {1} health#within {2} yards by {3}#Lasts {4} min", en="Strength of Earth Totem" },
[8160] = { ref=8075 }, -- Strength of Earth Totem
[8161] = { ref=8075 }, -- Strength of Earth Totem
[10442] = { ref=8075 }, -- Strength of Earth Totem
[25361] = { ref=8075 }, -- Strength of Earth Totem
-- Thundering Strikes
[16255] = { "Громові удари", "Збільшує ймовірність завдання критичного удару атаками зброєю на {1}%.#by {1}%", en="Thundering Strikes" },
[16302] = { ref=16255 }, -- Thundering Strikes
[16303] = { ref=16255 }, -- Thundering Strikes
[16304] = { ref=16255 }, -- Thundering Strikes
[16305] = { ref=16255 }, -- Thundering Strikes
-- Tidal Focus
[16179] = { "Припливна зосередженість", "Зменшує витрати мани ваших заклять зцілення на {1}%.#by {1}%", en="Tidal Focus" },
[16214] = { ref=16179 }, -- Tidal Focus
[16215] = { ref=16179 }, -- Tidal Focus
[16216] = { ref=16179 }, -- Tidal Focus
[16217] = { ref=16179 }, -- Tidal Focus
-- Tidal Mastery
[16194] = { "Опанування припливів", "Збільшує ймовірність критичного ефекту ваших заклять зцілення та блискавки на {1}%.#by {1}%", en="Tidal Mastery" },
[16218] = { ref=16194 }, -- Tidal Mastery
[16219] = { ref=16194 }, -- Tidal Mastery
[16220] = { ref=16194 }, -- Tidal Mastery
[16221] = { ref=16194 }, -- Tidal Mastery
-- Totemic Focus
[16173] = { "Тотемна зосередженість", "Зменшує витрати мани ваших тотемів на {1}%.#by {1}%", en="Totemic Focus" },
[16222] = { ref=16173 }, -- Totemic Focus
[16223] = { ref=16173 }, -- Totemic Focus
[16224] = { ref=16173 }, -- Totemic Focus
[16225] = { ref=16173 }, -- Totemic Focus
-- Totemic Mastery
[16189] = { "Опанування тотемів", "Радіус дії ваших тотемів, які діють на дружні цілі, збільшено до {1} м.#increased to {1} y", en="Totemic Mastery" },
-- Toughness
[16252] = { "Міць", "Збільшує броню від предметів на {1}%.#items by {1}%", en="Toughness" },
[16306] = { ref=16252 }, -- Toughness
[16307] = { ref=16252 }, -- Toughness
[16308] = { ref=16252 }, -- Toughness
[16309] = { ref=16252 }, -- Toughness
-- Tranquil Air
[25909] = { "Затишшя", nil, "Зменшує загрозу на {1}%.#by {1}%", en="Tranquil Air" },
-- Tranquil Air Totem
[25908] = { "Тотем затишшя", "Викликає тотем затишшя з {1} здоров'я біля заклинача. Тотем зменшує загрозу всіх учасників групи в межах {2} м на {3}%. Триває {4} хв.#with {1} health#within {2} yards by {3}#Lasts {4} min", en="Tranquil Air Totem" },
-- Tremor Totem
[8143] = { "Тотем тремтіння", "Викликає тотем тремтіння з {1} здоров'я біля заклинача. Тотем здригає землю навколо, знімаючи ефекти страху, причарування та сну з учасників групи в межах {2} м. Триває {3} хв.#with {1} health#within {2} y#Lasts {3} min", en="Tremor Totem" },
-- Two-Handed Axes and Maces
[16269] = { "Дворучні сокири та булави", "Дозволяє вам використовувати дворучні сокири та дворучні булави.", en="Two-Handed Axes and Maces" },
-- Water Breathing
[131] = { "Водне дихання", "Дозволяє цілі дихати під водою протягом {1} хв.#for {1} min", "Водне дихання.", en="Water Breathing" },
-- Water Walking
[546] = { "Ходіння по воді", "Дозволяє вибраному союзнику ходити по воді протягом {1} хв. Будь-яка шкода скасує ефект.#for {1} min", "Дозволяє ходити по воді.", en="Water Walking" },
-- Weapon Mastery
[29082] = { "Опанування зброї", "Збільшує шкоду зброї на {1}%.#by {1}%", en="Weapon Mastery" },
[29084] = { ref=29082 }, -- Weapon Mastery
[29086] = { ref=29082 }, -- Weapon Mastery
[29087] = { ref=29082 }, -- Weapon Mastery
[29088] = { ref=29082 }, -- Weapon Mastery
-- Windfury Totem
[8512] = { "Тотем буревію", "Викликає тотем буревію з {1} здоров'я біля заклинача. Тотем підсилює вітром зброю в основній руці всіх учасників групи в межах {2} м. Кожен удар з імовірністю {3}% спричиняє {4} додаткову атаку зі збільшеною на {5} силою атаки ближнього бою. Триває {6} хв.#with {1} health#within {2} y#{3}% chance#{4} extra attack with {5}#Lasts {6} min", en="Windfury Totem" },
[10613] = { ref=8512 }, -- Windfury Totem
[10614] = { ref=8512 }, -- Windfury Totem
-- Windfury Weapon
[8232] = { "Зброя буревію", "Підсилює зброю шамана вітром. Кожен удар з ймовірністю {1}% спричиняє {2} додаткові атаки зі збільшеною на {3} силою атаки ближнього бою. Триває {4} хв.#{1}% chance#{2} extra attacks with {3}#Lasts for {4} min", en="Windfury Weapon" },
[8235] = { ref=8232 }, -- Windfury Weapon
[10486] = { ref=8232 }, -- Windfury Weapon
[16362] = { ref=8232 }, -- Windfury Weapon
-- Windwall
[15108] = { "Стіна вітру", nil, "Зменшує отриману шкоду в дальньому бою на {1}.#taken by {1}", en="Windwall" },
[15109] = { ref=15108 }, -- Windwall
[15110] = { ref=15108 }, -- Windwall
-- Windwall Totem
[15107] = { "Тотем стіни вітру", "Викликає тотем стіни вітру з {1} здоров'я біля заклинача. Тотем захищає учасників групи в межах {2} м, зменшуючи отриману шкоду в дальньому бою на {3}. Триває {4} хв.#with {1} health#within {2} y#taken by {3}#Lasts {4} min", en="Windwall Totem" },
[15111] = { ref=15107 }, -- Windwall Totem
[15112] = { ref=15107 }, -- Windwall Totem
[15113] = { "Тотем стіни вітру", en="Windwall Totem" },
[15115] = { ref=15113 }, -- Windwall Totem
[15116] = { ref=15113 }, -- Windwall Totem

-- Item effects
[22801] = { "Швидкість примарного вовка", "Збільшує швидкість \"Примарного вовка\" на {1}%.#ability by {1}%", en="Ghost Wolf Speed" },
[23734] = { "Природний баланс", "Єднає шамана з природою, збільшуючи шкоду заклять на {1}%, зібльшуючи ефективність зцілення на {2}% та збільшуючи витрати мани на закляття на {3}% протягом {4} с.#spell damage by {1}%#heal effects by {2}%#cost of spells by {3}% for {4} sec", "Шкоду заклять збільшено на {1}%.\nЕфективність зцілення збільшено на {2}%.\nВитрати мани зібльшено на {3}%.#damage increased by {1}%#effects increased by {2}%#cost increased by {3}%", en="Nature Aligned" },

-- Set bonuses
[23573] = { "Ланцюгова хвиля зціленя", "Ваша \"Хвиля зцілення\" також перестрибує на цілі неподалік, з кожним стрибком зцілюючи на {1}% менше. Максимум до двох стрибків.#jump reduces the effectiveness of the heal by {1}%", en="Chain Healing Wave" },

}

for k, v in pairs(shaman_spells) do addonTable.spell[k] = v end
