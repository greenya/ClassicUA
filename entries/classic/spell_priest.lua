local _, addonTable = ...

local priest_spells = {

-- See /entries/classic/spell.lua for data format details.

-- Abolish Disease
[552] = { "Усунення хвороби", "Намагається вилікувати 1 хворобу на цілі та ще 1 ефект хвороби кожні {1} с протягом {2} с.#every {1} sec#for {2} sec", "Намагається усунути 1 хворобу кожні {1} с.#every {1} sec" }, -- Abolish Disease
-- Blackout
[15268] = { "Затьмарення", "Надає вашим бойовим закляттям тіні {1}% ймовірності приголомшити ціль на {2} с.#{1}% chance#for {2} sec" }, -- Blackout (Rank 1)
[15269] = { "Затьмарення", nil, "Приголомшено." }, -- Blackout (Rank 1)
[15323] = { ref=15268 }, -- Blackout (Rank 2)
[15324] = { ref=15268 }, -- Blackout (Rank 3)
[15325] = { ref=15268 }, -- Blackout (Rank 4)
[15326] = { ref=15268 }, -- Blackout (Rank 5)
-- Blessed Recovery
[27811] = { "Благословенне одужання", "Зцілює на {1}% від отриманої шкоди протягом {2} с після отримання критичного удару в ближньому або дальньому бою.#heal {1}#over {2} sec" }, -- Blessed Recovery (Rank 1)
[27815] = { ref=27811 }, -- Blessed Recovery (Rank 2)
[27816] = { ref=27811 }, -- Blessed Recovery (Rank 3)
-- Cure Disease
[528] = { "Лікування хвороби", "Знімає 1 хворобу з дружньої цілі." }, -- Cure Disease
-- Darkness
[15259] = { "Пітьма", "Збільшує шкоду ваших заклять тіні на {1}%.#by {1}" }, -- Darkness (Rank 1)
[15307] = { ref=15259 }, -- Darkness (Rank 2)
[15308] = { ref=15259 }, -- Darkness (Rank 3)
[15309] = { ref=15259 }, -- Darkness (Rank 4)
[15310] = { ref=15259 }, -- Darkness (Rank 5)
-- Desperate Prayer
[13908] = { "Відчайдушна молитва", "Миттєво зцілює заклинача на значення від {1} до {2} здоров'я.#for {1} to {2}" }, -- Desperate Prayer (Rank 1)
[19236] = { ref=13908 }, -- Desperate Prayer (Rank 2)
[19238] = { ref=13908 }, -- Desperate Prayer (Rank 3)
[19240] = { ref=13908 }, -- Desperate Prayer (Rank 4)
[19241] = { ref=13908 }, -- Desperate Prayer (Rank 5)
[19242] = { ref=13908 }, -- Desperate Prayer (Rank 6)
[19243] = { ref=13908 }, -- Desperate Prayer (Rank 7)
-- Devouring Plague
[2944] = { "Ненажерна чума", "Вражає ціль хворобою, що завдає {1} шкоди тінню протягом {2} с. Шкода від \"Ненажерної чуми\" зцілює заклинача.#causes {1}#over {2} sec", "Завдає {1} шкоди кожні {2} с та зцілює заклинача.#{1} damage every {2} sec" }, -- Devouring Plague (Rank 1)
[19276] = { ref=2944 }, -- Devouring Plague (Rank 2)
[19277] = { ref=2944 }, -- Devouring Plague (Rank 3)
[19278] = { ref=2944 }, -- Devouring Plague (Rank 4)
[19279] = { ref=2944 }, -- Devouring Plague (Rank 5)
[19280] = { ref=2944 }, -- Devouring Plague (Rank 6)
-- Dispel Magic
[527] = { "Розвіювання магії", "Розвіює магію з цілі, знімаючи 1 шкідливий ефект з союзника або 1 сприятливий ефект з противника." }, -- Dispel Magic (Rank 1)
[988] = { "Розвіювання магії", "Розвіює магію з цілі, знімаючи 2 шкідливі ефекти з союзника або 2 сприятливі ефекти з противника." }, -- Dispel Magic (Rank 2)
-- Divine Fury
[18530] = { "Божественна лють", "Зменшує час вимови заклять \"Кара\", \"Священний вогонь\", \"Зцілення\" та \"Велике зцілення\" на {1} с.#by {1} sec" }, -- Divine Fury (Rank 1)
[18531] = { ref=18530 }, -- Divine Fury (Rank 2)
[18533] = { ref=18530 }, -- Divine Fury (Rank 3)
[18534] = { ref=18530 }, -- Divine Fury (Rank 4)
[18535] = { ref=18530 }, -- Divine Fury (Rank 5)
-- Divine Spirit
[14752] = { "Божественний дух", "Свята сила наповнює ціль, збільшуючи її дух на {1} на {2} хв.#by {1} for {2} min", "Збільшує дух на {1}.#by {1}" }, -- Divine Spirit (Rank 1)
[14818] = { ref=14752 }, -- Divine Spirit (Rank 2)
[14819] = { ref=14752 }, -- Divine Spirit (Rank 3)
[16875] = { ref=14752 }, -- Divine Spirit (Rank 3)
[27841] = { ref=14752 }, -- Divine Spirit (Rank 4)
-- Elune's Grace
[2651] = { "Милість Елуни", "Зменшує отриману шкоду від атак дального бою на {1} і збільшує ймовірність ухилитися на {2}% на {3} с.#taken by {1}#dodge by {2}% for {3} sec", "Отриману шкоду від атак дального бою зменшено на {1} і ймовірність ухилитися збільшено на {2}%.#reduced by {1}#increased by {2}" }, -- Elune's Grace (Rank 1)
[19289] = { ref=2651 }, -- Elune's Grace (Rank 2)
[19291] = { ref=2651 }, -- Elune's Grace (Rank 3)
[19292] = { ref=2651 }, -- Elune's Grace (Rank 4)
[19293] = { ref=2651 }, -- Elune's Grace (Rank 5)
-- Fade
[586] = { "Розтанення", "Розтаньте у повітрі, знеохочуючи ворогів атакувати вас на {1} с.#for {1} sec", "Рівень загрози зменшено." }, -- Fade (Rank 1)
[9578] = { "Розтанення", "Розтаньте у повітрі, знеохочуючи ворогів атакувати вас на {1} с. Дієвіше за \"Розтанення\" (Ранг {2}).#for {1} sec#rank {2}", "Рівень загрози зменшено." }, -- Fade (Rank 2)
[9579] = { ref=9578 }, -- Fade (Rank 3)
[9592] = { ref=9578 }, -- Fade (Rank 4)
[10941] = { ref=9578 }, -- Fade (Rank 5)
[10942] = { ref=9578 }, -- Fade (Rank 6)
-- Fear Ward
[6346] = { "Оберіг від страху", "Оберігає дружню ціль від страху. Наступний ефект страху проти цілі буде нейтралізовано ціною оберегу. Триває {1} хв.#Lasts {1} min", "Захищено від страху." }, -- Fear Ward
-- Feedback
[13896] = { "Відгомін", "Жерця оточує антимагічна енергія. Будь-яке успішне закляття проти нього спалить {1} мани нападника та завдасть {2} шкоди тінню за кожну знищену одиницю мани. Триває {3} с.#burn {1}#causing {2}#Lasts {3} sec", "Антимагічна енергія спалить {1} мани нападника та завдасть {2} шкоди тінню за кожну одиницю спаленої мани.#burn {1}#causing {2}" }, -- Feedback (Rank 1)
[19271] = { ref=13896 }, -- Feedback (Rank 2)
[19273] = { ref=13896 }, -- Feedback (Rank 3)
[19274] = { ref=13896 }, -- Feedback (Rank 4)
[19275] = { ref=13896 }, -- Feedback (Rank 5)
-- Flash Heal
[2061] = { "Швидке зцілення", "Лікує дружню ціль на значення від {1} до {2} здоров'я.#for {1} to {2}" }, -- Flash Heal (Rank 1)
[9472] = { ref=2061 }, -- Flash Heal (Rank 2)
[9473] = { ref=2061 }, -- Flash Heal (Rank 3)
[9474] = { ref=2061 }, -- Flash Heal (Rank 4)
[10915] = { ref=2061 }, -- Flash Heal (Rank 5)
[10916] = { ref=2061 }, -- Flash Heal (Rank 6)
[10917] = { ref=2061 }, -- Flash Heal (Rank 7)
-- Focused Casting
[14743] = { "Зосереджена вимова", "При застосуванні ви не втрачаєте час на вимову заклять від отримання шкоди. Діє {1} секунд.#Lasts {1} sec", "Не втрачає час на вимову заклять від отримання шкоди та має збільшену на {1}% ймовірність протистояти ефектам переривання.#by {1}%" }, -- Focused Casting (Rank 1)
[27828] = { ref=14743 }, -- Focused Casting (Rank 2)
-- Force of Will
[18544] = { "Сила волі", "Збільшує шкоду ваших заклять на {1}% та ймовірність критичного удару ваших бойових заклять на {2}%.#damage by {1}%#spells by {2}%" }, -- Force of Will (Rank 1)
[18547] = { ref=18544 }, -- Force of Will (Rank 2)
[18548] = { ref=18544 }, -- Force of Will (Rank 3)
[18549] = { ref=18544 }, -- Force of Will (Rank 4)
[18550] = { ref=18544 }, -- Force of Will (Rank 5)
-- Greater Heal
[2060] = { "Велике зцілення", "Повільне закляття, що зцілює одній цілі від {1} до {2} здоров'я.#for {1} to {2}" }, -- Greater Heal (Rank 1)
[10963] = { ref=2060 }, -- Greater Heal (Rank 2)
[10964] = { ref=2060 }, -- Greater Heal (Rank 3)
[10965] = { ref=2060 }, -- Greater Heal (Rank 4)
[25314] = { ref=2060 }, -- Greater Heal (Rank 5)
-- Heal
[2054] = { "Зцілення", "Лікує вашу ціль на значення від {1} до {2} здоров'я.#for {1} to {2}" }, -- Heal (Rank 1)
[2055] = { ref=2054 }, -- Heal (Rank 2)
[6063] = { ref=2054 }, -- Heal (Rank 3)
[6064] = { ref=2054 }, -- Heal (Rank 4)
-- Healing Focus
[14913] = { "Цілюща зосередженість", "Надає вам {1}% імовірності уникнути переривання від отримання шкоди під час вимови будь-якого цілющого закляття.#{1}% chance" }, -- Healing Focus (Rank 1)
[15012] = { ref=14913 }, -- Healing Focus (Rank 2)
-- Hex of Weakness
[9035] = { "Пристріт слабкості", "Послаблює вибраного ворога, зменшуючи його шкоду на {1} та знижуючи ефективність будь-якого лікування на {2}%. Триває {3} хв.#caused by {1}#healing by {2}#Lasts {3} min", "Фізичну шкоду зменшено на {1}, а ефективність зцілення зменшено на {2}%.#damage done reduced by {1} and healing effectiveness reduced by {2}" }, -- Hex of Weakness (Rank 1)
[19281] = { ref=9035 }, -- Hex of Weakness (Rank 2)
[19282] = { ref=9035 }, -- Hex of Weakness (Rank 3)
[19283] = { ref=9035 }, -- Hex of Weakness (Rank 4)
[19284] = { ref=9035 }, -- Hex of Weakness (Rank 5)
[19285] = { ref=9035 }, -- Hex of Weakness (Rank 6)
-- Holy Fire
[14914] = { "Священний вогонь", "Ворога охоплює священне полум'я, що завдає від {1} до {2} шкоди святістю та додатковj {3} шкоди святістю протягом {4} с.#cause {1} to {2} Holy#additional {3} Holy damage over {4} sec", "{1} шкоди святістю кожні {2} с.#{1} Holy damage every {2} sec" }, -- Holy Fire (Rank 1)
[15261] = { ref=14914 }, -- Holy Fire (Rank 8)
[15262] = { ref=14914 }, -- Holy Fire (Rank 2)
[15263] = { ref=14914 }, -- Holy Fire (Rank 3)
[15264] = { ref=14914 }, -- Holy Fire (Rank 4)
[15265] = { ref=14914 }, -- Holy Fire (Rank 5)
[15266] = { ref=14914 }, -- Holy Fire (Rank 6)
[15267] = { ref=14914 }, -- Holy Fire (Rank 7)
-- Holy Nova
[15237] = { "Священний спалах", "Створює вибух священного світла навколо заклинача, завдаючи від {1} до {2} шкоди святістю ворожим цілям в радіусі {3} м і зцілюючи від {5} до {6} здоров'я членам групи в радіусі {4} м. Ці ефекти не спричиняють загрози.#causing {1} to {2} Holy#targets within {3} y#members within {4} yards for {5} to {6}" }, -- Holy Nova (Rank 1)
[15430] = { ref=15237 }, -- Holy Nova (Rank 2)
[15431] = { ref=15237 }, -- Holy Nova (Rank 3)
[27799] = { ref=15237 }, -- Holy Nova (Rank 4)
[27800] = { ref=15237 }, -- Holy Nova (Rank 5)
[27801] = { ref=15237 }, -- Holy Nova (Rank 6)
-- Holy Reach
[27789] = { "Досяжність священності", "Збільшує дальність дії ваших заклять \"Кара\" та \"Священний вогонь\", а також радіус дії ваших заклять \"Молитва зцілення\" та \"Священний спалах\" на {1}%.#by {1}%" }, -- Holy Reach (Rank 1)
[27790] = { ref=27789 }, -- Holy Reach (Rank 2)
-- Holy Specialization
[14889] = { "Спеціалізація на святості", "Збільшує ймовірність критичного ефекту ваших заклять святості на {1}%.#by {1}%" }, -- Holy Specialization (Rank 1)
[15008] = { ref=14889 }, -- Holy Specialization (Rank 2)
[15009] = { ref=14889 }, -- Holy Specialization (Rank 3)
[15010] = { ref=14889 }, -- Holy Specialization (Rank 4)
[15011] = { ref=14889 }, -- Holy Specialization (Rank 5)
-- Improved Fade
[15274] = { "Покращене розтанення", "Зменшує час поновлення вашого закляття \"Розтанення\" на {1} с.#by {1} sec" }, -- Improved Fade (Rank 1)
[15311] = { ref=15274 }, -- Improved Fade (Rank 2)
-- Improved Healing
[14912] = { "Покращене зцілення", "Знижує витрати мани ваших заклять \"Мале зцілення\", \"Зцілення\" та \"Велике зцілення\" на {1}%.#by {1}" }, -- Improved Healing (Rank 1)
[15013] = { ref=14912 }, -- Improved Healing (Rank 2)
[15014] = { ref=14912 }, -- Improved Healing (Rank 3)
-- Improved Inner Fire
[14747] = { "Покращений внутрішній вогонь", "Збільшує додаткову броню від вашого закляття \"Внутрішній вогонь\" на {1}%.#by {1}" }, -- Improved Inner Fire (Rank 1)
[14770] = { ref=14747 }, -- Improved Inner Fire (Rank 2)
[14771] = { ref=14747 }, -- Improved Inner Fire (Rank 3)
-- Improved Mana Burn
[14750] = { "Покращене спалювання мани", "Зменшує час вимови вашого закляття \"Спалювання мани\" на {1} с.#by {1} sec" }, -- Improved Mana Burn (Rank 1)
[14772] = { ref=14750 }, -- Improved Mana Burn (Rank 2)
-- Improved Mind Blast
[15273] = { "Покращений вибух розуму", "Зменшує час відновлення вашого закляття \"Вибух розуму\" на {1} с.#by {1} sec" }, -- Improved Mind Blast (Rank 1)
[15312] = { ref=15273 }, -- Improved Mind Blast (Rank 2)
[15313] = { ref=15273 }, -- Improved Mind Blast (Rank 3)
[15314] = { ref=15273 }, -- Improved Mind Blast (Rank 4)
[15316] = { ref=15273 }, -- Improved Mind Blast (Rank 5)
-- Improved Power Word: Fortitude
[14749] = { "Покращене слово сили: Стійкість", "Збільшує ефективність ваших заклять \"Слово сили: Стійкість\" та \"Молитва стійкості\" на {1}%.#by {1}" }, -- Improved Power Word: Fortitude (Rank 1)
[14767] = { ref=14749 }, -- Improved Power Word: Fortitude (Rank 2)
-- Improved Power Word: Shield
[14748] = { "Покращене слово сили: Щит", "Збільшує обсяг шкоди, яку може поглинути ваше закляття \"Слово сили: Щит\", на {1}%.#by {1}%" }, -- Improved Power Word: Shield (Rank 1)
[14768] = { ref=14748 }, -- Improved Power Word: Shield (Rank 2)
[14769] = { ref=14748 }, -- Improved Power Word: Shield (Rank 3)
-- Improved Prayer of Healing
[14911] = { "Покращена молитва зцілення", "Знижує витрати мани вашого закляття \"Молитва зцілення\" на {1}%.#by {1}" }, -- Improved Prayer of Healing (Rank 1)
[15018] = { ref=14911 }, -- Improved Prayer of Healing (Rank 2)
[15019] = { ref=14911 }, -- Improved Prayer of Healing (Rank 3)
-- Improved Psychic Scream
[15392] = { "Покращений психічний крик", "Зменшує час відновлення вашого закляття \"Психічний крик\" на {1} с.#by {1} sec" }, -- Improved Psychic Scream (Rank 1)
[15448] = { ref=15392 }, -- Improved Psychic Scream (Rank 2)
-- Improved Renew
[14908] = { "Покращене оновлення", "Збільшує зцілення вашим закляттям \"Оновлення\" на {1}%.#by {1}" }, -- Improved Renew (Rank 1)
[15020] = { ref=14908 }, -- Improved Renew (Rank 2)
[17191] = { ref=14908 }, -- Improved Renew (Rank 3)
-- Improved Shadow Word: Pain
[15275] = { "Покращене слово тіні: Біль", "Збільшує тривалість вашого закляття \"Слово тіні: Біль\" на {1} с.#by {1}" }, -- Improved Shadow Word: Pain (Rank 1)
[15317] = { ref=15275 }, -- Improved Shadow Word: Pain (Rank 2)
-- Improved Vampiric Embrace
[27839] = { "Покращені вампірські обійми", "Збільшує відсоток зцілення вашого закляття \"Вампірські обійми\" на додаткові {1}%.#additional {1}" }, -- Improved Vampiric Embrace (Rank 1)
[27840] = { ref=27839 }, -- Improved Vampiric Embrace (Rank 2)
-- Inner Fire
[588] = { "Внутрішній вогонь", "Сплеск священної енергії наповнює заклинача, збільшуючи броню на {1}. Кожна ближня або дальня атака проти жерця знімає один заряд закляття. Триває {2} хв або поки не буде використано {3} зарядів.#armor by {1}#Lasts {2} min or until {3} charges", "Збільшує броню на {1}.#by {1}" }, -- Inner Fire (Rank 1)
[602] = { ref=588 }, -- Inner Fire (Rank 3)
[1006] = { ref=588 }, -- Inner Fire (Rank 4)
[7128] = { ref=588 }, -- Inner Fire (Rank 2)
[10951] = { ref=588 }, -- Inner Fire (Rank 5)
[10952] = { ref=588 }, -- Inner Fire (Rank 6)
-- Inner Focus
[14751] = { "Внутрішня зосередженість", "При активації, зменшує витрати мани вашого наступного закляття на {1}% та збільшує його ймовірність критичного ефекту на {2}%, якщо такий можливий.#spell by {1}#chance by {2}", "Витрати мани на ваше наступне закляття зменшено на {1}%.#reduced by {1}" }, -- Inner Focus
-- Inspiration
[14892] = { "Натхнення", "Збільшує броню вашої цілі на {1}% на {2} с після критичного ефекту ваших заклять \"Швидке зцілення\", \"Зцілення\", \"Велике зцілення\" або \"Молитва зцілення\".#armor by {1}% for {2} sec" }, -- Inspiration (Rank 1)
[14893] = { "Натхнення", nil, "Збільшує броню на {1}%.#by {1}" }, -- Inspiration (Rank 1)
[15357] = { ref=14893 }, -- Inspiration (Rank 2)
[15359] = { ref=14893 }, -- Inspiration (Rank 3)
[15362] = { ref=14892 }, -- Inspiration (Rank 2)
[15363] = { ref=14892 }, -- Inspiration (Rank 3)
-- Lesser Heal
[2050] = { "Мале зцілення", "Лікує вашу ціль на значення від {1} до {2} здоров'я.#for {1} to {2}" }, -- Lesser Heal (Rank 1)
[2052] = { ref=2050 }, -- Lesser Heal (Rank 2)
[2053] = { ref=2050 }, -- Lesser Heal (Rank 3)
-- Levitate
[1706] = { "Левітація", "Дозволяє заклиначу левітувати, плинучи невисоко над землею. Під час левітації ви падатимете зі зниженою швидкістю та зможете ходити по воді. Будь-яка шкода скасує цей ефект. Триває {1} хв.#Lasts {1} min", "Левітує." }, -- Levitate
-- Lightwell
[724] = { "Колодязь світла", "Створює священний колодязь світла біля жерця. Члени вашого рейду або групи можуть випити з нього для відновлення {1} здоров'я протягом {2} с. Будь-яка отримана шкода знімає цей ефект. Колодязь існує {3} хв або {4} застосувань.#restore {1} health over {2} sec#lasts for {3} min or {4} charges" }, -- Lightwell (Rank 1)
[27870] = { ref=724 }, -- Lightwell (Rank 2)
[27871] = { ref=724 }, -- Lightwell (Rank 3)
-- Lightwell Renew
[7001] = { "Відновлення колодязя світла", nil, "Відновлює {1} здоров'я кожні {2} с.#{1} health every {2} sec" }, -- Lightwell Renew (Rank 1)
[27873] = { ref=7001 }, -- Lightwell Renew (Rank 2)
[27874] = { ref=7001 }, -- Lightwell Renew (Rank 3)
-- Mana Burn
[8129] = { "Спалювання мани", "Висмоктує з цілі від {1} до {2} мани. Кожна одиниця висмоктаної таким чином мани завдає цілі {3} шкоди тінню.#{1} to {2} mana#takes {3}" }, -- Mana Burn (Rank 1)
[8131] = { ref=8129 }, -- Mana Burn (Rank 2)
[10874] = { ref=8129 }, -- Mana Burn (Rank 3)
[10875] = { ref=8129 }, -- Mana Burn (Rank 4)
[10876] = { ref=8129 }, -- Mana Burn (Rank 5)
-- Martyrdom
[14531] = { "Мучеництво", "Надає вам {1}% імовірності набути ефекту \"Зосередженої вимови\" на {2} с після отримання критичного удару в ближньому або дальньому бою. \"Зосереджена вимова\" оберігає вас від втрат часу вимови заклять при отриманні шкоди, та збільшує опір ефектам переривання на {3}%.#{1}% chance#for {2} sec#by {3}%" }, -- Martyrdom (Rank 1)
[14774] = { ref=14531 }, -- Martyrdom (Rank 2)
-- Meditation
[14521] = { "Медитація", "Дозволяє {1}% відновлення мани продовжуватися під час вимови заклять.#{1}% of your Mana" }, -- Meditation (Rank 1)
[14776] = { ref=14521 }, -- Meditation (Rank 2)
[14777] = { ref=14521 }, -- Meditation (Rank 3)
-- Mental Agility
[14520] = { "Спритність розуму", "Знижує витрати мани на ваші миттєві закляття на {1}%.#by {1}%" }, -- Mental Agility (Rank 1)
[14780] = { ref=14520 }, -- Mental Agility (Rank 2)
[14781] = { ref=14520 }, -- Mental Agility (Rank 3)
[14782] = { ref=14520 }, -- Mental Agility (Rank 4)
[14783] = { ref=14520 }, -- Mental Agility (Rank 5)
-- Mental Strength
[18551] = { "Ментальна сила", "Збільшує вашу максимальну ману на {1}%.#by {1}" }, -- Mental Strength (Rank 1)
[18552] = { ref=18551 }, -- Mental Strength (Rank 2)
[18553] = { ref=18551 }, -- Mental Strength (Rank 3)
[18554] = { ref=18551 }, -- Mental Strength (Rank 4)
[18555] = { ref=18551 }, -- Mental Strength (Rank 5)
-- Mind Blast
[8092] = { "Вибух розуму", "Вражає ціль, завдаючи від {1} до {2} шкоди тінню та спричиняє високий рівень загрози.#for {1} to {2}" }, -- Mind Blast (Rank 1)
[8102] = { ref=8092 }, -- Mind Blast (Rank 2)
[8103] = { ref=8092 }, -- Mind Blast (Rank 3)
[8104] = { ref=8092 }, -- Mind Blast (Rank 4)
[8105] = { ref=8092 }, -- Mind Blast (Rank 5)
[8106] = { ref=8092 }, -- Mind Blast (Rank 6)
[10945] = { ref=8092 }, -- Mind Blast (Rank 7)
[10946] = { ref=8092 }, -- Mind Blast (Rank 8)
[10947] = { ref=8092 }, -- Mind Blast (Rank 9)
-- Mind Control
[605] = { "Контроль розуму", "Бере під контроль розум гуманоїда не вище {1} рівня, але збільшує час між його атаками на {2}%. Триває до {3} хв.#up to level {1}#attacks by {2}%#Lasts up to {3} min", "Причаровано. Час між атаками збільшено на {1}%.#by {1}" }, -- Mind Control (Rank 1)
[10911] = { ref=605 }, -- Mind Control (Rank 2)
[10912] = { ref=605 }, -- Mind Control (Rank 3)
-- Mind Flay
[15407] = { "Муки розуму", "Вражає розум цілі енергією тіні, завдаючи {1} шкоди тінню протягом {2} с та сповільнюючи її рух на {3}%.#causing {1} Shadow#over {2} sec#speed by {3}%", "Швидкість руху зменшено на {1}%.#by {1}" }, -- Mind Flay (Rank 1)
[17311] = { ref=15407 }, -- Mind Flay (Rank 2)
[17312] = { ref=15407 }, -- Mind Flay (Rank 3)
[17313] = { ref=15407 }, -- Mind Flay (Rank 4)
[17314] = { ref=15407 }, -- Mind Flay (Rank 5)
[18807] = { ref=15407 }, -- Mind Flay (Rank 6)
-- Mind Soothe
[453] = { "Заспокоєння розуму", "Заспокоює ціль, зменшуючи відстань, на якій вона атакуватиме вас, на {1} м. Діє лише на гуманоїдів рівня {2} або нижче. Триває {3} с.#by {1} y#level {2} or lower#Lasts {3} sec", "Зменшено відстань, з якої ціль атакуватиме." }, -- Mind Soothe (Rank 1)
[8192] = { ref=453 }, -- Mind Soothe (Rank 2)
[10953] = { ref=453 }, -- Mind Soothe (Rank 3)
-- Mind Vision
[2096] = { "Видіння розуму", "Дозволяє заклиначу бачити очима цілі протягом {1} хв.#for {1} min", "Здатність бачити очима цілі." }, -- Mind Vision (Rank 1)
[10909] = { "Видіння розуму", "Дозволяє заклиначу бачити очима цілі протягом {1} хв. Не працює, якщо ціль перебуває в іншому ігровимірі або на іншому континенті.#for {1} min", "Здатність бачити очима цілі." }, -- Mind Vision (Rank 2)
-- Power Infusion
[10060] = { "Приплив сил", "Наповнює ціль силою, збільшуючи її шкоду та зцілення закляттями на {1}%. Триває {2} с.#by {1}#Lasts {2} sec", "Шкоди та зцілення заклять збільшено на {1}%.#by {1}" }, -- Power Infusion
-- Power Word: Fortitude
[1243] = { "Слово сили: Стійкість", "Сила наповнює ціль, збільшуючи її витривалість на {1} протягом {2} хв.#by {1} for {2} min", "Збільшує витривалість на {1}.#by {1}" }, -- Power Word: Fortitude (Rank 1)
[1244] = { ref=1243 }, -- Power Word: Fortitude (Rank 2)
[1245] = { ref=1243 }, -- Power Word: Fortitude (Rank 3)
[2791] = { ref=1243 }, -- Power Word: Fortitude (Rank 4)
[10937] = { ref=1243 }, -- Power Word: Fortitude (Rank 5)
[10938] = { ref=1243 }, -- Power Word: Fortitude (Rank 6)
-- Power Word: Shield
[17] = { "Слово сили: Щит", "Створює з частинки душі учасника групи щит, що поглинає {1} шкоди. Триває {2} с. Поки щит тримається, вимову заклять не буде перервано. Повторно накласти щит можна тільки через {3} с.#absorbing {1}#Lasts {2} sec#again for {3} sec", "Поглинає шкоду." }, -- Power Word: Shield (Rank 1)
[592] = { ref=17 }, -- Power Word: Shield (Rank 2)
[600] = { ref=17 }, -- Power Word: Shield (Rank 3)
[3747] = { ref=17 }, -- Power Word: Shield (Rank 4)
[6065] = { ref=17 }, -- Power Word: Shield (Rank 5)
[6066] = { ref=17 }, -- Power Word: Shield (Rank 6)
[10898] = { ref=17 }, -- Power Word: Shield (Rank 7)
[10899] = { ref=17 }, -- Power Word: Shield (Rank 8)
[10900] = { ref=17 }, -- Power Word: Shield (Rank 9)
[10901] = { ref=17 }, -- Power Word: Shield (Rank 10)
-- Prayer of Fortitude
[21562] = { "Молитва стійкості", "Сила наповнює членів групи цілі, збільшує їхню витривалість на {1} на {2} год.#by {1} for {2} h", "Збільшує Витривалість на {1}.#by {1}" }, -- Prayer of Fortitude (Rank 1)
[21564] = { ref=21562 }, -- Prayer of Fortitude (Rank 2)
-- Prayer of Healing
[596] = { "Молитва зцілення", "Потужна молитва зцілює всім учасникам групи в межах {1} м від {2} до {3} здоров'я.#within {1} yards for {2} to {3}" }, -- Prayer of Healing (Rank 1)
[996] = { ref=596 }, -- Prayer of Healing (Rank 2)
[10960] = { ref=596 }, -- Prayer of Healing (Rank 3)
[10961] = { ref=596 }, -- Prayer of Healing (Rank 4)
[25316] = { ref=596 }, -- Prayer of Healing (Rank 5)
-- Prayer of Shadow Protection
[27683] = { "Молитва захисту від тіні", "Сила наповнює членів групи цілі, збільшуючи їхній супротив тіні на {1} на {2} хв.#by {1} for {2} min", "Збільшує супротив тіні на {1}.#by {1}" }, -- Prayer of Shadow Protection (Rank 1)
-- Prayer of Spirit
[27681] = { "Молитва духу", "Сила наповнює членів групи цілі, збільшуючи їхній дух на {1} на {2} год.#by {1} for {2} h", "Збільшує дух на {1}.#by {1}" }, -- Prayer of Spirit (Rank 1)
-- Psychic Scream
[8122] = { "Психічний крик", "Заклинач вивільнює психічний крик, що змушує {1} ворогів у межах {2} м тікати геть протягом {3} с. Завдана шкода може перервати цей ефект.#causing {1} enemies within {2} y#for {3} sec", "Тікає зі страху." }, -- Psychic Scream (Rank 1)
[8124] = { ref=8122 }, -- Psychic Scream (Rank 2)
[10888] = { ref=8122 }, -- Psychic Scream (Rank 3)
[10890] = { ref=8122 }, -- Psychic Scream (Rank 4)
-- Renew
[139] = { "Оновлення", "Зцілює {1} здоров'я цілі протягом {2} с.#{1} damage over {2} sec", "Зцілю {1} здоров'я кожні {2} с.#{1} damage every {2} sec" }, -- Renew (Rank 1)
[6074] = { ref=139 }, -- Renew (Rank 2)
[6075] = { ref=139 }, -- Renew (Rank 3)
[6076] = { ref=139 }, -- Renew (Rank 4)
[6077] = { ref=139 }, -- Renew (Rank 5)
[6078] = { ref=139 }, -- Renew (Rank 6)
[10927] = { ref=139 }, -- Renew (Rank 7)
[10928] = { ref=139 }, -- Renew (Rank 8)
[10929] = { ref=139 }, -- Renew (Rank 9)
[25315] = { ref=139 }, -- Renew (Rank 10)
-- Resurrection
[2006] = { "Воскресіння", "Повертає мертвого гравця до життя із {1} здоров'я та {2} мани. Не можна використовувати в бою.#{1} health and {2} mana" }, -- Resurrection (Rank 1)
[2010] = { ref=2006 }, -- Resurrection (Rank 2)
[10880] = { ref=2006 }, -- Resurrection (Rank 3)
[10881] = { ref=2006 }, -- Resurrection (Rank 4)
[20770] = { ref=2006 }, -- Resurrection (Rank 5)
-- Searing Light
[14909] = { "Обпалююче світло", "Збільшує шкоду ваших заклять \"Кара\" та \"Священний вогонь\" на {1}%.#by {1}" }, -- Searing Light (Rank 1)
[15017] = { ref=14909 }, -- Searing Light (Rank 2)
-- Shackle Undead
[9484] = { "Сковування невмерлих", "Сковує обраного невмерлого ворога на {1} с. Ціль стає нездатною пересуватися, атакувати та вимовляти закляття. Будь-яка шкода знімає ефект з цілі. Одночасно можна скувати лише одну ціль.#for up to {1} sec", "Сковано." }, -- Shackle Undead (Rank 1)
[9485] = { ref=9484 }, -- Shackle Undead (Rank 2)
[10955] = { ref=9484 }, -- Shackle Undead (Rank 3)
-- Shadow Affinity
[15272] = { ref=15318 }, -- Shadow Affinity (Rank 2)
[15318] = { "Спорідненість з тінню", "Зменшує загрозу, спричинену вашими закляттями тіні, на {1}%.#by {1}" }, -- Shadow Affinity (Rank 1)
[15320] = { ref=15318 }, -- Shadow Affinity (Rank 3)
-- Shadow Focus
[15260] = { "Тіньова зосередженість", "Знижує ймовірність вашої цілі протистояти вашим закляттям тіні на {1}%.#by {1}" }, -- Shadow Focus (Rank 1)
[15327] = { ref=15260 }, -- Shadow Focus (Rank 2)
[15328] = { ref=15260 }, -- Shadow Focus (Rank 3)
[15329] = { ref=15260 }, -- Shadow Focus (Rank 4)
[15330] = { ref=15260 }, -- Shadow Focus (Rank 5)
-- Shadow Protection
[976] = { "Захист від тіні", "Збільшує супротив цілі до тіні на {1} на {2} хв.#by {1} for {2} min", "Супротив тіні збільшено на {1}.#by {1}" }, -- Shadow Protection (Rank 1)
[10957] = { ref=976 }, -- Shadow Protection (Rank 2)
[10958] = { ref=976 }, -- Shadow Protection (Rank 3)
-- Shadow Reach
[17322] = { "Досяжність тіні", "Збільшує дальність дії ваших заклять тіні на {1}%.#by {1}" }, -- Shadow Reach (Rank 1)
[17323] = { ref=17322 }, -- Shadow Reach (Rank 2)
[17325] = { ref=17322 }, -- Shadow Reach (Rank 3)
-- Shadow Vulnerability
[15258] = { "Вразливість до тіні", nil, "Отриману шкоду від тіні збільшено на {1}%.#by {1}" }, -- Shadow Vulnerability (Rank 1)
-- Shadow Weaving
[15257] = { "Сплітання тіні", "Ваші бойові закляття тіні мають {1}% імовірності зробити вашу ціль вразливою до шкоди від тіні. Ця вразливість збільшує отриману ціллю шкоду від тіні на {2}% та триває {3} с. Ефект накопичується до {4} разів.#{1}% chance#by {2}% and lasts {3} sec#up to {4} times" }, -- Shadow Weaving (Rank 1)
[15331] = { ref=15257 }, -- Shadow Weaving (Rank 2)
[15332] = { ref=15257 }, -- Shadow Weaving (Rank 3)
[15333] = { ref=15257 }, -- Shadow Weaving (Rank 4)
[15334] = { ref=15257 }, -- Shadow Weaving (Rank 5)
-- Shadow Word: Pain
[589] = { "Слово тіні: Біль", "Слово темряви, що завдає {1} шкоди тінню протягом {2} с.#causes {1} Shadow damage over {2} sec", "{1} шкоди тінню кожні {2} с.#{1} Shadow damage every {2} sec" }, -- Shadow Word: Pain (Rank 1)
[594] = { ref=589 }, -- Shadow Word: Pain (Rank 2)
[970] = { ref=589 }, -- Shadow Word: Pain (Rank 3)
[992] = { ref=589 }, -- Shadow Word: Pain (Rank 4)
[2767] = { ref=589 }, -- Shadow Word: Pain (Rank 5)
[10892] = { ref=589 }, -- Shadow Word: Pain (Rank 6)
[10893] = { ref=589 }, -- Shadow Word: Pain (Rank 7)
[10894] = { ref=589 }, -- Shadow Word: Pain (Rank 8)
-- Shadowform
[15473] = { "Тінеобраз", "Прийняти тінеобраз, збільшуючи вашу шкоду тінню на {1}% і зменшуючи отриману фізичну шкоду на {2}%. Однак, у цьому образі ви не можете вимовляти закляття священності.#damage by {1}%#done to you by {2}%", "Ваша шкода тінню збільшена на {1}%. Отриману фізичну шкоду зменшено на {2}%. Ви не можете вимовляти закляття священності.#increased by {1}%#take reduced by {2}%" }, -- Shadowform
-- Shadowguard
[18137] = { "Тінестраж", "Жерця оточують тіні. Коли закляття або атака ближнього чи дальнього бою влучає у заклинача, нападнику буде завдано {1} шкоди тінню. Ця шкода не спричиняє загрози та може бути завдана нападникам лише раз на кілька секунд. Ефект має {2} заряди та триває {3} хв.#struck for {1}#{2} charges#Lasts {3} min", "Завдає {1} шкоди тінню нападникові при отриманні удару. Ця шкода не спричиняє загрози. {2} заряди.#Causes {1}#{2} charges" }, -- Shadowguard (Rank 1)
[19308] = { ref=18137 }, -- Shadowguard (Rank 2)
[19309] = { ref=18137 }, -- Shadowguard (Rank 3)
[19310] = { ref=18137 }, -- Shadowguard (Rank 4)
[19311] = { ref=18137 }, -- Shadowguard (Rank 5)
[19312] = { ref=18137 }, -- Shadowguard (Rank 6)
-- Silence
[15487] = { "Знемовлення", "Знемовлює ціль, запобігаочи вимові заклять протягом {1} с.#for {1} sec", "Знемовлено." }, -- Silence
-- Silent Resolve
[14523] = { "Мовчазна рішучість", "Знижує рівень загрози від ваших заклять на {1}%.#by {1}" }, -- Silent Resolve (Rank 1)
[14784] = { ref=14523 }, -- Silent Resolve (Rank 2)
[14785] = { ref=14523 }, -- Silent Resolve (Rank 3)
[14786] = { ref=14523 }, -- Silent Resolve (Rank 4)
[14787] = { ref=14523 }, -- Silent Resolve (Rank 5)
-- Smite
[585] = { "Кара", "Карає ворога, завдаючи йому від {1} до {2} шкоди святістю.#for {1} to {2}" }, -- Smite (Rank 1)
[591] = { ref=585 }, -- Smite (Rank 2)
[598] = { ref=585 }, -- Smite (Rank 3)
[984] = { ref=585 }, -- Smite (Rank 4)
[1004] = { ref=585 }, -- Smite (Rank 5)
[6060] = { ref=585 }, -- Smite (Rank 6)
[10933] = { ref=585 }, -- Smite (Rank 7)
[10934] = { ref=585 }, -- Smite (Rank 8)
-- Spell Warding
[27900] = { "Охорона від чар", "Зменшує всю отриману шкоду від заклять на {1}%.#by {1}%" }, -- Spell Warding (Rank 1)
[27901] = { ref=27900 }, -- Spell Warding (Rank 2)
[27902] = { ref=27900 }, -- Spell Warding (Rank 3)
[27903] = { ref=27900 }, -- Spell Warding (Rank 4)
[27904] = { ref=27900 }, -- Spell Warding (Rank 5)
-- Spirit Tap
[15270] = { "Витік душі", "Надає вам {1}% ймовірності набути додатково {2}% до вашого духу після вбивства цілі, що дає досвід. Під час ефекту ваша мана відновлюватиметься з {3}% швидкості відновлення протягом вимови заклять. Триває {4} с.#{1}% chance#{2}% bonus#{3}% rate#Lasts {4} sec" }, -- Spirit Tap (Rank 1)
[15271] = { "Витік душі", nil, "Дух збільшено на {1}% та мана відновлюється з {2}% швидкості відновлення протягом вимови заклять.#{1}% and allows {2}%" }, -- Spirit Tap (Rank 1)
[15335] = { ref=15270 }, -- Spirit Tap (Rank 2)
[15336] = { ref=15270 }, -- Spirit Tap (Rank 3)
[15337] = { ref=15270 }, -- Spirit Tap (Rank 4)
[15338] = { ref=15270 }, -- Spirit Tap (Rank 5)
-- Spirit of Redemption
[20711] = { "Дух спокути", "Після смерті жрець перетворюється на духа спокути на {1} с. Дух не може рухатися, атакувати, бути атакованим або стати ціллю будь-яких заклять чи ефектів. Перебуваючи в такому стані, жрець може безвитратно вимовляти будь-які цілющі закляття. Після закінчення дії ефекту жрець остаточно вмирає.#for {1} sec" }, -- Spirit of Redemption
[27827] = { "Дух спокути", nil, "Ви стали могутнішим, ніж будь-хто міг уявити." }, -- Spirit of Redemption
-- Spiritual Guidance
[14901] = { "Духовне покровительство", "Збільшує шкоду та зцілення заклять на {1}% від вашого духу.#by up to {1}" }, -- Spiritual Guidance (Rank 1)
[15028] = { ref=14901 }, -- Spiritual Guidance (Rank 2)
[15029] = { ref=14901 }, -- Spiritual Guidance (Rank 3)
[15030] = { ref=14901 }, -- Spiritual Guidance (Rank 4)
[15031] = { ref=14901 }, -- Spiritual Guidance (Rank 5)
-- Spiritual Healing
[14898] = { "Духовне зцілення", "Збільшує обсяг зцілення вашими цілющими закляттями на {1}%.#by {1}" }, -- Spiritual Healing (Rank 1)
[15349] = { ref=14898 }, -- Spiritual Healing (Rank 2)
[15354] = { ref=14898 }, -- Spiritual Healing (Rank 3)
[15355] = { ref=14898 }, -- Spiritual Healing (Rank 4)
[15356] = { ref=14898 }, -- Spiritual Healing (Rank 5)
-- Starshards
[10797] = { "Зорескалки", "Сипле зорескалками на голову вибраного ворога, завдаючи {1} шкоди арканою протягом {2} с.#causing {1}#over {2} sec", "{1} шкоди арканою протягом {2} с.#{1} Arcane damage over {2} sec" }, -- Starshards (Rank 1)
[19296] = { ref=10797 }, -- Starshards (Rank 2)
[19299] = { ref=10797 }, -- Starshards (Rank 3)
[19302] = { ref=10797 }, -- Starshards (Rank 4)
[19303] = { ref=10797 }, -- Starshards (Rank 5)
[19304] = { ref=10797 }, -- Starshards (Rank 6)
[19305] = { ref=10797 }, -- Starshards (Rank 7)
-- Touch of Weakness
[2652] = { "Дотик слабкості", "Наступна атака ближнього бою проти заклинача завдасть {1} шкоди тінню та зменшить шкоду нападника на {2} протягом {3} хв.#cause {1}#by {2} for {3} min", "Наступна ворожа атака ближнього бою завдасть цілі шкоди та послабить її." }, -- Touch of Weakness (Rank 1)
[2943] = { "Дотик слабкості", nil, "Фізичну шкоду зменшено на {1}.#by {1}" }, -- Touch of Weakness (Rank 1)
[19249] = { ref=2943 }, -- Touch of Weakness (Rank 2)
[19251] = { ref=2943 }, -- Touch of Weakness (Rank 3)
[19252] = { ref=2943 }, -- Touch of Weakness (Rank 4)
[19253] = { ref=2943 }, -- Touch of Weakness (Rank 5)
[19254] = { ref=2943 }, -- Touch of Weakness (Rank 6)
[19261] = { ref=2652 }, -- Touch of Weakness (Rank 2)
[19262] = { ref=2652 }, -- Touch of Weakness (Rank 3)
[19264] = { ref=2652 }, -- Touch of Weakness (Rank 4)
[19265] = { ref=2652 }, -- Touch of Weakness (Rank 5)
[19266] = { ref=2652 }, -- Touch of Weakness (Rank 6)
-- Unbreakable Will
[14522] = { "Незламна воля", "Збільшує вашу ймовірність протистояти приголомшенню, страху та безмовності на додаткові {1}%.#additional {1}" }, -- Unbreakable Will (Rank 1)
[14788] = { ref=14522 }, -- Unbreakable Will (Rank 2)
[14789] = { ref=14522 }, -- Unbreakable Will (Rank 3)
[14790] = { ref=14522 }, -- Unbreakable Will (Rank 4)
[14791] = { ref=14522 }, -- Unbreakable Will (Rank 5)
-- Vampiric Embrace
[15286] = { "Вампірські обійми", "Вражає вашу ціль енергією тіні, яка зцілює усіх членів групи на {1}% від заподіяної вами шкоди закляттями тіні протягом {2} хв.#healed for {1}#deal for {2} min", "Зцілює групу жерця на {1}% від його шкоди закляттями тіні.#{1}% of Shadow" }, -- Vampiric Embrace
-- Wand Specialization
[14524] = { "Спеціалізація на жезлах", "Збільшує шкоду жезлів на {1}%.#by {1}" }, -- Wand Specialization (Rank 1)
[14525] = { ref=14524 }, -- Wand Specialization (Rank 2)
[14526] = { ref=14524 }, -- Wand Specialization (Rank 3)
[14527] = { ref=14524 }, -- Wand Specialization (Rank 4)
[14528] = { ref=14524 }, -- Wand Specialization (Rank 5)
-- Weakened Soul
[6788] = { "Знесилена душа", nil, "Не може бути захищений \"Словом сили: Щит\" повторно." }, -- Weakened Soul

}

for k, v in pairs(priest_spells) do addonTable.spell[k] = v end
