local _, addonTable = ...

local subtitle = {
    movie = {
        [14] = {
            name = "Брама гніву",
            position = 301,
            -- Highlord Bolvar! Thank the Light!
            [1] = "Верховний повелителю Болваре! Дякувати Світлу!",
            -- For Lordaeron!
            [2] = "За Лордерон!",
            -- For the Alliance!
            [3] = "За Альянс!",
            -- Back, you mindless wretches!
            [4] = "Назад, безмозкі почвари!",
            -- Fight on, brothers!
            [5] = "Боріться, браття!",
            -- Rise up, sons of the Horde!
            [6] = "Повстаньте, сини Орди!",
            -- Blood and glory await us!
            [7] = "Кров і слава чекають на нас!",
            -- Lok'tar ogar! For the Horde!
            [8] = "Лок'тар оґар! За Орду!",
            -- FOR THE HORDE!
            [9] = "ЗА ОРДУ!",
            -- I was wondering if you'd show up!
            [10] = "А я все думав, чи ти з'явишся!",
            -- I couldn't let the Alliance have ALL the fun today!
            [11] = "Не міг же я лишити всі розваги Альянсові!",
            -- Arthas! The blood of your father,
            [12] = "Артасе! Кров твого батька,",
            -- of your people,
            [13] = "твого народу,",
            -- demands justice!
            [14] = "вимагає правосуддя!",
            -- Come forth, coward,
            [15] = "Виходь, боягузе,",
            -- and answer for your crimes!
            [16] = "і відповідай за свої злочини!",
            -- You speak of justice?
            [17] = "Ти говориш про правосуддя?",
            -- Of cowardice?
            [18] = "Про боягузтво?",
            -- I will show you the justice of the grave
            [19] = "Я покажу тобі правосуддя смерті",
            -- and the true meaning of fear.
            [20] = "і що таке справжній страх.",
            -- Enough talk! Let it be finished!
            [21] = "Досить балачок! Покінчімо з цим!",
            -- You will pay for all the lives you've stolen, traitor.
            [22] = "Ти заплатиш за всі вкрадені життя, зраднику.",
            -- Boldly stated, but there is nothing you can--
            [23] = "Сміливо сказано, але ти нічого не можеш—",
            -- What?
            [24] = "Що?",
            -- Did you think we had forgotten?
            [25] = "Гадали, ми забули?",
            -- Did you think we had forgiven?
            [26] = "Гадали, ми пробачили?",
            -- Behold, now, the terrible vengeance of the Forsaken!
            [27] = "Узріть же страшну помсту Відречених!",
            -- Sylvanas...
            [28] = "Сильвана...",
            -- Death to the Scourge! And death to the living!
            [29] = "Смерть Скарі! І смерть живим!",
            -- Fall back!
            [30] = "Відступаємо!",
            -- This isn't over.
            [31] = "Це ще не кінець.",
            -- Now, all can see
            [32] = "Тепер усі бачать:",
            -- this is the hour of the Forsaken.
            [33] = "це час Відречених.",
            -- We're finished.
            [34] = "Нам кінець.",
            -- No escape...
            [35] = "Порятунку немає...",
            -- for any of us.
            [36] = "нікому з нас.",
        },
        [16] = {
            name = "Падіння Короля-Ліча",
            position = 302,
            -- Father?
            [1] = "Батьку?",
            -- Is it... over?
            [2] = "Це... кінець?",
            -- At long last.
            [3] = "Нарешті.",
            -- No king rules forever, my son.
            [4] = "Жоден король не править вічно, сину мій.",
            -- I see... only darkness... before me...
            [5] = "Я бачу... лише темряву... попереду...",
            -- Without its master's command,
            [6] = "Без наказу свого володаря",
            -- the restless Scourge will become an even greater threat to this world.
            [7] = "неспокійна Скара стане ще більшою загрозою для цього світу.",
            -- Control must be maintained...
            [8] = "Контроль потрібно зберегти...",
            -- There must always be...
            [9] = "Завжди мусить бути...",
            -- a Lich King...
            [10] = "Король-Ліч...",
            -- The weight of such a burden...
            [11] = "Тягар такої ноші...",
            -- ... It must be mine,
            [12] = "...він має стати моїм,",
            -- for there is no other to--
            [13] = "бо більше нікому—",
            -- Tirion...
            [14] = "Тіріоне...",
            -- You hold a grim destiny in your hands, brother
            [15] = "У твоїх руках похмура доля, брате,",
            -- ... but it is not your own.
            [16] = "...але вона не твоя.",
            -- Bolvar...
            [17] = "Болваре...",
            -- By all that's holy...
            [18] = "Заради всього святого...",
            -- The dragons' flame... sealed my fate...
            [19] = "Полум'я драконів... запечатало мою долю...",
            -- The world of the living can no longer comfort me.
            [20] = "В світі живих більш немає місця для мене.",
            -- Place the crown upon my head, Tirion.
            [21] = "Поклади корону мені на голову, Тіріоне.",
            -- Forevermore - I will be the jailor of the damned.
            [22] = "Віднині й навіки я буду тюремником проклятих.",
            -- NO, old friend... I cannot...
            [23] = "НІ, старий друже... Я не можу...",
            -- DO IT, TIRION!
            [24] = "ЗРОБИ ЦЕ, ТІРІОНЕ!",
            -- You and these brave heroes have your own destinies to fulfill.
            [25] = "На тебе й цих хоробрих героїв чекають власні долі.",
            -- This last act of service... is mine.
            [26] = "Ця остання справа... моя.",
            -- You will not be forgotten... brother.
            [27] = "Тебе не забудуть... брате.",
            -- I MUST be forgotten, Tirion!
            [28] = "Мене МУСЯТЬ забути, Тіріоне!",
            -- If the world is to live free from the tyranny of fear - they must never know what was done here today.
            [29] = "Якщо ми хочемо звільнити світ від тиранії страху — ніхто не повинен дізнатися, що тут сьогодні сталося.",
            -- Tell them only that the Lich King is dead...
            [30] = "Скажи всім лише, що Король-Ліч мертвий...",
            -- and that Bolvar Fordragon died with him...
            [31] = "і що Болвар Фордраґон загинув разом із ним...",
            -- NOW GO.
            [32] = "А ТЕПЕР ІДІТЬ.",
            -- LEAVE THIS PLACE - AND NEVER RETURN.
            [33] = "ПОКИНЬТЕ ЦЕ МІСЦЕ — І НІКОЛИ НЕ ПОВЕРТАЙТЕСЯ.",
        },
        [18] = {
            name = "Вступ Wrath of the Lich King",
            position = 300,
            -- My son,
            [1] = "Сину мій,",
            -- the day you were born, the very forests of Lordaeron whispered the name
            [2] = "у день, коли ти народився, самі ліси Лордерону прошепотіли твоє ім'я",
            -- Arthas.
            [3] = "Артас.",
            -- My child,
            [4] = "Дитя моє,",
            -- I watched with pride as you grew into a weapon
            [5] = "я з гордістю спостерігав, як ти ставав знаряддям",
            -- of righteousness.
            [6] = "праведності.",
            -- Remember, our line has always ruled with wisdom and strength.
            [7] = "Пам'ятай: наш рід завжди правив із мудрістю та силою.",
            -- And I know you will show restraint when exercising your great power.
            [8] = "І я знаю, що ти будеш стриманим, користуючись своєю великою владою.",
            -- But the truest victory, my son,
            [9] = "Але найправдивіша перемога, сину мій, —",
            -- is stirring the hearts of your people.
            [10] = "це запалити серця свого народу.",
            -- I tell you this,
            [11] = "Я кажу тобі це,",
            -- for when my days have come to an end,
            [12] = "бо коли мої дні добіжать кінця,",
            -- you shall be king.
            [13] = "королем станеш ти.",
        },
    },

    intro = {
        DEATHKNIGHT = {
            level = 55,
            -- A hero... that's what you once were.
            { 0.5, 5, "Герой... ось ким Ви колись були." },
            -- You stood boldly against the Shadow and purchased another dawn for the world... with your life.
            { 5, 12.5, "Ви сміливо постали проти Тіні та здобули світові ще один світанок... ціною власного життя." },
            -- But the evil you fought is not so easily banished; the victory you claimed, not so easily held.
            { 12.5, 20, "Але зло, з яким Ви боролися, не так легко вигнати, а здобуту перемогу — не так легко втримати." },
            -- For now, the specter of death looms over the world yet again, and it has found new champions to bring about its final reign.
            { 20, 29, "Бо нині привид смерті знову навис над світом і знайшов нових поборників, готових привести його до остаточного панування." },
            -- Knights of darkness, wielding runes of death and destruction, bound by the will of the Lich King.
            { 29, 38, "Лицарі темряви, що володіють рунами смерті й руйнування, скуті волею Короля-Ліча." },
            -- This is the hour of their ascension! This is the hour of your dark rebirth...
            { 38, 48, "Це година їхнього вознесіння! Це година Вашого темного переродження..." },
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
