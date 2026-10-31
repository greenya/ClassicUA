local _, addonTable = ...

local subtitle = {
    movie = {
        [27] = {
            name = "Вступ The Burning Crusade",
            position = 200,
            -- Imprisoned for ten thousand years.
            [1] = "Ув'язнений десять тисяч років.",
            -- Banished from my own homeland.
            [2] = "Вигнаний з власної батьківщини.",
            -- And now you dare enter MY realm.
            [3] = "І тепер ви смієте вступити до МОЇХ володінь.",
            -- You are not prepared.
            [4] = "Ви не готові.",
            -- YOU ARE NOT PREPARED!
            [5] = "ВИ НЕ ГОТОВІ!",
        },
    },

    intro = {
        Draenei = {
            -- One month ago, a terrible explosion tore open the skies above northern Kalimdor.
            { 0, 7, "Місяць тому жахливий вибух розітнув небеса над північним Калімдором." },
            -- At that moment, the great ship Exodar, plummeted from the heavens and crashed upon the world of Azeroth.
            { 7, 15, "Тієї миті великий корабель Екзодар упав з небес і врізався у світ Азерот." },
            -- Having fled the ravaged world of Outland, the noble draenei used the dimension traveling Exodar to reach safe haven.
            { 15, 24, "Благородні дренеї скористалися міжвимірним Екзодаром, щоб втекти зі сплюндрованого світу Позамежжя і дістатися безпечного притулку." },
            -- Inspired by tales of the heroic Alliance that stood against the might of the Burning Legion, the draenei have come to enlist aid in retaking their shattered homeland.
            { 24, 35, "Натхненні переказами про героїчний Альянс, що вистояв проти могутності Палаючого Легіону, дренеї прибули просити допомоги у відвоюванні своєї зруйнованої батьківщини." },
            -- Dedicated to preserving life and upholding the tenets of the Holy Light, the draenei hope to gather a new coalition of warriors to battle the Burning Legion and put a halt to its horrific Burning Crusade.
            { 35, 49.5, "Віддані збереженню життя та заповідям Святого Світла, дренеї сподіваються зібрати нове військо, щоб виступити проти Палаючого Легіону та покласти край його жаскому Палаючому Походу." },
            -- Armed only with courage and their unshakable faith in the Light, the draenei look forward to finding the Alliance and ushering them towards the destiny that awaits beyond the skies of Azeroth.
            { 49.5, 63, "Озброєні лише відвагою та непохитною вірою у Світло, дренеї прагнуть знайти Альянс і разом із ним вирушити назустріч долі, що чекає за небесами Азероту." },
            -- Now, the fate of two worlds rests in your hands.
            { 63, 69.5, "Тепер доля двох світів у Ваших руках." },
        },
        BloodElf = {
            -- For nearly seven thousand years, the high elves cultivated a shining magical kingdom hidden deep within the forests of northern Lordaeron.
            { 1, 11.5, "Майже сім тисяч років вищі ельфи плекали осяйне магічне королівство, приховане в глибині лісів північного Лордерону." },
            -- But five years ago, the undead Scourge invaded Quel'Thalas and drove the elves to the brink of extinction.
            { 11.5, 20.5, "Але п'ять років тому невмерлі Скари вторглися до Квел'Таласа й поставили ельфів на межу вимирання." },
            -- Led by the evil death knight Arthas, the Scourge destroyed the mystical Sunwell, thereby severing the elves from the source of their arcane power.
            { 20.5, 32, "Під проводом лихого лицаря смерті Артаса Скара знищила містичний Сонячний Колодязь, позбавивши ельфів джерела їхньої магічної сили." },
            -- Though the scars of that conflict are evident, the remaining elves have banded together and retaken much of their homeland.
            { 32, 41.5, "Хоча шрами тієї війни й досі помітні, уцілілі ельфи згуртувалися та відвоювали значну частину батьківщини." },
            -- Calling themselves "blood elves", these grim survivors are committed to regaining the vast powers they once commanded.
            { 41.5, 50.4, "Назвавшись «ельфами крові», ці суворі вцілілі поклялися повернути колишню безмежну могутність." },
            -- Inspired by the leadership of their beloved prince, Kael'thas Sunstrider, the blood elves now seek new sources of arcane magic and the means of defending their land against the undying horrors of the Scourge.
            { 50.4, 65.5, "Натхненні своїм улюбленим принцем Кель'тасом Сонячним Блукачем, ельфи крові шукають нові джерела арканічної магії та способи захистити свою землю від невмирущих жахіть Скари." },
            -- As one of the few surviving blood elves, you must master your thirst for magic and help shape the destiny of your people.
            { 65.5, 77, "Ви — {стать:один:одна} з небагатьох уцілілих ельфів крові, тож мусите приборкати свою жагу до магії та допомогти визначити майбутнє свого народу." },
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
