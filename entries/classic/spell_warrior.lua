local _, addonTable = ...

local warrior_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Anger Management
[12296] = { "Контроль гніву", "Збільшує час, необхідний для згасання люті поза боєм, на {1}%.#combat by {1}%", en="Anger Management" },
-- Anticipation
[12297] = { "Передчуття", "Збільшує вашу навичку захисту на {1}.#by {1}", en="Anticipation" },
[12750] = { ref=12297 }, -- Anticipation
[12751] = { ref=12297 }, -- Anticipation
[12752] = { ref=12297 }, -- Anticipation
[12753] = { ref=12297 }, -- Anticipation
-- Axe Specialization
[12700] = { "Спеціалізація на сокирах", "Збільшує ймовірність завдання критичного удару сокирами на {1}%.#Axes by {1}%", en="Axe Specialization" },
[12781] = { ref=12700 }, -- Axe Specialization
[12783] = { ref=12700 }, -- Axe Specialization
[12784] = { ref=12700 }, -- Axe Specialization
[12785] = { ref=12700 }, -- Axe Specialization
-- Battle Shout
[5242] = { ref=6673 }, -- Battle Shout
[6192] = { ref=6673 }, -- Battle Shout
[6673] = { "Бойовий клич", "Воїн кричить, збільшуючи силу атаки ближнього бою всіх учасників групи в межах {1} м на {2}. Триває {3} хв.#within {1} yards by {2}#Lasts {3} min", "Збільшує силу атаки ближнього бою на {1}.#power by {1}", en="Battle Shout" },
[11549] = { ref=6673 }, -- Battle Shout
[11550] = { ref=6673 }, -- Battle Shout
[11551] = { ref=6673 }, -- Battle Shout
[25289] = { ref=6673 }, -- Battle Shout
-- Berserk
[23397] = { "Берсерк", nil, "Змушує вас прийняти стійку берсерка.\nЗбільшує отриману шкоду на {1}%.#by {1}", en="Berserk" },
-- Berserker Rage
[18499] = { "Лють берсерка", "Впадаючи в лють берсерка, воїн стає невразливим до ефектів страху та недієздатності і отримує додаткову лють при отриманні шкоди. Триває {1} с.#Lasts {1} sec", "Невразливість до ефектів страху та недієздатності. Отримує додаткову лють при отриманні шкоди.", en="Berserker Rage" },
-- Blood Craze
[16487] = { "Криваве божевілля", "Відновлює {1}% здоров'я протягом {2} с після отримання критичного удару.#Regenerates {1}#over {2} sec", en="Blood Craze" },
[16488] = { "Криваве божевілля", nil, "Відновлює {1}% здоров'я протягом {2} с.#Regenerates {1}#over {2} sec", en="Blood Craze" },
[16489] = { ref=16487 }, -- Blood Craze
[16490] = { ref=16488 }, -- Blood Craze
[16491] = { ref=16488 }, -- Blood Craze
[16492] = { ref=16487 }, -- Blood Craze
-- Bloodrage
[2687] = { "Кривава лють", "Надає {1} люті ціною здоров'я та ще додатково {2} люті протягом {3} с. Поки діє ефект, вважається, що воїн перебуває в бою.#Generates {1} rage#additional {2} rage over {3} sec", en="Bloodrage" },
[29131] = { "Кривава лють", nil, "Додає {1} люті щосекунди.#Generating {1}", en="Bloodrage" },
-- Bloodthirst
[23881] = { "Кровожерливість", "Миттєва атака цілі, що завдає шкоди в обсязі {1}% від вашої сили атаки. Крім цього, наступні {2} успішних атак ближнього бою відновлять {3} здоров'я. Ефект триває {4} с.#{1}% of your attack power#next {2} successful#restore {3} health#lasts {4} sec", en="Bloodthirst" },
[23885] = { "Кровожерливість", nil, "Успішні атаки ближнього бою відновлюють {1} здоров'я.#restore {1}", en="Bloodthirst" },
[23886] = { ref=23885 }, -- Bloodthirst
[23887] = { ref=23885 }, -- Bloodthirst
[23888] = { ref=23885 }, -- Bloodthirst
[23892] = { ref=23881 }, -- Bloodthirst
[23893] = { ref=23881 }, -- Bloodthirst
[23894] = { ref=23881 }, -- Bloodthirst
-- Booming Voice
[12321] = { "Гулкий голос", "[Збільшує область дії та тривалість \"Бойового кличу\" та \"Деморалізуючого кличу\" на {1}%.#area of effect and duration of your Battle Shout and Demoralizing Shout by {1}%][Збільшує область дії \"Бойового кличу\" та \"Деморалізуючого кличу\" на {1}%, збільшує тривалість \"Бойового кличу\" на {2}%, а \"Деморалізуючого кличу\" на {3}% та зменшує витрати люті на \"Бойовий клич\" на {4}%.#Demoralizing Shout by {1}%, increases the duration of Battle Shout by {2}% and Demoralizing Shout by {3}%, and reduces the Rage cost of Battle Shout by {4}%]", en="Booming Voice" },
[12835] = { ref=12321 }, -- Booming Voice
[12836] = { ref=12321 }, -- Booming Voice
[12837] = { ref=12321 }, -- Booming Voice
[12838] = { ref=12321 }, -- Booming Voice
-- Challenging Shout
[1161] = { "Провокуючий клич", "Змушує всіх ворогів навколо атакувати вас протягом {1} с.#for {1} sec", "Спровоковано.", en="Challenging Shout" },
-- Charge
[100] = { "Ривок", "Ривок у ворога, що збільшує лють на {1} і приголомшує його на {2} с. Не можна використовувати в бою.#generate {1} rage#for {2} sec", en="Charge" },
[6178] = { ref=100 }, -- Charge
[11578] = { ref=100 }, -- Charge
[22911] = { "Ривок", "Ривок у ворога, що завдає звичайної шкоди плюс {1} та приголомшує ціль на {2} с.#plus {1} and#for {2} sec", en="Charge" },
[24193] = { ref=22911 }, -- Charge
[24408] = { ref=22911 }, -- Charge
[25821] = { ref=22911 }, -- Charge
-- Charge Stun
[7922] = { "Приголомшення від ривка", nil, "Приголомшено.", en="Charge Stun" },
-- Cleave
[845] = { "Розсічення", "Розсікаюча атака, що завдає шкоди зброєю плюс {1} по цілі та по найближчому до неї ворогу.#damage plus {1}", en="Cleave" },
[7369] = { ref=845 }, -- Cleave
[11608] = { ref=845 }, -- Cleave
[11609] = { ref=845 }, -- Cleave
[20569] = { ref=845 }, -- Cleave
-- Concussion Blow
[12809] = { "Приголомшливий удар", "Приголомшує ворога на {1} с.#for {1} sec", "Приголомшено.", en="Concussion Blow" },
-- Cruelty
[12320] = { "Жорстокість", "Збільшує ймовірність завдати критичного удару зброєю ближнього бою на {1}%.#weapons by {1}", en="Cruelty" },
[12852] = { ref=12320 }, -- Cruelty
[12853] = { ref=12320 }, -- Cruelty
[12855] = { ref=12320 }, -- Cruelty
[12856] = { ref=12320 }, -- Cruelty
-- Death Wish
[12328] = { "Жага смерті", "При активації збільшує фізичну шкоду на {1}% і надає невразливість до ефектів страху, але знижує броню та всі види опору на {2}%. Триває {3} с.#damage by {1}#resistances by {2}#Lasts {3} sec", "Збільшує фізичну шкоду на {1}%. Знижує броню та всі види опору на {2}%. Невразливість до ефектів страху.#damage by {1}#resistances by {2}", en="Death Wish" },
-- Deep Wound
[12721] = { "Глибока рана", nil, "Стікає кров'ю.", en="Deep Wound" },
-- Deep Wounds
[12834] = { "Глибокі рани", "Ваші критичні удари викликають у супротивника кровотечу, що завдає {1}% від середньої шкоди вашої зброї ближнього бою протягом {2} с.#dealing {1}#over {2} sec", en="Deep Wounds" },
[12849] = { ref=12834 }, -- Deep Wounds
[12867] = { ref=12834 }, -- Deep Wounds
-- Defiance
[12303] = { "Виклик", "Збільшує загрозу від ваших атак на {1}% допоки ви перебуваєте в захисній стійці.#attacks by {1}", en="Defiance" },
[12788] = { ref=12303 }, -- Defiance
[12789] = { ref=12303 }, -- Defiance
[12791] = { ref=12303 }, -- Defiance
[12792] = { ref=12303 }, -- Defiance
-- Deflection
[16462] = { "Відбиття", "Збільшує вашу ймовірність парирування на {1}%.#by {1}%", en="Deflection" },
[16463] = { ref=16462 }, -- Deflection
[16464] = { ref=16462 }, -- Deflection
[16465] = { ref=16462 }, -- Deflection
[16466] = { ref=16462 }, -- Deflection
-- Demoralizing Roar
[10968] = { "Деморалізуючий рев", "Зменшує силу атаки ближнього бою ворогів поблизу на {1} протягом {2} с.#enemies by {1} for {2} sec", "Силу атаки ближнього бою зменшено на {1}.#by {1}", en="Demoralizing Roar" },
[15727] = { ref=10968 }, -- Demoralizing Roar
[15971] = { ref=10968 }, -- Demoralizing Roar
[20753] = { ref=10968 }, -- Demoralizing Roar
[27551] = { ref=10968 }, -- Demoralizing Roar
-- Demoralizing Shout
[1160] = { "Деморалізуючий клич", "Зменшує силу атаки ближнього бою всіх ворогів в межах {1} м на {2} протягом {3} с.#within {1} yards by {2} for {3} sec", "Зменшує силу атаки ближнього бою на {1}.#power by {1}", en="Demoralizing Shout" },
[6190] = { ref=1160 }, -- Demoralizing Shout
[11554] = { ref=1160 }, -- Demoralizing Shout
[11555] = { ref=1160 }, -- Demoralizing Shout
[11556] = { ref=1160 }, -- Demoralizing Shout
[13730] = { ref=10968 }, -- Demoralizing Shout
[16244] = { ref=10968 }, -- Demoralizing Shout
[19778] = { "Деморалізуючий клич", "Зменшує силу атаки ближнього та дальнього бою ворогів поблизу на {1} протягом {2} с.#enemies by {1} for {2} sec", "Силу атаки ближнього та дальнього бою зменшено на {1}.#by {1}", en="Demoralizing Shout" },
-- Devastate
[20243] = { "Спустошення", "Розколює броню цілі, накладаючи ефект \"Розколу броні\". Окрім того, завдає {1}% шкоди зброї плюс {2} за кожен ефект \"Розколу броні\" на цілі. Ефект \"Розколу броні\" накопичується до {3} разів.#causes {1}% of#plus {2} for#up to {3} times", "Броню зменшено на {1}.#by {1}", en="Devastate" },
-- Disarm
[676] = { "Роззброєння", "Роззброює ворога на {1} с.#for {1} sec", "Роззброєно!", en="Disarm" },
-- Dual Wield Specialization
[23584] = { "Спеціалізація на бою з двох рук", "Збільшує шкоду зброї в лівій руці на {1}%.#weapon by {1}%", en="Dual Wield Specialization" },
[23585] = { ref=23584 }, -- Dual Wield Specialization
[23586] = { ref=23584 }, -- Dual Wield Specialization
[23587] = { ref=23584 }, -- Dual Wield Specialization
[23588] = { ref=23584 }, -- Dual Wield Specialization
-- Enrage
[12317] = { "Несамовитість", "Збільшує шкоду в ближньому бою на {1}% протягом {2} с, але не більше, ніж на {3} ударів, після отримання критичного удару.#{1}% melee damage#for {2} sec#{3} swings", en="Enrage" },
[12880] = { "Несамовитість", nil, "Шкоду в ближньому бою збільшено на {1}%.#increased by {1}%", en="Enrage" },
[13045] = { ref=12317 }, -- Enrage
[13046] = { ref=12317 }, -- Enrage
[13047] = { ref=12317 }, -- Enrage
[13048] = { ref=12317 }, -- Enrage
[14201] = { ref=12880 }, -- Enrage
[14202] = { ref=12880 }, -- Enrage
[14203] = { ref=12880 }, -- Enrage
[14204] = { ref=12880 }, -- Enrage
-- Execute
[5308] = { "Страта", "Спроба добити пораненого ворога, заподіявши {1} шкоди і перетворивши кожну додаткову одиницю люті на {2} додаткової шкоди. Можна використати лише проти ворогів, що мають не більше {3}% здоров'я.#causing {1} damage#into {2} additional#have {3}% or less", en="Execute" },
[20658] = { ref=5308 }, -- Execute
[20660] = { ref=5308 }, -- Execute
[20661] = { ref=5308 }, -- Execute
[20662] = { ref=5308 }, -- Execute
-- Flurry
[12319] = { "Шквал", "Збільшує вашу швидкість атаки на {1}% для наступних {2} ударів після того, як ви завдали критичного удару в ближньому бою.#speed by {1}#next {2} swings", en="Flurry" },
[12966] = { "Шквал", nil, "Швидкість атаки збільшено на {1}%.#increased by {1}%", en="Flurry" },
[12967] = { ref=12966 }, -- Flurry
[12968] = { ref=12966 }, -- Flurry
[12969] = { ref=12966 }, -- Flurry
[12970] = { ref=12966 }, -- Flurry
[12971] = { ref=12319 }, -- Flurry
[12972] = { ref=12319 }, -- Flurry
[12973] = { ref=12319 }, -- Flurry
[12974] = { ref=12319 }, -- Flurry
-- Hamstring
[1715] = { "Нівечення", "Калічить ворога, завдаючи {1} шкоди та сповільнюючи його рух на {2}% протягом {3} с.#causing {1} damage#movement by {2}% for {3} sec", "Рух сповільнено на {1}%.#slowed by {1}%", en="Hamstring" },
[7372] = { ref=1715 }, -- Hamstring
[7373] = { ref=1715 }, -- Hamstring
[27584] = { ref=1715 }, -- Hamstring
-- Heroic Strike
[78] = { "Героїчний удар", "Потужна атака, що збільшує шкоду ближнього бою на {1} і спричиняє високий рівень загрози.#damage by {1}", en="Heroic Strike" },
[284] = { ref=78 }, -- Heroic Strike
[285] = { ref=78 }, -- Heroic Strike
[1608] = { ref=78 }, -- Heroic Strike
[11564] = { ref=78 }, -- Heroic Strike
[11565] = { ref=78 }, -- Heroic Strike
[11566] = { ref=78 }, -- Heroic Strike
[11567] = { ref=78 }, -- Heroic Strike
[25286] = { ref=78 }, -- Heroic Strike
-- Impale
[16493] = { "Пронизування", "Збільшує додаткову шкоду від критичних ударів здібностей на {1}% у бойовій, оборонній та стійці берсерка.#stance by {1}%", en="Impale" },
[16494] = { ref=16493 }, -- Impale
-- Improved Battle Shout
[12318] = { "Покращений бойовий клич", "Збільшує додаткову силу атаки ближнього бою від вашого \"Бойового кличу\" на {1}%.#Shout by {1}%", en="Improved Battle Shout" },
[12857] = { ref=12318 }, -- Improved Battle Shout
[12858] = { ref=12318 }, -- Improved Battle Shout
[12860] = { ref=12318 }, -- Improved Battle Shout
[12861] = { ref=12318 }, -- Improved Battle Shout
-- Improved Berserker Rage
[20500] = { "Покращена лють берсерка", "При активації здібність \"Лють берсерка\" додає {1} люті.#generate {1} rage", en="Improved Berserker Rage" },
[20501] = { ref=20500 }, -- Improved Berserker Rage
-- Improved Bloodrage
[12301] = { "Покращена кривава лють", "Збільшує обсяг люті, що надається при активаці здібності \"Кривава лють\", на {1}.#ability by {1}", en="Improved Bloodrage" },
[12818] = { ref=12301 }, -- Improved Bloodrage
-- Improved Charge
[12285] = { "Покращений ривок", "Збільшує кількість отриманої люті від здібності \"Ривок\" на {1}.#ability by {1}", en="Improved Charge" },
[12697] = { ref=12285 }, -- Improved Charge
-- Improved Cleave
[12329] = { "Покращене розсічення", "Збільшує додаткову шкоду від здібності \"Розсічення\" на {1}%.#ability by {1}%", en="Improved Cleave" },
[12950] = { ref=12329 }, -- Improved Cleave
[20496] = { ref=12329 }, -- Improved Cleave
-- Improved Demoralizing Shout
[12324] = { "Покращений деморалізуючий клич", "Посилює зниження сили атаки ближнього бою від вашої здібності \"Деморалізуючий клич\" на {1}%.#Shout by {1}%", en="Improved Demoralizing Shout" },
[12876] = { ref=12324 }, -- Improved Demoralizing Shout
[12877] = { ref=12324 }, -- Improved Demoralizing Shout
[12878] = { ref=12324 }, -- Improved Demoralizing Shout
[12879] = { ref=12324 }, -- Improved Demoralizing Shout
-- Improved Disarm
[12313] = { "Покращене роззброєння", "Збільшує тривалість вашої здібності \"Роззброєння\" на {1} с.#ability by {1} sec", en="Improved Disarm" },
[12804] = { ref=12313 }, -- Improved Disarm
[12807] = { ref=12313 }, -- Improved Disarm
-- Improved Execute
[20502] = { "Покращена страта", "Зменшує витрати люті здібності \"Страта\" на {1}.#ability by {1}", en="Improved Execute" },
[20503] = { ref=20502 }, -- Improved Execute
-- Improved Hamstring
[12289] = { "Покращене нівечення", "Ваша здібність \"Нівечення\" з ймовірністю {1}% знерухомлює ціль на {2} с.#a {1}% chance#for {2} sec", en="Improved Hamstring" },
[12668] = { ref=12289 }, -- Improved Hamstring
[23694] = { "Покращене нівечення", nil, "Знерухомлено.", en="Improved Hamstring" },
[23695] = { ref=12289 }, -- Improved Hamstring
-- Improved Heroic Strike
[12282] = { "Покращений героїчний удар", "Зменшує витрати люті здібності \"Героїчний удар\" на {1}.#by {1} rage", en="Improved Heroic Strike" },
[12663] = { ref=12282 }, -- Improved Heroic Strike
[12664] = { ref=12282 }, -- Improved Heroic Strike
-- Improved Intercept
[20504] = { "Покращене перехоплення", "Зменшує час відновлення здібності \"Перехоплення\" на {1} с.#ability by {1} sec", en="Improved Intercept" },
[20505] = { ref=20504 }, -- Improved Intercept
-- Improved Overpower
[12290] = { "Покращене здолання", "Збільшує ймовірність завдання критичного удару здібнісю \"Здолання\" на {1}%.#ability by {1}%", en="Improved Overpower" },
[12963] = { ref=12290 }, -- Improved Overpower
-- Improved Rend
[12286] = { "Покращений розрив", "Збільшує шкоду від кровотечі, заподіяної здібністю \"Розрив\", на {1}%.#ability by {1}%", en="Improved Rend" },
[12658] = { ref=12286 }, -- Improved Rend
[12659] = { ref=12286 }, -- Improved Rend
-- Improved Revenge
[12797] = { "Покращена помста", "Здібність \"Помста\" з ймовірністю {1}% приголомшить ціль на {2} с.#{1}% chance#for {2} sec", en="Improved Revenge" },
[12799] = { ref=12797 }, -- Improved Revenge
[12800] = { ref=12797 }, -- Improved Revenge
-- Improved Shield Bash
[12311] = { "Покращений удар щитом", "Надає вашій здібності \"Удар щитом\" {1}% імовірності знемовити ціль на {2} с.#{1}% chance#for {2} sec", en="Improved Shield Bash" },
[12958] = { ref=12311 }, -- Improved Shield Bash
-- Improved Shield Block
[12307] = { ref=12945 }, -- Improved Shield Block
[12944] = { ref=12945 }, -- Improved Shield Block
[12945] = { "Покращений блок щитом", "Дозволяє здібності \"Блок щитом\" блокувати ще одну атаку та збільшує тривалість на {1} с.#by {1} sec", en="Improved Shield Block" },
-- Improved Shield Wall
[12312] = { "Покращена стіна щитів", "Збільшує тривалість ефекту вашої здібності \"Стіна щитів\" на {1} с.#ability by {1} sec", en="Improved Shield Wall" },
[12803] = { ref=12312 }, -- Improved Shield Wall
-- Improved Slam
[12330] = { ref=12862 }, -- Improved Slam
[12862] = { "Покращене розтрощення", "Зменшує час застосування здібності \"Розтрощення\" на {1} с.#by {1} sec", en="Improved Slam" },
[20497] = { ref=12862 }, -- Improved Slam
[20498] = { ref=12862 }, -- Improved Slam
[20499] = { ref=12862 }, -- Improved Slam
-- Improved Sunder Armor
[12308] = { "Покращений розкол броні", "Зменшує витрати люті здібності \"Розкол броні\" на {1}.#by {1} rage", en="Improved Sunder Armor" },
[12810] = { ref=12308 }, -- Improved Sunder Armor
[12811] = { ref=12308 }, -- Improved Sunder Armor
-- Improved Taunt
[12302] = { "Покращена провокація", "Зменшує час відновлення здібності \"Провокація\" на {1} с.#ability by {1} sec", en="Improved Taunt" },
[12765] = { ref=12302 }, -- Improved Taunt
-- Improved Thunder Clap
[12287] = { "Покращений громовий удар", "Зменшує витрати люті здібності \"Громовий удар\" на {1}.#by {1} rage", en="Improved Thunder Clap" },
[12665] = { ref=12287 }, -- Improved Thunder Clap
[12666] = { ref=12287 }, -- Improved Thunder Clap
-- Incapacitating Shout
[18328] = { "Приголомшливий клич", "Зменшує швидкість руху навколишніх ворогів на {1}% протягом {2} хв.#by {1}% for {2} min", "Швидкість руху зменшено на {1}%.#by {1}%", en="Incapacitating Shout" },
-- Intercept
[20252] = { "Перехоплення", "Ривок у ворога, що завдає {1} шкоди та приголомшує його на {2} с.#causing {1} damage#for {2} sec", en="Intercept" },
[20616] = { ref=20252 }, -- Intercept
[20617] = { ref=20252 }, -- Intercept
-- Intercept Stun
[20253] = { "Приголомшення від перехоплення", nil, "Приголомшено.", en="Intercept Stun" },
[20614] = { ref=20253 }, -- Intercept Stun
[20615] = { ref=20253 }, -- Intercept Stun
-- Intimidating Roar
[16508] = { "Жахаючий рик", "Ричить на ворога, змушуючи його тремтіти від страху протягом {1} с та змушуючи їнших ворогів довкола цілі втікати від страху.#for {1} sec", "Нажахано.", en="Intimidating Roar" },
-- Intimidating Shout
[5246] = { "Жахаючий клич", "Воїн кричить, змушуючи свою ціль тремтіти від страху. До {1} ворогів поблизу втікати від страху. Триває {2} с.#to {1} total#Lasts {2} sec", "Нажахано.", en="Intimidating Shout" },
[20511] = { "Жахаючий клич", nil, "Тремтить від страху.", en="Intimidating Shout" },
[19134] = { "Жахаючий клич", "Кричить на ворога, змушуючи його тремтіти від страху протягом {1} с та змушує всіх інших навколишніх ворогів втікати від страху.#for {1} sec", "Нажахано.", en="Intimidating Shout" },
[29544] = { ref=20511 }, -- Intimidating Shout
-- Iron Will
[12300] = { "Залізна воля", "Збільшує ймовірність протистояти ефектам приголомшення та причарування на {1}%.#by an additional {1}%", en="Iron Will" },
[12959] = { ref=12300 }, -- Iron Will
[12960] = { ref=12300 }, -- Iron Will
[12961] = { ref=12300 }, -- Iron Will
[12962] = { ref=12300 }, -- Iron Will
-- Last Stand
[12975] = { "Бій на смерть", "При активації тимчасово збільшує ваш максимальний запас здоров'я на {1}% протягом {2} с. Після закінчення ефекту додане здоров'я втрачається.#grants you {1}#for {2} sec", en="Last Stand" },
[12976] = { "Бій на смерть", nil, "Максимальний запас здоров'я збільшено на {1}%.#increased by {1}%", en="Last Stand" },
-- Mace Specialization
[12284] = { "Спеціалізація на булавах", "З ймовірністю {1}% ви приголомшите ціль на {2} с при ударі булавою.# a {1}% chance#for {2} sec", en="Mace Specialization" },
[12701] = { ref=12284 }, -- Mace Specialization
[12702] = { ref=12284 }, -- Mace Specialization
[12703] = { ref=12284 }, -- Mace Specialization
[12704] = { ref=12284 }, -- Mace Specialization
-- Mocking Blow
[694] = { "Глумливий удар", "Глумлива атака, що завдає {1} шкоди, спричиняє помірний рівень загрози та змушує ціль атакувати вас протягом {2} с.#causes {1} damage#for {2} sec", "Спровоковано.", en="Mocking Blow" },
[7400] = { ref=694 }, -- Mocking Blow
[7402] = { ref=694 }, -- Mocking Blow
[20559] = { ref=694 }, -- Mocking Blow
[20560] = { ref=694 }, -- Mocking Blow
-- Mortal Strike
[12294] = { "Смертельний удар", "Жорстокий удар, що завдає шкоди від зброї плюс {1} і ранить ціль, зменшуючи ефективність будь-якого зцілення на {2}% протягом {3} с.#damage plus {1}#healing by {2}% for {3} sec", "Ефективність зцілення зменшено на {1}%.#reduced by {1}%", en="Mortal Strike" },
[21551] = { ref=12294 }, -- Mortal Strike
[21552] = { ref=12294 }, -- Mortal Strike
[21553] = { ref=12294 }, -- Mortal Strike
[27580] = { ref=12294 }, -- Mortal Strike
-- One-Handed Weapon Specialization
[16538] = { "Спеціалізація на одноручній зброї", "Збільшує шкоду одноручної зброї ближнього бою на {1}%.#weapons by {1}%", en="One-Handed Weapon Specialization" },
[16539] = { ref=16538 }, -- One-Handed Weapon Specialization
[16540] = { ref=16538 }, -- One-Handed Weapon Specialization
[16541] = { ref=16538 }, -- One-Handed Weapon Specialization
[16542] = { ref=16538 }, -- One-Handed Weapon Specialization
-- Overpower
[7384] = { "Здолання", "Миттєво долає ворога, завдаючи шкоди зброєю плюс {1}. Можна використати лише після того, як ціль ухилилась. Здолання не можна блокувати, ухилитися від нього або парирувати.#damage plus {1}", en="Overpower" },
[7887] = { ref=7384 }, -- Overpower
[11584] = { ref=7384 }, -- Overpower
[11585] = { ref=7384 }, -- Overpower
-- Piercing Howl
[12323] = { "Пронизливе виття", "Паморочить всіх ворогів навколо, зменшуючи їхню швидкість руху на {1}% протягом {2} с.#by {1}% for {2} sec", "Швидкість руху зменшено на {1}%.#reduced by {1}%", en="Piercing Howl" },
[23600] = { "Пронизливе виття", "Паморочить всіх ворогів навколо воїна на {1} с.#for {1} sec", "Запаморочення.", en="Piercing Howl" },
-- Piercing Shriek
[26379] = { "Пронизливий вереск", "Паморочить всіх ворогів навколо на {1} с.#for {1} sec", "Запаморочення.", en="Piercing Shriek" },
-- Polearm Specialization
[12165] = { "Спеціалізація на держаковій зброї", "Збільшує ймовірність завдання критичного удару держаковою зброєю на {1}%.#Polearms by {1}%", en="Polearm Specialization" },
[12830] = { ref=12165 }, -- Polearm Specialization
[12831] = { ref=12165 }, -- Polearm Specialization
[12832] = { ref=12165 }, -- Polearm Specialization
[12833] = { ref=12165 }, -- Polearm Specialization
-- Pummel
[6552] = { "Луснути", "Лупить ціль, завдаючи {1} шкоди. Перериває вимову закляття та унеможливлює вимову заклять тієї ж школи протягом {2} с.#for {1} damage#for {2} sec", en="Pummel" },
[6554] = { ref=6552 }, -- Pummel
-- Recklessness
[1719] = { "Навіженість", "[Воїн буде завдавати критичних ударів більшістю своїх атак та#cause critical hits with most attacks][Ймовірність критичного удару збільшиться на {1}%, а воїн#will gain {1}% increased critical strike chance] отримає невразливість до ефектів страху протягом {1} с, але отримана ним шкода збільшиться на {2}%.#next {1} sec#increased by {2}", "Невразливість до ефектів страху, більшість атак завдають критичних ударів[, але отриману шкоду збільшено на {1}%#damage taken is increased by {1}%].", en="Recklessness" },
[13847] = { "Навіженість", nil, "Невразливість до ефектів страху.\nВсі атаки завдають критичної шкоди.\nБроню зменшено на {1}%.#by {1}%", en="Recklessness" },
-- Rend
[772] = { "Розрив", "Ранить ціль, спричиняючи {1} шкоди від кровотечі протягом {2} с.#for {1} damage over {2} sec", "{1} шкоди від кровотечі кожні {2} с.#for {1} damage every {2} sec", en="Rend" },
[6546] = { ref=772 }, -- Rend
[6547] = { ref=772 }, -- Rend
[6548] = { ref=772 }, -- Rend
[11572] = { ref=772 }, -- Rend
[11573] = { ref=772 }, -- Rend
[11574] = { ref=772 }, -- Rend
-- Retaliation
[20230] = { "Відплата", "Миттєво контратакує будь-якого ворога, що завдає вам удару в ближньому бою протягом {1} с. Атаки ближнього бою зі спини неможливо контратакувати. Ця здібність спричинить не більше {2} контратак.#for {1} sec#{2} attacks", "Контратакує всі атаки ближнього бою.", en="Retaliation" },
-- Revenge
[6572] = { "Помста", "Миттєва контратака, що завдає від {1} до {2} шкоди та значно збільшує рівень загрози. Помста повинна слідувати за блокуванням, ухиленням або парируванням.#for {1} to {2} damage", en="Revenge" },
[6574] = { ref=6572 }, -- Revenge
[7379] = { ref=6572 }, -- Revenge
[11600] = { ref=6572 }, -- Revenge
[11601] = { ref=6572 }, -- Revenge
[25288] = { ref=6572 }, -- Revenge
-- Revenge Stun
[12798] = { "Приголомшуюча помста", "Приголомшує ціль на {1} с.#for {1} sec", "Приголомшено.", en="Revenge Stun" },
-- Shield Bash
[72] = { "Удар щитом", "Удар цілі щитом, що завдає {1} шкоди. Перериває вимову закляття та унеможливлює вимову заклять тієї ж школи протягом {2} с.#for {1} damage#for {2} sec", en="Shield Bash" },
[1671] = { ref=72 }, -- Shield Bash
[1672] = { ref=72 }, -- Shield Bash
-- Shield Bash - Silenced
[18498] = { "Удар щитом - Знемовлений", nil, "Знемовлено.", en="Shield Bash - Silenced" },
-- Shield Block
[2565] = { "Блок щитом", "Збільшує ймовірність блокування щитом на {1}% протягом {2} с, але блокує лише [{1} атаку#block {1} attack.][{1} атаки#block {1} attacks.].#block by {1}% for {2} sec", "Ймовірність блокування збільшено на {1}% для наступної атаки.#increased by {1}%", en="Shield Block" },
-- Shield Slam
[23922] = { "Трощення щитом", "Трощить ціль щитом, завдаючи від {1} до {2} шкоди, залежно від вашого показника блоку щитом, та з ймовірністю {3}% розвіює 1 магічний ефект на цілі. Також спричиняє великий рівень загрози.[\n\nУраження цілі \"Трощенням щитом\" також збільшує вашу силу атаки на {1} за кожну одиницю вашої навички захисту понад {2}. Триває {3} секунд.#grants you {1} Attack Power for each point of your defense skill beyond {2}. Lasts {3} sec]#causing {1} to {2} damage#a {3}% chance", en="Shield Slam" },
[23923] = { ref=23922 }, -- Shield Slam
[23924] = { ref=23922 }, -- Shield Slam
[23925] = { ref=23922 }, -- Shield Slam
-- Shield Specialization
[12298] = { "Спеціалізація на щитах", "Збільшує ймовірність блокуваня атак щитом на {1}% і з ймовірністю {2}% додає {3} люті при блокуванні.#shield by {1}% and has a {2}% chance to generate {3} rage", en="Shield Specialization" },
[12724] = { ref=12298 }, -- Shield Specialization
[12725] = { ref=12298 }, -- Shield Specialization
[12726] = { ref=12298 }, -- Shield Specialization
[12727] = { ref=12298 }, -- Shield Specialization
-- Shield Wall
[871] = { "Стіна щитів", "Зменшує отриману шкоду від атак ближнього бою, дальнього бою та заклять на {1}% протягом {2} с.#by {1}% for {2} sec", "Отриману шкоду зменшено на {1}%.#reduced by {1}%", en="Shield Wall" },
-- Slam
[1464] = { "Розтрощення", "Трощить ворога, завдаючи шкоди зброєю плюс {1}.#damage plus {1}", en="Slam" },
[8820] = { ref=1464 }, -- Slam
[11604] = { ref=1464 }, -- Slam
[11605] = { ref=1464 }, -- Slam
-- Spell Reflection
[23920] = { "Відбиття заклинань", "Підняти щит, щоб відбити наступне закляття, вимовлене проти вас. Триває {1} с.#Lasts {1} sec", "Відбиває наступне направлене закляття.", en="Spell Reflection" },
-- Sunder Armor
[7386] = { "Розкол броні", "Розколює броню цілі, зменшуючи її на {1} за кожен ефект \"Розколу броні\", та спричиняє високий рівень загрози. Ефект накопичується до {2} разів. Триває {3} с.#reducing it by {1} per#up to {2} times#Lasts {3} sec", "Броню зменшено на {1}.#decreased by {1}", en="Sunder Armor" },
[7405] = { ref=7386 }, -- Sunder Armor
[8380] = { ref=7386 }, -- Sunder Armor
[11596] = { ref=7386 }, -- Sunder Armor
[11597] = { ref=7386 }, -- Sunder Armor
-- Sweeping Strikes
[12292] = { "Розлогі удари", "Наступні {1} атак ближнього бою вражають ще одного ворога неподалік.#next {1} melee", "Наступні {1} атак ближнього бою вражають ще одного ворога неподалік.#next {1} melee", en="Sweeping Strikes" },
-- Sword Specialization
[12281] = { "Спеціалізація на мечах", "З ймовірністю {1}% ви проведете додаткову атаку по тій самій цілі після завдання шкоди мечем.#a {1}% chance", en="Sword Specialization" },
[12812] = { ref=12281 }, -- Sword Specialization
[12813] = { ref=12281 }, -- Sword Specialization
[12814] = { ref=12281 }, -- Sword Specialization
[12815] = { ref=12281 }, -- Sword Specialization
-- Tactical Mastery
[12295] = { "Майстерність тактики", "Ви зберігаєте до {1} люті при зміні стійки.#retain up to {1} of", en="Tactical Mastery" },
[12676] = { ref=12295 }, -- Tactical Mastery
[12677] = { ref=12295 }, -- Tactical Mastery
[12678] = { ref=12295 }, -- Tactical Mastery
[12679] = { ref=12295 }, -- Tactical Mastery
-- Taunt
[355] = { "Провокація", "Провокує ціль атакувати вас, але не діє, якщо ціль вже атакує вас.", en="Taunt" },
-- Thunder Clap
[6343] = { "Громовий удар", "Вражає ворогів неподалік, збільшуючи інтервал між їхніми атаками на {1}% протягом {2} с та завдаючи їм {3} шкоди. Подіє не більше ніж на {4} цілі.#attacks by {1}% for {2} sec and doing {3} damage#up to {4} targets", "Інтервал між атаками збільшено на {1}%.#increased by {1}%", en="Thunder Clap" },
[8198] = { "Громовий удар", "Вражає ворогів неподалік, збільшуючи інтервал між їхніми атаками на {1}% протягом {2} с та завдаючи їм {3} шкоди. Подіє не більше ніж на {4} цілі.#attacks by {1}% for {2} sec and doing {3} damage#up to {4} targets", "Інтервал між атаками збільшено на {1}%.#increased by {1}%", en="Thunder Clap" },
[8204] = { ref=8198 }, -- Thunder Clap
[8205] = { ref=8198 }, -- Thunder Clap
[11580] = { ref=8198 }, -- Thunder Clap
[11581] = { ref=8198 }, -- Thunder Clap
[13532] = { nil, "Вражає ворогів поруч громом, збільшуючи інтервал між їхніми атаками на {1}% на {2} с та завдаючи їм {3} шкоди від природи. Подіє не більше ніж на {4} цілі.#attacks by {1}% for {2} sec and doing {3} Nature damage#up to {4} targets", ref=6343 }, -- Thunder Clap
-- Toughness
[12299] = { "Міць", "Збільшує вашу броню з предметів на {1}%.#items by {1}%", en="Toughness" },
[12761] = { ref=12299 }, -- Toughness
[12762] = { ref=12299 }, -- Toughness
[12763] = { ref=12299 }, -- Toughness
[12764] = { ref=12299 }, -- Toughness
-- Two-Handed Weapon Specialization
[12163] = { "Спеціалізація на дворучній зброї", "Збільшує шкоду дворучної зброї ближнього бою на {1}%.#weapons by {1}%", en="Two-Handed Weapon Specialization" },
[12711] = { ref=12163 }, -- Two-Handed Weapon Specialization
[12712] = { ref=12163 }, -- Two-Handed Weapon Specialization
[12713] = { ref=12163 }, -- Two-Handed Weapon Specialization
[12714] = { ref=12163 }, -- Two-Handed Weapon Specialization
-- Unbridled Wrath
[12322] = { "Нестримний гнів", "З ймовірністю {1}% ви отримаєте додаткову одиницю люті при завданні шкоди зброєю ближнього бою.#a {1}% chance", en="Unbridled Wrath" },
[12999] = { ref=12322 }, -- Unbridled Wrath
[13000] = { ref=12322 }, -- Unbridled Wrath
[13001] = { ref=12322 }, -- Unbridled Wrath
[13002] = { ref=12322 }, -- Unbridled Wrath
-- Whirlwind
[1680] = { "Вихор", "Ви атакуєте до {1} ворогів в межах {2} м сталевим вихром, завдаючи шкоди зброєю кожному ворогу.#up to {1} enemies within {2} yards", en="Whirlwind" },

-- Item effects
[23725] = { "Дар життя", "Зцілює вам {1}% від максимального запасу здоров'я та збільшує максимальний запас здоров'я на {2}% протягом {3} с.#yourself for {1}% of#health by {2}% for {3} sec", "Максимальний запас здоров'я збільшено на {1}%.#by {1}%", en="Gift of Life" },
[22778] = { "Зменшення витрат Нівечення", "Зменшує витрати люті на здібність \"Нівечення\" на {1}.#reduced by {1}", en="Hamstring Rage Reduction" },

-- Stances
[2457] = { "Бойова стійка", "Збалансована бойова стійка.", en="Battle Stance" },
[2458] = { "Стійка берсерка", "Агресивна стійка. Збільшує ймовірність завдання критичного удару на {1}%, а всю отриману шкоду на {2}%.#chance is increased by {1}#taken is increased by {2}", en="Berserker Stance" },
[71] = { "Захисна стійка", "Захисна стійка. Зменшує отриману шкоду на {1}%, а заподіяну на {2}%. Збільшує загрозу.#taken by {1}#caused by {2}", en="Defensive Stance" },

}

for k, v in pairs(warrior_spells) do addonTable.spell[k] = v end
