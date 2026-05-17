local _, addonTable = ...

local pet_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Arcane Resistance
[24508] = { "Опір аркані", "Збільшує опір аркані на {1}.#by {1}", "Збільшує опір аркані на {1}.#by {1}", en="Arcane Resistance" },
[24509] = { ref=24508 }, -- Arcane Resistance
[24510] = { ref=24508 }, -- Arcane Resistance
-- Avoidance
[32233] = { "Уникнення", "Збільшує шкоду, що отримує ваш демон від атак, що діють по області, на {1}%.#additional {1}%", en="Avoidance" },
-- Blood Pact
[6307] = { "Кривава угода", "Збільшує здоров'я учасників групи та рейду на {1}.#health by {1}", "Збільшує здоров'я на {1}.#by {1}", en="Blood Pact" },
[7804] = { ref=6307 }, -- Blood Pact
[7805] = { ref=6307 }, -- Blood Pact
[11766] = { ref=6307 }, -- Blood Pact
[11767] = { ref=6307 }, -- Blood Pact
[27268] = { ref=6307 }, -- Blood Pact
-- Charge
[25999] = { "Ривок", "Ваш вихованець робить ривок, що знерухомлює ціль та збільшує силу наступної атаки.", "Знерухомлено.", en="Charge" },
-- Cleave
[30213] = { "Розсічення", "Розмашиста атака, що завдає шкоди зброї вартового скверни плюс {1} по цілі та по найближчому до неї ворогу.#damage plus {1} to", en="Cleave" },
[30219] = { ref=30213 }, -- Cleave
[30223] = { ref=30213 }, -- Cleave
-- Consume Shadows
[17767] = { "Поглинання тіней", "Пустотник поглинає тіні поблизу, щоб укріпити своє втілення, відновлюючи {1} здоров'я протягом {2} с та значно посилюючи здатність виявлення непомітності у всіх союзників в межах {3} м. Не можна використовувати в бою.#{1} health over {2} sec#within {3} y", "Зцілює {1} здоров'я кожні {2} с, а також значно посилює здатність виявлення непомітності у всіх союзників в межах {3} м.#{1} damage every {2} sec#within {3} y", en="Consume Shadows" },
[17850] = { ref=17767 }, -- Consume Shadows
[17851] = { ref=17767 }, -- Consume Shadows
[17852] = { ref=17767 }, -- Consume Shadows
[17853] = { ref=17767 }, -- Consume Shadows
[17854] = { ref=17767 }, -- Consume Shadows
[27272] = { ref=17767 }, -- Consume Shadows
-- Devour Magic Effect
[19658] = { "Ефект пожирання магії", "Зцілення при розвіюванні ефекту.", en="Devour Magic Effect" },
-- Dive
[23145] = { "Пікірування", "Збільшує швидкість руху вашого вихованця на {1}% протягом {2} с.#by {1}% for {2} sec", "Збільшує швидкість руху на {1}%.#by {1}", en="Dive" },
-- Fire Breath
[34889] = { "Вогняне дихання", "Дихає вогнем в ціль, завдаючи [{1}#for {1} damage][від {1} до {2}#for {1} to {2} damage] шкоди і додатково [{1}#plus {1} damage][від {1} до {2}#plus {1} to {2} damage] шкоди протягом {1} с.#over {1} sec", "Отримання шкоди від вогню кожні {1} с.#every {1} sec", en="Fire Breath" },
[35323] = { ref=34889 }, -- Fire Breath
-- Fire Shield
[27269] = { "Вогняний щит", "Оточує учасника групи чи рейду щитом з вогню, внаслідок чого його опір вогню збільшується на {1}, а кожен удар по ньому завдає {2} шкоди вогнем нападнику. Триває {3} хв. Заклинач не може накласти \"Вогняний щит\" на себе.#resistance by {1} and#cause {2} Fire#Lasts {3} min", "Збільшує опір вогню на {1} та завдає {2} шкоди вогнем нападнику при отриманні удару.#resistance by {1}#causes {2} Fire", en="Fire Shield" },
-- Frost Resistance
[24447] = { "Опір кризі", "Збільшує опір кризі на {1}.#by {1}", "Збільшує опір кризі на {1}.#by {1}", en="Frost Resistance" },
[24448] = { ref=24447 }, -- Frost Resistance
[24449] = { ref=24447 }, -- Frost Resistance
[24475] = { ref=24447 }, -- Frost Resistance
[24476] = { ref=24447 }, -- Frost Resistance
[24477] = { ref=24447 }, -- Frost Resistance
[24478] = { ref=24447 }, -- Frost Resistance
-- Furious Howl
[24604] = { "Скажене виття", "Збільшує силу ближнього та дальнього бою вовка та його господаря на {1} протягом {2} с.#by {1} for#for {2} sec", "Збільшує силу ближнього та дальнього бою.", en="Furious Howl" },
-- Gore
[35290] = { "Удар іклами", "Ваш кнур проштрикує ворога іклами. завдаючи від {1} до {2} шкоди. Завдає подвійної шкоди при застосуванні протягом {3} с після \"Ривка\".#for {1} to {2}.#within {3} sec", en="Gore" },
[35291] = { ref=35290 }, -- Gore
[35292] = { ref=35290 }, -- Gore
[35293] = { ref=35290 }, -- Gore
[35294] = { ref=35290 }, -- Gore
[35295] = { ref=35290 }, -- Gore
-- Great Stamina
[4196] = { ref=4195 }, -- Great Stamina
[4197] = { ref=4195 }, -- Great Stamina
[4198] = { ref=4195 }, -- Great Stamina
[4199] = { ref=4195 }, -- Great Stamina
[4200] = { ref=4195 }, -- Great Stamina
[4201] = { ref=4195 }, -- Great Stamina
[4202] = { ref=4195 }, -- Great Stamina
[5048] = { ref=4195 }, -- Great Stamina
[5049] = { ref=4195 }, -- Great Stamina
-- Growl
[2649] = { "Рик", "Ваш вихованець гарчить на ціль, створюючи загрозу і збільшуючи ймовірність того, що ціль нападе на нього.", en="Growl" },
[14916] = { ref=2649 }, -- Growl
[14917] = { ref=2649 }, -- Growl
[14918] = { ref=2649 }, -- Growl
[14919] = { ref=2649 }, -- Growl
[14920] = { ref=2649 }, -- Growl
[14921] = { ref=2649 }, -- Growl
-- Intercept
[30151] = { ref=20616 }, -- Intercept
[30153] = { ref=20614 }, -- Intercept
[30194] = { ref=20616 }, -- Intercept
[30198] = { ref=20616 }, -- Intercept
-- Natural Armor
[24547] = { "Природна броня", "Броню збільшено на {1}.#by {1}", en="Natural Armor" },
[24556] = { ref=24547 }, -- Natural Armor
[24557] = { ref=24547 }, -- Natural Armor
[24558] = { ref=24547 }, -- Natural Armor
[24559] = { ref=24547 }, -- Natural Armor
[24560] = { ref=24547 }, -- Natural Armor
[24561] = { ref=24547 }, -- Natural Armor
[24562] = { ref=24547 }, -- Natural Armor
[24631] = { ref=24547 }, -- Natural Armor
[24632] = { ref=24547 }, -- Natural Armor
-- Nature Resistance
[24494] = { "Опір природі", "Збільшує опір природі на {1}.#by {1}", "Збільшує опір природі на {1}.#by {1}", en="Nature Resistance" },
[24502] = { ref=24494 }, -- Nature Resistance
[24503] = { ref=24494 }, -- Nature Resistance
[24504] = { ref=24494 }, -- Nature Resistance
[24511] = { ref=24494 }, -- Nature Resistance
[24512] = { ref=24494 }, -- Nature Resistance
[24513] = { ref=24494 }, -- Nature Resistance
-- Poison Spit
[35387] = { "Отруйний плювок", "Плює у ворога отрутою, завдаючи від {1} до {2} шкоди від природи протягом {3} с та зменшуючи швидкість вимови заклять на {4}% протягом {5} с.#dealing {1} to {2} Nature#over {3} sec#by {4}% for {5} sec", "Завдає шкоди від природи кожні {1} с.\nШвидкість вимови заклять зменшено на {2}%.#every {1} sec#by {2}%", en="Poison Spit" },
[35389] = { ref=35387 }, -- Poison Spit
[35392] = { ref=35387 }, -- Poison Spit
-- Sacrifice
[7812] = { "Жертва", "Приносить в жертву частину здоров'я пустотника, при цьому захищаючи його володаря щитом, який поглинає {1} шкоди протягом {2} с. Поки щит тримається, отримання шкоди не спричиняє затримки вимови заклять.#absorb {1} damage for {2} sec", "Поглинає всю шкоду.", en="Sacrifice" },
[19438] = { ref=7812 }, -- Sacrifice
[19440] = { ref=7812 }, -- Sacrifice
[19441] = { ref=7812 }, -- Sacrifice
[19442] = { ref=7812 }, -- Sacrifice
[19443] = { ref=7812 }, -- Sacrifice
[27273] = { ref=7812 }, -- Sacrifice
-- Scorpid Poison
[24583] = { "Отрута скорпіда", "Жалить ворога, завдаючи {1} шкоди від природи протягом {2} с.#{1} Nature damage over {2} sec", "{1} шкоди від природи кожні {2} с.#{1} Nature damage every {2} sec", en="Scorpid Poison" },
[24586] = { "Отрута скорпіда", "Жалить ворога, завдаючи від {1} до {2} шкоди від природи протягом {3} с.#for {1} to {2} Nature damage over {3} sec", "Від {1} до {2} шкоди від природи кожні {3} с.#{1} to {2} Nature damage every {3} sec", en="Scorpid Poison" },
[24587] = { ref=24586 }, -- Scorpid Poison
[24640] = { ref=24583 }, -- Scorpid Poison
-- Shadow Resistance
[24490] = { "Опір тіні", "Збільшує опір тіні на {1}.#by {1}", "Збільшує опір тіні на {1}.#by {1}", en="Shadow Resistance" },
[24505] = { ref=24490 }, -- Shadow Resistance
[24506] = { ref=24490 }, -- Shadow Resistance
[24507] = { ref=24490 }, -- Shadow Resistance
[24514] = { ref=24490 }, -- Shadow Resistance
[24515] = { ref=24490 }, -- Shadow Resistance
[24516] = { ref=24490 }, -- Shadow Resistance
-- Shell Shield
[26064] = { "Панцирний щит", "Черепаха частково ховається в панцир, зменшуючи отриману шкоду на {1}% протягом {2} с.#by {1}% for {2} sec", "Отриману шкоду зменшено на {1}%.#reduced by {1}%", en="Shell Shield" },
-- Smack
[49966] = { "Удар", "Вдарити ворога, завдаючи йому від {1} до {2} шкоди.#causing {1} to {2} damage", en="Smack" },
[49967] = { ref=49966 }, -- Smack
[49968] = { ref=49966 }, -- Smack
[49969] = { ref=49966 }, -- Smack
[49970] = { ref=49966 }, -- Smack
[49971] = { ref=49966 }, -- Smack
[49972] = { ref=49966 }, -- Smack
[49973] = { ref=49966 }, -- Smack
[49974] = { ref=49966 }, -- Smack
[52475] = { ref=49966 }, -- Smack
[52476] = { ref=49966 }, -- Smack
-- Spell Lock
[24259] = { "Заборона чар", "Знемовлює ціль на {1} с. Якщо ціль була в процесі вимови закляття, перериває та унеможливлює вимову заклять тієї ж школи на деякий час.#enemy for {1} sec", "Знемовлено.", en="Spell Lock" },
-- Warp
[35346] = { "Стрибок", "Телепортується до ворога в межах {1} м та з ймовірністю {2}% уникає {3} наступних атак ближнього бою. Ефект триває {4} с.#up to {1} y#a {2}% chance#next {3} melee#Lasts {4} sec", "З ймовірністю {1}% уникає атак ближнього бою.#a {1}% chance", en="Warp" },

}

for k, v in pairs(pet_spells) do addonTable.spell[k] = v end
