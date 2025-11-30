local _, addonTable = ...

local pet_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Arcane Resistance
[24493] = { "Опір аркані", "Збільшує опір аркані на {1}.#by {1}", "Збільшує опір аркані на {1}.#by {1}", en="Arcane Resistance" },
[24495] = { ref=24493 }, -- Arcane Resistance
[24497] = { ref=24493 }, -- Arcane Resistance
[24500] = { ref=24493 }, -- Arcane Resistance
[24501] = { ref=24493 }, -- Arcane Resistance
[24508] = { ref=24493 }, -- Arcane Resistance
[24509] = { ref=24493 }, -- Arcane Resistance
[24510] = { ref=24493 }, -- Arcane Resistance
-- Bite
[17253] = { "Укус", "Кусає ворога, завдаючи від {1} до {2} шкоди.#causing {1} to {2}", en="Bite" },
[17255] = { ref=17253 }, -- Bite
[17256] = { ref=17253 }, -- Bite
[17257] = { ref=17253 }, -- Bite
[17258] = { ref=17253 }, -- Bite
[17259] = { ref=17253 }, -- Bite
[17260] = { ref=17253 }, -- Bite
[17261] = { ref=17253 }, -- Bite
-- Blood Pact
[6307] = { "Кривава угода", "Збільшує витривалість учасників групи на {1}.#Stamina by {1}", "Збільшує витривалість на {1}.#by {1}", en="Blood Pact" },
[7804] = { ref=6307 }, -- Blood Pact
[7805] = { ref=6307 }, -- Blood Pact
[11766] = { ref=6307 }, -- Blood Pact
[11767] = { ref=6307 }, -- Blood Pact
-- Boar Charge
[25999] = { "Ривок кнура", nil, "Знерухомлено.", en="Boar Charge" },
-- Charge
[7371] = { "Ривок", "Ривок у ворога, що знерухомлює його на {1} с і додає {2} сили атаки ближнього бою до наступної атаки кнура.#for {1} sec#adds {2} melee", en="Charge" },
[26177] = { ref=7371 }, -- Charge
[26178] = { ref=7371 }, -- Charge
[26179] = { ref=7371 }, -- Charge
[26201] = { ref=7371 }, -- Charge
[27685] = { ref=7371 }, -- Charge
-- Claw
[3009] = { ref=16827 }, -- Claw
[3010] = { ref=16827 }, -- Claw
[16827] = { "Дряпання", "Дряпає ворога, завдаючи від {1} до {2} шкоди.#causing {1} to {2}", en="Claw" },
[16828] = { ref=16827 }, -- Claw
[16829] = { ref=16827 }, -- Claw
[16830] = { ref=16827 }, -- Claw
[16831] = { ref=16827 }, -- Claw
[16832] = { ref=16827 }, -- Claw
-- Cobra Reflexes
[25076] = { "Рефлекси кобри", "Швидкість атаки збільшено на {1}%, але зменшено шкоду.#by {1}", en="Cobra Reflexes" },
-- Consume Shadows
[17767] = { "Поглинання тіней", "Пустотник поглинає тіні поблизу, щоб укріпити своє втілення, відновлюючи {1} здоров'я протягом {2} с. Не можна використовувати в бою.#{1} health over {2} sec", "Зцілює {1} здоров'я кожні {2} с.#{1} damage every {2} sec", en="Consume Shadows" },
[17850] = { ref=17767 }, -- Consume Shadows
[17851] = { ref=17767 }, -- Consume Shadows
[17852] = { ref=17767 }, -- Consume Shadows
[17853] = { ref=17767 }, -- Consume Shadows
[17854] = { ref=17767 }, -- Consume Shadows
-- Cower
[1742] = { "Зіщулювання", "Зіщулитися, не завдаючи шкоди, але зменшуючи вашу загрозу та знижуючи ймовірність того, що ворог атакуватиме саме вас.", en="Cower" },
[1753] = { ref=1742 }, -- Cower
[1754] = { ref=1742 }, -- Cower
[1755] = { ref=1742 }, -- Cower
[1756] = { ref=1742 }, -- Cower
[16697] = { ref=1742 }, -- Cower
-- Dash
[23099] = { "Порив", "Збільшує швидкість руху на {1}% протягом {2} с.#by {1}% for {2} sec", "Збільшує швидкість руху на {1}%.#by {1}", en="Dash" },
[23109] = { ref=23099 }, -- Dash
[23110] = { ref=23099 }, -- Dash
-- Devour Magic
[19505] = { "Пожирання магії", "Розвіює {1} негативний магічний ефект з дружньої цілі або {2} сприятливий магічний ефект з ворожої цілі. Пожирання ефекту зцілює скверногончій {3} здоров'я.#{1} harmful#{2} beneficial#healed for {3}", en="Devour Magic" },
[19731] = { ref=19505 }, -- Devour Magic
[19734] = { ref=19505 }, -- Devour Magic
[19736] = { ref=19505 }, -- Devour Magic
-- Dive
[23145] = { "Пікірування", "Збільшує швидкість руху на {1}% протягом {2} с.#by {1}% for {2} sec", "Збільшує швидкість руху на {1}%.#by {1}", en="Dive" },
[23147] = { ref=23145 }, -- Dive
[23148] = { ref=23145 }, -- Dive
-- Fire Resistance
[23992] = { "Опір вогню", "Збільшує опір вогню на {1}.#by {1}", "Збільшує опір вогню на {1}.#by {1}", en="Fire Resistance" },
[24439] = { ref=23992 }, -- Fire Resistance
[24440] = { ref=23992 }, -- Fire Resistance
[24441] = { "Опір вогню", "Збільшує опір вогню на {1}.#by {1}", en="Fire Resistance" },
[24444] = { ref=23992 }, -- Fire Resistance
[24445] = { ref=23992 }, -- Fire Resistance
[24463] = { ref=24441 }, -- Fire Resistance
[24464] = { ref=24441 }, -- Fire Resistance
-- Fire Shield
[2947] = { "Вогняний щит", "Оточує ціль щитом з вогню. Кожен удар по цілі завдає {1} шкоди вогнем нападнику. Триває {2} хв. Заклинач не може накласти \"Вогняний щит\" на себе.#causes {1} Fire#Lasts {2} min", "Завдає {1} шкоди вогнем нападникові при отриманні удару.#Does {1}", en="Fire Shield" },
[8316] = { ref=2947 }, -- Fire Shield
[8317] = { ref=2947 }, -- Fire Shield
[11770] = { ref=2947 }, -- Fire Shield
[11771] = { ref=2947 }, -- Fire Shield
-- Firebolt
[3110] = { "Вогняна стріла", "Завдає цілі від {1} до {2} шкоди.#Deals {1} to {2} damage", en="Firebolt" },
[7799] = { ref=3110 }, -- Firebolt
[7800] = { ref=3110 }, -- Firebolt
[7801] = { ref=3110 }, -- Firebolt
[7802] = { ref=3110 }, -- Firebolt
[11762] = { ref=3110 }, -- Firebolt
[11763] = { ref=3110 }, -- Firebolt
-- Flamethrower
[25027] = { "Вогнемет", "{1} мани щосекунди.\nЗавдає від {2} до {3} шкоди щосекунди всім танкам перед вами в межах {4} м. Також уповільнює рух на {5}% і завдає {6} шкоди щосекунди протягом {7} с.#{1} mana#Deals {2} to {3}#within {4} y#movement to {5}% and deals {6}#for {7} sec", en="Flamethrower" },
[25029] = { "Вогнемет", nil, "Завдає {1} шкоди щосекунди. Швидкість руху зменшено на {2}%.#Deals {1}#slowed by {2}", en="Flamethrower" },
-- Frost Resistance
[24446] = { "Опір кризі", "Збільшує опір кризі на {1}.#by {1}", "Збільшує опір кризі на {1}.#by {1}", en="Frost Resistance" },
[24447] = { ref=24446 }, -- Frost Resistance
[24448] = { ref=24446 }, -- Frost Resistance
[24449] = { ref=24446 }, -- Frost Resistance
[24475] = { ref=24446 }, -- Frost Resistance
[24476] = { ref=24446 }, -- Frost Resistance
[24477] = { ref=24446 }, -- Frost Resistance
[24478] = { ref=24446 }, -- Frost Resistance
-- Furious Howl
[24597] = { "Скажене виття", "Учасники групи в межах {1} м отримують додатково від {2} до {3} шкоди до їхньої наступної фізичної атаки. Триває {4} с.#within {1} y#{2} to {3} damage#Lasts {4} sec", "Ваша наступна фізична атака завдасть додатково від {1} до {2} шкоди.#{1} to {2} damage", en="Furious Howl" },
[24603] = { ref=24597 }, -- Furious Howl
[24604] = { ref=24597 }, -- Furious Howl
[24605] = { ref=24597 }, -- Furious Howl
-- Great Stamina
[4187] = { "Велика витривалість", "Витривалість збільшено на {1}.#by {1}", en="Great Stamina" },
[4188] = { ref=4187 }, -- Great Stamina
[4189] = { ref=4187 }, -- Great Stamina
[4190] = { ref=4187 }, -- Great Stamina
[4191] = { ref=4187 }, -- Great Stamina
[4192] = { ref=4187 }, -- Great Stamina
[4193] = { ref=4187 }, -- Great Stamina
[4194] = { ref=4187 }, -- Great Stamina
[4195] = { ref=4187 }, -- Great Stamina
[4196] = { ref=4187 }, -- Great Stamina
[4197] = { ref=4187 }, -- Great Stamina
[4198] = { ref=4187 }, -- Great Stamina
[4199] = { ref=4187 }, -- Great Stamina
[4200] = { ref=4187 }, -- Great Stamina
[4201] = { ref=4187 }, -- Great Stamina
[4202] = { ref=4187 }, -- Great Stamina
[5041] = { ref=4187 }, -- Great Stamina
[5042] = { ref=4187 }, -- Great Stamina
[5048] = { ref=4187 }, -- Great Stamina
[5049] = { ref=4187 }, -- Great Stamina
-- Growl
[1853] = { ref=2649 }, -- Growl
[2649] = { "Рик", "Провокує ціль, збільшуючи ймовірність того, що вона зосередить свої атаки на вас.", en="Growl" },
[14916] = { ref=2649 }, -- Growl
[14917] = { ref=2649 }, -- Growl
[14918] = { ref=2649 }, -- Growl
[14919] = { ref=2649 }, -- Growl
[14920] = { ref=2649 }, -- Growl
[14921] = { ref=2649 }, -- Growl
[14922] = { ref=2649 }, -- Growl
[14923] = { ref=2649 }, -- Growl
[14924] = { ref=2649 }, -- Growl
[14925] = { ref=2649 }, -- Growl
[14926] = { ref=2649 }, -- Growl
[14927] = { ref=2649 }, -- Growl
-- Lash of Pain
[7814] = { "Батіг болю", "Миттєва атака, що шмагає ціль, завдаючи {1} шкоди тінню.#causing {1}", en="Lash of Pain" },
[7815] = { ref=7814 }, -- Lash of Pain
[7816] = { ref=7814 }, -- Lash of Pain
[11778] = { ref=7814 }, -- Lash of Pain
[11779] = { ref=7814 }, -- Lash of Pain
[11780] = { ref=7814 }, -- Lash of Pain
-- Lesser Invisibility
[7870] = { "Мала невидимість", "Надає вашому викликаному демонові малу невидимість на {1} хв. Закляття можна застосувати лише поза боєм.#for up to {1} min", "Невидимість.", en="Lesser Invisibility" },
-- Lightning Breath
[24844] = { "Подих блискавки", "Дихає блискавкою, миттєво завдаючи від {1} до {2} шкоди від природи одній цілі.#dealing {1} to {2}", en="Lightning Breath" },
[25008] = { ref=24844 }, -- Lightning Breath
[25009] = { ref=24844 }, -- Lightning Breath
[25010] = { ref=24844 }, -- Lightning Breath
[25011] = { ref=24844 }, -- Lightning Breath
[25012] = { ref=24844 }, -- Lightning Breath
-- Natural Armor
[24545] = { "Природна броня", "Броню збільшено на {1}.#by {1}", en="Natural Armor" },
[24547] = { ref=24545 }, -- Natural Armor
[24549] = { ref=24545 }, -- Natural Armor
[24550] = { ref=24545 }, -- Natural Armor
[24551] = { ref=24545 }, -- Natural Armor
[24552] = { ref=24545 }, -- Natural Armor
[24553] = { ref=24545 }, -- Natural Armor
[24554] = { ref=24545 }, -- Natural Armor
[24555] = { ref=24545 }, -- Natural Armor
[24556] = { ref=24545 }, -- Natural Armor
[24557] = { ref=24545 }, -- Natural Armor
[24558] = { ref=24545 }, -- Natural Armor
[24559] = { ref=24545 }, -- Natural Armor
[24560] = { ref=24545 }, -- Natural Armor
[24561] = { ref=24545 }, -- Natural Armor
[24562] = { ref=24545 }, -- Natural Armor
[24629] = { ref=24545 }, -- Natural Armor
[24630] = { ref=24545 }, -- Natural Armor
[24631] = { ref=24545 }, -- Natural Armor
[24632] = { ref=24545 }, -- Natural Armor
-- Nature Resistance
[24492] = { "Опір природі", "Збільшує опір природі на {1}.#by {1}", "Збільшує опір природі на {1}.#by {1}", en="Nature Resistance" },
[24494] = { ref=24492 }, -- Nature Resistance
[24502] = { ref=24492 }, -- Nature Resistance
[24503] = { ref=24492 }, -- Nature Resistance
[24504] = { ref=24492 }, -- Nature Resistance
[24511] = { ref=24492 }, -- Nature Resistance
[24512] = { ref=24492 }, -- Nature Resistance
[24513] = { ref=24492 }, -- Nature Resistance
-- Paranoia
[19480] = { "Параноя", "Підсилює здатність виявлення непомітності всіх учасників групи в межах {1} м від скверногончої.#within {1} y", "Здатність виявлення непомітності підсилено.", en="Paranoia" },
-- Phase Shift
[4511] = { "Фазування", "Переносить біса в інший вимір, що унеможливлює атаки проти нього, доки він не почне атакувати сам.", en="Phase Shift" },
[8611] = { "Фазування", nil, "Невидимість, але не може атакувати. Невразливість до всіх атак і заклять.", en="Phase Shift" },
-- Prowl
[24450] = { "Зачаїтися", "Ваш вихованець стає непомітним, але його рух уповільнюється на {1}%. Шкоду першої атаки з непомітності буде збільшено на {2}%. Триває до скасування.#speed by {1}#{2}% bonus", "Непомітність. Швидкість руху зменшено на {1}%.#slowed by {1}%", en="Prowl" },
[24452] = { ref=24450 }, -- Prowl
[24453] = { ref=24450 }, -- Prowl
-- Sacrifice
[7812] = { "Жертва", "Приносить в жертву пустотника, при цьому захищаючи його володаря щитом, який поглинає {1} шкоди протягом {2} с. Поки щит тримається, отримання шкоди не спричиняє затримки вимови заклять.#absorb {1} damage for {2} sec", "Поглинає всю шкоду.", en="Sacrifice" },
[19438] = { ref=7812 }, -- Sacrifice
[19440] = { ref=7812 }, -- Sacrifice
[19441] = { ref=7812 }, -- Sacrifice
[19442] = { ref=7812 }, -- Sacrifice
[19443] = { ref=7812 }, -- Sacrifice
-- Scorpid Poison
[24583] = { "Отрута скорпіда", "Завдає {1} шкоди від природи протягом {2} с. Ефект накопичується до {3} разів на одній цілі.#{1} Nature damage over {2} sec#{3} times", "{1} шкоди від природи кожні {2} с.#{1} Nature damage every {2} sec", en="Scorpid Poison" },
[24586] = { ref=24583 }, -- Scorpid Poison
[24587] = { ref=24583 }, -- Scorpid Poison
[24640] = { ref=24583 }, -- Scorpid Poison
-- Screech
[24423] = { "Вереск", "Вражає одну ціль, завдаючи від {1} до {2} шкоди та зменшує силу атаки ближнього бою всіх ворогів у межах ближнього бою на {3}. Ефект триває {4} с.#for {1} to {2}#range by {3}#lasts {4} sec", "Силу атаки ближнього бою зменшено на {1}.#by {1}", en="Screech" },
[24577] = { ref=24423 }, -- Screech
[24578] = { ref=24423 }, -- Screech
[24579] = { ref=24423 }, -- Screech
-- Seduction
[6358] = { "Зваблення", "Зваблює ціль, перешкоджаючи всім її діям протягом {1} с. Будь-яка шкода скасує ефект. Діє лише на гуманоїдів.#for up to {1} sec", "Причаровано.", en="Seduction" },
-- Shadow Resistance
[24488] = { "Опір тіні", "Збільшує опір тіні на {1}.#by {1}", "Збільшує опір тіні на {1}.#by {1}", en="Shadow Resistance" },
[24490] = { ref=24488 }, -- Shadow Resistance
[24505] = { ref=24488 }, -- Shadow Resistance
[24506] = { ref=24488 }, -- Shadow Resistance
[24507] = { ref=24488 }, -- Shadow Resistance
[24514] = { ref=24488 }, -- Shadow Resistance
[24515] = { ref=24488 }, -- Shadow Resistance
[24516] = { ref=24488 }, -- Shadow Resistance
-- Shell Shield
[26064] = { "Панцирний щит", "Зменшує шкоду отриману вашим вихованцем на {1}%, але збільшує інтервал між його атаками на {2}%. Триває {3} с.#takes by {1}#attacks by {2}#Lasts {3} sec", "Отриману шкоду зменшено на {1}%, а інтервал між атаками збільшено на {2}%.#reduced by {1}#increased by {2}", en="Shell Shield" },
-- Soothing Kiss
[6360] = { "Заспокійливий поцілунок", "Заспокоює ціль, збільшуючи ймовірність, що вона атакуватиме когось іншого.", en="Soothing Kiss" },
[7813] = { "Заспокійливий поцілунок", "Заспокоює ціль, збільшуючи ймовірність, що вона атакуватиме когось іншого. Дієвіше за \"Заспокійливий поцілунок\" (Ранг {1}).#(Rank {1})", en="Soothing Kiss" },
[11784] = { ref=7813 }, -- Soothing Kiss
[11785] = { ref=7813 }, -- Soothing Kiss
-- Spell Lock
[19244] = { "Заборона чар", "Знемовлює ціль на {1} с. Якщо ціль була в процесі вимови закляття, перериває та унеможливлює вимову заклять тієї ж школи протягом {2} с.#enemy for {1} sec#cast for {2} sec", en="Spell Lock" },
[19647] = { ref=19244 }, -- Spell Lock
[24259] = { "Заборона чар", nil, "Знемовлено.", en="Spell Lock" },
-- Suffering
[17735] = { "Страждання", "Провокує всіх ворогів у межах {1} м, збільшуючи ймовірність того, що вони атакуватимуть пустотника.#within {1} y", en="Suffering" },
[17750] = { "Страждання", "Провокує всіх ворогів у межах {1} м, збільшуючи ймовірність того, що вони атакуватимуть пустотника. Дієвіше за \"Страждання\" (Ранг {2}).#within {1} y#(Rank {2})", en="Suffering" },
[17751] = { ref=17750 }, -- Suffering
[17752] = { ref=17750 }, -- Suffering
-- Tainted Blood
[19478] = { "Заражена кров", "Заражає кров скверногончої на {1} хв. Коли скверногончу вдаряють атакою ближнього бою, нападник втратить {2} сили атаки ближнього бою на {3} с. Накопичується до {4} разів на одній цілі.#blood for {1} min#{2} melee attack power for {3} sec#{4} times", "Відбирає {1} сили атаки ближнього бою при отриманні удару. Накопичується до {2} разів.#Drains {1}#{2} times", en="Tainted Blood" },
[19655] = { ref=19478 }, -- Tainted Blood
[19656] = { ref=19478 }, -- Tainted Blood
[19660] = { ref=19478 }, -- Tainted Blood
-- Tainted Blood Effect
[19479] = { "Ефект зараженої крові", nil, "Силу атаки ближнього бою зменшено на {1}.#by {1}", en="Tainted Blood Effect" },
[19652] = { ref=19479 }, -- Tainted Blood Effect
[19653] = { ref=19479 }, -- Tainted Blood Effect
[19654] = { ref=19479 }, -- Tainted Blood Effect
-- Thunderstomp
[26090] = { "Громовий тупіт", "Здригає землю громовою силою, завдаючи від {1} до {2} шкоди від природи всім ворогам у межах {3} м.#doing {1} to {2}#within {3} y", en="Thunderstomp" },
[26187] = { ref=26090 }, -- Thunderstomp
[26188] = { ref=26090 }, -- Thunderstomp
-- Torment
[3716] = { "Муки", "Провокує істоту, збільшуючи ймовірність того, що вона зосередить свої атаки на пустотнику.", en="Torment" },
[7809] = { "Муки", "Провокує істоту, збільшуючи ймовірність того, що вона зосередить свої атаки на пустотнику. Дієвіше за \"Муки\" (Ранг {1}).#(Rank {1})", en="Torment" },
[7810] = { ref=7809 }, -- Torment
[7811] = { ref=7809 }, -- Torment
[11774] = { ref=7809 }, -- Torment
[11775] = { ref=7809 }, -- Torment

}

for k, v in pairs(pet_spells) do addonTable.spell[k] = v end
