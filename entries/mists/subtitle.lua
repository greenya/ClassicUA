local _, addonTable = ...

local subtitle = {
    movie = {
        [115] = {
            name = "Вступ Mists of Pandaria",
            position = 500,
            -- To ask why we fight…
            [1] = "Питати, чому ми боремося...",
            -- … is to ask why the leaves fall.
            [2] = "...це питати, чому падає листя.",
            -- It is in their nature.
            [3] = "Така їхня природа.",
            -- Perhaps, there is a better question.
            [4] = "Та, можливо, є краще питання.",
            -- Why do we fight?
            [5] = "Чому ж ми боремося?",
            -- To protect Home, and Family…
            [6] = "Щоб захистити домівку та родину...",
            -- To preserve Balance, and bring Harmony
            [7] = "Щоб зберегти рівновагу та принести гармонію.",
            -- For my kind, the true question is:
            [8] = "Для мого роду справжнє питання таке:",
            -- What is worth fighting for?
            [9] = "за що варто боротися?",
        },
        [117] = { -- Wandering Isle finale (Aysa and Ji at the wound)
            name = "Мандрівний острів",
            position = 501,
            -- Aysa?
            [1] = "Айсо?",
            -- He's dying...
            [2] = "Він помирає...",
            -- His wounds can be healed...
            [3] = "Його рани можна зцілити...",
            -- I hope you can forgive yourself for what you have done to him.
            [4] = "Сподіваюся, ти зможеш пробачити собі те, що з ним зробив.",
        },
        [118] = { -- The Emperor's message (battle at the green serpent statue in the Jade Forest)
            name = "Послання імператора",
            position = 502,
            -- A message must lie within... what fate did the emperor foresee?
            [1] = "Послання мусить критися всередині... яку ж долю провидів імператор?",
        },
        [119] = { -- Alliance landfall (Varian and the White Pawn)
            name = "Висадка Альянсу",
            position = 503,
            -- We've made a thorough inspection of the wreckage, Your Majesty.
            [1] = "Ми ретельно оглянули уламки, Ваша Величносте.",
            -- There is no sign of Admiral Taylor or his ship.
            [2] = "Ані сліду адмірала Тейлора чи його корабля.",
            -- Two hundred ships at my disposal,
            [3] = "Двісті кораблів у моєму розпорядженні,",
            -- yet the one carrying my SON goes missing!
            [4] = "а зник саме той, що віз мого СИНА!",
            -- What of their last message? Show me whatever you have!
            [5] = "Що було в їхньому останньому повідомленні? Покажіть усе, що маєте!",
            -- ...we have been drawn off course...Horde airfleet...many casualties...
            [6] = "...нас знесло з курсу... повітряний флот Орди... багато загиблих...",
            -- shipwrecked...on an uncharted isle...but the White Pawn is accounted for.
            [7] = "...розбилися... на невідомому острові... але Білий Пішак живий.",
            -- Repeat: The White Pawn is safe.
            [8] = "Повторюю: Білий Пішак у безпеці.",
            -- Anduin...
            [9] = "Андуїн...",
            -- ...surprise attack! Requesting immediate--If anyone's receiving--
            [10] = "...раптовий напад! Просимо негайного— Якщо хтось чує—",
            -- Sir, the Seventh Fleet has already been dispatched,
            [11] = "Пане, Сьомий флот уже вирушив,",
            -- but it could take weeks before it--
            [12] = "але можуть минути тижні, перш ніж він—",
            -- There's no time to waste!
            [13] = "Не можна гаяти часу!",
            -- We'll send a small, elite force to secure this new land
            [14] = "Ми відправимо малий загін найкращих, щоб закріпитися на цій новій землі",
            -- and bring back my SON!
            [15] = "і повернути мого СИНА!",
        },
        [120] = { -- Horde landfall (Garrosh and the general)
            name = "Висадка Орди",
            position = 504,
            -- I am pleased to report that the battle at sea goes well, Warchief.
            [1] = "Радий доповісти, що битва на морі йде добре, вождю.",
            -- Our forces report decisive victories off the coast of Tanaris and Tol Barad.
            [2] = "Наші сили звітують про вирішальні перемоги біля берегів Танарісу й Тол-Бараду.",
            -- Alliance blood spills. This pleases me, General.
            [3] = "Кров Альянсу ллється. Це мене тішить, генерале.",
            -- There is more... I've received word that our southern fleet engaged an Alliance envoy.
            [4] = "Є ще дещо... Мені доповіли, що наш південний флот перестрів посланців Альянсу.",
            -- We chased the royal flagship until it ran aground...
            [5] = "Ми гнали королівський флагман, доки він не сів на мілину...",
            -- Aground? Where?!
            [6] = "На мілину? Де?!",
            -- Apparently, they found a massive uncharted landmass, shrouded, by dense mists...
            [7] = "Схоже, вони знайшли величезний недосліджений суходіл, оповитий густими туманами...",
            -- And you let the ALLIANCE get there first?!  Redirect the invasion fleet!
            [8] = "І ви дозволили АЛЬЯНСУ дістатися туди першим?! Розвернути флот!",
            -- General, YOU and your best veterans will pave our way...
            [9] = "Генерале, ВИ та ваші найкращі ветерани прокладете нам шлях...",
            -- STORM the shore and PAINT THIS NEW CONTINENT RED!
            [10] = "ШТУРМУЙТЕ берег і ЗАФАРБУЙТЕ ЦЕЙ НОВИЙ КОНТИНЕНТ У ЧЕРВОНЕ!",
        },
        [151] = { -- Siege of Orgrimmar ending (Horde)
            name = "Облога Орґріммара (Орда)",
            position = 505,
            -- You disappoint me, Garrosh.
            [1] = "Ти розчарував мене, Ґарроше.",
            -- You are not worthy of your father's legacy.
            [2] = "Ти не гідний спадку свого батька.",
            -- His punishment is not for you alone to decide.
            [3] = "Не тобі одному вирішувати, як його покарати.",
            -- I won't let you take him.
            [4] = "Я не дозволю тобі забрати його.",
            -- We have all suffered from his atrocities.
            [5] = "Ми всі постраждали від його звірств.",
            -- My people, more than any other.
            [6] = "Мій народ — більше за всіх.",
            -- Let him stand trial in Pandaria.
            [7] = "Нехай постане перед судом у Пандарії.",
            -- There, we will mete out justice for all.
            [8] = "Там ми відміряємо справедливість для всіх.",
            -- The Horde needs its true Warchief now, more than ever.
            [9] = "Орді як ніколи потрібен її справжній вождь.",
            -- Yes, but It was you that held the Horde together during this madness.
            [10] = "Так, але саме ти тримав Орду вкупі під час цього безумства.",
            -- It was you that protected our honor.
            [11] = "Саме ти захистив нашу честь.",
            -- From this day forward, Vol'jin - If you lead, I will follow.
            [12] = "Відтепер, Вол'джине: якщо ти поведеш — я піду за тобою.",
            -- I am not worthy…
            [13] = "Я не гідний...",
            -- But I will give my all.
            [14] = "Але я віддам усе, що маю.",
            -- For the Horde.
            [15] = "За Орду.",
            -- I will speak to your Warchief!
            [16] = "Я говоритиму з вашим вождем!",
            -- I speak for the Horde.
            [17] = "Я говорю за Орду.",
            -- Very well.
            [18] = "Що ж, гаразд.",
            -- The Horde has committed heinous crimes, Vol'jin.
            [19] = "Орда скоїла тяжкі злочини, Вол'джине.",
            -- But some among you fought against Garrosh's tyranny.
            [20] = "Але дехто з вас боровся проти тиранії Ґарроша.",
            -- For that, I am willing to end this bloodshed.
            [21] = "За це я готовий покласти край цьому кровопролиттю.",
            -- But know this…
            [22] = "Але затям...",
            -- If your Horde fails to uphold honor, as Garrosh did…
            [23] = "Якщо твоя Орда зневажить честь, як зневажив Ґаррош...",
            -- We will end you.
            [24] = "Ми покінчимо з вами.",
        },
        [152] = { -- Siege of Orgrimmar ending (Alliance)
            name = "Облога Орґріммара (Альянс)",
            position = 506,
            -- You disappoint me, Garrosh.
            [1] = "Ти розчарував мене, Ґарроше.",
            -- You are not worthy of your father's legacy.
            [2] = "Ти не гідний спадку свого батька.",
            -- His punishment is not for you alone to decide.
            [3] = "Не тобі одному вирішувати, як його покарати.",
            -- I won't let you take him.
            [4] = "Я не дозволю тобі забрати його.",
            -- We have all suffered from his atrocities.
            [5] = "Ми всі постраждали від його звірств.",
            -- My people, more than any other.
            [6] = "Мій народ — більше за всіх.",
            -- Let him stand trial in Pandaria.
            [7] = "Нехай постане перед судом у Пандарії.",
            -- There, we will mete out justice for all.
            [8] = "Там ми відміряємо справедливість для всіх.",
            -- Ugh … Look at them.
            [9] = "Ух... Поглянь на них.",
            -- Already they plot against us. Seize this moment, Varian.
            [10] = "Вони вже плетуть змови проти нас. Скористайся моментом, Варіане.",
            -- Dismantle the Horde.
            [11] = "Знищ Орду.",
            -- Guardsmen!
            [12] = "Варто!",
            -- Father – what are you doing?
            [13] = "Батьку, що ти робиш?",
            -- What a king must do.
            [14] = "Те, що мусить робити король.",
            -- I will speak to your Warchief!
            [15] = "Я говоритиму з вашим вождем!",
            -- I speak for the Horde.
            [16] = "Я говорю за Орду.",
            -- Very well.
            [17] = "Що ж, гаразд.",
            -- The Horde has committed heinous crimes, Vol'jin.
            [18] = "Орда скоїла тяжкі злочини, Вол'джине.",
            -- But some among you fought against Garrosh's tyranny.
            [19] = "Але дехто з вас боровся проти тиранії Ґарроша.",
            -- For that, I am willing to end this bloodshed.
            [20] = "За це я готовий покласти край цьому кровопролиттю.",
            -- But know this…
            [21] = "Але затям...",
            -- If your Horde fails to uphold honor, as Garrosh did…
            [22] = "Якщо твоя Орда зневажить честь, як зневажив Ґаррош...",
            -- We will end you.
            [23] = "Ми покінчимо з вами.",
        },
    },

    intro = {
        Pandaren = {
            -- You are a pandaren born and raised on the mysterious Wandering Isle.
            { 0, 7.7, "Ви — {стать:пандарен, народжений і вихований:пандаренка, народжена і вихована} на таємничому Мандрівному острові." },
            -- While many of your fellow pandaren prefer a tranquil life, the lure of adventure burns in your blood.
            { 7.7, 17.2, "Хоча багато Ваших одноплемінників віддають перевагу спокійному життю, у Вашій крові палає жага пригод." },
            -- Recently, the Wandering Isle has begun erratically weaving about the world's oceans.
            { 17.2, 24.5, "Останнім часом Мандрівний острів почав безладно блукати океанами світу." },
            -- The air grows cold and your island home is spiraling toward disaster.
            { 24.5, 31, "Повітря холоднішає, і Ваша острівна домівка стрімко наближається до катастрофи." },
            -- As one of the most promising of students at Master Shang's monastery, you may just be the salvation for your people, but first you must complete your training.
            { 31, 45.5, "Як {стать:один із найперспективніших учнів:одна з найперспективніших учениць} монастиря майстра Шана, можливо, саме Ви станете порятунком для свого народу — але спершу мусите завершити навчання." },
        },
    },
}

if addonTable.subtitle then
    for k, v in pairs(subtitle) do
        if type(addonTable.subtitle[k]) == "table" and type(v) == "table" then
            for vk, vv in pairs(v) do
                addonTable.subtitle[k][vk] = vv
            end
        else
            addonTable.subtitle[k] = v
        end
    end
else
    addonTable.subtitle = subtitle
end
