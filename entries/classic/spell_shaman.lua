local _, addonTable = ...

local shaman_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Ancestral Fortitude
[16177] = { "Стійкість пращурів", nil, "Збільшує броню від ваших предметів на {1}%.#by {1}" }, -- Ancestral Fortitude (Rank 1)
[16236] = { ref=16177 }, -- Ancestral Fortitude (Rank 2)
[16237] = { ref=16177 }, -- Ancestral Fortitude (Rank 3)
-- Ancestral Healing
[16176] = { "Зцілення пращурів", "Збільшує броню вашої цілі на {1}% на {2} с після отримання критичного ефекту одного з ваших лікувальних заклять.#by {1}% for {2} sec" }, -- Ancestral Healing (Rank 1)
[16235] = { ref=16176 }, -- Ancestral Healing (Rank 2)
[16240] = { ref=16176 }, -- Ancestral Healing (Rank 3)
-- Ancestral Knowledge
[17485] = { "Знання пращурів", "Збільшує вашу максимальну ману на {1}%.#by {1}" }, -- Ancestral Knowledge (Rank 1)
[17486] = { ref=17485 }, -- Ancestral Knowledge (Rank 2)
[17487] = { ref=17485 }, -- Ancestral Knowledge (Rank 3)
[17488] = { ref=17485 }, -- Ancestral Knowledge (Rank 4)
[17489] = { ref=17485 }, -- Ancestral Knowledge (Rank 5)
-- Ancestral Spirit
[2008] = { "Дух пращурів", "Повертає душу в тіло, повертаючи мертву ціль до життя з {1} здоров'я та {2} мани. Не можна використовувати в бою.#{1} health and {2} mana" }, -- Ancestral Spirit (Rank 1)
[20609] = { ref=2008 }, -- Ancestral Spirit (Rank 2)
[20610] = { ref=2008 }, -- Ancestral Spirit (Rank 3)
[20776] = { ref=2008 }, -- Ancestral Spirit (Rank 4)
[20777] = { ref=2008 }, -- Ancestral Spirit (Rank 5)
-- Anticipation
[16254] = { "Передчуття", "Збільшує вашу ймовірність ухилитися на додаткові {1}%.#additional {1}" }, -- Anticipation (Rank 1)
[16271] = { ref=16254 }, -- Anticipation (Rank 2)
[16272] = { ref=16254 }, -- Anticipation (Rank 3)
[16273] = { ref=16254 }, -- Anticipation (Rank 4)
[16274] = { ref=16254 }, -- Anticipation (Rank 5)
-- Astral Recall
[556] = { "Астральне повернення", "Повертає заклинача крізь Підсвітню Крутоверть додому. Поговоріть з корчмарем в іншому місці, щоб змінити домівку." }, -- Astral Recall
-- Call of Flame
[16038] = { "Поклик полум'я", "Збільшує шкоду ваших вогняних тотемів на {1}%.#by {1}" }, -- Call of Flame (Rank 1)
[16160] = { ref=16038 }, -- Call of Flame (Rank 2)
[16161] = { ref=16038 }, -- Call of Flame (Rank 3)
-- Call of Thunder
[16041] = { "Поклик грому", "Підвищує ймовірність критичного удару ваших заклять \"Блискавка\" та \"Ланцюгова блискавка\" додатково на {1}%.#additional {1}" }, -- Call of Thunder (Rank 1)
[16117] = { ref=16041 }, -- Call of Thunder (Rank 2)
[16118] = { ref=16041 }, -- Call of Thunder (Rank 3)
[16119] = { ref=16041 }, -- Call of Thunder (Rank 4)
[16120] = { ref=16041 }, -- Call of Thunder (Rank 5)
-- Chain Heal
[1064] = { "Ланцюгове зцілення", "Зцілює вибраного союзника на значення від {1} до {2} здоров'я, перестрибуючи на інші цілі поряд. Якщо закляття було націлене на члена групи, подальші стрибки переходитимуть лише на інших її учасників. Кожен наступний стрибок має {3}% ефективності зцілення від попереднього. Зцілює до {4} цілей.#for {1} to {2}#{3}% as effective#{4} total targets." }, -- Chain Heal (Rank 1)
[10622] = { ref=1064 }, -- Chain Heal (Rank 2)
[10623] = { ref=1064 }, -- Chain Heal (Rank 3)
-- Chain Lightning
[421] = { "Ланцюгова блискавка", "Кидає в ціль блискавку, що завдає від {1} до {2} шкоди від природи та перестрибує на інших ворогів поруч. Кожен стрибок завдає на {3}% менше шкоди. Вражає до {4} цілей.#dealing {1} to {2}#damage by {3}#{4} total targets." }, -- Chain Lightning (Rank 1)
[930] = { ref=421 }, -- Chain Lightning (Rank 2)
[2860] = { ref=421 }, -- Chain Lightning (Rank 3)
[10605] = { ref=421 }, -- Chain Lightning (Rank 4)
-- Clearcasting
[16246] = { "Ясномова", nil, "Ваше наступне стихійне закляття шкоди витратить на {1}% менше мани.#by {1}" }, -- Clearcasting
-- Concussion
[16035] = { "Струс", "Збільшує шкоду заклять \"Блискавка\", \"Ланцюгова блискавка\" та заклять-шоків на {1}%.#by {1}" }, -- Concussion (Rank 1)
[16105] = { ref=16035 }, -- Concussion (Rank 2)
[16106] = { ref=16035 }, -- Concussion (Rank 3)
[16107] = { ref=16035 }, -- Concussion (Rank 4)
[16108] = { ref=16035 }, -- Concussion (Rank 5)
-- Convection
[16039] = { "Конвекція", "Зменшує витрати мани ваших заклять \"Блискавка\", \"Ланцюгова блискавка\" та шокових заклять на {1}%.#by {1}" }, -- Convection (Rank 1)
[16109] = { ref=16039 }, -- Convection (Rank 2)
[16110] = { ref=16039 }, -- Convection (Rank 3)
[16111] = { ref=16039 }, -- Convection (Rank 4)
[16112] = { ref=16039 }, -- Convection (Rank 5)
-- Cure Disease
[2870] = { "Лікування хвороби", "Виліковує {1} хворобу з цілі.#Cures {1}" }, -- Cure Disease
-- Cure Poison
[526] = { "Лікування отрути", "Виліковує {1} ефект отрути з цілі.#Cures {1}" }, -- Cure Poison
-- Disease Cleansing Totem
[8170] = { "Тотем очищення хвороб", "Викликає тотем очищення хвороб із {1} здоров'я біля заклинача. Тотем буде намагатися зняти {2} ефект хвороби з членів групи в радіусі {3} м кожні {4} с. Триває {5} хв.#with {1} health#remove {2}#within {3} yards every {4} sec#Lasts {5} min" }, -- Disease Cleansing Totem
-- Dual Wield
[30798] = { "Бій з двох рук", "Дозволяє брати в ліву руку зброю для однієї руки або зброю для лівої руки." }, -- Dual Wield
-- Earth Shock
[8042] = { "Земний шок", "Миттєво шокує ціль ударною хвилею, завдаючт від {1} до {2} шкоди від природи. Також перериває вимову закляття та внеможливлює вимову будь-яких інших заклять з тієї ж школи магії на {3} с. Спричиняє високий рівень загрози.#causing {1} to {2}#for {3} sec" }, -- Earth Shock (Rank 1)
[8044] = { ref=8042 }, -- Earth Shock (Rank 2)
[8045] = { ref=8042 }, -- Earth Shock (Rank 3)
[8046] = { ref=8042 }, -- Earth Shock (Rank 4)
[10412] = { ref=8042 }, -- Earth Shock (Rank 5)
[10413] = { ref=8042 }, -- Earth Shock (Rank 6)
[10414] = { ref=8042 }, -- Earth Shock (Rank 7)
-- Earth's Grasp
[16043] = { "Хватка землі", "Підвищує здоров'я вашого тотема кам'яного пазура на {1}% і радіус дії тотема земного зв'язування на {2}%.#Stoneclaw Totem by {1}#Earthbind Totem by {2}" }, -- Earth's Grasp (Rank 1)
[16130] = { ref=16043 }, -- Earth's Grasp (Rank 2)
-- Earthbind
[3600] = { "Земне зв'язування", nil, "Рух сповільнено на {1}%.#by {1}" }, -- Earthbind
-- Earthbind Totem
[2484] = { "Тотем земного зв'язування", "Викликає тотем земного зв'язування з {1} здоров'я біля заклинача на {2} с. Тотем сповільнює рух ворогів у радіусі {3} м.#with {1} health#for {2} sec#within {3} y" }, -- Earthbind Totem
-- Elemental Devastation
[29177] = { ref=30165 }, -- Elemental Devastation (Rank 2)
[29178] = { ref=30165 }, -- Elemental Devastation (Rank 3)
[29179] = { ref=30160 }, -- Elemental Devastation (Rank 2)
[29180] = { ref=30160 }, -- Elemental Devastation (Rank 3)
[30160] = { "Стихійне спустошення", "Критичні удари від ваших атакуючих заклять підвищують ймовірність критичного удару ваших атак ближнього бою на {1}% на {2} с.#by {1}% for {2} sec" }, -- Elemental Devastation (Rank 1)
[30165] = { "Стихійне спустошення", nil, "Збільшує вашу ймовірність завдати критичного удару атакою ближнього бою на {1}%.#by {1}" }, -- Elemental Devastation (Rank 1)
-- Elemental Focus
[16164] = { "Стихійна зосередженість", "Надає вам {1}% ймовірності набути ефекту \"Ясномови\" після застосування будь-якого закляття вогню, криги чи природи, що завдає шкоди. \"Ясномова\" зменшує витрати мани вашого наступного бойового закляття на {2}%.#{1}% chance#spell by {2}" }, -- Elemental Focus
-- Elemental Fury
[16089] = { "Стихійна лють", "Збільшує додаткову шкоду від критичних ударів тотемів обпалення, магми та вогненного спалаху, а також заклять вогню, криги та природи на {1}%.#by {1}" }, -- Elemental Fury
-- Elemental Mastery
[16166] = { "Опанування стихій", "При активації, підвищує ймовірність критичного ефекту наступного бойового закляття вогню, криги чи природи на {1}% і зменшує витрати мани на нього на {2}%.#{1}% critical#by {2}", "Ваше наступне бойове закляття вогню, криги чи природи витратить на {1}% менше мани й гарантовано матиме критичний ефект.#by {1}" }, -- Elemental Mastery
-- Elemental Warding
[28996] = { "Оберіг стихій", "Зменшує шкоду від ефектів вогню, криги та природи на {1}%.#by {1}" }, -- Elemental Warding (Rank 1)
[28997] = { ref=28996 }, -- Elemental Warding (Rank 2)
[28998] = { ref=28996 }, -- Elemental Warding (Rank 3)
-- Elemental Weapons
[16266] = { "Зброя стихій", "Збільшує бонус сили атаки ближнього бою вашого закляття \"Зброя каменолома\" на {1}%, ефект вашого закляття \"Зброя буревію\" на {2}% та шкоду заклять \"Зброя язика полум'я\" та \"Зброя крижаного тавра\" на {3}%.#Rockbiter Weapon by {1}#effect by {2}#Frostbrand Weapon by {3}" }, -- Elemental Weapons (Rank 1)
[29079] = { ref=16266 }, -- Elemental Weapons (Rank 2)
[29080] = { ref=16266 }, -- Elemental Weapons (Rank 3)
-- Enhancing Totems
[16259] = { "Покращення тотемів", "Збільшує ефект ваших тотемів сили землі та поваби вітру на {1}%.#by {1}" }, -- Enhancing Totems (Rank 1)
[16295] = { ref=16259 }, -- Enhancing Totems (Rank 2)
-- Eye of the Storm
[29062] = { "Око бурі", "Надає вам 33% імовірності набути ефекту \"Зосередженої вимови\" на 6 с після отримання критичного удару в ближньому чи дальньому бою. \"Зосереджена вимова\" оберігає вас від втрат часу на вимову закляття при отриманні шкоди." }, -- Eye of the Storm (Rank 1)
[29064] = { ref=29062 }, -- Eye of the Storm (Rank 2)
[29065] = { ref=29062 }, -- Eye of the Storm (Rank 3)
-- Far Sight
[6196] = { "Далекозорість", "Переносить поле зору заклинача до обраного місця. Триває {1} хв. Можна використовувати лише просто неба.#Lasts {1} min", "Не може рухатися під час використання \"Далекозорості\"." }, -- Far Sight
-- Fire Nova Totem
[1535] = { "Тотем вогненного спалаху", "Викликає тотем вогненного спалаху з {1} здоров'я та часом існування {2} с. Якщо тотем не знищити протягом {3} с, він завдасть від {4} до {5} шкоди вогнем усім ворогам в радіусі {6} м.#has {1} health and lasts {2} sec#within {3} sec#inflicts {4} to {5}#within {6} y" }, -- Fire Nova Totem (Rank 1)
[8498] = { ref=1535 }, -- Fire Nova Totem (Rank 2)
[8499] = { ref=1535 }, -- Fire Nova Totem (Rank 3)
[11314] = { ref=1535 }, -- Fire Nova Totem (Rank 4)
[11315] = { ref=1535 }, -- Fire Nova Totem (Rank 5)
-- Fire Resistance Totem
[8184] = { "Тотем супротиву вогню", "Викликає тотем супротиву вогню з {1} здоров'я біля заклинача на {2} хв, який підвищує супротив вогню учасників групи у радіусі {3} м на {4}.#with {1} health#for {2} min#within {3} yards by {4}" }, -- Fire Resistance Totem (Rank 1)
[10537] = { ref=8184 }, -- Fire Resistance Totem (Rank 2)
[10538] = { ref=8184 }, -- Fire Resistance Totem (Rank 3)
-- Flame Shock
[8050] = { "Вогняний шок", "Миттєво обпалює ціль вогнем, завдаючи {1} шкоди вогнем одразу та ще {2} шкоди вогнем протягом {3} с.#causing {1}#{2} Fire damage over {3} sec", "{1} шкоди вогнем кожні {2} с.#{1} Fire damage every {2} sec" }, -- Flame Shock (Rank 1)
[8052] = { ref=8050 }, -- Flame Shock (Rank 2)
[8053] = { ref=8050 }, -- Flame Shock (Rank 3)
[10447] = { ref=8050 }, -- Flame Shock (Rank 4)
[10448] = { ref=8050 }, -- Flame Shock (Rank 5)
[29228] = { ref=8050 }, -- Flame Shock (Rank 6)
-- Flametongue Totem
[8227] = { "Тотем язика полум'я", "Викликає тотем язика полум'я з {1} здоров'я біля заклинача. Тотем підсилює вогнем зброю в основній руці всіх учасників групи в радіусі {2} м. Кожен удар завдає від {3} до {4} додаткової шкоди вогнем залежно від швидкості зброї. Повільна зброя завдає більшої шкоди за удар. Триває {5} хв.#with {1} health#within {2} y#causes {3} to {4}#Lasts {5} min" }, -- Flametongue Totem (Rank 1)
[8249] = { ref=8227 }, -- Flametongue Totem (Rank 2)
[10526] = { ref=8227 }, -- Flametongue Totem (Rank 3)
[16387] = { ref=8227 }, -- Flametongue Totem (Rank 4)
-- Flametongue Weapon
[8024] = { "Зброя язика полум'я", "Підсилює зброю шамана вогнем. Кожен удар завдає цілі від {1} до {2} додаткової шкоди вогнем залежно від швидкості зброї. Повільна зброя завдає більшої шкоди за удар. Триває {3} хв.#causes {1} to {2}#Lasts for {3} min" }, -- Flametongue Weapon (Rank 1)
[8027] = { ref=8024 }, -- Flametongue Weapon (Rank 2)
[8030] = { ref=8024 }, -- Flametongue Weapon (Rank 3)
[16339] = { ref=8024 }, -- Flametongue Weapon (Rank 4)
[16341] = { ref=8024 }, -- Flametongue Weapon (Rank 5)
[16342] = { ref=8024 }, -- Flametongue Weapon (Rank 6)
-- Flurry
[16256] = { "Шквал", "Збільшує вашу швидкість атаки на {1}% для наступних {2} ударів після того, як ви завдали критичного удару.#speed by {1}%#next {2} swings" }, -- Flurry (Rank 1)
[16257] = { "Шквал", nil, "Швидкість атаки збільшено на {1}%.#by {1}" }, -- Flurry (Rank 1)
[16277] = { ref=16257 }, -- Flurry (Rank 2)
[16278] = { ref=16257 }, -- Flurry (Rank 3)
[16279] = { ref=16257 }, -- Flurry (Rank 4)
[16280] = { ref=16257 }, -- Flurry (Rank 5)
[16281] = { ref=16256 }, -- Flurry (Rank 2)
[16282] = { ref=16256 }, -- Flurry (Rank 3)
[16283] = { ref=16256 }, -- Flurry (Rank 4)
[16284] = { ref=16256 }, -- Flurry (Rank 5)
-- Focused Casting
[29063] = { "Зосереджена вимова", "При застосуванні ви не втрачаєте час на вимову заклять від отримання шкоди. Діє {1} секунд.#Lasts {1} sec", "Не втрачаєте час на вимову закляття при отриманні шкоди." }, -- Focused Casting
-- Frost Resistance Totem
[8181] = { "Тотем супротиву кризі", "Викликає тотем супротиву кризі з {1} здоров'я біля заклинача на {2} хв, який підвищує супротив кризі учасників групи у радіусі {4} м на {3}.#with {1} health#for {2} min#resistance by {3}#within {4} y" }, -- Frost Resistance Totem (Rank 1)
[10478] = { ref=8181 }, -- Frost Resistance Totem (Rank 2)
[10479] = { ref=8181 }, -- Frost Resistance Totem (Rank 3)
-- Frost Shock
[8056] = { "Крижаний шок", "Миттєво шокує ціль кригою, завдаючи від {1} до {2} шкоди кригою та сповільнює рух на {3}%. Триває {4} с.#causing {1} to {2}#speed by {3}#Lasts {4} sec", "Рух сповільнено на {1}%.#by {1}" }, -- Frost Shock (Rank 1)
[8058] = { ref=8056 }, -- Frost Shock (Rank 2)
[10472] = { ref=8056 }, -- Frost Shock (Rank 3)
[10473] = { ref=8056 }, -- Frost Shock (Rank 4)
-- Frostbrand Weapon
[8033] = { "Зброя крижаного тавра", "Підсилює зброю шамана кригою. Кожен удар може завдати цілі додатково {1} шкоди кригою та сповільнити її рух на {2}% протягом {3} с. Триває {4} хв.#causing {1}#by {2}% for {3} sec#Lasts for {4} min" }, -- Frostbrand Weapon (Rank 1)
[8038] = { ref=8033 }, -- Frostbrand Weapon (Rank 2)
[10456] = { ref=8033 }, -- Frostbrand Weapon (Rank 3)
[16355] = { ref=8033 }, -- Frostbrand Weapon (Rank 4)
[16356] = { ref=8033 }, -- Frostbrand Weapon (Rank 5)
-- Ghost Wolf
[2645] = { "Примарний вовк", "Перетворює шамана на примарного вовка, збільшуючи швидкість руху на {1}%. Можна використовувати лише просто неба.#by {1}", "Збільшує швидкість руху на {1}%.#by {1}" }, -- Ghost Wolf
-- Grace of Air
[8836] = { "Поваба вітру", nil, "Збільшує спритність на {1}.#by {1}" }, -- Grace of Air (Rank 1)
[10626] = { ref=8836 }, -- Grace of Air (Rank 2)
[25360] = { ref=8836 }, -- Grace of Air (Rank 3)
-- Grace of Air Totem
[8835] = { "Тотем поваби вітру", "Викликає тотем поваби вітру з {1} здоров'я біля заклинача. Тотем підвищує спритність учасників групи у радіусі {2} м на {3}. Триває {4} хв.#with {1} health#within {2} yards by {3}#Lasts {4} min" }, -- Grace of Air Totem (Rank 1)
[10627] = { ref=8835 }, -- Grace of Air Totem (Rank 2)
[25359] = { ref=8835 }, -- Grace of Air Totem (Rank 3)
-- Grounding Totem
[8177] = { "Тотем заземлення", "Викликає тотем заземлення з {1} здоров'я біля заклинача, який перенаправлятиме на себе одне зловмисне закляття раз на {2} с, ціллю якого є учасник групи поруч. Не перенаправляє закляття з ураженням по області. Триває {3} с.#with {1} health#every {2} sec#Lasts {3} sec" }, -- Grounding Totem
-- Grounding Totem Effect
[8178] = { "Ефект тотему заземлення", nil, "Перенаправить одне зловмисне закляття на тотем заземлення." }, -- Grounding Totem Effect (Rank 1)
-- Guardian Totems
[16258] = { "Вартові тотеми", "Підсилює ефект зменшення шкоди від ваших тотемів кам'яної шкіри та стіни вітру на {1}%, також зменшує час відновлення вашого тотема заземлення на {2} с.#Windwall Totem by {1}#Grounding Totem by {2}" }, -- Guardian Totems (Rank 1)
[16293] = { ref=16258 }, -- Guardian Totems (Rank 2)
-- Healing Focus
[16181] = { "Цілюща зосередженість", "Надає вам {1}% ймовірності уникнути переривання вимови будь-якого цілющого закляття при отриманні шкоди.#{1}% chance" }, -- Healing Focus (Rank 1)
[16230] = { ref=16181 }, -- Healing Focus (Rank 2)
[16232] = { ref=16181 }, -- Healing Focus (Rank 3)
[16233] = { ref=16181 }, -- Healing Focus (Rank 4)
[16234] = { ref=16181 }, -- Healing Focus (Rank 5)
-- Healing Grace
[29187] = { "Цілюще благовоління", "Зменшує загрозу від ваших заклять зцілення на {1}%.#by {1}" }, -- Healing Grace (Rank 1)
[29189] = { ref=29187 }, -- Healing Grace (Rank 2)
[29191] = { ref=29187 }, -- Healing Grace (Rank 3)
-- Healing Stream Totem
[5394] = { "Тотем цілющого потоку", "Викликає тотем цілющого потоку з {1} здоров'я біля заклинача на {2} хв, який зцілює членів групи у радіусі {3} м на {4} здоров'я кожні {5} с.#with {1} health#for {2} min#within {3} yards for {4} every {5} sec" }, -- Healing Stream Totem (Rank 1)
[6375] = { ref=5394 }, -- Healing Stream Totem (Rank 2)
[6377] = { ref=5394 }, -- Healing Stream Totem (Rank 3)
[10462] = { ref=5394 }, -- Healing Stream Totem (Rank 4)
[10463] = { ref=5394 }, -- Healing Stream Totem (Rank 5)
-- Healing Wave
[331] = { "Хвиля зцілення", "Зцілює вибраного союзника на значення від {1} до {2} здоров'я.#for {1} to {2}" }, -- Healing Wave (Rank 1)
[332] = { ref=331 }, -- Healing Wave (Rank 2)
[547] = { ref=331 }, -- Healing Wave (Rank 3)
[913] = { ref=331 }, -- Healing Wave (Rank 4)
[939] = { ref=331 }, -- Healing Wave (Rank 5)
[959] = { ref=331 }, -- Healing Wave (Rank 6)
[8005] = { ref=331 }, -- Healing Wave (Rank 7)
[10395] = { ref=331 }, -- Healing Wave (Rank 8)
[10396] = { ref=331 }, -- Healing Wave (Rank 9)
[25357] = { ref=331 }, -- Healing Wave (Rank 10)
-- Healing Way
[29202] = { ref=29206 }, -- Healing Way (Rank 3)
[29205] = { ref=29206 }, -- Healing Way (Rank 2)
[29206] = { "Шлях зцілення", "Ваше закляття \"Хвиля зцілення\" з імовірністю {1}% підсилить повторний ефект цього ж закляття на ту саму ціль на {2}% на {3} с. Ефект накладається до {4} разів.#{1}% chance#by {2}% for {3} sec#up to {4} times" }, -- Healing Way (Rank 1)
-- Improved Fire Totems
[16086] = { "Покращені тотеми вогню", "Знижує час затримки активації вашого тотема вогненного спалаху на {1} с і рівень загрози від тотема магми на {2}%.#activates by {1}#Magma Totem by {2}" }, -- Improved Fire Totems (Rank 1)
[16544] = { ref=16086 }, -- Improved Fire Totems (Rank 2)
-- Improved Ghost Wolf
[16262] = { "Покращений примарний вовк", "Зменшує час вимови закляття \"Примарний вовк\" на {1} с.#by {1}" }, -- Improved Ghost Wolf (Rank 1)
[16287] = { ref=16262 }, -- Improved Ghost Wolf (Rank 2)
-- Improved Healing Wave
[16182] = { "Покращена хвиля зцілення", "Зменшує час вимови закляття \"Хвиля зцілення\" на {1} с.#by {1}" }, -- Improved Healing Wave (Rank 1)
[16226] = { ref=16182 }, -- Improved Healing Wave (Rank 2)
[16227] = { ref=16182 }, -- Improved Healing Wave (Rank 3)
[16228] = { ref=16182 }, -- Improved Healing Wave (Rank 4)
[16229] = { ref=16182 }, -- Improved Healing Wave (Rank 5)
-- Improved Lightning Shield
[16261] = { "Покращений блискавичний щит", "Збільшує шкоду від зарядів \"Блискавичного щита\" на {1}%.#by {1}" }, -- Improved Lightning Shield (Rank 1)
[16290] = { ref=16261 }, -- Improved Lightning Shield (Rank 2)
-- Improved Reincarnation
[16184] = { "Покращена реінкарнація", "Зменшує час відновлення вашої здібності \"Реінкарнація\" на {1} хв та збільшує об'єм здоров'я і мани, з яким ви повертаєтеся до життя, на додаткові {2}%.#by {1} min#additional {2}" }, -- Improved Reincarnation (Rank 1)
[16209] = { ref=16184 }, -- Improved Reincarnation (Rank 2)
-- Improved Weapon Totems
[29192] = { "Покращені тотеми зброї", "Збільшує бонус до сили атаки ближнього бою вашого тотему буревію на {1}% та шкоду вашого тотема язика полум'я на {2}%.#Windfury Totem by {1}#Flametongue Totem by {2}" }, -- Improved Weapon Totems (Rank 1)
[29193] = { ref=29192 }, -- Improved Weapon Totems (Rank 2)
-- Lesser Healing Wave
[8004] = { "Мала хвиля зцілення", "Зцілює вибраного союзника на значення від {1} до {2} здоров'я.#for {1} to {2}" }, -- Lesser Healing Wave (Rank 1)
[8008] = { ref=8004 }, -- Lesser Healing Wave (Rank 2)
[8010] = { ref=8004 }, -- Lesser Healing Wave (Rank 3)
[10466] = { ref=8004 }, -- Lesser Healing Wave (Rank 4)
[10467] = { ref=8004 }, -- Lesser Healing Wave (Rank 5)
[10468] = { ref=8004 }, -- Lesser Healing Wave (Rank 6)
-- Lightning Bolt
[403] = { "Блискавка", "Кидає в ціль блискавку, завдаючи від {1} до {2} шкоди від природи.#for {1} to {2}" }, -- Lightning Bolt (Rank 1)
[529] = { ref=403 }, -- Lightning Bolt (Rank 2)
[548] = { ref=403 }, -- Lightning Bolt (Rank 3)
[915] = { ref=403 }, -- Lightning Bolt (Rank 4)
[943] = { ref=403 }, -- Lightning Bolt (Rank 5)
[6041] = { ref=403 }, -- Lightning Bolt (Rank 6)
[10391] = { ref=403 }, -- Lightning Bolt (Rank 7)
[10392] = { ref=403 }, -- Lightning Bolt (Rank 8)
[15207] = { ref=403 }, -- Lightning Bolt (Rank 9)
[15208] = { ref=403 }, -- Lightning Bolt (Rank 10)
-- Lightning Mastery
[16578] = { "Опанування блискавки", "Зменшує час вимови ваших заклять \"Блискавка\" та \"Ланцюгова блискавка\" на {1} с.#by {1}" }, -- Lightning Mastery (Rank 1)
[16579] = { ref=16578 }, -- Lightning Mastery (Rank 2)
[16580] = { ref=16578 }, -- Lightning Mastery (Rank 3)
[16581] = { ref=16578 }, -- Lightning Mastery (Rank 4)
[16582] = { ref=16578 }, -- Lightning Mastery (Rank 5)
-- Lightning Shield
[324] = { "Блискавичний щит", "Оточує заклинача {1} кульовими блискавками. Коли будь-яке закляття, атака ближнього чи дальнього бою влучає у заклинача, нападнику завдається {2} шкоди від природи. При цьому витрачається одна кульова блискавка. Кульові блискавки можуть активуватися лише раз на кілька секунд. Триває {3} хв.#by {1} balls#struck for {2} Nature#Lasts {3} min", "Завдає {1} шкоди від природи нападникам при отриманні удару.#Causes {1} Nature" }, -- Lightning Shield (Rank 1)
[325] = { ref=324 }, -- Lightning Shield (Rank 2)
[905] = { ref=324 }, -- Lightning Shield (Rank 3)
[945] = { ref=324 }, -- Lightning Shield (Rank 4)
[8134] = { ref=324 }, -- Lightning Shield (Rank 5)
[10431] = { ref=324 }, -- Lightning Shield (Rank 6)
[10432] = { ref=324 }, -- Lightning Shield (Rank 7)
-- Magma Totem
[8190] = { "Тотем магми", "Викликає тотем магми з {1} здоров'я біля заклинача на {2} с, який завдає {3} шкоди вогнем усім істотам у радіусі {4} м кожні {5} с.#with {1} health#for {2} sec#causes {3}#within {4} yards every {5} sec" }, -- Magma Totem (Rank 1)
[10585] = { ref=8190 }, -- Magma Totem (Rank 2)
[10586] = { ref=8190 }, -- Magma Totem (Rank 3)
[10587] = { ref=8190 }, -- Magma Totem (Rank 4)
-- Mana Spring Totem
[5675] = { "Тотем джерела мани", "Викликає тотем джерела мани з {1} здоров'я біля заклинача на {2} хв, який відновлює {3} мани кожні {4} с членам групи у радіусі {5} м.#with {1} health#for {2} min#{3} mana every {4} sec#within {5} y" }, -- Mana Spring Totem (Rank 1)
[10495] = { ref=5675 }, -- Mana Spring Totem (Rank 2)
[10496] = { ref=5675 }, -- Mana Spring Totem (Rank 3)
[10497] = { ref=5675 }, -- Mana Spring Totem (Rank 4)
-- Mana Tide Totem
[16190] = { "Тотем припливу мани", "Викликає тотем припливу мани з {1} здоров'я біля заклинача на {2} с, який відновлює {3} мани кожні {4} с членам групи у радіусі {5} м.#with {1} health#for {2} sec#{3} mana every {4} sec#within {5} y" }, -- Mana Tide Totem (Rank 1)
[17354] = { ref=16190 }, -- Mana Tide Totem (Rank 2)
[17359] = { ref=16190 }, -- Mana Tide Totem (Rank 3)
-- Nature Resistance Totem
[10595] = { "Тотем супротиву природі", "Викликає тотем супротиву природі з {1} здоров'я біля заклинача на {2} хв, який підвищує супротив природі учасників групи у радіусі {3} м на {4}.#with {1} health#for {2} min#within {3} yards by {4}" }, -- Nature Resistance Totem (Rank 1)
[10600] = { ref=10595 }, -- Nature Resistance Totem (Rank 2)
[10601] = { ref=10595 }, -- Nature Resistance Totem (Rank 3)
-- Nature's Guidance
[16180] = { "Сприяння природи", "Збільшує вашу ймовірність поцілити в ближньому бою та закляттями на {1}%.#by {1}" }, -- Nature's Guidance (Rank 1)
[16196] = { ref=16180 }, -- Nature's Guidance (Rank 2)
[16198] = { ref=16180 }, -- Nature's Guidance (Rank 3)
-- Nature's Swiftness
[16188] = { "Стрімкість природи", "При активації, ваше наступне закляття природи з часом вимови не більше {1} с буде миттєвим.#than {1} sec", "Ваше наступне закляття природи з часом вимови не більше {1} с буде миттєвим.#than {1} sec" }, -- Nature's Swiftness
-- Parry
[16268] = { ref=3127 }, -- Parry
[18848] = { ref=3127 }, -- Parry (Passive)
-- Poison Cleansing Totem
[8166] = { "Тотем очищення отрут", "Викликає тотем очищення отрут із {1} здоров'я біля заклинача. Тотем буде намагатися зняти {2} ефект отрути з членів групи в радіусі {3} м кожні {4} с. Триває {5} хв.#with {1} health#remove {2}#within {3} yards every {4} sec#Lasts {5} min" }, -- Poison Cleansing Totem
-- Purge
[370] = { "Очищення", "Очищує ворожу ціль, знімаючи з неї {1} магічний ефект.#removing {1}" }, -- Purge (Rank 1)
[8012] = { "Очищення", "Очищує ворожу ціль, знімаючи з неї {1} сприятливі магічні ефекти.#removing {1}" }, -- Purge (Rank 2)
-- Purification
[16178] = { "Очищення", "Збільшує ефективність ваших заклять зцілення на {1}%.#by {1}" }, -- Purification (Rank 1)
[16210] = { ref=16178 }, -- Purification (Rank 2)
[16211] = { ref=16178 }, -- Purification (Rank 3)
[16212] = { ref=16178 }, -- Purification (Rank 4)
[16213] = { ref=16178 }, -- Purification (Rank 5)
-- Reincarnation
[20608] = { "Реінкарнація", "Дозволяє вам після смерті повернути себе до життя з {1}% здоров'я та мани.#with {1}%" }, -- Reincarnation (Passive)
-- Restorative Totems
[16187] = { "Відновлювальні тотеми", "Збільшує ефект ваших тотемів джерела мани та цілющого потоку на {1}%.#by {1}" }, -- Restorative Totems (Rank 1)
[16205] = { ref=16187 }, -- Restorative Totems (Rank 2)
[16206] = { ref=16187 }, -- Restorative Totems (Rank 3)
[16207] = { ref=16187 }, -- Restorative Totems (Rank 4)
[16208] = { ref=16187 }, -- Restorative Totems (Rank 5)
-- Reverberation
[16040] = { "Відлуння", "Зменшує час поновлення ваших шокових заклять на {1} с.#by {1}" }, -- Reverberation (Rank 1)
[16113] = { ref=16040 }, -- Reverberation (Rank 2)
[16114] = { ref=16040 }, -- Reverberation (Rank 3)
[16115] = { ref=16040 }, -- Reverberation (Rank 4)
[16116] = { ref=16040 }, -- Reverberation (Rank 5)
-- Rockbiter Weapon
[8017] = { "Зброя каменолома", "Підсилює зброю шамана, внаслідок чого сила атаки ближнього бою збільшується на {1}, а атаки ближнього бою цією зброєю спричиняють додаткову загрозу. Триває {2} хв.#power by {1} and#for {2} min" }, -- Rockbiter Weapon (Rank 1)
[8018] = { ref=8017 }, -- Rockbiter Weapon (Rank 2)
[8019] = { ref=8017 }, -- Rockbiter Weapon (Rank 3)
[10399] = { ref=8017 }, -- Rockbiter Weapon (Rank 4)
[16314] = { ref=8017 }, -- Rockbiter Weapon (Rank 5)
[16315] = { ref=8017 }, -- Rockbiter Weapon (Rank 6)
[16316] = { ref=8017 }, -- Rockbiter Weapon (Rank 7)
-- Searing Totem
[3599] = { "Тотем обпалення", "Викликає тотем обпалення з {1} здоров'я біля вас на {2} с. Тотем періодично атакує ворогів у радіусі {3} м, завдаючи від {4} до {5} шкоди вогнем.#with {1} health#for {2} sec#within {3} yards for {4} to {5} Fire" }, -- Searing Totem (Rank 1)
[6363] = { ref=3599 }, -- Searing Totem (Rank 2)
[6364] = { ref=3599 }, -- Searing Totem (Rank 3)
[6365] = { ref=3599 }, -- Searing Totem (Rank 4)
[10437] = { ref=3599 }, -- Searing Totem (Rank 5)
[10438] = { ref=3599 }, -- Searing Totem (Rank 6)
-- Sentry Totem
[6495] = { "Сторожовий тотем", "Викликає нерухомий сторожовий тотем зі {1} здоров'я біля вас на {2} хв, який дозволяє спостерігати за територією неподалік і попереджає про напад ворогів на неї. Натисніть правою кнопкою миші на іконку аури, щоб перемикатися між зором шамана та зором крізь тотем.#with {1} health#for {2} min", "Дозволяє бачити крізь сторожовий тотем. Натисніть правою кнопкою миші на іконку аури, щоб перемикатися між зором шамана та зором крізь тотем." }, -- Sentry Totem
-- Shield Specialization
[16253] = { "Спеціалізація на щитах", "Підвищує ймовірність блокувати атаки щитом на {1}% та збільшує об'єм заблокованої шкоди на {2}%.#shield by {1}#blocked by {2}" }, -- Shield Specialization (Rank 1)
[16298] = { ref=16253 }, -- Shield Specialization (Rank 2)
[16299] = { ref=16253 }, -- Shield Specialization (Rank 3)
[16300] = { ref=16253 }, -- Shield Specialization (Rank 4)
[16301] = { ref=16253 }, -- Shield Specialization (Rank 5)
-- Stoneclaw Totem
[5730] = { "Тотем кам'яного пазура", "Викликає тотем кам'яного пазура з {1} здоров'я біля заклинача на {2} с, який змушує істот у радіусі {3} м нападати на себе.#with {1} health#for {2} sec#within {3} y" }, -- Stoneclaw Totem (Rank 1)
[6390] = { ref=5730 }, -- Stoneclaw Totem (Rank 2)
[6391] = { ref=5730 }, -- Stoneclaw Totem (Rank 3)
[6392] = { ref=5730 }, -- Stoneclaw Totem (Rank 4)
[10427] = { ref=5730 }, -- Stoneclaw Totem (Rank 5)
[10428] = { ref=5730 }, -- Stoneclaw Totem (Rank 6)
-- Stoneskin
[8072] = { "Кам'яна шкіра", nil, "Знижує отриману шкоду в ближньому бою на {1}.#by {1}" }, -- Stoneskin (Rank 1)
[8156] = { ref=8072 }, -- Stoneskin (Rank 2)
[8157] = { ref=8072 }, -- Stoneskin (Rank 3)
[10403] = { ref=8072 }, -- Stoneskin (Rank 4)
[10404] = { ref=8072 }, -- Stoneskin (Rank 5)
[10405] = { ref=8072 }, -- Stoneskin (Rank 6)
-- Stoneskin Totem
[8071] = { "Тотем кам'яної шкіри", "Викликає тотем кам'яної шкіри з {1} здоров'я біля заклинача. Тотем захищає учасників групи в радіусі {2} м, знижуючи отриману шкоду в ближньому бою на {3}. Триває {4} хв.#with {1} health#within {2} y#taken by {3}#Lasts {4} min" }, -- Stoneskin Totem (Rank 1)
[8154] = { ref=8071 }, -- Stoneskin Totem (Rank 2)
[8155] = { ref=8071 }, -- Stoneskin Totem (Rank 3)
[10406] = { ref=8071 }, -- Stoneskin Totem (Rank 4)
[10407] = { ref=8071 }, -- Stoneskin Totem (Rank 5)
[10408] = { ref=8071 }, -- Stoneskin Totem (Rank 6)
-- Storm Reach
[28999] = { "Досяжність бурі", "Збільшує дальність дії ваших заклять \"Блискавка\" та \"Ланцюгова блискавка\" на {1} м.#by {1}" }, -- Storm Reach (Rank 1)
[29000] = { ref=28999 }, -- Storm Reach (Rank 2)
-- Stormstrike
[17364] = { "Штормовий удар", "Дає вам додаткову атаку. Окрім цього, наступні два ураження цілі шкодою від природи посилені на {1}%. Триває {2} с.#increased by {1}#{2} sec", "Отриману шкоду від природи збільшено на {1}%.#by {1}" }, -- Stormstrike (Rank 1)
-- Strength of Earth
[8076] = { "Сила землі", nil, "Збільшує силу на {1}.#by {1}" }, -- Strength of Earth (Rank 1)
[8162] = { ref=8076 }, -- Strength of Earth (Rank 2)
[8163] = { ref=8076 }, -- Strength of Earth (Rank 3)
[10441] = { ref=8076 }, -- Strength of Earth (Rank 4)
[25362] = { ref=8076 }, -- Strength of Earth (Rank 5)
-- Strength of Earth Totem
[8075] = { "Тотем сили землі", "Викликає тотем сили землі з {1} здоров'я біля заклинача. Тотем підвищує силу учасників групи в радіусі {2} м на {3}. Триває {4} хв.#with {1} health#within {2} yards by {3}#Lasts {4} min" }, -- Strength of Earth Totem (Rank 1)
[8160] = { ref=8075 }, -- Strength of Earth Totem (Rank 2)
[8161] = { ref=8075 }, -- Strength of Earth Totem (Rank 3)
[10442] = { ref=8075 }, -- Strength of Earth Totem (Rank 4)
[25361] = { ref=8075 }, -- Strength of Earth Totem (Rank 5)
-- Thundering Strikes
[16255] = { "Громові удари", "Підвищує ймовірність завдати критичного удару вашою зброєю на {1}%.#by {1}" }, -- Thundering Strikes (Rank 1)
[16302] = { ref=16255 }, -- Thundering Strikes (Rank 2)
[16303] = { ref=16255 }, -- Thundering Strikes (Rank 3)
[16304] = { ref=16255 }, -- Thundering Strikes (Rank 4)
[16305] = { ref=16255 }, -- Thundering Strikes (Rank 5)
-- Tidal Focus
[16179] = { "Припливна зосередженість", "Знижує витрати мани на ваші закляття зцілення на {1}%.#by {1}" }, -- Tidal Focus (Rank 1)
[16214] = { ref=16179 }, -- Tidal Focus (Rank 2)
[16215] = { ref=16179 }, -- Tidal Focus (Rank 3)
[16216] = { ref=16179 }, -- Tidal Focus (Rank 4)
[16217] = { ref=16179 }, -- Tidal Focus (Rank 5)
-- Tidal Mastery
[16194] = { "Опанування припливів", "Підвищує ймовірність критичного ефекту ваших заклять зцілення та блискавки на {1}%.#by {1}" }, -- Tidal Mastery (Rank 1)
[16218] = { ref=16194 }, -- Tidal Mastery (Rank 2)
[16219] = { ref=16194 }, -- Tidal Mastery (Rank 3)
[16220] = { ref=16194 }, -- Tidal Mastery (Rank 4)
[16221] = { ref=16194 }, -- Tidal Mastery (Rank 5)
-- Totemic Focus
[16173] = { "Тотемна зосередженість", "Зменшує витрати мани ваших тотемів на {1}%.#by {1}" }, -- Totemic Focus (Rank 1)
[16222] = { ref=16173 }, -- Totemic Focus (Rank 2)
[16223] = { ref=16173 }, -- Totemic Focus (Rank 3)
[16224] = { ref=16173 }, -- Totemic Focus (Rank 4)
[16225] = { ref=16173 }, -- Totemic Focus (Rank 5)
-- Totemic Mastery
[16189] = { "Опанування тотемів", "Радіус дії ваших тотемів, які діють на дружні цілі, збільшено до {1} м.#increased to {1}" }, -- Totemic Mastery
-- Toughness
[16252] = { "Міць", "Збільшує броню з предметів на {1}%.#items by {1}%" }, -- Toughness (Rank 1)
[16306] = { ref=16252 }, -- Toughness (Rank 2)
[16307] = { ref=16252 }, -- Toughness (Rank 3)
[16308] = { ref=16252 }, -- Toughness (Rank 4)
[16309] = { ref=16252 }, -- Toughness (Rank 5)
-- Tranquil Air Totem
[25908] = { "Тотем затишшя", "Викликає тотем затишшя з {1} здоров'я біля заклинача. Тотем зменшує створювану загрозу всіх учасників групи в радіусі {2} м на {3}%. Триває {4} хв.#with {1} health#within {2} yards by {3}#Lasts {4} min" }, -- Tranquil Air Totem
-- Tremor Totem
[8143] = { "Тотем тремтіння", "Викликає тотем тремтіння з {1} здоров'я біля заклинача, який здригає землю навколо, знімаючи ефекти страху, причарування та сну з учасників групи в радіусі {2} м. Триває {3} хв.#with {1} health#within {2} y#Lasts {3} min" }, -- Tremor Totem
-- Two-Handed Axes and Maces
[16269] = { "Дворучні сокири та булави", "Дозволяє вам використовувати дворучні сокири та дворучні булави." }, -- Two-Handed Axes and Maces
-- Water Breathing
[131] = { "Водне дихання", "Дозволяє цілі дихати під водою протягом {1} хв.#for {1} min", "Дихає водою." }, -- Water Breathing
-- Water Walking
[546] = { "Ходіння по воді", "Дозволяє вибраному союзнику ходити по воді протягом {1} хв. Будь-яка шкода скасує ефект.#for {1} min", "Дозволяє ходити по воді." }, -- Water Walking
-- Weapon Mastery
[29082] = { "Опанування зброї", "Збільшує вашу шкоду зброєю на {1}%.#by {1}" }, -- Weapon Mastery (Rank 1)
[29084] = { ref=29082 }, -- Weapon Mastery (Rank 2)
[29086] = { ref=29082 }, -- Weapon Mastery (Rank 3)
[29087] = { ref=29082 }, -- Weapon Mastery (Rank 4)
[29088] = { ref=29082 }, -- Weapon Mastery (Rank 5)
-- Windfury Totem
[8512] = { "Тотем буревію", "Викликає тотем буревію з {1} здоров'я біля заклинача. Тотем підсилює вітром зброю в основній руці всіх учасників групи в радіусі {2} м. Кожен удар з імовірністю {3}% проводить {4} додаткову атаку зі збільшеною на {5} силою атаки ближнього бою. Триває {6} хв.#with {1} health#within {2} y#{3}% chance#{4} extra attack with {5}#Lasts {6} min" }, -- Windfury Totem (Rank 1)
[10613] = { ref=8512 }, -- Windfury Totem (Rank 2)
[10614] = { ref=8512 }, -- Windfury Totem (Rank 3)
-- Windfury Weapon
[8232] = { "Зброя буревію", "Підсилює зброю шамана вітром. Кожен удар з імовірністю {1}% проводить {2} додаткові атаки зі збільшеною на {3} силою атаки ближнього бою. Триває {4} хв.#{1}% chance#{2} extra attacks with {3}#Lasts for {4} min" }, -- Windfury Weapon (Rank 1)
[8235] = { ref=8232 }, -- Windfury Weapon (Rank 2)
[10486] = { ref=8232 }, -- Windfury Weapon (Rank 3)
[16362] = { ref=8232 }, -- Windfury Weapon (Rank 4)
-- Windwall Totem
[15107] = { "Тотем стіни вітру", "Викликає тотем стіни вітру з {1} здоров'я біля заклинача. Тотем захищає учасників групи в радіусі {2} м, зменшуючи отриману шкоду в дальньому бою на {3}. Триває {4} хв.#with {1} health#within {2} y#taken by {3}#Lasts {4} min" }, -- Windwall Totem (Rank 1)
[15111] = { ref=15107 }, -- Windwall Totem (Rank 2)
[15112] = { ref=15107 }, -- Windwall Totem (Rank 3)

}

for k, v in pairs(shaman_spells) do addonTable.spell[k] = v end
