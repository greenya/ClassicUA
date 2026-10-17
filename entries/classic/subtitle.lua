local _, addonTable = ...

local subtitle = {
    -- [movie id] = { name = title in the settings, position = place in their list, expansion × 100 + n,
    --     [order of the line in the movie's subtitle file] = translation }
    movie = {
        [2] = {
            name = "Вступ World of Warcraft",
            position = 100,
            -- Four years have passed since the mortal races banded together and stood united against the might of the Burning Legion.
            [1] = "Чотири роки минуло відтоді, як смертні раси об'єдналися, щоб разом протистояти могутності Палаючого Легіону.",
            -- Though Azeroth was saved, the tenuous pact between the Horde and the Alliance has all but evaporated.
            [2] = "Хоча Азерот було врятовано, крихкий союз між Ордою та Альянсом майже розпався.",
            -- The drums of war thunder once again.
            [3] = "Барабани війни гримлять знову.",
        },
    },

    -- [english line] = translation, for the game's lines out of movies
    text = {
    },

    -- race (and death knight) introductions
    -- [race file name, or class file name for death knights] = { level = starting level (1 if not set),
    --     { start second, end second, translation }, ... }
    intro = {
        Human = {
            -- The noble humans of Stormwind are a proud, tenacious race.
            { 14.5, 20, "Шляхетні люди Штормовію — горда та непохитна раса." },
            -- Though the recent invasion of the demonic Burning Legion decimated their sister kingdom of Lordaeron, the defenders of Stormwind stand vigilant against any who would threaten the sanctity of their lands.
            { 20, 33.6, "Нещодавнє вторгнення демонічного Палаючого Легіону спустошило їхнє братнє королівство Лордерон, але захисники Штормовію пильно стережуть свої землі від будь-якої загрози." },
            -- Nestled in the foothills of Elwynn Forest, Stormwind City is one of the last bastions of human power in the world.
            { 33.6, 42, "Розташоване серед пагорбів Ельвиннського лісу, місто Штормовій — один з останніх бастіонів людської могутності у світі." },
            -- Ruled by the child king, Anduin Wrynn, the people of Stormwind remain steadfast in their commitment to the Grand Alliance.
            { 42, 51, "Під керівництвом юного короля Андуїна Рінна населення Штормовію залишається відданим Великому Альянсу." },
            -- Backed by their stalwart allies, the armies of Stormwind have been called away to fight the savage Horde on distant battlefields.
            { 51, 60, "Разом із надійними союзниками війська Штормовію вирушили на далекі поля битв, щоб протистояти жорстокій Орді." },
            -- With the armies gone, the defense of Stormwind now falls to its proud citizens.
            { 60, 67, "Тепер, коли війська пішли, захист Штормовію ліг на плечі його гордих мешканців." },
            -- You must defend the kingdom against the foul mongrels that encroach upon it and hunt down the subversive traitors who seek to destroy it from within.
            { 67, 78, "Ви мусите захистити королівство від бридких покидьків, що зазіхають на його землі, і вистежити підступних зрадників, які прагнуть знищити його зсередини." },
            -- Now is the time for heroes. Now humanity's greatest chapter can be told.
            { 78, 86, "Настав час героїв. Настав час написати найвеличніший розділ історії людства." },
        },
        Dwarf = {
            -- The stoic dwarves of Ironforge spent countless generations mining treasures from deep within the earth.
            { 0, 7.5, "Незворушні дворфи Залізогарта покоління за поколінням видобували скарби з земних глибин." },
            -- Hidden within their impregnable stronghold of Ironforge Mountain, they rarely ventured beyond the wintry peaks of Dun Morogh.
            { 7.5, 16, "Сховані у неприступній твердині гори Залізогарт, вони рідко виходили за межі засніжених вершин Дун-Морогу." },
            -- Recently however, the dwarves unearthed a series of ruins that held secrets to their ancient heritage.
            { 16, 23, "Та нещодавно дворфи виявили руїни, що приховували таємниці їхнього давнього минулого." },
            -- Driven to discover the truth about his people's fabled origins, the great King Magni Bronzebeard ordered that the dwarves shift their industry from mining to archaeology.
            { 23, 35, "Прагнучи дізнатися правду про легендарне походження свого народу, великий король Маґні Бронзобородий наказав дворфам змінити ремесло з гірництва на археологію." },
            -- As part of the Grand Alliance, the stalwart dwarven armies have been called away to battle the merciless Horde in faraway lands.
            { 35, 43, "У складі Великого Альянсу непохитні війська дворфів вирушили на далекі поля битв, щоб протистояти безжальній Орді." },
            -- In these perilous times, the defense of the mountain kingdom falls to brave dwarves like you.
            { 43, 50, "У ці небезпечні часи захист гірського королівства лягає на плечі хоробрих дворфів, таких як Ви." },
            -- The spirits of the ancient kings watch over you, and the very mountains are your strength.
            { 50, 56.5, "Духи стародавніх королів пильнують Вас, а самі гори надають Вам сили." },
            -- The future of your people is in your hands.
            { 56.5, 60, "Майбутнє Вашого народу у Ваших руках." },
        },
        Gnome = {
            -- The eccentric, often brilliant gnomes are held as one of the most peculiar races of the world.
            { 0, 7, "Ексцентричні, часто геніальні гноми вважаються однією з найдивакуватіших рас світу." },
            -- With their obsession for developing radical new technologies and constructing marvels of mind-bending engineering, it's a wonder that any gnomes have survived to proliferate.
            { 7, 18.5, "Зважаючи на їхню одержимість новітніми технологіями та запаморочливими інженерними винаходами, дивно, що гноми взагалі вижили й розплодилися." },
            -- Over the years, the gnomes have contributed ingenious weapons to aid the Grand Alliance in its fierce battles against the Horde.
            { 18.5, 27, "Роками гноми постачали хитромудру зброю Великому Альянсу в його запеклих битвах з Ордою." },
            -- Thriving in the wondrous techno-city of Gnomeregan, the gnomes shared the resources of the forested peaks of Dun Morogh with their dwarven cousins for generations.
            { 27, 37, "Процвітаючи в дивовижному технологічному місті Гномреґані, гноми поколіннями ділили багатства лісистих вершин Дун-Морогу зі своїми родичами-дворфами." },
            -- Yet recently, a barbaric menace rose up from the bowels of the earth and invaded Gnomeregan.
            { 37, 44, "Але нещодавно з надр землі постала варварська загроза і вдерлася до Гномреґану." },
            -- Aided by their dwarven allies, the gnomes fought a valiant battle to save their beloved city. Nevertheless, Gnomeregan was irrevocably lost.
            { 44, 55, "За підтримки союзників-дворфів гноми відважно боролися за своє улюблене місто. Та попри все, Гномреґан було втрачено назавжди." },
            -- The surviving gnomes fled to the safety of the dwarf stronghold of Ironforge. There they remained; devising strategies to retake their city.
            { 55, 65.5, "Уцілілі гноми втекли під захист дворфської твердині Залізогарта. Там вони й залишилися, розробляючи плани повернення свого міста." },
            -- As a gnome of proud stand, it falls to you to answer the challenge and lead your curious people to a brighter future.
            { 65.5, 77, "Ви — {стать:гном:гномка} гордого роду, тож саме Вам належить прийняти виклик і повести свій допитливий народ до світлішого майбутнього." },
        },
        NightElf = {
            -- For ten thousand years, the immortal night elves cultivated a druidic society within the shadowed recesses of Ashenvale Forest.
            { 2, 11.4, "Десять тисяч років безсмертні нічні ельфи плекали своє друїдське суспільство в тінистих хащах Ясенедолу." },
            -- Yet recently, the catastrophic invasion of the Burning Legion shattered the tranquility of their ancient civilization.
            { 11.4, 21, "Але нещодавно катастрофічне вторгнення Палаючого Легіону зруйнувало спокій їхньої стародавньої цивілізації." },
            -- Led by the Arch-Druid Malfurion Stormrage and the Priestess Tyrande Whisperwind, the mighty night elves rose to challenge the demonic onslaught.
            { 21, 31.4, "На чолі з архідруїдом Малфуріоном Шаленством Бурі та жрицею Тірандою Шелест Вітру могутні нічні ельфи постали проти демонічної навали." },
            -- Though victorious, the night elves were forced to sacrifice their cherished immortality and watch their beloved forests burn.
            { 31.4, 42, "Ельфи здобули перемогу, але натомість пожертвували своїм заповітним безсмертям і мусили дивитися, як палають їхні улюблені ліси." },
            -- Seeking to regain their immortality, a number of wayward druids conspired to plant a special tree that would reestablish a link between their spirits and the eternal world.
            { 42, 53, "Прагнучи повернути безсмертя, купка свавільних друїдів змовилася посадити особливе дерево, яке мало б відновити зв'язок між їхніми духами та вічним світом." },
            -- Despite Malfurion's warning that nature would never bless such a selfish act, the druids planted the great tree, Teldrassil, off the stormy coasts of northern Kalimdor.
            { 53, 65, "Попри застереження Малфуріона, що природа ніколи не благословить такий себелюбний вчинок, друїди посадили велике дерево Тельдрассіль біля буремних берегів північного Калімдору." },
            -- Among the twilight boughs of the colossal tree, the wondrous city of Darnassus took root.
            { 65, 71.5, "Серед сутінкового гілля велетенського дерева виросло дивовижне місто Дарнас." },
            -- However, the great tree was not consecrated with nature's blessing and soon fell prey to the corruption of the Burning Legion.
            { 71.5, 80.5, "Однак велике дерево не отримало благословення природи й невдовзі стало жертвою скверни Палаючого Легіону." },
            -- Now the wildlife and even the limbs of the great tree itself are tainted by a growing darkness.
            { 80.5, 89.4, "Тепер темрява, що проникає дедалі глибше, отруює тварин і навіть саме гілля великого дерева." },
            -- As one of the few Night Elves left in the world, it is your sworn duty to defend Darnassus and the wild children of nature against the Legion's encroaching corruption.
            { 89.4, 102, "Ви — {стать:один:одна} з небагатьох нічних ельфів, що лишилися у світі, тож Ваш священний обов'язок — захистити Дарнас і диких дітей природи від скверни Легіону, що насувається." },
        },
        Orc = {
            -- Long ago, the orcish horde was corrupted by the Burning Legion and lured to the world of Azeroth.
            { 4, 12, "Давним-давно Палаючий Легіон осквернив орківську орду та заманив її до світу Азерот." },
            -- For generations, the orcs made war upon the human kingdoms of Stormwind and Lordaeron.
            { 12, 20, "Поколіннями орки воювали з людськими королівствами Штормовію та Лордерону." },
            -- Though the Horde was ultimately defeated, a visionary young warchief named Thrall rose to lead his people in their darkest hour.
            { 20, 29.5, "Хоча Орду зрештою було переможено, у найтемнішу годину її народ очолив мудрий молодий вождь на ім'я Тралл." },
            -- Under Thrall's rule, the orcs freed themselves from the chains of demonic corruption and embraced their shamanistic heritage.
            { 29.5, 39, "Під проводом Тралла орки звільнилися від кайданів демонічної скверни та повернулися до своєї шаманської спадщини." },
            -- After years of wandering, the orcs founded their own kingdom in the harsh wastelands of Durotar.
            { 39, 47, "Після років поневірянь орки заснували власне королівство в суворих пустках Дуротару." },
            -- Based in the warrior city of Orgrimmar, they stand ready to destroy all who would challenge their supremacy.
            { 47, 54.5, "Осівши у місті воїнів Орґріммарі, вони готові знищити кожного, хто кине їм виклик." },
            -- As a proud defender of Durotar, it is your duty to crush the enemies, both seen and unseen,
            { 54.5, 63, "Ви — {стать:гордий захисник:горда захисниця} Дуротару, і Ваш обов'язок — нищити ворогів, видимих і невидимих." },
            -- for the nefarious agents of the Burning Legion still wander the land.
            { 63, 70, "Адже підступні слуги Палаючого Легіону досі блукають цими землями." },
        },
        Scourge = { -- undead player race file name is "Scourge"
            -- Bound to the iron will of the tyrant Lich King, the vast undead armies of the Scourge seek to eradicate all life on Azeroth.
            { 0, 11, "Скуті залізною волею тирана Короля-Ліча, незліченні армії невмерлих Скари прагнуть винищити все живе в Азероті." },
            -- Led by the banshee Sylvanas Windrunner, a group of renegades broke away from the Scourge, and freed themselves of the Lich King's domination.
            { 11, 22, "Під проводом банші Сильвани Вітрогін група відступників відкололася від Скари та звільнилася від влади Короля-Ліча." },
            -- Known by some as the Forsaken, this group fights a constant battle not only to retain their freedom from the Scourge, but also to slaughter those who would hunt them as monsters.
            { 22, 35.5, "Відомі як Відречені, вони безупинно борються за свою свободу від Скари, а також винищують тих, хто полює на них як на чудовиськ." },
            -- With Sylvanas as their banshee queen, the Forsaken have built a dark stronghold beneath the ruins of Lordaeron's former capital city.
            { 35.5, 45, "Із Сильваною, своєю королевою-банші, Відречені звели похмуру фортецю під руїнами колишньої столиці Лордерону." },
            -- This hidden 'Undercity' forms a sprawling labyrinth that stretches beneath the haunted woods of the Tirisfal Glades.
            { 45, 54.5, "Це потаємне «Підмістя» — розлогий лабіринт, що тягнеться під примарними лісами Тірісфальського перелісся." },
            -- Though the very land is cursed, the zealous humans of the Scarlet Crusade still cling to their scattered holdings, obsessed with eradicating the undead and retaking their homeland.
            { 54.5, 70, "Хоча сама земля тут проклята, фанатичні люди Багряного Походу досі тримаються за свої розрізнені володіння, одержимі бажанням винищити невмерлих та повернути свою батьківщину." },
            -- Convinced that the primitive races of the Horde can help them achieve victory over their enemies, the Forsaken have entered an alliance of convenience.
            { 70, 80.5, "Переконані, що примітивні раси Орди допоможуть їм здолати ворогів, Відречені уклали союз із розрахунку." },
            -- Harboring no true loyalty for their new allies, they will go to any lengths to ensure their dark plans come to fruition.
            { 80.5, 90, "Не плекаючи справжньої вірності новим союзникам, вони підуть на все, аби їхні темні плани здійснилися." },
            -- As one of the Forsaken, you must massacre any who pose a threat to the new order – human, undead, or otherwise.
            { 90, 102, "Як {стать:один:одна} із Відречених, Ви мусите винищувати всіх, хто загрожує новому порядку, — людей, невмерлих чи будь-кого іншого." },
        },
        Tauren = {
            -- Once a nomadic people, the tauren roamed the endless plains of the Barrens, hunting the mighty kodo.
            { 1, 9.5, "Колись таурени були кочовим народом і мандрували безкраїми рівнинами Степів, полюючи на могутніх кодо." },
            -- Scattered across the land, the wandering tribes were united only by their common hatred for their sworn enemy, the marauding centaur.
            { 9.5, 19.4, "Мандрівні племена, розкидані по всьому краю, об'єднувала лише спільна ненависть до заклятого ворога — кентаврів." },
            -- Seeking aid against the centaur, the great chieftain, Cairne Bloodhoof, befriended the savage orcs, who had recently journeyed to Kalimdor.
            { 19.4, 29, "Шукаючи допомоги в боротьбі з кентаврами, великий вождь Керн Криваве Копито заприятелював із дикими орками, що нещодавно прибули до Калімдору." },
            -- With the orcs' help, Cairne and his tribe were able to drive back the centaur and claim the grasslands of Mulgore for their own.
            { 29, 38, "З допомогою орків Керн та його плем'я змогли відтіснити кентаврів і зайняти трав'янисті рівнини Мулґору." },
            -- Upon the windswept mesa of Thunder Bluff, Cairne built a refuge for his people.
            { 38, 44.5, "На овіяному вітрами плоскогір'ї Громового Бескиду Керн збудував прихисток для свого народу." },
            -- Over time, the scattered tribes united under a single banner.
            { 44.5, 50.5, "Згодом розпорошені племена об'єдналися під єдиним стягом." },
            -- Though the noble tauren are peaceful in nature, the rites of the Great Hunt are venerated as the heart of their spiritual culture.
            { 50.5, 60, "Хоча шляхетні таурени миролюбні за вдачею, обряди Великого Полювання шануються як серце їхньої духовної культури." },
            -- As a tribesman of Mulgore, you must test your skills in the wild and prove yourself in the Great Hunt.
            { 60, 70, "Як {стать:представник:представниця} племені Мулґору, Ви мусите випробувати свої вміння в дикій природі та проявити себе у Великому Полюванні." },
        },
        Troll = {
            -- The vicious trolls that populate the numerous jungle isles of the South Seas, are renowned for their cruelty and dark mysticism.
            { 2, 11.5, "Люті тролі, що населяють численні джунглеві острови Південних морів, славляться жорстокістю та темним чаклунством." },
            -- Barbarous and superstitious, they carry a seething hatred for all other races.
            { 11.5, 19, "Варварські та забобонні, вони плекають кипучу ненависть до всіх інших рас." },
            -- Long since exiled from their ancestral homeland in Stranglethorn Vale, the Darkspear tribe was nearly destroyed by rampaging murlocs.
            { 19, 29.5, "Давно вигнане з прабатьківщини в Тернистій долині, плем'я Темного Списа мало не було знищене оскаженілими мурлоками." },
            -- Rescued by the young Warchief Thrall and his orcish warriors, the Darkspear tribe swore an allegiance to the Horde.
            { 29.5, 38.5, "Врятоване молодим вождем Траллом та його орками-воїнами, плем'я Темного Списа присягнуло на вірність Орді." },
            -- Led by the cunning Shadow Hunter, Vol'jin, the Darkspears now make their home in Durotar along with their orcish allies.
            { 38.5, 48, "Під проводом хитромудрого тіньового мисливця Вол'джина плем'я Темного Списа нині мешкає в Дуротарі разом зі своїми союзниками орками." },
            -- As one of the only surviving Darkspears, it falls to you to reclaim the glory of your tribe.
            { 48, 57.5, "Ви — {стать:один:одна} з небагатьох уцілілих тролів Темного Списа, тож саме Вам належить відродити славу свого племені." },
        },
    },
}

-- a later expansion adds or overrides movies, lines and intros
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
