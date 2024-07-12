local _, addonTable = ...

local warrior_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Anger Management
[12296] = { "Контроль гніву", "Збільшує час, необхідний для зменшення вашої люті поза боєм, на {1}%.#combat by {1}" }, -- Anger Management
-- Anticipation
[12297] = { "Передчуття", "Збільшує вашу навичку захисту на {1}.#by {1}" }, -- Anticipation (Rank 1)
[12750] = { ref=12297 }, -- Anticipation (Rank 2)
[12751] = { ref=12297 }, -- Anticipation (Rank 3)
[12752] = { ref=12297 }, -- Anticipation (Rank 4)
[12753] = { ref=12297 }, -- Anticipation (Rank 5)
-- Axe Specialization
[12700] = { "Спеціалізація на сокирах", "Підвищує ймовірність завдати критичного удару сокирою на {1}%.#Axes by {1}" }, -- Axe Specialization (Rank 1)
[12781] = { ref=12700 }, -- Axe Specialization (Rank 2)
[12783] = { ref=12700 }, -- Axe Specialization (Rank 3)
[12784] = { ref=12700 }, -- Axe Specialization (Rank 4)
[12785] = { ref=12700 }, -- Axe Specialization (Rank 5)
-- Battle Shout
[5242] = { ref=6673 }, -- Battle Shout (Rank 2)
[6192] = { ref=6673 }, -- Battle Shout (Rank 3)
[6673] = { "Бойовий клич", "Воїн кричить, збільшуючи силу атаки ближнього бою всіх членів групи у радіусі {1} м на {2}. Триває {3} хв.#within {1} yards by {2}#Lasts {3} min", "Збільшує вашу силу атаки ближнього бою на {1}.#power by {1}" }, -- Battle Shout (Rank 1)
[11549] = { ref=6673 }, -- Battle Shout (Rank 4)
[11550] = { ref=6673 }, -- Battle Shout (Rank 5)
[11551] = { ref=6673 }, -- Battle Shout (Rank 6)
[25289] = { ref=6673 }, -- Battle Shout (Rank 7)
-- Berserker Rage
[18499] = { "Лють берсерка", "Лютуючи, воїн стає невразливим до ефектів страху та недієздатності і отримує додаткову лють при отриманні шкоди. Триває {1} с.#Lasts {1} sec", "Невразливість до ефектів страху та недієздатності. Отримує додаткову лють при отриманні шкоди." }, -- Berserker Rage
-- Blood Craze
[16487] = { "Криваве божевілля", "Відновлює {1}% від загального здоров'я протягом {2} с після отримання критичного удару.#Regenerates {1}#over {2} sec" }, -- Blood Craze (Rank 1)
[16488] = { "Криваве божевілля", nil, "Відновлює {1}% загального здоров'я протягом {2} с.#Regenerates {1}#over {2} sec" }, -- Blood Craze
[16489] = { ref=16487 }, -- Blood Craze (Rank 2)
[16492] = { ref=16487 }, -- Blood Craze (Rank 3)
-- Bloodrage
[2687] = { "Кривава лють", "Надає {1} люті ціною здоров'я та ще додаткові {2} люті протягом {3} с. Воїн вважається у бою під час дії здібності.#Generates {1} rage#additional {2} rage over {3} sec" }, -- Bloodrage
[29131] = { "Кривава лють", nil, "Генерує {1} люті щосекунди.#Generating {1}" }, -- Bloodrage
-- Bloodthirst
[23881] = { "Кровожерливість", "Миттєва атака цілі, що завдає шкоди в обсязі {1}% від вашої сили атаки. Крім цього, наступні {2} успішних атак ближнього бою відновлять {3} здоров'я. Ефект триває {4} с.#{1}% of your attack power#next {2} successful#restore {3} health#lasts {4} sec" }, -- Bloodthirst (Rank 1)
[23885] = { "Кровожерливість", nil, "Успішні атаки ближнього бою відновлюють {1} здоров'я.#restore {1}" }, -- Bloodthirst
[23886] = { ref=23885 }, -- Bloodthirst
[23887] = { ref=23885 }, -- Bloodthirst
[23888] = { ref=23885 }, -- Bloodthirst
[23892] = { ref=23881 }, -- Bloodthirst (Rank 2)
[23893] = { ref=23881 }, -- Bloodthirst (Rank 3)
[23894] = { ref=23881 }, -- Bloodthirst (Rank 4)
-- Booming Voice
[12321] = { "Гулкий голос", "Збільшує область дії та тривалість здібностей \"Бойовий клич\" та \"Деморалізуючий клич\" на {1}%.#Shout by {1}" }, -- Booming Voice (Rank 1)
[12835] = { ref=12321 }, -- Booming Voice (Rank 2)
[12836] = { ref=12321 }, -- Booming Voice (Rank 3)
[12837] = { ref=12321 }, -- Booming Voice (Rank 4)
[12838] = { ref=12321 }, -- Booming Voice (Rank 5)
-- Challenging Shout
[1161] = { "Провокуючий клич", "Змушує всіх ворогів навколо атакувати вас протягом {1} с.#for {1} sec", "Підбурено." }, -- Challenging Shout
-- Charge
[100] = { "Ривок", "Ривок у ворога, що збільшує лють на {1} і приголомшує його на {2} с. Не можна використовувати в бою.#generate {1} rage#for {2} sec" }, -- Charge (Rank 1)
[6178] = { ref=100 }, -- Charge (Rank 2)
[11578] = { ref=100 }, -- Charge (Rank 3)
-- Charge Stun
[7922] = { "Приголомшення від ривка", nil, "Приголомшено." }, -- Charge Stun
-- Cleave
[845] = { "Розсічення", "Розсікаюча атака, що завдає шкоди зброєю плюс {1} по цілі та по найближчому до неї ворогу.#damage plus {1}" }, -- Cleave (Rank 1)
[7369] = { ref=845 }, -- Cleave (Rank 2)
[11608] = { ref=845 }, -- Cleave (Rank 3)
[11609] = { ref=845 }, -- Cleave (Rank 4)
[20569] = { ref=845 }, -- Cleave (Rank 5)
-- Concussion Blow
[12809] = { "Приголомшливий удар", "Приголомшує суперника на {1} с.#for {1} sec", "Приголомшено." }, -- Concussion Blow
-- Cruelty
[12320] = { "Жорстокість", "Підвищує ймовірність завдати критичного удару зброєю ближнього бою на {1}%.#weapons by {1}" }, -- Cruelty (Rank 1)
[12852] = { ref=12320 }, -- Cruelty (Rank 2)
[12853] = { ref=12320 }, -- Cruelty (Rank 3)
[12855] = { ref=12320 }, -- Cruelty (Rank 4)
[12856] = { ref=12320 }, -- Cruelty (Rank 5)
-- Death Wish
[12328] = { "Жага смерті", "При активації збільшує фізичну шкоду на {1}% і надає невразливість до ефектів страху, але знижує броню та всі види опору на {2}%. Триває {3} с.#damage by {1}#resistances by {2}#Lasts {3} sec", "Збільшує фізичну шкоду на {1}%. Знижує броню та всі види опору на {2}%. Невразливість до ефектів страху.#damage by {1}#resistances by {2}" }, -- Death Wish
-- Deep Wounds
[12834] = { "Глибокі рани", "Ваші критичні удари викликають у супротивника кровотечу, що завдає {1}% від середньої шкоди вашої зброї ближнього бою протягом {2} с.#dealing {1}#over {2} sec" }, -- Deep Wounds (Rank 1)
[12849] = { ref=12834 }, -- Deep Wounds (Rank 2)
[12867] = { ref=12834 }, -- Deep Wounds (Rank 3)
-- Defiance
[12303] = { "Виклик", "Збільшує загрозу від ваших атак на {1}% допоки ви перебуваєте в захисній стійці.#attacks by {1}" }, -- Defiance (Rank 1)
[12788] = { ref=12303 }, -- Defiance (Rank 2)
[12789] = { ref=12303 }, -- Defiance (Rank 3)
[12791] = { ref=12303 }, -- Defiance (Rank 4)
[12792] = { ref=12303 }, -- Defiance (Rank 5)
-- Deflection
[16462] = { "Відбиття", "Збільшує вашу ймовірність парирування на {1}%.#by {1}%" }, -- Deflection (Rank 1)
[16463] = { ref=16462 }, -- Deflection (Rank 2)
[16464] = { ref=16462 }, -- Deflection (Rank 3)
[16465] = { ref=16462 }, -- Deflection (Rank 4)
[16466] = { ref=16462 }, -- Deflection (Rank 5)
-- Demoralizing Shout
[1160] = { "Деморалізуючий клич", "Зменшує силу атаки ближнього бою всіх ворогів в радіусі {1} м на {2} на {3} с.#within {1} yards by {2} for {3} sec", "Зменшує силу атаки ближнього бою на {1}.#power by {1}" }, -- Demoralizing Shout (Rank 1)
[6190] = { ref=1160 }, -- Demoralizing Shout (Rank 2)
[11554] = { ref=1160 }, -- Demoralizing Shout (Rank 3)
[11555] = { ref=1160 }, -- Demoralizing Shout (Rank 4)
[11556] = { ref=1160 }, -- Demoralizing Shout (Rank 5)
-- Devastate
[20243] = { "Спустошення", "Розколює броню цілі, накладаючи ефект \"Розколу броні\". Окрім того, завдає {1}% шкоди зброї плюс {2} за кожен ефект \"Розколу броні\" на цілі. Ефект \"Розколу броні\" накопичується до {3} разів.#causes {1}% of#plus {2} for#up to {3} times", "Броню зменшено на {1}.#by {1}" }, -- Devastate (Rank 1)
-- Disarm
[676] = { "Роззброєння", "Роззброює ворога на {1} с.#for {1} sec", "Роззброєно!" }, -- Disarm
-- Dual Wield Specialization
[23584] = { "Спеціалізація на бою з двох рук", "Збільшує шкоду від зброї в лівій руці на {1}%.#weapon by {1}" }, -- Dual Wield Specialization (Rank 1)
[23585] = { ref=23584 }, -- Dual Wield Specialization (Rank 2)
[23586] = { ref=23584 }, -- Dual Wield Specialization (Rank 3)
[23587] = { ref=23584 }, -- Dual Wield Specialization (Rank 4)
[23588] = { ref=23584 }, -- Dual Wield Specialization (Rank 5)
-- Enrage
[12317] = { "Несамовитість", "Збільшує шкоду в ближньому бою на {1}% протягом {2} с, але не білше, ніж на {3} ударів, після отримання критичного удару.#{1}% melee damage#for {2} sec#{3} swings" }, -- Enrage (Rank 1)
[12880] = { "Несамовитість", nil, "Шкоду в ближньому бою збільшено на {1}%.#increased by {1}" }, -- Enrage (Rank 1)
[13045] = { ref=12317 }, -- Enrage (Rank 2)
[13046] = { ref=12317 }, -- Enrage (Rank 3)
[13047] = { ref=12317 }, -- Enrage (Rank 4)
[13048] = { ref=12317 }, -- Enrage (Rank 5)
[14201] = { ref=12880 }, -- Enrage (Rank 2)
[14202] = { ref=12880 }, -- Enrage (Rank 3)
[14203] = { ref=12880 }, -- Enrage (Rank 4)
[14204] = { ref=12880 }, -- Enrage (Rank 5)
-- Execute
[5308] = { "Страта", "Спроба добити пораненого ворога, заподіявши {1} шкоди і перетворивши кожну додаткову одиницю люті в {2} додаткової шкоди. Можна використати лише проти ворогів, у яких залишилось {3}% здоров'я або менше.#causing {1} damage#into {2} additional#have {3}% or less" }, -- Execute (Rank 1)
[20658] = { ref=5308 }, -- Execute (Rank 2)
[20660] = { ref=5308 }, -- Execute (Rank 3)
[20661] = { ref=5308 }, -- Execute (Rank 4)
[20662] = { ref=5308 }, -- Execute (Rank 5)
-- Flurry
[12319] = { "Шквал", "Збільшує вашу швидкість атаки на {1}% для наступних {2} ударів після того, як ви завдалт критичного удару в ближньому бою.#speed by {1}#next {2} swings" }, -- Flurry (Rank 1)
[12966] = { "Шквал", nil, "Швидкість атаки підвищено на {1}%.#increased by {1}%" }, -- Flurry (Rank 1)
[12967] = { ref=12966 }, -- Flurry (Rank 2)
[12968] = { ref=12966 }, -- Flurry (Rank 3)
[12969] = { ref=12966 }, -- Flurry (Rank 4)
[12970] = { ref=12966 }, -- Flurry (Rank 5)
[12971] = { ref=12319 }, -- Flurry (Rank 2)
[12972] = { ref=12319 }, -- Flurry (Rank 3)
[12973] = { ref=12319 }, -- Flurry (Rank 4)
[12974] = { ref=12319 }, -- Flurry (Rank 5)
-- Hamstring
[1715] = { "Нівечення", "Калічить ворога, завдаючи {1} шкоди та сповільнюючи його рух на {2}% на {3} с.#causing {1} damage#movement by {2}% for {3} sec", "Рух сповільнено на {1}%.#slowed by {1}" }, -- Hamstring (Rank 1)
[7372] = { ref=1715 }, -- Hamstring (Rank 2)
[7373] = { ref=1715 }, -- Hamstring (Rank 3)
-- Heroic Strike
[78] = { "Героїчний удар", "Потужна атака, що збільшує шкоду ближнього бою на {1} і спричиняє високий рівень загрози.#damage by {1}" }, -- Heroic Strike (Rank 1)
[284] = { ref=78 }, -- Heroic Strike (Rank 2)
[285] = { ref=78 }, -- Heroic Strike (Rank 3)
[1608] = { ref=78 }, -- Heroic Strike (Rank 4)
[11564] = { ref=78 }, -- Heroic Strike (Rank 5)
[11565] = { ref=78 }, -- Heroic Strike (Rank 6)
[11566] = { ref=78 }, -- Heroic Strike (Rank 7)
[11567] = { ref=78 }, -- Heroic Strike (Rank 8)
[25286] = { ref=78 }, -- Heroic Strike (Rank 9)
-- Impale
[16493] = { "Пронизування", "Збільшує додаткову шкоду від критичних ударів здібностей на {1}% у бойовій, оборонній та стійці берсерка.#stance by {1}" }, -- Impale (Rank 1)
[16494] = { ref=16493 }, -- Impale (Rank 2)
-- Improved Battle Shout
[12318] = { "Покращений бойовий клич", "Збільшує додаткову силу атаки ближнього бою від вашого \"Бойового кличу\" на {1}%.#Shout by {1}" }, -- Improved Battle Shout (Rank 1)
[12857] = { ref=12318 }, -- Improved Battle Shout (Rank 2)
[12858] = { ref=12318 }, -- Improved Battle Shout (Rank 3)
[12860] = { ref=12318 }, -- Improved Battle Shout (Rank 4)
[12861] = { ref=12318 }, -- Improved Battle Shout (Rank 5)
-- Improved Berserker Rage
[20500] = { "Покращена лють берсерка", "При активації, здібність \"Лють берсерка\" генерує {1} люті.#generate {1} rage" }, -- Improved Berserker Rage (Rank 1)
[20501] = { ref=20500 }, -- Improved Berserker Rage (Rank 2)
-- Improved Bloodrage
[12301] = { "Покращена кривава лють", "Збільшує миттєву лють, згенеровану вашою здібністю \"Кривава лють\", на {1}.#ability by {1}" }, -- Improved Bloodrage (Rank 1)
[12818] = { ref=12301 }, -- Improved Bloodrage (Rank 2)
-- Improved Charge
[12285] = { "Покращений ривок", "Збільшує кількість люті, згенерованої вашою здібністю \"Ривок\", на {1}.#ability by {1}" }, -- Improved Charge (Rank 1)
[12697] = { ref=12285 }, -- Improved Charge (Rank 2)
-- Improved Cleave
[12329] = { "Покращене розсічення", "Збільшує додаткову шкоду від здібності \"Розсічення\" на {1}%.#ability by {1}" }, -- Improved Cleave (Rank 1)
[12950] = { ref=12329 }, -- Improved Cleave (Rank 2)
[20496] = { ref=12329 }, -- Improved Cleave (Rank 3)
-- Improved Demoralizing Shout
[12324] = { "Покращений деморалізуючий клич", "Збільшує зниження сили атаки ближнього бою від вашої здібності \"Деморалізуючий клич\" на {1}%.#Shout by {1}" }, -- Improved Demoralizing Shout (Rank 1)
[12876] = { ref=12324 }, -- Improved Demoralizing Shout (Rank 2)
[12877] = { ref=12324 }, -- Improved Demoralizing Shout (Rank 3)
[12878] = { ref=12324 }, -- Improved Demoralizing Shout (Rank 4)
[12879] = { ref=12324 }, -- Improved Demoralizing Shout (Rank 5)
-- Improved Disarm
[12313] = { "Покращене роззброєння", "Збільшує тривалість вашої здібності \"Роззброєння\" на {1} с.#ability by {1} sec" }, -- Improved Disarm (Rank 1)
[12804] = { ref=12313 }, -- Improved Disarm (Rank 2)
[12807] = { ref=12313 }, -- Improved Disarm (Rank 3)
-- Improved Execute
[20502] = { "Покращена страта", "Зменшує витрати люті здібності \"Страта\" на {1}.#ability by {1}" }, -- Improved Execute (Rank 1)
[20503] = { ref=20502 }, -- Improved Execute (Rank 2)
-- Improved Hamstring
[12289] = { "Покращене нівечення", "Надає вашій здібності \"Нівечення\" {1}% імовірності знерухомити ціль на {2} с.#{1}% chance#for {2} sec" }, -- Improved Hamstring (Rank 1)
[12668] = { ref=12289 }, -- Improved Hamstring (Rank 2)
[23694] = { "Покращене нівечення", nil, "Знерухомлений." }, -- Improved Hamstring
[23695] = { ref=12289 }, -- Improved Hamstring (Rank 3)
-- Improved Heroic Strike
[12282] = { "Покращений героїчний удар", "Зменшує витрати вашої здібності \"Героїчний удар\" на {1} люті.#by {1} rage" }, -- Improved Heroic Strike (Rank 1)
[12663] = { ref=12282 }, -- Improved Heroic Strike (Rank 2)
[12664] = { ref=12282 }, -- Improved Heroic Strike (Rank 3)
-- Improved Intercept
[20504] = { "Покращене перехоплення", "Зменшує час поновлення вашої здібності \"Перехоплення\" на {1} с.#ability by {1} sec" }, -- Improved Intercept (Rank 1)
[20505] = { ref=20504 }, -- Improved Intercept (Rank 2)
-- Improved Overpower
[12290] = { "Покращене здолання", "Збільшує ймовірність критичного удару вашої здібності \"Здолання\" на {1}%.#ability by {1}" }, -- Improved Overpower (Rank 1)
[12963] = { ref=12290 }, -- Improved Overpower (Rank 2)
-- Improved Rend
[12286] = { "Покращений розрив", "Збільшує шкоду від кровотечі, заподіяної вашою здібністю \"Розрив\", на {1}%.#ability by {1}" }, -- Improved Rend (Rank 1)
[12658] = { ref=12286 }, -- Improved Rend (Rank 2)
[12659] = { ref=12286 }, -- Improved Rend (Rank 3)
-- Improved Revenge
[12797] = { "Покращена помста", "Надає вашій здібності \"Помста\" {1}% імовірності приголомшити ціль на {2} с.#{1}% chance#for {2} sec" }, -- Improved Revenge (Rank 1)
[12799] = { ref=12797 }, -- Improved Revenge (Rank 2)
[12800] = { ref=12797 }, -- Improved Revenge (Rank 3)
-- Improved Shield Bash
[12311] = { "Покращений удар щитом", "Надає вашій здібності \"Удар щитом\" {1}% імовірності знемовити ціль на {2} с.#{1}% chance#for {2} sec" }, -- Improved Shield Bash (Rank 1)
[12958] = { ref=12311 }, -- Improved Shield Bash (Rank 2)
-- Improved Shield Block
[12307] = { ref=12945 }, -- Improved Shield Block (Rank 2)
[12944] = { ref=12945 }, -- Improved Shield Block (Rank 3)
[12945] = { "Покращений блок щитом", "Дозволяє вашій здібності \"Блок щитом\" блокувати додаткову атаку і збільшує тривалість на {1} с.#by {1} sec" }, -- Improved Shield Block (Rank 1)
-- Improved Shield Wall
[12312] = { "Покращена стіна щитів", "Збільшує тривалість ефекту вашої здібності \"Стіна щитів\" на {1} с.#ability by {1} sec" }, -- Improved Shield Wall (Rank 1)
[12803] = { ref=12312 }, -- Improved Shield Wall (Rank 2)
-- Improved Slam
[12330] = { ref=12862 }, -- Improved Slam (Rank 2)
[12862] = { "Покращене розтрощення", "Зменшує час застосування вашої здібності \"Розтрощення\" на {1} с.#by {1} sec" }, -- Improved Slam (Rank 1)
[20497] = { ref=12862 }, -- Improved Slam (Rank 3)
[20498] = { ref=12862 }, -- Improved Slam (Rank 4)
[20499] = { ref=12862 }, -- Improved Slam (Rank 5)
-- Improved Sunder Armor
[12308] = { "Покращений розкол броні", "Зменшує витрати вашої здібності \"Розкол броні\" на {1} люті.#by {1} rage" }, -- Improved Sunder Armor (Rank 1)
[12810] = { ref=12308 }, -- Improved Sunder Armor (Rank 2)
[12811] = { ref=12308 }, -- Improved Sunder Armor (Rank 3)
-- Improved Taunt
[12302] = { "Покращена провокація", "Зменшує час поновлення вашої здібності \"Провокація\" на {1} с.#ability by {1} sec" }, -- Improved Taunt (Rank 1)
[12765] = { ref=12302 }, -- Improved Taunt (Rank 2)
-- Improved Thunder Clap
[12287] = { "Покращений громовий удар", "Зменшує витрати вашої здібності \"Громовий удар\" на {1} люті.#by {1} rage" }, -- Improved Thunder Clap (Rank 1)
[12665] = { ref=12287 }, -- Improved Thunder Clap (Rank 2)
[12666] = { ref=12287 }, -- Improved Thunder Clap (Rank 3)
-- Intercept
[20252] = { "Перехоплення", "Ривок у ворога, що завдає {1} шкоди та приголомшує його на {2} с.#causing {1} damage#for {2} sec" }, -- Intercept (Rank 1)
[20616] = { ref=20252 }, -- Intercept (Rank 2)
[20617] = { ref=20252 }, -- Intercept (Rank 3)
-- Intercept Stun
[20253] = { "Приголомшення від перехоплення", nil, "Приголомшений." }, -- Intercept Stun (Rank 1)
[20614] = { ref=20253 }, -- Intercept Stun (Rank 2)
[20615] = { ref=20253 }, -- Intercept Stun (Rank 3)
-- Intimidating Shout
[5246] = { "Жахаючий клич", "Воїн кричить, змушуючи свою ціль здригатися від страху. До {1} ворогів поблизу будуть розбігатися від страху. Триває {2} с.#to {1} total#Lasts {2} sec", "Нажахано." }, -- Intimidating Shout
[20511] = { "Жахаючий клич", nil, "Здригається від страху." }, -- Intimidating Shout
-- Iron Will
[12300] = { "Залізна воля", "Підвищує ймовірність протистояти ефектам приголомшення та причарування на додаткові {1}%.#by an additional {1}" }, -- Iron Will (Rank 1)
[12959] = { ref=12300 }, -- Iron Will (Rank 2)
[12960] = { ref=12300 }, -- Iron Will (Rank 3)
[12961] = { ref=12300 }, -- Iron Will (Rank 4)
[12962] = { ref=12300 }, -- Iron Will (Rank 5)
-- Last Stand
[12975] = { "Бій на смерть", "При активації ця здібність тимчасово надає вам {1}% вашого максимального здоров'я на {2} с. Після закінчення ефекту додане здоров'я втрачається.#grants you {1}#for {2} sec" }, -- Last Stand
[12976] = { "Бій на смерть", nil, "Здоров'я збільшено на {1}% від максимального значення.#increased by {1}" }, -- Last Stand
-- Mace Specialization
[12284] = { "Спеціалізація на булавах", "Надає вам {1}% імовірності приголомшити ціль на {2} с при використанні булави.#{1}% chance#for {2} sec" }, -- Mace Specialization (Rank 1)
[12701] = { ref=12284 }, -- Mace Specialization (Rank 2)
[12702] = { ref=12284 }, -- Mace Specialization (Rank 3)
[12703] = { ref=12284 }, -- Mace Specialization (Rank 4)
[12704] = { ref=12284 }, -- Mace Specialization (Rank 5)
-- Mocking Blow
[694] = { "Глумливий удар", "Глумлива атака, що завдає {1} шкоди, спричиняє помірний рівень загрози та змушує ціль атакувати вас впродовж {2} с.#causes {1} damage#for {2} sec", "Підбурено." }, -- Mocking Blow (Rank 1)
[7400] = { ref=694 }, -- Mocking Blow (Rank 2)
[7402] = { ref=694 }, -- Mocking Blow (Rank 3)
[20559] = { ref=694 }, -- Mocking Blow (Rank 4)
[20560] = { ref=694 }, -- Mocking Blow (Rank 5)
-- Mortal Strike
[12294] = { "Смертельний удар", "Жорстокий удар, що завдає шкоди зброєю плюс {1} і ранить ціль, знижуючи ефективність будь-якого зцілення на {2}% протягом {3} с.#damage plus {1}#healing by {2}% for {3} sec", "Ефективність зцілення зменшено на {1}%.#reduced by {1}%" }, -- Mortal Strike (Rank 1)
[21551] = { ref=12294 }, -- Mortal Strike (Rank 2)
[21552] = { ref=12294 }, -- Mortal Strike (Rank 3)
[21553] = { ref=12294 }, -- Mortal Strike (Rank 4)
-- One-Handed Weapon Specialization
[16538] = { "Спеціалізація на одноручній зброї", "Збільшує шкоду від одноручної зброї ближнього бою на {1}%.#weapons by {1}" }, -- One-Handed Weapon Specialization (Rank 1)
[16539] = { ref=16538 }, -- One-Handed Weapon Specialization (Rank 2)
[16540] = { ref=16538 }, -- One-Handed Weapon Specialization (Rank 3)
[16541] = { ref=16538 }, -- One-Handed Weapon Specialization (Rank 4)
[16542] = { ref=16538 }, -- One-Handed Weapon Specialization (Rank 5)
-- Overpower
[7384] = { "Здолання", "Миттєво долає ворога, завдаючи шкоди зброєю плюс {1}. Можна використати лише після того, як ціль ухилилась. Здолання не можна блокувати, ухилитися від нього або парирувати.#damage plus {1}" }, -- Overpower (Rank 1)
[7887] = { ref=7384 }, -- Overpower (Rank 2)
[11584] = { ref=7384 }, -- Overpower (Rank 3)
[11585] = { ref=7384 }, -- Overpower (Rank 4)
-- Piercing Howl
[12323] = { "Пронизливе виття", "Ошелешує всіх ворогів поблизу воїна, знижує швидкість їхнього руху на {1}% на {2} с.#by {1}% for {2} sec", "Рух сповільнено на {1}%.#reduced by {1}" }, -- Piercing Howl
-- Polearm Specialization
[12165] = { "Спеціалізація на держаковій зброї", "Підвищує ймовірність завдати критичного удару держаковою зброєю на {1}%.#Polearms by {1}" }, -- Polearm Specialization (Rank 1)
[12830] = { ref=12165 }, -- Polearm Specialization (Rank 2)
[12831] = { ref=12165 }, -- Polearm Specialization (Rank 3)
[12832] = { ref=12165 }, -- Polearm Specialization (Rank 4)
[12833] = { ref=12165 }, -- Polearm Specialization (Rank 5)
-- Pummel
[6552] = { "Луснути", "Лупить ціль, завдаючи {1} шкоди. Перериває вимову закляття противником та унеможливлює вимову заклять тієї ж школи протягом {2} с.#for {1} damage#for {2} sec" }, -- Pummel (Rank 1)
[6554] = { ref=6552 }, -- Pummel (Rank 2)
-- Recklessness
[1719] = { "Навіженість", "Воїн буде завдавати критичних ударів більшістю своїх атак та отримає невразливість до ефектів страху протягом {1} с, але отримана ним шкода збільшиться на {2}%.#next {1} sec#increased by {2}", "Невразливість до ефектів страху, більшість атак завдають критичних ударів, але отриману шкоду збільшено на {1}%.#increased by {1}" }, -- Recklessness
-- Rend
[772] = { "Розрив", "Ранить ціль, змушуючи її стікати кров'ю на {1} шкоди протягом {2} с.#for {1} damage over {2} sec", "Стікає кров'ю на {1} шкоди кожні {2} с.#for {1} damage every {2} seconds" }, -- Rend (Rank 1)
[6546] = { ref=772 }, -- Rend (Rank 2)
[6547] = { ref=772 }, -- Rend (Rank 3)
[6548] = { ref=772 }, -- Rend (Rank 4)
[11572] = { ref=772 }, -- Rend (Rank 5)
[11573] = { ref=772 }, -- Rend (Rank 6)
[11574] = { ref=772 }, -- Rend (Rank 7)
-- Retaliation
[20230] = { "Відплата", "Миттєво контратакує будь-якого ворога, який завдає вам удару в ближньому бою протягом {1} с. Атаки ближнього бою зі спини неможливо контратакувати. Максимум {2} атак призведуть до відплати.#for {1} sec#{2} attacks", "Контратака всіх атак ближнього бою." }, -- Retaliation
-- Revenge
[6572] = { "Помста", "Миттєва контратака, що завдає від {1} до {2} шкоди та сильно підвищує рівень загрози. Помста повинна слідувати за блокуванням, ухиленням або парируванням.#for {1} to {2} damage" }, -- Revenge (Rank 1)
[6574] = { ref=6572 }, -- Revenge (Rank 2)
[7379] = { ref=6572 }, -- Revenge (Rank 3)
[11600] = { ref=6572 }, -- Revenge (Rank 4)
[11601] = { ref=6572 }, -- Revenge (Rank 5)
[25288] = { ref=6572 }, -- Revenge (Rank 6)
-- Revenge Stun
[12798] = { "Приголомшуюча помста", "Приголомшує ціль на {1} с.#for {1} sec", "Приголомшено." }, -- Revenge Stun (Rank 1)
-- Shield Bash
[72] = { "Удар щитом", "Удар цілі щитом, що завдає {1} шкоди. Перериває вимову закляття та унеможливлює вимову заклять тієї ж школи протягом {2} с.#for {1} damage#for {2} sec" }, -- Shield Bash (Rank 1)
[1671] = { ref=72 }, -- Shield Bash (Rank 2)
[1672] = { ref=72 }, -- Shield Bash (Rank 3)
-- Shield Bash - Silenced
[18498] = { "Удар щитом - Знемовлений", nil, "Знемовлено." }, -- Shield Bash - Silenced
-- Shield Block
[2565] = { "Блок щитом", "Збільшую ймовірність блокувати щитом на {1}% на {2} с, але блокує лише 1 атаку.#block by {1}% for {2} sec", "Блокування підвищено на {1}% для наступної атаки.#increased by {1}" }, -- Shield Block
-- Shield Slam
[23922] = { "Трощення щитом", "Трощить ціль щитом, завдаючи від {1} до {2} шкоди залежно від вашого показника блоку щитом, та з ймовірністю {3}% ймовірності розвіює 1 магічний ефект на цілі. Також спричиняє великий рівень загрози.\n\nУраження цілі \"Трощенням щитом\" також збільшує вашу силу атаки на {4} за кожну одиницю вашої навички захисту понад {5}. Триває {6} секунд.#causing {1} to {2} damage#a {3}% chance#grants you {4} Attack#beyond {5}#Lasts {6} sec" }, -- Shield Slam (Rank 1)
[23923] = { ref=23922 }, -- Shield Slam (Rank 2)
[23924] = { ref=23922 }, -- Shield Slam (Rank 3)
[23925] = { ref=23922 }, -- Shield Slam (Rank 4)
-- Shield Specialization
[12298] = { "Спеціалізація на щитах", "Підвищує ймовірність блокувати атаки щитом на {1}% і ймовірність {2}% генерувати {3} люті при блокуванні.#shield by {1}% and has a {2}% chance to generate {3} rage" }, -- Shield Specialization (Rank 1)
[12724] = { ref=12298 }, -- Shield Specialization (Rank 2)
[12725] = { ref=12298 }, -- Shield Specialization (Rank 3)
[12726] = { ref=12298 }, -- Shield Specialization (Rank 4)
[12727] = { ref=12298 }, -- Shield Specialization (Rank 5)
-- Shield Wall
[871] = { "Стіна щитів", "Зменшує отриману шкоду від атак ближнього бою, дальнього бою та заклять на {1}% на {2} с.#by {1}% for {2} sec", "Шкоду зменшено на {1}%.#reduced by {1}" }, -- Shield Wall
-- Slam
[1464] = { "Розтрощення", "Трощить ворога, завдаючи шкоди зброєю плюс {1}.#damage plus {1}" }, -- Slam (Rank 1)
[8820] = { ref=1464 }, -- Slam (Rank 2)
[11604] = { ref=1464 }, -- Slam (Rank 3)
[11605] = { ref=1464 }, -- Slam (Rank 4)
-- Spell Reflection
[23920] = { "Відбиття заклинань", "Підняти щит, щоб відбити наступне закляття, вимовлене проти вас. Триває {1} с.#Lasts {1} sec", "Відбиває наступне направлене закляття." }, -- Spell Reflection
-- Sunder Armor
[7386] = { "Розкол броні", "Розколює броню цілі, зменшуючи її на {1} від кожного \"Розколу броні\", та спричиняє високий рівень загрози. Ефект накопичується до {2} разів. Триває {3} с.#reducing it by {1}#up to {2} times#Lasts {3} sec", "Броню зменшено на {1}.#decreased by {1}" }, -- Sunder Armor (Rank 1)
[7405] = { ref=7386 }, -- Sunder Armor (Rank 2)
[8380] = { ref=7386 }, -- Sunder Armor (Rank 3)
[11596] = { ref=7386 }, -- Sunder Armor (Rank 4)
[11597] = { ref=7386 }, -- Sunder Armor (Rank 5)
-- Sweeping Strikes
[12292] = { "Розлогі удари", "Наступні ваші {1} атак ближнього бою вражають ще одного ворога неподалік.#next {1} melee", "Наступні ваші {1} атак ближнього бою вражають ще одного ворога неподалік.#next {1} melee" }, -- Sweeping Strikes
-- Sword Specialization
[12281] = { "Спеціалізація на мечах", "Надає {1}% імовірності провести додаткову атаку по тій самій цілі після завдання шкоди мечем.#{1}% chance" }, -- Sword Specialization (Rank 1)
[12812] = { ref=12281 }, -- Sword Specialization (Rank 2)
[12813] = { ref=12281 }, -- Sword Specialization (Rank 3)
[12814] = { ref=12281 }, -- Sword Specialization (Rank 4)
[12815] = { ref=12281 }, -- Sword Specialization (Rank 5)
-- Tactical Mastery
[12295] = { "Майстерність тактики", "Ви зберігаєте до {1} люті при зміні стійки.#retain up to {1} of" }, -- Tactical Mastery (Rank 1)
[12676] = { ref=12295 }, -- Tactical Mastery (Rank 2)
[12677] = { ref=12295 }, -- Tactical Mastery (Rank 3)
[12678] = { ref=12295 }, -- Tactical Mastery (Rank 4)
[12679] = { ref=12295 }, -- Tactical Mastery (Rank 5)
-- Taunt
[355] = { "Провокація", "Підбурює ціль атакувати вас, але не діє, якщо ціль вже атакує вас." }, -- Taunt
-- Thunder Clap
[6343] = { "Громовий удар", "Вражає ворогів поруч, збільшуючи час між їхніми атаками на {1}% на {2} с та завдаючи їм {3} шкоди. Подіє не більше ніж на {4} цілі.#attacks by {1}% for {2} sec and doing {3} damage#up to {4} targets", "Час між атаками збільшено на {1}%.#increased by {1}" }, -- Thunder Clap (Rank 1)
[8198] = { ref=6343 }, -- Thunder Clap (Rank 2)
[8204] = { ref=6343 }, -- Thunder Clap (Rank 3)
[8205] = { ref=6343 }, -- Thunder Clap (Rank 4)
[11580] = { ref=6343 }, -- Thunder Clap (Rank 5)
[11581] = { ref=6343 }, -- Thunder Clap (Rank 6)
-- Toughness
[12299] = { "Міць", "Збільшує вашу броню з предметів на {1}%.#items by {1}%" }, -- Toughness (Rank 1)
[12761] = { ref=12299 }, -- Toughness (Rank 2)
[12762] = { ref=12299 }, -- Toughness (Rank 3)
[12763] = { ref=12299 }, -- Toughness (Rank 4)
[12764] = { ref=12299 }, -- Toughness (Rank 5)
-- Two-Handed Weapon Specialization
[12163] = { "Спеціалізація на дворучній зброї", "Збільшує шкоду від дворучної зброї ближнього бою на {1}%.#weapons by {1}" }, -- Two-Handed Weapon Specialization (Rank 1)
[12711] = { ref=12163 }, -- Two-Handed Weapon Specialization (Rank 2)
[12712] = { ref=12163 }, -- Two-Handed Weapon Specialization (Rank 3)
[12713] = { ref=12163 }, -- Two-Handed Weapon Specialization (Rank 4)
[12714] = { ref=12163 }, -- Two-Handed Weapon Specialization (Rank 5)
-- Unbridled Wrath
[12322] = { "Нестримний гнів", "Надає {1}% імовірності отримати додаткову одиницю люті, завдаючи шкоди зброєю ближнього бою.#{1}% chance" }, -- Unbridled Wrath (Rank 1)
[12999] = { ref=12322 }, -- Unbridled Wrath (Rank 2)
[13000] = { ref=12322 }, -- Unbridled Wrath (Rank 3)
[13001] = { ref=12322 }, -- Unbridled Wrath (Rank 4)
[13002] = { ref=12322 }, -- Unbridled Wrath (Rank 5)
-- Whirlwind
[1680] = { "Вихор", "У сталевому вихорі ви атакуєте до {1} ворогів в межах {2} м, завдаючи шкоди зброєю кожному ворогу.#up to {1} enemies within {2} yards" }, -- Whirlwind

-- Stances
[2457] = { "Бойова стійка", "Збалансована бойова стійка." }, -- Battle Stance
[2458] = { "Стійка берсерка", "Агресивна стійка. Збільшує ймовірність критичного удару на {1}% та всю отриману шкоду на {2}%.#chance is increased by {1}#taken is increased by {2}" }, -- Berserker Stance
[71] = { "Захисна стійка", "Захисна стійка. Зменшує отриману шкоду на {1}% та заподіяну на {2}%. Збільшує рівень загрози.#taken by {1}#caused by {2}" }, -- Defensive Stance

}

for k, v in pairs(warrior_spells) do addonTable.spell[k] = v end
