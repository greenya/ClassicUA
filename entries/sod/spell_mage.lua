local _, addonTable = ...

local mage_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Advanced Warding
[428738] = { "Посилені обереги", "Збільшення сили вашого \"Щита мани\", \"Крижаного оберегу\" і \"Вогняного оберегу\" на {1}%, а також зменшення витрат мани на поглинання шкоди \"Щитом мани\" на {2}%.#Ward by {1}%#by {2}% per damage" }, -- Advanced Warding
[401726] = { "Посилені обереги", "Отримати здібність \"Посилені обереги\":", rune={412115, 412113} }, -- Advanced Warding
[412115] = { "Посилені обереги", "Ваші заклинання \"Щит мани\", \"Крижаний оберіг\" і \"Вогняний оберіг\" тепер можна застосовувати на будь-яку дружню ціль, вони поглинають на {1}% більше шкоди, а \"Щит мани\" витрачає на {2}% менше мани на поглинання шкоди. Крім того, ваше \"Зняття малого прокляття\" замінюється на \"Зняття великого прокляття\".#absorb {1}%#consuming {2}% less", rune=412113 }, -- Advanced Warding
-- Arcane Barrage
[400610] = { "Арканічний обстріл", "Випускає кілька зарядів в ціль, завдаючи від {1} до {2} шкоди арканою. Також з ймовірністю {3}% викликає спрацювання \"Обстрілу снарядами\".#causing {1} to {2} Arcane#a {3}% to" }, -- Arcane Barrage
[401719] = { "Арканічний обстріл", "Отримати здібність \"Арканічний обстріл\":", rune=400610 }, -- Arcane Barrage
-- Arcane Blast
[42896] = { "Арканічний спалах", "Вибух енергії, що завдає цілі від {1} до {2} шкоди від аркани. Щоразу, коли ви застосовуєте \"Арканічний спалах\", шкода всіх заклять Аркани збільшується на {3}-{4}%, а витрати мани на \"Арканічний спалах\" збільшуються на {5}%. Ефект накопичується до {6} разів і триває до відміни або до вимови будь-якого закляття Аркани крім \"Арканічного спалаху\".#dealing {1} to {2}#by {3} to {4}%#by {5}%.#up to {6} times" }, -- Arcane Blast (Rank 3)
[400573] = { "Арканічний спалах", "Вибух енергії, що завдає цілі шкоду від аркани. Щоразу, коли ви застосовуєте \"Арканічний спалах\", шкода і зцілення всіх інших заклять Аркани збільшуються на {1}%, а витрати мани на \"Арканічний спалах\" збільшуються на {2}%. Ефект накопичується до {3} разів і триває {4} с.#by {1}% and#by {2}%.#up to {3} times and lasts {4} sec", "Шкоду і зцілення від усіх заклинань Аркани, окрім \"Арканічного спалаху\", збільшено на {1}%, а витрати мани на \"Арканічний спалах\" збільшено на {2}%.#by {1}% and#by {2}%." }, -- Arcane Blast
[400574] = { "Арканічний спалах", "Вибух енергії, що завдає цілі від {1} до {2} шкоди від аркани. Щоразу, коли ви застосовуєте \"Арканічний спалах\", шкода і зцілення всіх інших заклять Аркани збільшуються на {3}%, а витрати мани на \"Арканічний спалах\" збільшуються на {4}%. Ефект накопичується до {5} разів і триває {6} с або до вимови будь-якого іншого закляття Аркани.#dealing {1} to {2}#by {3}% and#by {4}%.#up to {5} times and lasts {6} sec" }, -- Arcane Blast
[400586] = { "Арканічний спалах", "Вибух енергії, що завдає цілі шкоду від аркани. Щоразу, коли ви застосовуєте \"Арканічний спалах\", шкода всіх інших заклять Аркани збільшується на {1}%, а витрати мани на \"Арканічний спалах\" збільшуються на {2}%. Ефект накопичується до {3} разів і триває {4} с.#by {1}% and#by {2}%.#up to {3} times and lasts {4} sec", "Шкоду від усіх заклинань Аркани, окрім \"Арканічного спалаху\", збільшено на {1}%, а витрати мани на \"Арканічний спалах\" збільшено на {2}%.#by {1}% and#by {2}%." }, -- Arcane Blast
[401729] = { "Арканічний спалах", "Отримати здібність \"Арканічний спалах\":", rune=400574 }, -- Arcane Blast
-- Arcane Surge
[425124] = { "Арканічний сплеск", "Спрямувати всі залишки мани у сплеск енергії, який завдає цілі від {1} до {2} шкоди від аркани, що збільшується до {3}% залежно від використаної мани. Після цього ви починаєте відновлювати ману зі збільшеною на {4}% швидкістю від звичайної протягом {5} с.#dealing {1} to {2}#up to {3}% based#by {4}% for {5} sec", "Відновлення мани зі збільшеною на {1}% швидкістю від звичайної.#by {1}%" }, -- Arcane Surge
[425168] = { "Арканічний сплеск", "Отримати здібність \"Арканічний сплеск\":", rune=425124 }, -- Arcane Surge
-- Balefire Bolt
[428878] = { "Стріла руйнівного полум'я", "Випустіть на ворога потік грубої магії, що викривлює реальність та завдає від {1} до {2} химеричної шкоди.  Щоразу, коли ви використовуєте \"Стрілу руйнівного полум'я\", шкода наступної \"Стрілу руйнівного полум'я\", застосованої протягом {3} с, збільшиться на {4}%, а ваш дух зменшиться на {5}% протягом {6} секунд. Обидва ефекти накопичуються до {7} разів. Якщо в результаті ваш дух досягне нуля, ви миттєво помрете. Для опору цьому заклинанню обирається менший з показників опору аркані, вогню та кризі.#dealing {1} to {2}#within {3} sec#increased by {4}%#decreased by {5}% for {6} sec#up to {7} times", "Збільшення шкоди від \"Стріли руйнівного полум'я\" на {1}%, але зменшення духу на {2}%.\nКоли дух досягне нуля, настане смерть.#by {1}% but decreases Spirit by {2}%" }, -- Balefire Bolt
[429310] = { "Стріла руйнівного полум'я", "Отримати здібність \"Стріла руйнівного полум'я\":", rune=428878 }, -- Balefire Bolt
-- Blinked
[428865] = { "Блимання", nil, "Місце використання \"Блиму\" збережено." }, -- Blinked
-- Brain Freeze
[400731] = { "Замороження мозку", "Ваші заклинання, що охолоджують ціль, з ймовірністю {1}% дозволять вимовити наступне заклинання \"Вогняна куля\", \"Чарокрижана стріла\", \"Стріла руйнівного полум'я\" або \"Стріла крижаного полум'я\" миттєво і без витрат мани.#have a {1}% chance" }, -- Brain Freeze
[401725] = { "Замороження мозку", "Отримати здібність \"Замороження мозку\":", rune=400731 }, -- Brain Freeze
-- Burnout
[412286] = { "Вигорання", "Збільшує ймовірність критичного удару всіх заклинань на {1}%, але ваші неперіодичні критичні удари заклинаннями тепер мають додаткову вартість мани в розмірі {2}% від вашого базового запасу мани.#by {1}%#of {2}% of" }, -- Burnout
[415460] = { "Вигорання", "Отримати здібність \"Вигорання\":", rune=412286 }, -- Burnout
-- Chronomantic Healing
[401405] = { "Хрономантичне зцілення" }, -- Chronomantic Healing
[433455] = { "Хрономантичне зцілення" }, -- Chronomantic Healing
-- Chronostatic Preservation
[425187] = { "Хроностатичне збереження", "Отримати здібність \"Хроностатичне збереження\":", rune=436516 }, -- Chronostatic Preservation
[436516] = { "Хроностатичне збереження", "Об'єднати магію аркани, вогню та криги, щоб накопичити хрономантичну енергію для подальшого використання. Ви можете утримувати цю енергію до 15 секунд, перш ніж вона розсіється. При вивільненні зцілює дружній цілі від {1} до {2} здоров'я.\n\nВзаємодіє з іншими заклинаннями, талантами та ефектами що впливають на заклинання аркани, вогню або полум'я.#target for {1} to {2}" }, -- Chronostatic Preservation
[443369] = { "Хроностатичне збереження", nil, "Хрономантична енергія накопичена і при вивільненні зцілить дружній цілі від {1} до {2} здоров'я.#target for {1} to {2}" }, -- Chronostatic Preservation
[436517] = { "Хроностатичне збереження", "Вивільнити хрономантичну енергію, щоб миттєво зцілити дружній цілі від {1} до {2} здоров'я.#target for {1} to {2}" }, -- Chronostatic Preservation
-- Conjure Comprehension Charms
[435849] = { "Начаклування чар сприйняття", "Начаклувати {1} чарів сприйняття.#Conjure {1} Comprehension" }, -- Conjure Comprehension Charms
-- Conjure Ocean Water
[443635] = { "Начаклування океанічної води", "Начаклувати пляшки джерельної води ({1} шт.), щоб забезпечити мага та союзників питвом.\n\nНачакловані предмети зникнуть, якщо вийти з гри більше, ніж на {2} хв.#Conjures {1} bottles#than {2} min" }, -- Conjure Ocean Water (Rank 4)
-- Conjure Water
[468766] = { "Начаклування води", "Начаклувати пляшки гірської джерельної води ({1} шт.), щоб забезпечити мага та союзників питвом.\n\nНачакловані предмети зникнуть, якщо вийти з гри більше, ніж на {2} хв.#Conjures {1} bottles#than {2} min" }, -- Conjure Water (Rank 8)
-- Deep Freeze
[428739] = { "Глибока заморозка", "Приголомшує ціль на {1} секунд. Можна застосувати лише до заморожених цілей. Завдає від {2} до {3} шкоди цілям, що невразливі до приголомшення.#for {1} sec#Deals {2} to {3} damage", "Приголомшено та заморожено." }, -- Deep Freeze
[428917] = { "Глибока заморозка" }, -- Deep Freeze
[428920] = { "Глибока заморозка" }, -- Deep Freeze
[429303] = { "Глибока заморозка", "Отримати здібність \"Глибока заморозка\":", rune=428739 }, -- Deep Freeze
-- Displacement
[428861] = { "Заміщення", "Телепортує на місце використання останнього \"Блиму\", і завершує його відновлення. Може бути використано протягом 10 секунд після використання \"Блиму\"." }, -- Displacement
[428863] = { "Заміщення", "Отримати здібність \"Заміщення\":", rune=428861 }, -- Displacement
-- Enlightenment
[412324] = { "Просвітлення", "Ви завдаєте на {1}% більше шкоди, поки маєте більше {2}% мани. Якщо у вас менше {3}% мани, вона продовжує відновлюватись під час вимови заклять зі швидкістю {4}% від звичайної.#deal {1}% more#than {2}% mana#below {3}% mana {4}% of" }, -- Enlightenment
[415729] = { "Просвітлення", "Отримати здібність \"Просвітлення\":", rune=412324 }, -- Enlightenment
-- Expanded Intellect
[436949] = { "Розвинений інтелект", "Зменшує витрати мани на \"Арканічний інтелект\" на {1}% і збільшує його тривалість на {2}%.#Intellect by {1}%#duration by {2}%" }, -- Expanded Intellect
-- Fingers of Frost
[400647] = { "Крижані пальці", "Ваші ефекти охолодження з ймовірністю {1}% активують ефект \"Крижані пальці\", який дозволяє вашим {2} наступним закляттям спрацьовувати так, ніби ціль заморожена. Триває {3} с.#a {1}% chance#next {2} spells#Lasts {3} sec" }, -- Fingers of Frost
[400669] = { "Крижані пальці", "Ваші ефекти охолодження з деяким шансом активують ефект \"Крижані пальці\", який дозволяє вашим наступним закляттям спрацьовувати так, ніби ціль заморожена. Триває {1} с.#Lasts {1} sec", "Наступні {1} ваші заклинання спрацьовують так, ніби ціль заморожена.#next {1} spells" }, -- Fingers of Frost
[400670] = { "Крижані пальці", "Ваші ефекти охолодження з деяким шансом активують ефект \"Крижані пальці\", який дозволяє вашим наступним закляттям спрацьовувати так, ніби ціль заморожена. Триває {1} с.#Lasts {1} sec", "Ваші заклинання спрацьовують так, ніби ціль заморожена. Зарядів: {1}.#{1} charge" }, -- Fingers of Frost
[401741] = { "Крижані пальці", "Отримати здібність \"Крижані пальці\":", rune=400647 }, -- Fingers of Frost
-- Fire Blast
[400616] = { ref=400618 }, -- Fire Blast (Rank 3)
[400618] = { "Вогняний підрив", "Підриває ворога, завдаючи від {1} до {2} шкоди від вогню.#{1} to {2}" }, -- Fire Blast (Rank 1)
[400619] = { ref=400618 }, -- Fire Blast (Rank 2)
[400620] = { ref=400618 }, -- Fire Blast (Rank 4)
[400621] = { ref=400618 }, -- Fire Blast (Rank 5)
[400622] = { ref=400618 }, -- Fire Blast (Rank 6)
[400623] = { ref=400618 }, -- Fire Blast (Rank 7)
-- Fire Ward
[412214] = { "Вогняний оберіг", "Поглинає {1} шкоди від вогню. Триває {2} с.#{1} Fire#Lasts {2} sec", "Поглинає шкоду від вогню." }, -- Fire Ward (Rank 1)
[412218] = { ref=412214 }, -- Fire Ward (Rank 2)
[412230] = { ref=412214 }, -- Fire Ward (Rank 3)
[412231] = { ref=412214 }, -- Fire Ward (Rank 4)
[412232] = { ref=412214 }, -- Fire Ward (Rank 5)
-- Fireball!
[400730] = { "Вогняна куля!", "Наступне заклинання \"Вогняна куля\", \"Чарокрижана стріла\", \"Стріла руйнівного полум'я\" або \"Стріла крижаного вогню\" вимовляється миттєво і не витрачає ману.", "Наступне заклинання \"Вогняна куля\", \"Чарокрижана стріла\", \"Стріла руйнівного полум'я\" або \"Стріла крижаного вогню\" вимовляється миттєво і не витрачає ману." }, -- Fireball!
-- Frost Ward
[412202] = { "Крижаний оберіг", "Поглинає {1} шкоди від криги. Триває {2} с.#{1} Frost#Lasts {2} sec", "Поглинає шкоду від криги." }, -- Frost Ward (Rank 1)
[412205] = { ref=412202 }, -- Frost Ward (Rank 2)
[412207] = { ref=412202 }, -- Frost Ward (Rank 3)
[412209] = { ref=412202 }, -- Frost Ward (Rank 4)
[412210] = { ref=412202 }, -- Frost Ward (Rank 5)
-- Frostfire Bolt
[401502] = { "Стріла крижаного полум'я", "Випустити у ворога стрілу крижаного полум'я, що завдає від {1} до {2} шкоди від крижаного вогню, зменшуючи швидкість руху на {3}% і завдаючи додатково {4} шкоди від крижаного вогню протягом {5} секунд. Для опору цьому заклинанню обирається менший з показників опору кризі та вогню, а його шкода вважається шкодою як від криги, так і від вогню.#causing {1} to {2}#speed by {3}%#additional {4}#over {5} sec", "Швидкість руху зменшено на {1}%. Отримання {2} шкоди від крижаного вогню кожні {3} с.#slowed by {1}%#{2} Frostfire damage every {3}" }, -- Frostfire Bolt
[401735] = { "Стріла крижаного полум'я", "Отримати здібність \"Стріла крижаного полум'я\":", rune=401502 }, -- Frostfire Bolt
-- Frozen Orb
[440802] = { "Крижана куля", "Запускає крижану кулю, що швидко рухається вперед протягом {1} секунд. Під час руху куля завдає {2} шкоди від криги і охолоджує всіх ворогів, повз яких вона пролітає, знижуючи їхню швидкість руху на {3}%. При першому завданні шкоди ворогу куля сповільнить його і з ймовірністю {4}% активує \"Крижані пальці\".#over {1} sec#deals {2} Frost#for {3}% movement#a {4}% chance" }, -- Frozen Orb
[440804] = { "Крижана куля" }, -- Frozen Orb
[440813] = { "Крижана куля" }, -- Frozen Orb
[440859] = { "Крижана куля", "Отримати здібність \"Крижана куля\":", rune=440802 }, -- Frozen Orb
-- Hot Streak
[48108] = { "Полум'яна вдача", "Коли заклинання \"Вогняна куля\", \"Вогняний підрив\", \"Опік\", \"Жива бомба\" або \"Стріла крижаного полум'я\" завдає критичної шкоди 2 рази поспіль, з деякою ймовірність наступне заклинання \"Вогняна брила\" можна буде вимовити миттєво протягом {1} секунд.#within {1} sec", "Наступне заклинання \"Вогняна брила\" можна вимовити миттєво." }, -- Hot Streak
[400624] = { "Полум'яна вдача", "Коли заклинання \"Вогняна куля\", \"Стріла крижаного полум'я\", \"Стріла руйнівного полум'я\", \"Вогняний підрив\", \"Опік\" або \"Жива бомба\" завдає критичної шкоди 2 рази поспіль, наступне заклинання \"Вогняна брила\" можна буде вимовити миттєво та зі змешеними на {2}% витратами мани протягом {1} секунд.#within {1} sec#cost {2}% less" }, -- Hot Streak
[400625] = { "Полум'яна вдача", "Коли заклинання \"Вогняна куля\", \"Вогняний підрив\", \"Опік\", \"Жива бомба\", \"Чаровогняна стріла\" або \"Стріла крижаного полум'я\" завдає критичної шкоди 2 рази поспіль, наступне заклинання \"Вогняна брила\" можна буде вимовити миттєво протягом {1} секунд.#within {1} sec", "Наступне заклинання \"Вогняна брила\" вимовляється миттєво та витрачає на {1}% менше мани.#costs {1}% less" }, -- Hot Streak
[401724] = { "Полум'яна вдача", "Отримати здібність \"Стріла крижаного полум'я\":", rune=400624 }, -- Hot Streak
-- Ice Lance
[400640] = { "Крижаний спис", "Завдає від {1} до {2} шкоди від криги ворожій цілі. Завдає потрійної шкоди замороженим цілям.#{1} to {2} Frost" }, -- Ice Lance
[401732] = { "Крижаний спис", "Отримати здібність \"Крижаний спис\":", rune=400640 }, -- Ice Lance
-- Icy Veins
[425121] = { "Крижана кров", "Прискорює створення заклять, збільшуючи швидкість вимови заклять на {1}% і зменшуючи затримку вимови заклять при отриманні шкоди на {2}%. Триває {3} с.#speed by {1}% and#casting by {2}%.#Lasts {3} sec", "Швидкість вимови заклять збільшено на {1}%, а затримку вимови заклять при отриманні шкоди зменшено на {2}%.#increased by {1}%#reduced by {2}%" }, -- Icy Veins
[425169] = { "Крижана кров", "Отримати здібність \"Крижана кров\":", rune=425121 }, -- Icy Veins
[429125] = { ref=425121 }, -- Icy Veins
-- Ignite
[412538] = { "Займання", nil, "Завдає шкоду від вогню кожні {1} с.#every {1} sec" }, -- Ignite
[412545] = { ref=412538 }, -- Ignite
-- Living Bomb
[400613] = { "Жива бомба", "Ціль стає живою бомбою і отримує {1} шкоди від вогню протягом {2} с. Через {3} с або коли заклинання розвіється, ціль вибухає, завдаючи {4} шкоди від вогню всім ворогам в радіусі {5} м.#taking {1}#over {2} sec#After {3} sec#dealing {4}#within {5} y", "{1} шкоди від вогню кожні {2} с. Через {3} с або коли заклинання буде розвіяно, ціль вибухає, завдаючи {4} шкоди від вогню всім ворогам в радіусі {5} м.#Causes {1}#every {2} sec#After {3} sec#causing {4}#within {5} y" }, -- Living Bomb
[400614] = { ref=400613 }, -- Living Bomb
[401731] = { "Жива бомба", "Отримати здібність \"Жива бомба\":", rune=400613 }, -- Living Bomb
-- Living Flame
[401556] = { "Живе полум'я", "Викликає чарівне полум'я, яке рухається за ціллю, залишаючи за собою вогняний слід. Цей слід щосекунди завдає {1} шкоди від вогню ворогам поблизу. Триває {2} с.#deals {1}#Lasts {2} sec" }, -- Living Flame
[401558] = { "Живе полум'я", "Завдає {1} шкоди від вогню щосекунди.#Deals {1}", "Завдає {1} шкоди від вогню щосекунди.#Deals {1}" }, -- Living Flame
[401744] = { "Живе полум'я", "Отримати здібність \"Живе полум'я\":", rune=401556 }, -- Living Flame
[401559] = { "Живе полум'я" }, -- Living Flame
-- Mana Shield
[412116] = { "Щит мани", "Поглинає {1} одиниць фізичної шкоди дружній цілі, натомість витрачаючи ману. Висушує {2} мани у мага за кожну одиницю шкоди. Триває {3} хв.#Absorbs {1}#Drains {2}#Lasts {3}", "Поглинає фізичну шкоду за рахунок мани." }, -- Mana Shield (Rank 1)
[412118] = { ref=412116 }, -- Mana Shield (Rank 2)
[412120] = { ref=412116 }, -- Mana Shield (Rank 3)
[412121] = { ref=412116 }, -- Mana Shield (Rank 4)
[412122] = { ref=412116 }, -- Mana Shield (Rank 5)
[412123] = { ref=412116 }, -- Mana Shield (Rank 6)
-- Mass Regeneration
[412510] = { "Масова регенерація", "Зцілює всіх членів групи цілі в радіусі {1} м від неї на {2} здоров'я протягом {3} с і накладає на кожну ціль \"Темпоральний маяк\" на {4} с.#within {1} yards#for {2} health over {3} sec#target for {4} sec.", "Зцілення {1} здоров'я протягом {2} с.#{1} health over {2}", rune=400735 }, -- Mass Regeneration
[415467] = { "Масова регенерація", "Отримати здібність \"Масова регенерація\":", rune={412510, 400735} }, -- Mass Regeneration
-- Missile Barrage
[400588] = { "Обстріл снарядами", "Заклинання \"Арканічний спалах\" з ймовірністю {1}%, а заклинання \"Вогняна куля\" та \"Крижана стріла\" - з ймовірністю {2}% зменшать тривалість промовляння наступного заклинання \"Арканічні снаряди\" на {3}%, зменшать витрати мани на {4}%, а снаряди будуть начакловуватись кожні {5} с.#Blast a {1}% chance#spells a {2}% chance#spell by {3}%#cost by {4}%#every {5} sec" }, -- Missile Barrage
[400589] = { "Обстріл снарядами", "Заклинання \"Арканічний спалах\", \"Вогняна куля\" та \"Крижана стріла\" з деяким шансом зменшать тривалість промовляння наступного заклинання \"Арканічні снаряди\" на {1}%, зменшать витрати мани на {2}%, а снаряди будуть начакловуватись кожні {3} с.#spell by {1}%#cost by {2}%#every {3} sec", "Тривалість промовляння наступного заклинання \"Арканічні снаряди\" зменшена на {1}%, витрати мани змешені на {2}%, а снаряди будуть начакловуватись кожні {3} с.#spell by {1}%#cost by {2}%#every {3} sec" }, -- Missile Barrage
[401736] = { "Обстріл снарядами", "Отримати здібність \"Обстріл снарядами\":", rune=400588 }, -- Missile Barrage
-- Molten Armor
[428741] = { "Розплавлений обладунок", "Завдає {1} шкоди від вогню при отриманні удару, збільшує ймовірність критичного удару заклинань на {2}% і зменшує ймовірність зазнати критичного удару на {3}%. Одночасно на магу може бути активним лише один обладунок. Триває {4} хв.#Causes {1} Fire#chance by {2}%#hit by {3}%#Lasts {4} min", "Завдає шкоди від вогню нападникам. Ймовірність зазнати критичного удару зменшено на {1}%, а ймовірність критичного удару заклинань збільшено на {2}%.#reduced by {1}%#increased by {2}%" }, -- Molten Armor
[428743] = { "Розплавлений обладунок" }, -- Molten Armor
[429307] = { "Розплавлений обладунок", "Отримати здібність \"Розплавлений обладунок\":", rune=428741 }, -- Molten Armor
-- Overheat
[400615] = { "Перегрів", "\"Вогняний підрив\" завжди завдає критичного удару, його можна застосувати під час вимови інших заклять, на нього не діє глобальний час відновлення, але його час відновлення збільшується до {1} секунд.#to {1} sec" }, -- Overheat
[401737] = { "Перегрів", "Отримати здібність \"Перегрів\":", rune=400615 }, -- Overheat
-- Rapid Regeneration
[401460] = { "Швидка регенерація", "Зцілює ціль на {1} здоров'я протягом {2} с та застосовує \"Темпоральний маяк\" на {3} с.#for {1} health over {2} sec#for {3} sec.", "Зцілення {1} здоров'я протягом {2} с.#{1} health over {2}", rune=400735 }, -- Rapid Regeneration
-- Regeneration
[401417] = { "Регенерація", "Зцілює ціль на {1} здоров'я протягом {2} с та застосовує \"Темпоральний маяк\" на {3} с.#for {1} health over {2} sec#for {3} sec.", "Зцілення {1} здоров'я протягом {2} с.#{1} health over {2}", rune=400735 }, -- Regeneration
[401743] = { "Регенерація", "Отримати здібність \"Регенерація\":", rune={401417, 400735} }, -- Regeneration
-- Remove Greater Curse
[412113] = { "Зняття великого прокляття", "Знімає {1} прокляття та {2} шкідливий магічний ефект з дружньої цілі.#Removes {1}#and {2} harmful" }, -- Remove Greater Curse
-- Rewind Time
[401462] = { "Повернення у часі", "Ваша поточна ціль з \"Темпоральним маяком\" миттєво зцілюється від шкоди, отриманої за останні 5 секунд. Не діє на цілі, які не мали \"Темпорального маяка\" 5 секунд тому." }, -- Rewind Time
[401734] = { "Повернення у часі", "Отримати здібність \"Повернення у часі\":", rune=401462 }, -- Rewind Time
-- Spell Power
[412322] = { "Сила заклинань", "Збільшує додаткову шкоду від критичних ударів всіх заклинань на {1}%.#spells by {1}%" }, -- Spell Power
[415459] = { "Сила заклинань", "Отримати здібність \"Сила заклинань\":", rune=412322 }, -- Spell Power
-- Spellfrost Bolt
[412532] = { "Чарокрижана стріла", "Випустити у ворога чарокрижану стрілу, що завдає від {1} до {2} шкоди від крижаних чар, зменшуючи швидкість руху на {3}% протягом {4} секунд. Для опору цьому заклинанню обирається менший з показників опору кризі та аркані, а його шкода вважається шкодою як від криги, так і від аркани.#causing {1} to {2}#speed by {3}%#for {4} sec", "Швидкість руху зменшено на {1}%.#slowed by {1}%" }, -- Spellfrost Bolt
[415734] = { "Чарокрижана стріла", "Отримати здібність \"Чарокрижана стріла\":", rune=412532 }, -- Spellfrost Bolt
-- Tangled Causality
[432069] = { "Заплутана причинність", nil, "Шкода від заклинань вогню та криги зменшена на 50%, і ви не можете використовувати \"Льодяну брилу\"." }, -- Tangled Causality
-- Temporal Anomaly
[428885] = { "Темпоральна аномалія", "Запускає сферу темпоральної енергії, що повільно рухається вперед і кожні {1} c захищає членів групи, що знаходяться поблизу, щитом, який поглинає {2} шкоди протягом {3} секунд. Щит отримує додатковий об'єм поглинання, поки учасники групи знаходяться поруч зі сферою.#every {1} sec#absorbing {2} damage for {3} sec" }, -- Temporal Anomaly
[428888] = { "Темпоральна аномалія" }, -- Temporal Anomaly
[428895] = { "Темпоральна аномалія", nil, "Поглинає {1} шкоди.#{1} damage" }, -- Temporal Anomaly
[429305] = { "Темпоральна аномалія", "Отримати здібність \"Темпоральна аномалія\":", rune=428885 }, -- Temporal Anomaly
-- Temporal Beacon
[400735] = { "Темпоральний маяк", "Записує просторово-часовий стан об'єкта. {1}% від арканічної шкоди, завданої заклинателем, буде перетворено на хрономантичне зцілення цілей \"Темпорального маяка\". Це зцілення зменшено на {2}% для заклинателя і додатково зменшено на {3}% для шкоди від заклять Аркани, що вражають декілька цілей.#{1}% of all#by {2}% on#by {3}% when", "Записує просторово-часовий стан об'єкта. Шкода, завдана заклинателем, буде перетворена на хрономантичне зцілення цілі." }, -- Temporal Beacon
-- Waterbolt
[412437] = { "Водяна стріла", "Випускає у ворога стрілу, яка завдає від {1} до {2} шкоди від криги.#{1} to {2}" }, -- Waterbolt

-- Engraving
[401762] = { "Гравіювання пояса - Стріла крижаного полум'я", "Вигравіювати на поясі руну \"Стріла крижаного полум'я\":", rune=401502 }, -- Engrave Belt - Frostfire Bolt
[401763] = { "Гравіювання пояса - Обстріл снарядами", "Вигравіювати на поясі руну \"Обстріл снарядами\":", rune=400588 }, -- Engrave Belt - Missile Barrage
[415948] = { "Гравіювання пояса - Чарокрижана стріла", "Вигравіювати на поясі руну \"Чарокрижана стріла\":", rune=412532 }, -- Engrave Belt - Spellfrost Bolt
[401752] = { "Гравіювання чоботів - Замороження мозку", "Вигравіювати на чоботях руну \"Замороження мозку\":", rune=400731 }, -- Engrave Boots - Brain Freeze
[425189] = { "Гравіювання чоботів - Хроностатичне збереження", "Вигравіювати на чоботях руну \"Хроностатичне збереження\":", rune=436516 }, -- Engrave Boots - Chronostatic Preservation
[415934] = { "Гравіювання чоботів - Сила заклинань", "Вигравіювати на чоботях руну \"Сила заклинань\":", rune=412322 }, -- Engrave Boots - Spell Power
[429311] = { "Гравіювання браслетів - Стріла руйнівного полум'я", "Вигравіювати на браслетах руну \"Стріла руйнівного полум'я\":", rune=428878 }, -- Engrave Bracers - Balefire Bolt
[429309] = { "Гравіювання браслетів - Заміщення", "Вигравіювати на браслетах руну \"Заміщення\":", rune=428861 }, -- Engrave Bracers - Displacement
[429308] = { "Гравіювання браслетів - Розплавлений обладунок", "Вигравіювати на браслетах руну \"Розплавлений обладунок\":", rune=428741 }, -- Engrave Bracers - Molten Armor
[401761] = { "Гравіювання браслетів - Повернення у часі", "Вигравіювати на браслетах руну \"Повернення у часі\":", rune=401462 }, -- Engrave Bracers - Rewind Time
[401759] = { "Гравіювання нагрудника - Вигорання", "Вигравіювати на нагруднику руну \"Вигорання\":", rune=412286 }, -- Engrave Chest - Burnout
[415942] = { "Гравіювання нагрудника - Просвітлення", "Вигравіювати на нагруднику руну \"Просвітлення\":", rune=412324 }, -- Engrave Chest - Enlightenment
[401765] = { "Гравіювання нагрудника - Крижані пальці", "Вигравіювати на нагруднику руну \"Крижані пальці\":", rune=400647 }, -- Engrave Chest - Fingers of Frost
[401767] = { "Гравіювання нагрудника - Регенерація", "Вигравіювати на нагруднику руну \"Регенерація\":", rune={401417, 400735} }, -- Engrave Chest - Regeneration
[401722] = { "Гравіювання плаща - Арканічний обстріл", "Вигравіювати на плащі руну \"Арканічний обстріл\":", rune=400610 }, -- Engrave Cloak - Arcane Barrage
[440858] = { "Гравіювання плаща - Крижана куля", "Вигравіювати на плащі руну \"Крижана куля\":", rune=440802 }, -- Engrave Cloak - Frozen Orb
[401764] = { "Гравіювання плаща - Перегрів", "Вигравіювати на плащі руну \"Перегрів\":", rune=400615 }, -- Engrave Cloak - Overheat
[401757] = { "Гравіювання рукавиць - Арканічний спалах", "Вигравіювати на рукавицях руну \"Арканічний спалах\":", rune=400574 }, -- Engrave Gloves - Arcane Blast
[401760] = { "Гравіювання рукавиць - Крижаний спис", "Вигравіювати на рукавицях руну \"Крижаний спис\":", rune=400640 }, -- Engrave Gloves - Ice Lance
[415936] = { "Гравіювання рукавиць - Жива бомба", "Вигравіювати на рукавицях руну \"Жива бомба\":", rune=400613 }, -- Engrave Gloves - Living Bomb
[401754] = { "Гравіювання шолома - Посилені обереги", "Вигравіювати на шоломі руну \"Посилені обереги\":", rune={412115, 412113} }, -- Engrave Helm - Advanced Warding
[429304] = { "Гравіювання шолома - Глибока заморозка", "Вигравіювати на шоломі руну \"Глибока заморозка\":", rune=428739 }, -- Engrave Helm - Deep Freeze
[401749] = { "Гравіювання шолома - Полум'яна вдача", "Вигравіювати на шоломі руну \"Полум'яна вдача\":", rune=400624 }, -- Engrave Helm - Hot Streak
[429306] = { "Гравіювання шолома - Темпоральна аномалія", "Вигравіювати на шоломі руну \"Темпоральна аномалія\":", rune=428885 }, -- Engrave Helm - Temporal Anomaly
[425171] = { "Гравіювання штанів - Арканічний сплеск", "Вигравіювати на штанях руну \"Арканічний сплеск\":", rune=425124 }, -- Engrave Pants - Arcane Surge
[425170] = { "Гравіювання штанів - Крижана кров", "Вигравіювати на штанях руну \"Крижана кров\":", rune=425121 }, -- Engrave Pants - Icy Veins
[401768] = { "Гравіювання штанів - Живе полум'я", "Вигравіювати на штанях руну \"Живе полум'я\":", rune=401556 }, -- Engrave Pants - Living Flame
[415939] = { "Гравіювання штанів - Масова регенерація", "Вигравіювати на штанях руну \"Масова регенерація\":", rune={412510, 400735} }, -- Engrave Pants - Mass Regeneration

-- Item effects
[459600] = { "Зменшення затримки вимови Арканічного спалаху", "З ймовірністю {1}% ви уникнете затримки вимови закляття \"Арканічний спалах\" при отриманні шкоди.#a {1}% chance to avoid" }, -- Arcane Blast Cast Pushback Reduction
[468512] = { "Крижана могутність", "Збільшує ймовірність критичного удару заклять \"Крижана стріла\", \"Чарокрижана стріла\" та \"Крижана куля\" на {1}% та збільшує критичну шкоду заклять \"Крижана стріла\", \"Чарокрижана стріла\" та \"Крижана куля\" на {2}% протягом {3} с.#Orb spells by {1}%, and#spells by {2}% for {3} sec", "Ймовірність критичного удару заклять \"Крижана стріла\", \"Чарокрижана стріла\" та \"Крижана куля\" збільшено на {1}%.\nКритичну шкоду заклять \"Крижана стріла\", \"Чарокрижана стріла\" та \"Крижана куля\" збільшено на {2}%.#chance increased by {1}%#damage increased by {2}%" }, -- Frost Potency
[467141] = { ref=23723 }, -- Mind Quickening

-- Rune progress
[421063] = { "Шлях без кроків", nil, "Ви на шляху." }, -- Path of no Steps

}

for k, v in pairs(mage_spells) do addonTable.spell[k] = v end
