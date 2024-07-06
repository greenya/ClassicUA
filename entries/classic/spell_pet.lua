local _, addonTable = ...

local pet_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Arcane Resistance
[24493] = { "Супротив аркані", "Збільшує супротив аркані на {1}.#by {1}", "Збільшує супротив аркані на {1}.#by {1}" }, -- Arcane Resistance (Rank 1)
[24495] = { ref=24493 }, -- Arcane Resistance (Rank 1)
[24497] = { ref=24493 }, -- Arcane Resistance (Rank 2)
[24500] = { ref=24493 }, -- Arcane Resistance (Rank 3)
[24501] = { ref=24493 }, -- Arcane Resistance (Rank 4)
[24508] = { ref=24493 }, -- Arcane Resistance (Rank 2)
[24509] = { ref=24493 }, -- Arcane Resistance (Rank 3)
[24510] = { ref=24493 }, -- Arcane Resistance (Rank 4)
-- Bite
[17253] = { "Укус", "Кусає ворога, завдаючи від {1} до {2} шкоди.#causing {1} to {2}" }, -- Bite (Rank 1)
[17255] = { ref=17253 }, -- Bite (Rank 2)
[17256] = { ref=17253 }, -- Bite (Rank 3)
[17257] = { ref=17253 }, -- Bite (Rank 4)
[17258] = { ref=17253 }, -- Bite (Rank 5)
[17259] = { ref=17253 }, -- Bite (Rank 6)
[17260] = { ref=17253 }, -- Bite (Rank 7)
[17261] = { ref=17253 }, -- Bite (Rank 8)
-- Blood Pact
[6307] = { "Кривава угода", "Збільшує витривалість учасників групи на {1}.#by {1}", "Збільшує витривалість на {1}.#by {1}" }, -- Blood Pact (Rank 1)
[7804] = { ref=6307 }, -- Blood Pact (Rank 2)
[7805] = { ref=6307 }, -- Blood Pact (Rank 3)
[11766] = { ref=6307 }, -- Blood Pact (Rank 4)
[11767] = { ref=6307 }, -- Blood Pact (Rank 5)
-- Boar Charge
[25999] = { "Ривок кнура", nil, "Знерухомлено." }, -- Boar Charge
-- Charge
[7371] = { "Ривок", "Ривок у ворога, що знерухомлює його на {1} с і додає {2} сили атаки ближнього бою до наступної атаки кнура.#for {1} sec#adds {2} melee" }, -- Charge (Rank 1)
[26177] = { ref=7371 }, -- Charge (Rank 2)
[26178] = { ref=7371 }, -- Charge (Rank 3)
[26179] = { ref=7371 }, -- Charge (Rank 4)
[26201] = { ref=7371 }, -- Charge (Rank 5)
[27685] = { ref=7371 }, -- Charge (Rank 6)
-- Claw
[3009] = { ref=16827 }, -- Claw (Rank 8)
[3010] = { ref=16827 }, -- Claw (Rank 7)
[16827] = { "Дряпання", "Дряпає ворога, завдаючи від {1} до {2} шкоди.#causing {1} to {2}" }, -- Claw (Rank 1)
[16828] = { ref=16827 }, -- Claw (Rank 2)
[16829] = { ref=16827 }, -- Claw (Rank 3)
[16830] = { ref=16827 }, -- Claw (Rank 4)
[16831] = { ref=16827 }, -- Claw (Rank 5)
[16832] = { ref=16827 }, -- Claw (Rank 6)
-- Cobra Reflexes
[25076] = { "Рефлекси кобри", "Швидкість атаки збільшено на {1}%, але зменшено шкоду.#by {1}" }, -- Cobra Reflexes (Rank 1)
-- Consume Shadows
[17767] = { "Поглинання тіней", "Пустотник поглинає тіні поблизу, щоб покращити свій стан, і відновлює {1} здоров'я протягом {2} с. Не можна використовувати в бою.#{1} health over {2} sec", "Зцілює {1} здоров'я кожні {2} с.#{1} damage every {2} sec" }, -- Consume Shadows (Rank 1)
[17850] = { ref=17767 }, -- Consume Shadows (Rank 2)
[17851] = { ref=17767 }, -- Consume Shadows (Rank 3)
[17852] = { ref=17767 }, -- Consume Shadows (Rank 4)
[17853] = { ref=17767 }, -- Consume Shadows (Rank 5)
[17854] = { ref=17767 }, -- Consume Shadows (Rank 6)
-- Cower
[1742] = { "Зіщулювання", "Зіщулитися, не завдаючи шкоди, але зменшуючи вашу загрозу та знижуючи ймовірність того, що ворог атакуватиме саме вас." }, -- Cower (Rank 1)
[1753] = { ref=1742 }, -- Cower (Rank 2)
[1754] = { ref=1742 }, -- Cower (Rank 3)
[1755] = { ref=1742 }, -- Cower (Rank 4)
[1756] = { ref=1742 }, -- Cower (Rank 5)
[16697] = { ref=1742 }, -- Cower (Rank 6)
-- Dash
[23099] = { "Порив", "Збільшує швидкість руху на {1}% на {2} с.#by {1}% for {2} sec", "Збільшує швидкість руху на {1}%.#by {1}" }, -- Dash (Rank 1)
[23109] = { ref=23099 }, -- Dash (Rank 2)
[23110] = { ref=23099 }, -- Dash (Rank 3)
-- Devour Magic
[19505] = { "Пожирання магії", "Очищує дружню ціль від {1} шкідливого магічного ефекту або ворожу ціль від {2} сприятливого магічного ефекту. Пожирання ефекту зцілює скверногончу на {3}.#{1} harmful#{2} beneficial#healed for {3}" }, -- Devour Magic (Rank 1)
[19731] = { ref=19505 }, -- Devour Magic (Rank 2)
[19734] = { ref=19505 }, -- Devour Magic (Rank 3)
[19736] = { ref=19505 }, -- Devour Magic (Rank 4)
-- Dive
[23145] = { "Пікірування", "Збільшує швидкість руху на {1}% на {2} с.#by {1}% for {2} sec", "Збільшує швидкість руху на {1}%.#by {1}" }, -- Dive (Rank 1)
[23147] = { ref=23145 }, -- Dive (Rank 2)
[23148] = { ref=23145 }, -- Dive (Rank 3)
-- Fire Resistance
[23992] = { "Супротив вогню", "Збільшує супротив вогню на {1}.#by {1}", "Збільшує супротив вогню на {1}.#by {1}" }, -- Fire Resistance (Rank 1)
[24439] = { ref=23992 }, -- Fire Resistance (Rank 2)
[24440] = { ref=23992 }, -- Fire Resistance (Rank 1)
[24441] = { ref=23992 }, -- Fire Resistance (Rank 2)
[24444] = { ref=23992 }, -- Fire Resistance (Rank 3)
[24445] = { ref=23992 }, -- Fire Resistance (Rank 4)
[24463] = { ref=23992 }, -- Fire Resistance (Rank 3)
[24464] = { ref=23992 }, -- Fire Resistance (Rank 4)
-- Fire Shield
[2947] = { "Вогняний щит", "Оточує ціль щитом з вогню. Кожен удар по цілі завдає {1} шкоди вогнем нападнику. Триває {2} хв. Заклинач не можу накласти \"Вогняний щит\" на себе.#causes {1}#Lasts {2} min", "Завдає {1} шкоди вогнем нападникові при отриманні удару.#Does {1}" }, -- Fire Shield (Rank 1)
[8316] = { ref=2947 }, -- Fire Shield (Rank 2)
[8317] = { ref=2947 }, -- Fire Shield (Rank 3)
[11770] = { ref=2947 }, -- Fire Shield (Rank 4)
[11771] = { ref=2947 }, -- Fire Shield (Rank 5)
-- Firebolt
[3110] = { "Вогняна стріла", "Завдає цілі від {1} до {2} шкоди.#Deals {1} to {2}" }, -- Firebolt (Rank 1)
[7799] = { ref=3110 }, -- Firebolt (Rank 2)
[7800] = { ref=3110 }, -- Firebolt (Rank 3)
[7801] = { ref=3110 }, -- Firebolt (Rank 4)
[7802] = { ref=3110 }, -- Firebolt (Rank 5)
[11762] = { ref=3110 }, -- Firebolt (Rank 6)
[11763] = { ref=3110 }, -- Firebolt (Rank 7)
-- Flamethrower
[25027] = { "Вогнемет", "{1} мани щосекунди.\nЗавдає від {2} до {3} шкоди щосекунди всім танкам перед вами в межах {4} м. Також уповільнює рух на {5}% і завдає {6} шкоди щосекунди протягом {7} с.#{1} mana#Deals {2} to {3}#within {4} y#movement to {5}% and deals {6}#for {7} sec" }, -- Flamethrower
[25029] = { "Вогнемет", nil, "Завдає {1} шкоди щосекунди. Рух сповільнено на {2}%.#Deals {1}#slowed by {2}" }, -- Flamethrower
-- Frost Resistance
[24446] = { "Супротив кризі", "Збільшує супротив кризі на {1}.#by {1}", "Збільшує супротив кризі на {1}.#by {1}" }, -- Frost Resistance (Rank 1)
[24447] = { ref=24446 }, -- Frost Resistance (Rank 2)
[24448] = { ref=24446 }, -- Frost Resistance (Rank 3)
[24449] = { ref=24446 }, -- Frost Resistance (Rank 4)
[24475] = { ref=24446 }, -- Frost Resistance (Rank 1)
[24476] = { ref=24446 }, -- Frost Resistance (Rank 2)
[24477] = { ref=24446 }, -- Frost Resistance (Rank 3)
[24478] = { ref=24446 }, -- Frost Resistance (Rank 4)
-- Furious Howl
[24597] = { ref=24604 }, -- Furious Howl (Rank 4)
[24603] = { ref=24604 }, -- Furious Howl (Rank 3)
[24604] = { "Скажене виття", "Учасники групи в межах {1} м отримують додатково від {2} до {3} шкоди до їхньої наступної фізичної атаки. Триває {4} с.#within {1}#{2} to {3} damage#Lasts {4} sec", "Додатково від {1} до {2} шкоди до вашої наступної фізичної атаки.#{1} to {2} damage" }, -- Furious Howl (Rank 1)
[24605] = { ref=24604 }, -- Furious Howl (Rank 2)
-- Great Stamina
[4187] = { "Міцна витривалість", "Витривалість збільшено на {1}.#by {1}" }, -- Great Stamina (Rank 1)
[4188] = { ref=4187 }, -- Great Stamina (Rank 2)
[4189] = { ref=4187 }, -- Great Stamina (Rank 3)
[4190] = { ref=4187 }, -- Great Stamina (Rank 4)
[4191] = { ref=4187 }, -- Great Stamina (Rank 5)
[4192] = { ref=4187 }, -- Great Stamina (Rank 6)
[4193] = { ref=4187 }, -- Great Stamina (Rank 7)
[4194] = { ref=4187 }, -- Great Stamina (Rank 8)
[4195] = { ref=4187 }, -- Great Stamina (Rank 1)
[4196] = { ref=4187 }, -- Great Stamina (Rank 2)
[4197] = { ref=4187 }, -- Great Stamina (Rank 3)
[4198] = { ref=4187 }, -- Great Stamina (Rank 4)
[4199] = { ref=4187 }, -- Great Stamina (Rank 5)
[4200] = { ref=4187 }, -- Great Stamina (Rank 6)
[4201] = { ref=4187 }, -- Great Stamina (Rank 7)
[4202] = { ref=4187 }, -- Great Stamina (Rank 8)
[5041] = { ref=4187 }, -- Great Stamina (Rank 9)
[5042] = { ref=4187 }, -- Great Stamina (Rank 10)
[5048] = { ref=4187 }, -- Great Stamina (Rank 9)
[5049] = { ref=4187 }, -- Great Stamina (Rank 10)
-- Growl
[1853] = { ref=2649 }, -- Growl (Rank 1)
[2649] = { "Рик", "Підбурює ціль, збільшуючи ймовірність того, що істота зосередить свої атаки на вас." }, -- Growl (Rank 1)
[14916] = { ref=2649 }, -- Growl (Rank 2)
[14917] = { ref=2649 }, -- Growl (Rank 3)
[14918] = { ref=2649 }, -- Growl (Rank 4)
[14919] = { ref=2649 }, -- Growl (Rank 5)
[14920] = { ref=2649 }, -- Growl (Rank 6)
[14921] = { ref=2649 }, -- Growl (Rank 7)
[14922] = { ref=2649 }, -- Growl (Rank 2)
[14923] = { ref=2649 }, -- Growl (Rank 3)
[14924] = { ref=2649 }, -- Growl (Rank 4)
[14925] = { ref=2649 }, -- Growl (Rank 5)
[14926] = { ref=2649 }, -- Growl (Rank 6)
[14927] = { ref=2649 }, -- Growl (Rank 7)
-- Lash of Pain
[7814] = { "Батіг болю", "Миттєва атака, що шмагає ціль, завдаючи {1} шкоди тінню.#causing {1}" }, -- Lash of Pain (Rank 1)
[7815] = { ref=7814 }, -- Lash of Pain (Rank 2)
[7816] = { ref=7814 }, -- Lash of Pain (Rank 3)
[11778] = { ref=7814 }, -- Lash of Pain (Rank 4)
[11779] = { ref=7814 }, -- Lash of Pain (Rank 5)
[11780] = { ref=7814 }, -- Lash of Pain (Rank 6)
-- Lesser Invisibility
[7870] = { "Мала невидимість", "Надає вашому викликаному демонові малу невидимість на {1} хв. Закляття можна застосувати лише поза боєм.#for up to {1} min", "Невидимий." }, -- Lesser Invisibility
-- Lightning Breath
[24844] = { "Подих блискавки", "Дихає блискавкою, миттєво завдаючи від {1} до {2} шкоди від природи одній цілі.#dealing {1} to {2}" }, -- Lightning Breath (Rank 1)
[25008] = { ref=24844 }, -- Lightning Breath (Rank 2)
[25009] = { ref=24844 }, -- Lightning Breath (Rank 3)
[25010] = { ref=24844 }, -- Lightning Breath (Rank 4)
[25011] = { ref=24844 }, -- Lightning Breath (Rank 5)
[25012] = { ref=24844 }, -- Lightning Breath (Rank 6)
-- Natural Armor
[24545] = { "Природна броня", "Броню збільшено на {1}.#by {1}" }, -- Natural Armor (Rank 1)
[24547] = { ref=24545 }, -- Natural Armor (Rank 1)
[24549] = { ref=24545 }, -- Natural Armor (Rank 2)
[24550] = { ref=24545 }, -- Natural Armor (Rank 3)
[24551] = { ref=24545 }, -- Natural Armor (Rank 4)
[24552] = { ref=24545 }, -- Natural Armor (Rank 5)
[24553] = { ref=24545 }, -- Natural Armor (Rank 6)
[24554] = { ref=24545 }, -- Natural Armor (Rank 7)
[24555] = { ref=24545 }, -- Natural Armor (Rank 8)
[24556] = { ref=24545 }, -- Natural Armor (Rank 2)
[24557] = { ref=24545 }, -- Natural Armor (Rank 3)
[24558] = { ref=24545 }, -- Natural Armor (Rank 4)
[24559] = { ref=24545 }, -- Natural Armor (Rank 5)
[24560] = { ref=24545 }, -- Natural Armor (Rank 6)
[24561] = { ref=24545 }, -- Natural Armor (Rank 7)
[24562] = { ref=24545 }, -- Natural Armor (Rank 8)
[24629] = { ref=24545 }, -- Natural Armor (Rank 9)
[24630] = { ref=24545 }, -- Natural Armor (Rank 10)
[24631] = { ref=24545 }, -- Natural Armor (Rank 9)
[24632] = { ref=24545 }, -- Natural Armor (Rank 10)
-- Nature Resistance
[24492] = { "Супротив природі", "Збільшує супротив природі на {1}.#by {1}", "Збільшує супротив природі на {1}.#by {1}" }, -- Nature Resistance (Rank 1)
[24494] = { ref=24492 }, -- Nature Resistance (Rank 1)
[24502] = { ref=24492 }, -- Nature Resistance (Rank 2)
[24503] = { ref=24492 }, -- Nature Resistance (Rank 3)
[24504] = { ref=24492 }, -- Nature Resistance (Rank 4)
[24511] = { ref=24492 }, -- Nature Resistance (Rank 2)
[24512] = { ref=24492 }, -- Nature Resistance (Rank 3)
[24513] = { ref=24492 }, -- Nature Resistance (Rank 4)
-- Paranoia
[19480] = { "Параноя", "Підсилює здатність виявлення непомітності всіх учасників групи в межах {1} м від скверногончої.#within {1} y", "Здатність виявлення непомітності підсилена." }, -- Paranoia
-- Phase Shift
[4511] = { "Фазування", "Переносить біса в інший вимір, що унеможливлює атаки проти нього, доки він не почне атакувати сам." }, -- Phase Shift
[8611] = { "Фазування", nil, "Невидимий, але не може атакувати. Невразливий до всіх атак і заклять." }, -- Phase Shift
-- Prowl
[24450] = { "Зачаїтися", "Ваш вихованець стає непомітним, але його рух уповільнюється на {1}%. Шкоду першої атаки після з непомітності буде збільшено на {2}%. Триває до скасування.#speed by {1}#{2}% bonus", "Непомітність. Рух сповільнено на {1}%.#slowed by {1}" }, -- Prowl (Rank 1)
[24452] = { ref=24450 }, -- Prowl (Rank 2)
[24453] = { ref=24450 }, -- Prowl (Rank 3)
-- Sacrifice
[7812] = { "Жертва", "Приносить в жертву пустотника, при цьому його володар отримує щит, який поглинає {1} шкоди протягом {2} с. Поки щит тримається, вимову заклять не буде перервано при отриманні шкоди.#absorb {1} damage for {2} sec", "Поглинає всю шкоду." }, -- Sacrifice (Rank 1)
[19438] = { ref=7812 }, -- Sacrifice (Rank 2)
[19440] = { ref=7812 }, -- Sacrifice (Rank 3)
[19441] = { ref=7812 }, -- Sacrifice (Rank 4)
[19442] = { ref=7812 }, -- Sacrifice (Rank 5)
[19443] = { ref=7812 }, -- Sacrifice (Rank 6)
-- Scorpid Poison
[24583] = { ref=24640 }, -- Scorpid Poison (Rank 2)
[24586] = { ref=24640 }, -- Scorpid Poison (Rank 3)
[24587] = { ref=24640 }, -- Scorpid Poison (Rank 4)
[24640] = { "Отрута скорпіда", "Завдає {1} шкоди від природи протягом {2} с. Ефект накопичується до {3} разів на одній цілі.#{1} Nature damage over {2} sec#{3} times", "{1} шкоди від природи кожні {2} с.#{1} Nature damage every {2} sec" }, -- Scorpid Poison (Rank 1)
-- Screech
[24423] = { "Вереск", "Нівечить одну ціль, завдаючи від {1} до {2} шкоди та зменшує силу атаки ближнього бою всіх ворогів у межах ближнього бою на {3}. Ефект триває {4} с.#for {1} to {2}#range by {3}#lasts {4} sec", "Силу атаки ближнього бою зменшено на {1}.#by {1}" }, -- Screech (Rank 1)
[24577] = { ref=24423 }, -- Screech (Rank 2)
[24578] = { ref=24423 }, -- Screech (Rank 3)
[24579] = { ref=24423 }, -- Screech (Rank 4)
-- Seduction
[6358] = { "Зваблення", "Зваблює ціль, перешкоджаючи всім її діям протягом {1} с. Будь-яка шкода скасує ефект. Діє лише на гуманоїдів.#for up to {1} sec", "Причарований." }, -- Seduction
-- Shadow Resistance
[24488] = { "Супротив тіні", "Збільшує супротив тіні на {1}.#by {1}", "Збільшує супротив тіні на {1}.#by {1}" }, -- Shadow Resistance (Rank 1)
[24490] = { ref=24488 }, -- Shadow Resistance (Rank 1)
[24505] = { ref=24488 }, -- Shadow Resistance (Rank 2)
[24506] = { ref=24488 }, -- Shadow Resistance (Rank 3)
[24507] = { ref=24488 }, -- Shadow Resistance (Rank 4)
[24514] = { ref=24488 }, -- Shadow Resistance (Rank 2)
[24515] = { ref=24488 }, -- Shadow Resistance (Rank 3)
[24516] = { ref=24488 }, -- Shadow Resistance (Rank 4)
-- Shell Shield
[26064] = { "Панцирний щит", "Зменшує шкоду отриману вашим вихованцем на {1}%, але збільшує час між його атаками на {2}%. Триває {3} с.#takes by {1}#attacks by {2}#Lasts {3} sec", "Отриману шкоду зменшено на {1}%, а час між атаками збільшено на {2}%.#reduced by {1}#increased by {2}" }, -- Shell Shield (Rank 1)
-- Soothing Kiss
[6360] = { "Заспокійливий поцілунок", "Заспокоює ціль, збільшуючи ймовірність, що вона атакуватиме когось іншого." }, -- Soothing Kiss (Rank 1)
[7813] = { "Заспокійливий поцілунок", "Заспокоює ціль, збільшуючи ймовірність, що вона атакуватиме когось іншого. Дієвіше за \"Заспокійливий поцілунок\" (Ранг {1}).#(Rank {1})" }, -- Soothing Kiss (Rank 2)
[11784] = { ref=7813 }, -- Soothing Kiss (Rank 3)
[11785] = { ref=7813 }, -- Soothing Kiss (Rank 4)
-- Spell Lock
[19244] = { "Заборона чар", "Знемовлює ціль на {1} с. Якщо ціль була в процесі вимови закляття, перериває та унеможливлює вимову заклять тієї ж школи протягом {2} с.#enemy for {1} sec#cast for {2} sec" }, -- Spell Lock (Rank 1)
[19647] = { ref=19244 }, -- Spell Lock (Rank 2)
[24259] = { "Заборона чар", nil, "Знемовлено." }, -- Spell Lock
-- Suffering
[17735] = { "Страждання", "Підбурює всіх ворогів у радіусі {1} м, збільшуючи ймовірність того, що вони атакуватимуть пустотника.#within {1} y" }, -- Suffering (Rank 1)
[17750] = { "Страждання", "Підбурює всіх ворогів у радіусі {1} м, збільшуючи ймовірність того, що вони атакуватимуть пустотника. Дієвіше за \"Страждання\" (Ранг {2}).#within {1} y#(Rank {2})" }, -- Suffering (Rank 2)
[17751] = { ref=17750 }, -- Suffering (Rank 3)
[17752] = { ref=17750 }, -- Suffering (Rank 4)
-- Tainted Blood
[19478] = { "Заражена кров", "Заражає кров скверногончої на {1} хв. Коли скверногончу вдаряють атакою ближнього бою, нападник втратить {2} сили атаки ближнього бою на {3} с. Накладається до {4} разів на одній цілі.#blood for {1} min#{2} melee attack power for {3} sec#{4} times", "Відбирає {1} сили атаки ближнього бою при ударі. Накладається до {2} разів.#Drains {1}#{2} times" }, -- Tainted Blood (Rank 1)
[19655] = { ref=19478 }, -- Tainted Blood (Rank 2)
[19656] = { ref=19478 }, -- Tainted Blood (Rank 3)
[19660] = { ref=19478 }, -- Tainted Blood (Rank 4)
-- Tainted Blood Effect
[19479] = { "Ефект зараженої крові", nil, "Силу атаки ближнього бою зменшено на {1}.#by {1}" }, -- Tainted Blood Effect (Rank 1)
[19652] = { ref=19479 }, -- Tainted Blood Effect (Rank 2)
[19653] = { ref=19479 }, -- Tainted Blood Effect (Rank 3)
[19654] = { ref=19479 }, -- Tainted Blood Effect (Rank 4)
-- Thunderstomp
[26090] = { "Громовий тупіт", "Здригає землю громовою силою, завдаючи від {1} до {2} шкоди від природи всім ворогам у межах {3} м.#doing {1} to {2}#within {3} y" }, -- Thunderstomp (Rank 1)
[26187] = { ref=26090 }, -- Thunderstomp (Rank 2)
[26188] = { ref=26090 }, -- Thunderstomp (Rank 3)
-- Torment
[3716] = { "Муки", "Підбурює істоту, збільшуючи ймовірність того, що вона зосередить свої атаки на пустотнику." }, -- Torment (Rank 1)
[7809] = { "Муки", "Підбурює істоту, збільшуючи ймовірність того, що вона зосередить свої атаки на пустотнику. Дієвіше за \"Муку\" (Ранг {1}).#(Rank {1})" }, -- Torment (Rank 2)
[7810] = { ref=7809 }, -- Torment (Rank 3)
[7811] = { ref=7809 }, -- Torment (Rank 4)
[11774] = { ref=7809 }, -- Torment (Rank 5)
[11775] = { ref=7809 }, -- Torment (Rank 6)

}

for k, v in pairs(pet_spells) do addonTable.spell[k] = v end
