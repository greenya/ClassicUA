local _, addonTable = ...
addonTable.item = {

-- [id] = {
--     [ref]    = ID (optional),
--     [1]      = title (optional),
--     [desc]   = description (optional),
--     [equip]  = text or number (spell id) for "Equip: ..." (green color) (optional)
--     [hit]    = text or number (spell id) for "Chance on hit: ..." (green color) (optional)
--     [use]    = text or number (spell id) for "Use: ..." (green color) (optional)
--     [recipe_result_item] = number (item id) to show the item after the spell-recipe (optional)
--     [flavor] = quoted text (golden color) (optional)
--     --------
--     note: value can be string or table (multiple strings)
-- }

[25] = { "зношений короткий меч" }, -- Worn Shortsword
[35] = { "зігнутий посох" }, -- Bent Staff
[36] = { "зношена булава" }, -- Worn Mace
[37] = { "зношена сокира" }, -- Worn Axe
[38] = { "сорочка рекрута" }, -- Recruit's Shirt
[39] = { "штани рекрута" }, -- Recruit's Pants
[40] = { "чоботи рекрута" }, -- Recruit's Boots
[43] = { "чоботи зброєносця" }, -- Squire's Boots
[44] = { "штани зброєносця" }, -- Squire's Pants
[45] = { "сорочка зброєносця" }, -- Squire's Shirt
[47] = { "черевики харциза" }, -- Footpad's Shoes
[48] = { "штани харциза" }, -- Footpad's Pants
[49] = { "сорочка харциза" }, -- Footpad's Shirt
[51] = { "чоботи неофіта" }, -- Neophyte's Boots
[52] = { "штани неофіта" }, -- Neophyte's Pants
[53] = { "сорочка неофіта" }, -- Neophyte's Shirt
[55] = { "чоботи учня" }, -- Apprentice's Boots
[56] = { "халат підмайстра" }, -- Apprentice's Robe
[57] = { "мантія послушника" }, -- Acolyte's Robe
[59] = { "черевики послушника" }, -- Acolyte's Shoes
[60] = { "багатошаровий мундир" }, -- Layered Tunic
[61] = { "дворфійські шкіряні штани" }, -- Dwarven Leather Pants
[79] = { "дворфійські ткані шорти" }, -- Dwarven Cloth Britches
[80] = { "м'які хутряні черевики" }, -- Soft Fur-lined Shoes
[85] = { "брудний шкіряний жилет" }, -- Dirty Leather Vest
[117] = { "жорстка солонина", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2} sec" }, -- Tough Jerky, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[118] = { "крихітне зілля лікування", use="Відновлює від {1} до {2} здоров'я. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Minor Healing Potion, @use Restores 70 to 90 health. (2 Min Cooldown)
[120] = { "штани бандита" }, -- Thug Pants
[121] = { "чоботи бандита" }, -- Thug Boots
[127] = { "сорочка капканника" }, -- Trapper's Shirt
[129] = { "потерті чоботи капканника" }, -- Rugged Trapper's Boots
[139] = { "штани забіяки" }, -- Brawler's Pants
[140] = { "чоботи забіяки" }, -- Brawler's Boots
[147] = { "потерті штани капканника" }, -- Rugged Trapper's Pants
[148] = { "потерта сорочка капканника" }, -- Rugged Trapper's Shirt
[153] = { "простий кілт" }, -- Primitive Kilt
[154] = { "проста накидка" }, -- Primitive Mantle
[159] = { "освіжаюча джерельна вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Refreshing Spring Water, @use Restores 151.2 mana over 18 sec.  Must remain seated while drinking.
[182] = { "голова Ґарріка" }, -- Garrick's Head
[193] = { "пошарпаний тканий жилет" }, -- Tattered Cloth Vest
[194] = { "пошарпані ткані штани" }, -- Tattered Cloth Pants
[195] = { "пошарпані ткані черевики" }, -- Tattered Cloth Boots
[200] = { "товстий тканий жилет" }, -- Thick Cloth Vest
[201] = { "товсті ткані штани" }, -- Thick Cloth Pants
[202] = { "товсті ткані черевики" }, -- Thick Cloth Shoes
[203] = { "товсті ткані рукавички" }, -- Thick Cloth Gloves
[209] = { "брудні шкіряні штани" }, -- Dirty Leather Pants
[210] = { "брудні шкіряні черевики" }, -- Dirty Leather Boots
[236] = { "обладунок з обробленої шкіри" }, -- Cured Leather Armor
[237] = { "штани з обробленої шкіри" }, -- Cured Leather Pants
[238] = { "чоботи з обробленої шкіри" }, -- Cured Leather Boots
[239] = { "рукавички з обробленої шкіри" }, -- Cured Leather Gloves
[285] = { "лускатий жилет" }, -- Scalemail Vest
[286] = { "лускаті штані" }, -- Scalemail Pants
[287] = { "лускаті чоботи" }, -- Scalemail Boots
[414] = { "даларанський гострий сир", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Dalaran Sharp, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[422] = { "дворфійський м'який сир", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Dwarven Mild, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[537] = { "тьмяна луска навіженки" }, -- Dull Frenzy Scale
[555] = { "грубе пір'я стерв'ятника" }, -- Rough Vulture Feathers
[556] = { "дзьоб канюка" }, -- Buzzard Beak
[647] = { "Доля", hit="Збільшує силу на 200 протягом 10 с." }, -- Destiny, @hit Increases Strength by 200 for 10 sec.
[710] = { "наручі народного ополчення" }, -- Bracers of the People's Militia
[711] = { "пошарпані ткані рукавички" }, -- Tattered Cloth Gloves
[714] = { "брудні шкіряні рукавички" }, -- Dirty Leather Gloves
[718] = { "лускаті рукавиці" }, -- Scalemail Gloves
[719] = { "рукавички кролелова" }, -- Rabbit Handler Gloves
[720] = { "рукавиці забіяки" }, -- Brawler Gloves
[723] = { "печінка іклоштрика" }, -- Goretusk Liver
[724] = { "пиріг з печінки іклоштрика", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв.#Restores {1} health over {2}" }, -- Goretusk Liver Pie, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[725] = { "лапа гнола" }, -- Gnoll Paw
[727] = { "зазублений короткий меч" }, -- Notched Shortsword
[728] = { "рецепт: Гуляш по-західнокрайськи", use="Навчає вас приготуванню гуляшу по-західнокрайськи." }, -- Recipe: Westfall Stew, @use Teaches you how to cook Westfall Stew.
[729] = { "жилаве м'ясо грифа" }, -- Stringy Vulture Meat
[730] = { "око мурлока" }, -- Murloc Eye
[731] = { "рило іклоштрика" }, -- Goretusk Snout
[732] = { "окра" }, -- Okra
[733] = { "гуляш по-західнокрайськи", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Westfall Stew, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[735] = { "медальйони Рольфа і Малакая" }, -- Rolf and Malakai's Medallions
[737] = { "вода святого джерела", use="Благословення зі святого джерела Тернистої долини. (Відновлення 5 хв)" }, -- Holy Spring Water, @use Blessing from the Holy Spring of Stranglethorn Vale. (5 Min Cooldown)
[738] = { "мішок ячменю" }, -- Sack of Barley
[739] = { "мішок кукурудзи" }, -- Sack of Corn
[740] = { "мішок жита" }, -- Sack of Rye
[742] = { "гілка платану" }, -- A Sycamore Branch
[743] = { "зв'язка обвугленого дуба" }, -- Bundle of Charred Oak
[744] = { "захалявна фляга Громовара", use="Завдає 50 шкоди вогнем щосекунди протягом 5 сек усім ворогам перед вами. А ще він добряче п'янить! (Відновлення 30 хв)" }, -- Thunderbrew's Boot Flask, @use Deals 50 Fire damage every 1 sec for 5 sec to all enemies in front of you. Gets you quite drunk too! (30 Min Cooldown)
[745] = { "документи маршала Макбрайда" }, -- Marshal McBride's Documents
[748] = { "знак броні Штормовію" }, -- Stormwind Armor Marker
[750] = { "жорстке вовче м'ясо" }, -- Tough Wolf Meat
[752] = { "червона бандана з мішковини" }, -- Red Burlap Bandana
[753] = { "короткий меч Драконопащих" }, -- Dragonmaw Shortsword
[754] = { "короткий меч помсти", hit="Карає ворога, завдаючи 30 шкоди святістю." }, -- Shortsword of Vengeance, @hit Smites an enemy for 30 Holy damage.
[755] = { "розплавлена свічка" }, -- Melted Candle
[756] = { "тунельна кирка" }, -- Tunnel Pick
[763] = { "вкриті льодом наручі" }, -- Ice-covered Bracers
[765] = { "срібнолист" }, -- Silverleaf
[766] = { "ребриста булава" }, -- Flanged Mace
[767] = { "довгий посох бо" }, -- Long Bo Staff
[768] = { "сокира лісоруба" }, -- Lumberjack Axe
[769] = { "шматок м'яса кнура" }, -- Chunk of Boar Meat
[770] = { "загострений зуб кроколіска" }, -- Pointy Crocolisk Tooth
[771] = { "відколотий бивень кнура" }, -- Chipped Boar Tusk
[772] = { "велика свічка" }, -- Large Candle
[773] = { "золотий пил" }, -- Gold Dust
[774] = { "малахіт" }, -- Malachite
[776] = { "Вендета" }, -- Vendetta
[777] = { "зуб хижака" }, -- Prowler Teeth
[778] = { "кобольдська кирка" }, -- Kobold Excavation Pick
[779] = { "блискуча мушля" }, -- Shiny Seashell
[780] = { "порваний плавник мурлока" }, -- Torn Murloc Fin
[781] = { "кам'яний молот гнолів" }, -- Stone Gnoll Hammer
[782] = { "розфарбований браслет гнола" }, -- Painted Gnoll Armband
[783] = { "легка шкура" }, -- Light Hide
[785] = { "маговелич" }, -- Mageroyal
[787] = { "слизькошкіра скумбрія", ref=117 }, -- Slitherskin Mackerel
[789] = { "міцний бойовий молот" }, -- Stout Battlehammer
[790] = { "сокира лісника" }, -- Forester's Axe
[791] = { "зігнутий ясеневий посох" }, -- Gnarled Ash Staff
[792] = { "в'язані сандалі" }, -- Knitted Sandals
[793] = { "в'язані рукавички" }, -- Knitted Gloves
[794] = { "в'язані штани" }, -- Knitted Pants
[795] = { "в'язаний мундир" }, -- Knitted Tunic
[796] = { "грубі шкіряні чоботи" }, -- Rough Leather Boots
[797] = { "грубі шкіряні рукавиці" }, -- Rough Leather Gloves
[798] = { "грубі шкіряні штани" }, -- Rough Leather Pants
[799] = { "грубий шкіряний жилет" }, -- Rough Leather Vest
[804] = { "великий синій мішок" }, -- Large Blue Sack
[805] = { "маленький червоний мішечок" }, -- Small Red Pouch
[809] = { "кривава бритва", hit="Ранить ціль, спричиняючи 120 шкоди від кровотечі протягом 30 сек." }, -- Bloodrazor, @hit Wounds the target causing them to bleed for 120 damage over 30 sec.
[810] = { "молот північного вітру", hit="Запускає у ворога крижану стрілу, що завдає від 20 до 30 шкоди від криги та зменшує його швидкість руху на 50% протягом 5 секунд." }, -- Hammer of the Northern Wind, @hit Launches a bolt of frost at the enemy causing 20 to 30 Frost damage and slowing movement speed by 50% for 5 sec.
[811] = { "сокира дрімучих лісів", hit="Підриває ціль, завдаючи їй від 80 до 126 шкоди від природи." }, -- Axe of the Deep Woods, @hit Blasts a target for 90 to 126 Nature damage.
[812] = { "сяючий посох з яснодерева" }, -- Glowing Brightwood Staff
[813] = { "зламана шестірня" }, -- Broken Cog
[814] = { "фляга з мастилом" }, -- Flask of Oil
[816] = { "маленький клинок" }, -- Small Hand Blade
[818] = { "тигрове око" }, -- Tigerseye
[820] = { "клинок-нарізач" }, -- Slicer Blade
[821] = { "шкіряний жилет Річколапих" }, -- Riverpaw Leather Vest
[826] = { "груба сокира Річколапих" }, -- Brutish Riverpaw Axe
[827] = { "дубина погибелі" }, -- Wicked Blackjack
[828] = { "маленький синій мішечок" }, -- Small Blue Pouch
[829] = { "червона шкіряна бандана" }, -- Red Leather Bandana
[832] = { "срібний пояс повстанців" }, -- Silver Defias Belt
[833] = { "життєкамінь", equip="Відновлює 10 здоров'я кожні 5 секунд", use="Відновлює від 300 до 700 здоров'я." }, -- Lifestone, @equip Restores 10 health every 5 sec., @use Restores 300 to 700 health. (30 Min Cooldown)
[835] = { "велика мотузкова сітка", use="Знерухомлює ціль на 10 секунд." }, -- Large Rope Net, @use Renders a target unable to move for 10 sec. (1 Min Cooldown)
[837] = { "важкий плетений обладунок" }, -- Heavy Weave Armor
[838] = { "важкі плетені штани" }, -- Heavy Weave Pants
[839] = { "важкі плетені рукавички" }, -- Heavy Weave Gloves
[840] = { "важкі плетені черевики" }, -- Heavy Weave Shoes
[841] = { "кишеньковий годинник Хмуроброва" }, -- Furlbrow's Pocket Watch
[843] = { "чоботи з дубленої шкіри" }, -- Tanned Leather Boots
[844] = { "рукавиці з дубленої шкіри" }, -- Tanned Leather Gloves
[845] = { "штани з дубленої шкіри" }, -- Tanned Leather Pants
[846] = { "жилет з дубленої шкіри" }, -- Tanned Leather Jerkin
[847] = { "кольчужний обладунок" }, -- Chainmail Armor
[848] = { "кольчужні штани" }, -- Chainmail Pants
[849] = { "кольчужні чоботи" }, -- Chainmail Boots
[850] = { "кольчужні рукавиці" }, -- Chainmail Gloves
[851] = { "абордажна сабля" }, -- Cutlass
[852] = { "булава" }, -- Mace
[853] = { "сокирка" }, -- Hatchet
[854] = { "короткий посох" }, -- Quarter Staff
[856] = { "синя шкіряна сумка" }, -- Blue Leather Bag
[857] = { "великий червоний мішок" }, -- Large Red Sack
[858] = { "мале зілля лікування", ref=118 }, -- Lesser Healing Potion
[859] = { "тонка ткана сорочка" }, -- Fine Cloth Shirt
[860] = { "кавалерійські чоботи" }, -- Cavalier's Boots
[862] = { "рунічний перстень", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 7." }, -- Runed Ring, @equip Increases damage and healing done by magical spells and effects by up to 7.
[863] = { "моторошний жнець" }, -- Gloom Reaper
[864] = { "лицарський довгий меч" }, -- Knightly Longsword
[865] = { "свинцева булава" }, -- Leaden Mace
[866] = { "посох монаха" }, -- Monk's Staff
[867] = { "рукавиці святої сили", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує силу атаки на 20.", "Збільшує силу атаки на 30 в бою з невмерлими." } }, -- Gloves of Holy Might, @equip Improves your chance to get a critical strike by 1%., @equip +20 Attack Power., @equip +30 Attack Power when fighting Undead.
[868] = { "затятий хранитель", equip="Збільшує навичку захисту на 5." }, -- Ardent Custodian, @equip Increased Defense +5.
[869] = { "сліпучий довгий меч", hit="Зменшує броню цілі на 100 на 30 сек. Поки діє ефект, ціль не може стати непомітною чи невидимою." }, -- Dazzling Longsword, @hit Decrease the armor of the target by 100 for 30 sec.  While affected, the target cannot stealth or turn invisible.
[870] = { "палка бойова сокира", hit="Кидає вогняну кулю, яка завдає від 155 до 197 шкоди від вогню і додатково 24 шкоди від вогню протягом 6 с." }, -- Fiery War Axe, @hit Hurls a fiery ball that causes 155 to 197 Fire damage and an additional 24 damage over 6 sec.
[871] = { "шквальна сокира", hit="Дає додаткову атаку під час наступного удару." }, -- Flurry Axe, @hit Grants 1 extra attack on your next swing.
[872] = { "камнеріз" }, -- Rockslicer
[873] = { "посох Джордана", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на {1}.#by up to {1}" }, -- Staff of Jordan, @equip Increases damage and healing done by magical spells and effects by up to 26.
[876] = { "зношений дерев'яний баклер" }, -- Worn Wooden Buckler
[878] = { "павутинна залоза розміром з кулак" }, -- Fist-sized Spinneret
[880] = { "посох жахів", hit="Зменшує шкоду від цілі на 5 протягом 2 хвилин." }, -- Staff of Horrors, @hit Damage caused by the target is reduced by 5 for 2 min.
[884] = { "ребро гуля" }, -- Ghoul Rib
[885] = { "чорна металева сокира" }, -- Black Metal Axe
[886] = { "чорний металевий меч" }, -- Black Metal Shortsword
[887] = { "фунт плоті" }, -- Pound of Flesh
[888] = { "нагські бойові рукавиці" }, -- Naga Battle Gloves
[889] = { "вкритий пилом невідправлений лист", flavor="Давній, вкритий пилом, так і не відправлений лист." }, -- A Dusty Unsent Letter, @flavor This dusty letter from long ago was never sent.
[890] = { "кручений посох співця" }, -- Twisted Chanter's Staff
[892] = { "рукавички гнола-заклинача", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 6." }, -- Gnoll Casting Gloves, @equip Increases damage and healing done by magical spells and effects by up to 6.
[893] = { "ікло зловісного вовка" }, -- Dire Wolf Fang
[895] = { "череп воргена" }, -- Worgen Skull
[896] = { "ікло воргена" }, -- Worgen Fang
[897] = { "браслети скаженого вовка" }, -- Madwolf Bracers
[899] = { "ікло отруйного колопряда", hit="Отруює ціль, завдаючи 3 шкоди від природи кожні 3 с протягом 15 с." }, -- Venom Web Fang, @hit Poisons target for 3 Nature damage every 3 sec for 15 sec.
[910] = { "недоставлений лист", flavor="Потертий і старий, цей лист так не доставили." }, -- An Undelivered Letter, @flavor Weathered and old, this letter was never delivered.
[911] = { "гілка залізного дерева" }, -- Ironwood Treebranch
[913] = { "величезний меч огра" }, -- Huge Ogre Sword
[914] = { "великий плетений обладунок огра" }, -- Large Ogre Chain Armor
[915] = { "червона шовкова бандана" }, -- Red Silk Bandana
[916] = { "вирвана сторінка щоденника", flavor="Залишилася лише нижня половина сторінки щоденника." }, -- A Torn Journal Page, @flavor Only the bottom half of this journal page remains.
[918] = { "сумка зі спотвореної шкіри" }, -- Deviate Hide Pack
[920] = { "шипаста булава погибелі" }, -- Wicked Spiked Mace
[921] = { "вицвіла сторінка щоденника", flavor="Хоча більша частина тексту давно вицвіла, деякі слова все ще можна прочитати." }, -- A Faded Journal Page, @flavor Although most of the text is long faded, some words can still be read.
[922] = { "дакійський фалькс" }, -- Dacian Falx
[923] = { "довгйи меч" }, -- Longsword
[924] = { "молот" }, -- Maul
[925] = { "окована булава" }, -- Flail
[926] = { "бойова сокира" }, -- Battle Axe
[927] = { "двосічна сокира" }, -- Double Axe
[928] = { "довгий посох" }, -- Long Staff
[929] = { "зілля лікування", ref=118 }, -- Healing Potion
[932] = { "сідлова сумка скверножеребця" }, -- Fel Steed Saddlebags
[933] = { "великий мішок" }, -- Large Rucksack
[934] = { "жнець Сталвана", hit="Знижує всі атрибути цілі на 2 протягом 1 хвилини." }, -- Stalvan's Reaper, @hit Lowers all attributes of target by 2 for 1 min.
[935] = { "короткий меч Нічної варти" }, -- Night Watch Shortsword
[936] = { "опівнічна булава" }, -- Midnight Mace
[937] = { "чорний посох Смерколісся", hit="Запускає у ворога заряд тіні, що завдає від 110 до 140 шкоди від тіні." }, -- Black Duskwood Staff, @hit Sends a shadowy bolt at the enemy causing 110 to 140 Shadow damage.
[938] = { "брудні сторінки щоденника", flavor="Хоча сторінки вкриті брудом, деякі слова можна прочитати." }, -- Muddy Journal Pages, @flavor Although the pages are covered in mud, some words can be read.
[939] = { "закривавлена сторінка щоденника", flavor="Крізь кров ще можна розгледіти кілька слів." }, -- A Bloodstained Journal Page, @flavor Through thick blood a few words still remain legible.
[940] = { "мантія прозріння", use="Зменшує витрати мани на наступне заклинання не більш ніж на 500 протягом 10 секунд." }, -- Robes of Insight, @use Reduces the cost of your next spell cast within 10 sec by up to 500 mana. (15 Min Cooldown)
[942] = { "морозний перстень", equip={ "Збільшує шкоду від заклинань і ефектів криги на 21.", "Шанс завдати ворогу 50 шкоди від криги при отриманні удару в бою та заморозити його на 5 сек. (Імовірність: 1%)" } }, -- Freezing Band, @equip Increases damage done by Frost spells and effects by up to 21., @equip When struck in combat has a 1% chance of inflicting 50 Frost damage to the attacker and freezing them for 5 sec. (Proc chance: 1%)
[943] = { "посох вартового", equip="Збільшує навичку захисту на 10." }, -- Warden Staff, @equip Increased Defense +10.
[944] = { "посох стихійної магії", equip={ "Збільшує шкоду від заклинань і ефектів вогню на 36.", "Збільшує шкоду від заклинань і ефектів криги на 36." } }, -- Elemental Mage Staff, @equip Increases damage done by Fire spells and effects by up to 36., @equip Increases damage done by Frost spells and effects by up to 36.
[945] = { "меч тіні" }, -- Shadow Sword
[948] = { "меч природи" }, -- Nature Sword
[954] = { "сувій сили", use="Збільшує силу цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Strength, @use Increases the target's Strength by 5 for 30 min.
[955] = { "сувій інтелекту", use="Збільшує інтелект цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Intellect, @use Increases the target's Intellect by 4 for 30 min.
[957] = { "пакунок від Вільяма", flavor="До нього прикріплена записка." }, -- William's Shipment, @flavor There is a note attached.
[961] = { "цілюща трава", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Healing Herb, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[962] = { "рулет зі свинячої підчеревини" }, -- Pork Belly Pie
[981] = { "намисто Берніс" }, -- Bernice's Necklace
[983] = { "червоний лляний пояс" }, -- Red Linen Sash
[997] = { "вогняний меч каліцтва", hit="Калічить ціль, зменшуючи швидкість руху на 40%, збільшуючи час між атаками ближнього бою на 45% і збільшуючи час між атаками дальнього бою на 45%. Триває 20 секунд." }, -- Fire Sword of Crippling, @hit Cripples the target, reducing movement speed by 40%, increasing time between melee attacks by 45% and increasing time between ranged attacks by 45%.  Lasts 20 sec.
[1006] = { "латунний нашийник", flavor="Принцеса — перше місце" }, -- Brass Collar, @flavor Princess - First Prize
[1008] = { "старий меч" }, -- Well-used Sword
[1009] = { "компактний молот" }, -- Compact Hammer
[1010] = { "зігнутий короткий посох" }, -- Gnarled Short Staff
[1011] = { "гостра сокира" }, -- Sharp Axe
[1013] = { "залізна заклепка" }, -- Iron Rivet
[1015] = { "пісний вовчий бік" }, -- Lean Wolf Flank
[1017] = { "пряний кебаб з вовчатини", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Seasoned Wolf Kabob, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[1019] = { "червона лляна бандана" }, -- Red Linen Bandana
[1072] = { "самогон повні", use="Відновлює від 280 до 360 мани." }, -- Full Moonshine, @use Restores 280 to 360 mana. (2 Min Cooldown)
[1074] = { "жорсткий шматок павучої лапи" }, -- Hard Spider Leg Tip
[1075] = { "підвіска Тінешкурих" }, -- Shadowhide Pendant
[1076] = { "перстень відступника повстанців" }, -- Defias Renegade Ring
[1077] = { "перстень мага повстанців" }, -- Defias Mage Ring
[1080] = { "жорстке м'ясо кондора" }, -- Tough Condor Meat
[1081] = { "хрумке павуче м'ясо" }, -- Crisp Spider Meat
[1082] = { "Багрянокрязький гуляш", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Redridge Goulash, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[1083] = { "гліф Азори" }, -- Glyph of Azora
[1113] = { "начаклована паляниця", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Bread, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[1114] = { "начаклована житня хлібина", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Rye, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[1116] = { "перстень з чистого срібла" }, -- Ring of Pure Silver
[1121] = { "рисячі лапи" }, -- Feet of the Lynx
[1127] = { "вибуховий пакет", use="Створює стовп вогню, що завдає всім ворогам в зоні дії від 55 до 71 шкоди від вогню та додатково 48 шкоди від вогню протягом 8 сек. (Відновлення 1 хв)" }, -- Flash Bundle, @use Calls down a pillar of fire, burning all enemies within the area for 55 to 71 Fire damage and an additional 48 Fire damage over 8 sec. (1 Min Cooldown)
[1129] = { "ікло гуля" }, -- Ghoul Fang
[1130] = { "флакон павучої отрути" }, -- Vial of Spider Venom
[1131] = { "тотем шкоди", equip="Шанс завдати ворогу від 75 до 125 шкоди від тіні при отриманні удару в бою. (Імовірність: 1%)" }, -- Totem of Infliction, @equip When struck in combat has a 1% chance of inflicting 75 to 125 Shadow damage to the attacker. (Proc chance: 1%)
[1132] = { "ріг лісового вовка", use="Викликає та відпускає верхового лісового вовка. (Відновлення 3 сек)" }, -- Horn of the Timber Wolf, @use Summons and dismisses a rideable Timber Wolf. (3 Sec Cooldown)
[1134] = { "ріг сірого вовка", use="Викликає та відпускає верхового сірого вовка. (Відновлення 3 сек)" }, -- Horn of the Gray Wolf, @use Summons and dismisses a rideable gray wolf. (3 Sec Cooldown)
[1154] = { "пояс народного ополчення" }, -- Belt of the People's Militia
[1155] = { "палиця сноходця" }, -- Rod of the Sleepwalker
[1156] = { "розкішно прикрашена каблучка" }, -- Lavishly Jeweled Ring
[1158] = { "міцна металева булава" }, -- Solid Metal Club
[1159] = { "кийок повстанців" }, -- Militia Quarterstaff
[1161] = { "короткий меч повстанців" }, -- Militia Shortsword
[1166] = { "побитий баклер" }, -- Dented Buckler
[1167] = { "невеликий щит" }, -- Small Targe
[1168] = { "щит полум'яного черепа", equip={ "Шанс викрасти у ворога 35 здоров'я при отриманні удару в бою. (Імовірність: 3%)", "Шанс завдати всім ворогам навколо від 75 до 125 шкоди від вогню при отриманні удару в бою. (Імовірність: 1%)" } }, -- Skullflame Shield, @equip When struck in combat has a 3% chance of stealing 35 life from target enemy. (Proc chance: 3%), @equip When struck in combat has a 1% chance of dealing 75 to 125 Fire damage to all targets around you. (Proc chance: 1%)
[1169] = { "щит чорного черепа" }, -- Blackskull Shield
[1171] = { "добре прошитий халат" }, -- Well-stitched Robe
[1172] = { "смолоскип Сивенка" }, -- Grayson's Torch
[1173] = { "вицвілі черевики" }, -- Weather-worn Boots
[1175] = { "золотий зуб" }, -- A Gold Tooth
[1176] = { "нюхальна сіль", use="Повертає мертвого гравця до життя з 70 здоров'я та 135 мани. Не можна використовувати під час бою." }, -- Smelling Salts, @use Brings a dead player back to life with 70 health and 135 mana.  Cannot be cast when in combat.
[1177] = { "масло Олафа", use="Підвищує показник броні на 50 на 1 год." }, -- Oil of Olaf, @use Increases armor by 50 for 1 hour.
[1178] = { "вибухова ракета", use="Завдає від 28 до 32 шкоди вогнем у радіусі 3 м. (Відновлення 1 хв)" }, -- Explosive Rocket, @use Inflicts 28 to 32 Fire damage in a 3 yard radius. (1 Min Cooldown)
[1179] = { "крижане молоко", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Ice Cold Milk, @use Restores 436.8 mana over 21 sec.  Must remain seated while drinking.
[1180] = { "сувій витривалості", use="Збільшує витривалість цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Stamina, @use Increases the target's Stamina by 4 for 30 min.
[1181] = { "сувій духу", use="Збільшує дух цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Spirit, @use Increases the target's Spirit by 3 for 30 min.
[1182] = { "наручі з латунними вставками" }, -- Brass-studded Bracers
[1183] = { "еластичні браслети" }, -- Elastic Wristguards
[1187] = { "шипастий нашийник", use="Викликати скверногончу-вартову, що захищатиме вас протягом 1 години." }, -- Spiked Collar, @use Summons a guardian felhunter that will protect you for 1 hour.
[1189] = { "перстень розпорядника" }, -- Overseer's Ring
[1190] = { "плащ розпорядника" }, -- Overseer's Cloak
[1191] = { "мішечок із кольоровими кульками", use="Знижує ймовірність влучання ціллю на 25% на 10 сек. (Відновлення 1 хв)" }, -- Bag of Marbles, @use Decreases target's chance to hit by 25% for 10 sec. (1 Min Cooldown)
[1193] = { "окований баклер" }, -- Banded Buckler
[1194] = { "півтораручний меч" }, -- Bastard Sword
[1195] = { "лопата кобольда-гірника" }, -- Kobold Mining Shovel
[1196] = { "табар" }, -- Tabar
[1197] = { "велика булава" }, -- Giant Mace
[1198] = { "клеймор" }, -- Claymore
[1199] = { "заряджений камінь душі" }, -- Charged Soulstone
[1200] = { "великий дерев'яний щит" }, -- Large Wooden Shield
[1201] = { "тьмяний праскоподібний щит" }, -- Dull Heater Shield
[1202] = { "баштовий щит" }, -- Wall Shield
[1203] = { "егіда Штормовія" }, -- Aegis of Stormwind
[1204] = { "зелена башта", equip="Шанс підняти шипастий щит при отриманні удару в бою, що завдає 3 шкоди від природи нападникам та збільшує супротив природі на 50 протягом 30 секунд. (Імовірність: 1%)" }, -- The Green Tower, @equip When struck in combat has a 1% chance of raising a thorny shield that inflicts 3 Nature damage to attackers when hit and increases Nature resistance by 50 for 30 sec. (Proc chance: 1%)
[1205] = { "динний сік", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Melon Juice, @use Restores 835.2 mana over 24 sec.  Must remain seated while drinking.
[1206] = { "моховий агат" }, -- Moss Agate
[1207] = { "зубчаста булава" }, -- Murphstar
[1208] = { "любовний лист Мейбелл" }, -- Maybell's Love Letter
[1210] = { "тінекамінь" }, -- Shadowgem
[1211] = { "гнольська бойова портупея" }, -- Gnoll War Harness
[1212] = { "слюна гнола" }, -- Gnoll Spittle
[1213] = { "браслети гнола" }, -- Gnoll Kindred Bracers
[1214] = { "гнольський каратель" }, -- Gnoll Punisher
[1215] = { "опорний пояс" }, -- Support Girdle
[1216] = { "крижані браслети" }, -- Frost Bracers
[1217] = { "невідома винагорода", flavor="Невідомо, якою буде винагорода..." }, -- Unknown Reward, @flavor It is not known what the reward will be...
[1218] = { "важка бойова дубина гнола" }, -- Heavy Gnoll War Club
[1219] = { "багрянокрязьке мачете" }, -- Redridge Machete
[1220] = { "вовча сокира" }, -- Lupine Axe
[1221] = { "підчеревна луска дракончика" }, -- Underbelly Whelp Scale
[1222] = { "зламаний зуб" }, -- Broken Tooth
[1251] = { "лляний бинт", use="Відновлює 66 здоров'я за 6 сек." }, -- Linen Bandage, @use Heals 66 damage over 6 sec.
[1252] = { "записка бабці Кам'янопільської" }, -- Gramma Stonefield's Note
[1254] = { "менший камінь вогню", equip={ "Зачаровує зброю в основній руці вогнем, надаючи кожній атаці ймовірність завдати від {1} до {2} додаткового пошкодження вогнем.#deal {1} to {2}", "Збільшує пошкодження від заклять та ефектів вогню на {1}.#by up to {1}" } }, -- Lesser Firestone, @equip Enchants the main hand weapon with fire, granting each attack a chance to deal 25 to 35 additional fire damage., @equip Increases damage done by Fire spells and effects by up to 10.
[1256] = { "стебло кришталевої водорості" }, -- Crystal Kelp Frond
[1257] = { "відвар невидимості" }, -- Invisibility Liquor
[1260] = { "голова Таріл'зуна" }, -- Tharil'zun's Head
[1261] = { "опівнічна сфера" }, -- Midnight Orb
[1262] = { "бочечка громузвару", use="Збільшує витривалість на 3." }, -- Keg of Thunderbrew, @use Increases Stamina by 3.
[1263] = { "мізкоруб", hit="Ранить ціль, завдаючи від 324 до 540 шкоди та знижуючи її інтелект на 25 протягом 30 секунд.." }, -- Brain Hacker, @hit Wounds the target for 200 to 300 damage and lowers Intellect of target by 25 for 30 sec.
[1264] = { "головолом" }, -- Headbasher
[1265] = { "жало скорпіона", hit="Отруює ціль, завдаючи 13 шкоди від природи кожні 5 с протягом 25 с." }, -- Scorpion Sting, @hit Poisons target for 13 Nature damage every 5 sec for 25 sec.
[1270] = { "тонкотканий плащ" }, -- Finely Woven Cloak
[1273] = { "кольчуга лісу" }, -- Forest Chain
[1274] = { "хміль" }, -- Hops
[1275] = { "плетений нагрудник помічника" }, -- Deputy Chain Coat
[1276] = { "загартований вогнем баклер" }, -- Fire Hardened Buckler
[1280] = { "закритий капюшон" }, -- Cloaked Hood
[1282] = { "іскристий койф" }, -- Sparkmetal Coif
[1283] = { "записка Вернера" }, -- Verner's Note
[1284] = { "ящик з підковами", flavor="До ящика прикріплена записка." }, -- Crate of Horseshoes, @flavor There's a note attached to this crate.
[1287] = { "гігантське ікло тарантула" }, -- Giant Tarantula Fang
[1288] = { "велика отруйна залоза" }, -- Large Venom Sac
[1292] = { "тесак м'ясаря" }, -- Butcher's Cleaver
[1293] = { "звіт Приозер'я", flavor="Звіт, написаний війтом Соломоном, містить відомості про останні події в Багрянокряжжі." }, -- The State of Lakeshire, @flavor Written by Magistrate Solomon, this report details the events unfolding in Redridge.
[1294] = { "відповідь генерала", flavor="Відповідь генерала Марка Джонатана на прохання війта Соломона про допомогу." }, -- The General's Response, @flavor General Marcus Jonathan's response to Magistrate Solomon's plea for help.
[1296] = { "булава Чорнокаменю" }, -- Blackrock Mace
[1297] = { "мантія тінемова" }, -- Robes of the Shadowcaster
[1299] = { "малий пояс шпиля" }, -- Lesser Belt of the Spire
[1300] = { "малий посох шпиля" }, -- Lesser Staff of the Spire
[1302] = { "рукавиці з чорного дракончика" }, -- Black Whelp Gloves
[1303] = { "рукавиці мостобудівника" }, -- Bridgeworker's Gloves
[1304] = { "рукавички вершника" }, -- Riding Gloves
[1306] = { "наручі вовчої гриви" }, -- Wolfmane Wristguards
[1307] = { "розклад збору золота" }, -- Gold Pickup Schedule
[1309] = { "інструменти Ослоу" }, -- Oslow's Toolbox
[1310] = { "штани коваля" }, -- Smith's Trousers
[1314] = { "рукавиці гуля" }, -- Ghoul Fingers
[1315] = { "намисто з лілій", use="Створити корінь лілії, що відновлює здоров'я та ману при споживанні." }, -- Lei of Lilies, @use Conjures a Lily Root that restores health and mana when eaten. (1 Hour Cooldown)
[1317] = { "міцний посох з кореня" }, -- Hardened Root Staff
[1318] = { "нічна погибель", hit="Запускає у ворога заряд тіні, що завдає від 60 до 90 шкоди від тіні." }, -- Night Reaver, @hit Sends a shadowy bolt at the enemy causing 60 to 90 Shadow damage.
[1319] = { "перстень залізної волі" }, -- Ring of Iron Will
[1322] = { "риб'ячий жир", use="Збільшує швидкість вашої атаки на 10% на 30 сек. (Відновлення 2 хв)" }, -- Fishliver Oil, @use Increases your attack speed by 10% for 30 sec. (2 Min Cooldown)
[1325] = { "букет нарцисів" }, -- Daffodil Bouquet
[1326] = { "соте з сонцериби", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Sauteed Sunfish, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[1327] = { "записка Вайлі", flavor="Записка, наспіх написана Вайлі Чорним для Ґріана Міцнокрива." }, -- Wiley's Note, @flavor A hastily written note written by Wiley the Black for Gryan Stoutmantle.
[1349] = { "ящик Абекромбі", flavor="Цей великий ящик щільно закритий, але з нього тхне мертвечиною." }, -- Abercrombie's Crate, @flavor This large crate is sealed tight, but it reeks of dead things.
[1351] = { "кістяні браслети" }, -- Fingerbone Bracers
[1353] = { "звіт Гича", flavor="Звіт Гича щодо гільдії Каменярів для Ґріана Міцнокрива." }, -- Shaw's Report, @flavor Shaw's report on the Stonemason Guild for Gryan Stoutmantle.
[1355] = { "накидка з оленячої шкіри" }, -- Buckskin Cape
[1357] = { "карта скарбів капітана Сандерса", flavor="Намоклий пергамент ось-ось розпадеться." }, -- Captain Sander's Treasure Map, @flavor The waterlogged parchment is about to disintegrate.
[1358] = { "підказка до скарбів Сандерса", flavor="Цей рваний шматок пергаменту вкритий каракулями." }, -- A Clue to Sander's Treasure, @flavor This torn piece of parchment contains scribbled writing.
[1359] = { "рукавички з тисненням лева" }, -- Lion-stamped Gloves
[1360] = { "кольчужні рукавиці Штормовію" }, -- Stormwind Chain Gloves
[1361] = { "ще одна підказка до скарбів Сандерса", flavor="Цей рваний шматок пергаменту вкритий каракулями." }, -- Another Clue to Sander's Treasure, @flavor This torn piece of parchment contains scribbled writing.
[1362] = { "остання підказка до скарбів Сандерса", flavor="Цей рваний шматок пергаменту вкритий каракулями." }, -- Final Clue to Sander's Treasure, @flavor This torn piece of parchment contains scribbled writing.
[1364] = { "жилет з м'ятої шкіри" }, -- Ragged Leather Vest
[1366] = { "штани з м'ятої шкіри" }, -- Ragged Leather Pants
[1367] = { "чоботи з м'ятої шкіри" }, -- Ragged Leather Boots
[1368] = { "рукавиці з м'ятої шкіри" }, -- Ragged Leather Gloves
[1369] = { "пояс з м'ятої шкіри" }, -- Ragged Leather Belt
[1370] = { "браслети з м'ятої шкіри" }, -- Ragged Leather Bracers
[1372] = { "м'ятий плащ" }, -- Ragged Cloak
[1374] = { "потерті черевики" }, -- Frayed Shoes
[1376] = { "потертий плащ" }, -- Frayed Cloak
[1377] = { "потерті рукавички" }, -- Frayed Gloves
[1378] = { "потерті штани" }, -- Frayed Pants
[1380] = { "потерта мантія" }, -- Frayed Robe
[1381] = { "таємниче повідомлення", flavor="Ця вкрита кіптявою записка містить якийсь загадковий текст." }, -- A Mysterious Message, @flavor This soot-covered note contains some cryptic text.
[1382] = { "кам'яна булава" }, -- Rock Mace
[1383] = { "кам'яний томагавк" }, -- Stone Tomahawk
[1384] = { "тупий клинок" }, -- Dull Blade
[1386] = { "сокира шиподерева" }, -- Thistlewood Axe
[1387] = { "пазур гуля", hit="Запускає у ворога заряд тіні, що завдає 35 шкоди від тіні." }, -- Ghoulfang, @hit Sends a shadowy bolt at the enemy causing 35 Shadow damage.
[1388] = { "кривий посох" }, -- Crooked Staff
[1389] = { "молот кобольда-шахтаря" }, -- Kobold Mining Mallet
[1391] = { "посох річколапого містика" }, -- Riverpaw Mystic Staff
[1394] = { "трукхлява дубина" }, -- Driftwood Club
[1395] = { "штани учня" }, -- Apprentice's Pants
[1396] = { "штани послушника" }, -- Acolyte's Pants
[1399] = { "магічна свічка", hit="Кидає вогняну кулю, яка завдає від 16 до 25 шкоди від вогню і додатково 2 шкоди від вогню протягом 4 с." }, -- Magic Candle, @use Hurls a fiery ball that causes 16 to 25 Fire damage and an additional 2 Fire damage over 4 sec. (1 Min Cooldown)
[1401] = { "листок зеленого чаю", use="Миттєво відновлює 30 здоров'я. Також відновлює 60 мани протягом 10 с. Потрібно залишатися в сидячому положенні під час їжі." }, -- Green Tea Leaf, @use Instantly heals 30 damage.  Also restores 60 mana over 10 sec.  Must remain seated while drinking.
[1404] = { "оберіг приливу", use="Оглушує ціль на 3 секунди." }, -- Tidal Charm, @use Stuns target for 3 sec. (15 Min Cooldown)
[1405] = { "посох пінистих хвиль" }, -- Foamspittle Staff
[1406] = { "прикрашений перлами спис" }, -- Pearl-encrusted Spear
[1407] = { "прохання Соломона до Західного краю" }, -- Solomon's Plea to Westfall
[1408] = { "відповідь Міцнокрива Соломону" }, -- Stoutmantle's Response to Solomon
[1409] = { "прохання Соломона до Темнодолу" }, -- Solomon's Plea to Darkshire
[1410] = { "відповідь Чорнобривого Соломону" }, -- Ebonlocke's Response to Solomon
[1411] = { "розсохлий посох" }, -- Withered Staff
[1412] = { "грубий півтораручний меч" }, -- Crude Bastard Sword
[1413] = { "слабкий меч" }, -- Feeble Sword
[1414] = { "потріскана кувалда" }, -- Cracked Sledge
[1415] = { "молоток тесляра" }, -- Carpenter's Mallet
[1416] = { "іржава сокира" }, -- Rusty Hatchet
[1417] = { "побита бойова сокира" }, -- Beaten Battle Axe
[1418] = { "поношений шкіряний ремінь" }, -- Worn Leather Belt
[1419] = { "поношені шкіряні чоботи" }, -- Worn Leather Boots
[1420] = { "поношені шкіряні браслети" }, -- Worn Leather Bracers
[1421] = { "поношений шкіряний плащ" }, -- Worn Hide Cloak
[1422] = { "ношені шкіряні рукавиці" }, -- Worn Leather Gloves
[1423] = { "поношені шкіряні штани" }, -- Worn Leather Pants
[1425] = { "поношений шкіряний жилет" }, -- Worn Leather Vest
[1427] = { "латане взуття" }, -- Patchwork Shoes
[1429] = { "клаптевий плащ" }, -- Patchwork Cloak
[1430] = { "латані рукавички" }, -- Patchwork Gloves
[1431] = { "латані штани" }, -- Patchwork Pants
[1433] = { "латаний обладунок" }, -- Patchwork Armor
[1434] = { "сяюча воскова паличка", use="Зменшує броню цілі на 50 на 30 сек. Поки діє ефект, ціль не може стати непомітною чи невидимою. (Відновлення 1 хв)" }, -- Glowing Wax Stick, @use Decrease the armor of the target by 50 for 30 sec.  While affected, the target cannot stealth or turn invisible. (1 Min Cooldown)
[1436] = { "штани першопроходця" }, -- Frontier Britches
[1438] = { "воїнський щит" }, -- Warrior's Shield
[1440] = { "гнольський череполом" }, -- Gnoll Skull Basher
[1443] = { "прикрашений амулет Кайнвін" }, -- Jeweled Amulet of Cainwyn
[1445] = { "напліччя Чорнокаменю" }, -- Blackrock Pauldrons
[1446] = { "чоботи Чорнокаменю" }, -- Blackrock Boots
[1447] = { "перстень спасителів", use="Збільшує броню на 300 протягом 10 секунд." }, -- Ring of Saviors, @use Increases armor by 300 for 10 sec. (30 Min Cooldown)
[1448] = { "рукавиці Чорнокаменю" }, -- Blackrock Gauntlets
[1449] = { "малий перстень промовлянь" }, -- Minor Channeling Ring
[1450] = { "зілля палкості", use="Збільшує силу на {1} та завдає {2} пошкодження вам кожні {3} с протягом {4} хв.#by {1} and does {2} damage to you every {3} sec for {4} min" }, -- Potion of Fervor, @use Increases Strength by 14 and does 15 damage to you every 15 sec for 1 min. (2 Min Cooldown)
[1451] = { "пляшка соку зомбі" }, -- Bottle of Zombie Juice
[1453] = { "примарний гребінець" }, -- Spectral Comb
[1454] = { "сокира громили" }, -- Axe of the Enforcer
[1455] = { "сокира чемпіона Чорнокаменю" }, -- Blackrock Champion's Axe
[1457] = { "булава Тінешкурих" }, -- Shadowhide Mace
[1458] = { "молот Тінешкурих" }, -- Shadowhide Maul
[1459] = { "скальпоруб Тінешкурих" }, -- Shadowhide Scalper
[1460] = { "дворучний меч Тінешкурих" }, -- Shadowhide Two-handed Sword
[1461] = { "бойова сокира вбивці" }, -- Slayer's Battle Axe
[1462] = { "перстень тіні" }, -- Ring of the Shadow
[1464] = { "кіготь канюка" }, -- Buzzard Talon
[1465] = { "тигробій", equip="Збільшує силу атаки на 18 під час бою зі звірами." }, -- Tigerbane, @equip Attack Power increased by 18 when fighting Beasts.
[1467] = { "плямиста сонцериба" }, -- Spotted Sunfish
[1468] = { "плавець мурлока" }, -- Murloc Fin
[1469] = { "ятаган Атуна" }, -- Scimitar of Atun
[1470] = { "сумка зі шкіри мурлока" }, -- Murloc Skin Bag
[1473] = { "річковий посох" }, -- Riverside Staff
[1475] = { "мала отруйна залоза" }, -- Small Venom Sac
[1476] = { "переламана лапка павука" }, -- Snapped Spider Limb
[1477] = { "сувій спритності II", ref=3012 }, -- Scroll of Agility II
[1478] = { "сувій захисту II", ref=3013 }, -- Scroll of Protection II
[1479] = { "кухонні рукавиці Сальми" }, -- Salma's Oven Mitts
[1480] = { "кулак народного ополчення" }, -- Fist of the People's Militia
[1481] = { "Жахопазур", hit="Запускає у ворога заряд тіні, що завдає 30 шкоди від тіні." }, -- Grimclaw, @hit Sends a shadowy bolt at the enemy causing 30 Shadow damage.
[1482] = { "тінеікло", hit="Запускає у ворога заряд тіні, що завдає 30 шкоди від тіні." }, -- Shadowfang, @hit Sends a shadowy bolt at the enemy causing 30 Shadow damage.
[1483] = { "Пикотрощитель" }, -- Face Smasher
[1484] = { "відьмацький посох", equip="Збільшує шкоду від заклинань і ефектів тіні на 11." }, -- Witching Stave, @equip Increases damage done by Shadow spells and effects by up to 11.
[1485] = { "вила" }, -- Pitchfork
[1486] = { "куртка з деревної кори" }, -- Tree Bark Jacket
[1487] = { "начаклований цільнозерновий хліб", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Pumpernickel, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[1488] = { "обладунок месника" }, -- Avenger's Armor
[1489] = { "обладунок мороку" }, -- Gloomshroud Armor
[1490] = { "оберіг-талісман", equip="Шанс збільшити броню на 350 на 15 сек при отриманні удару в бою. (Імовірність: 2%)" }, -- Guardian Talisman, @equip Have a 2% chance when struck in combat of increasing armor by 350 for 15 sec. (Proc chance: 2%)
[1491] = { "перстень влучності" }, -- Ring of Precision
[1493] = { "важкий ятаган мародера" }, -- Heavy Marauder Scimitar
[1495] = { "ситцеве взуття" }, -- Calico Shoes
[1497] = { "ситцевий плащ" }, -- Calico Cloak
[1498] = { "ситцеві рукавички" }, -- Calico Gloves
[1499] = { "ситцеві штани" }, -- Calico Pants
[1501] = { "ситцевий мундир" }, -- Calico Tunic
[1502] = { "покороблений шкіряний пояс" }, -- Warped Leather Belt
[1503] = { "покороблені шкіряні чоботи" }, -- Warped Leather Boots
[1504] = { "покороблені шкіряні браслети" }, -- Warped Leather Bracers
[1505] = { "покороблений плащ" }, -- Warped Cloak
[1506] = { "покороблені шкіряні рукавиці" }, -- Warped Leather Gloves
[1507] = { "покороблені шкіряні штани" }, -- Warped Leather Pants
[1509] = { "покороблений шкіряний жилет" }, -- Warped Leather Vest
[1510] = { "важкий молот" }, -- Heavy Hammer
[1511] = { "меч простака" }, -- Commoner's Sword
[1512] = { "груба бойова сокира" }, -- Crude Battle Axe
[1513] = { "старий великий меч" }, -- Old Greatsword
[1514] = { "іржавий бойовий молот" }, -- Rusty Warhammer
[1515] = { "грубий дерев'яний посох" }, -- Rough Wooden Staff
[1516] = { "зношена сокирка" }, -- Worn Hatchet
[1518] = { "гребінець з волоссям привида" }, -- Ghost Hair Comb
[1519] = { "вухо Кровоскальпого" }, -- Bloodscalp Ear
[1520] = { "піт троля" }, -- Troll Sweat
[1521] = { "огрський колун" }, -- Lumbering Ogre Axe
[1522] = { "спис мисливця за головами" }, -- Headhunting Spear
[1523] = { "велика кам'яна дубина" }, -- Huge Stone Club
[1524] = { "ікло Черепотрощителя" }, -- Skullsplitter Tusk
[1528] = { "жменя вівса" }, -- Handful of Oats
[1529] = { "нефрит" }, -- Jade
[1532] = { "сушена голова" }, -- Shrunken Head
[1537] = { "мішок з-під корму старенької Білявки" }, -- Old Blanchy's Feed Pouch
[1539] = { "покручений посох відлюдника" }, -- Gnarled Hermit's Staff
[1547] = { "щит віри" }, -- Shield of the Faith
[1557] = { "баклер морів" }, -- Buckler of the Seas
[1560] = { "сандалі Синьожабрих" }, -- Bluegill Sandals
[1561] = { "жнивальне вбрання" }, -- Harvester's Robe
[1566] = { "лезо народного ополчення" }, -- Edge of the People's Militia
[1596] = { "нитка з волосся привида" }, -- Ghost Hair Thread
[1598] = { "гнилоцвіт" }, -- Rot Blossom
[1602] = { "серповидна сокира" }, -- Sickle Axe
[1604] = { "хроматичний меч" }, -- Chromatic Sword
[1607] = { "Хранитель душ" }, -- Soulkeeper
[1608] = { "булава Череполама" }, -- Skullcrusher Mace
[1613] = { "посох духолова" }, -- Spiritchaser Staff
[1623] = { "сумка зі шкіри раптора" }, -- Raptor Skin Pouch
[1624] = { "шолом Черепотрощителів" }, -- Skullsplitter Helm
[1625] = { "вишуканий фламберг" }, -- Exquisite Flamberge
[1630] = { "зламаний електроліхтар" }, -- Broken Electro-lantern
[1637] = { "лист до Елло" }, -- Letter to Ello
[1639] = { "усміхнена сокира" }, -- Grinning Axe
[1640] = { "монструозна бойова сокира" }, -- Monstrous War Axe
[1652] = { "міцна коробка для сніданків" }, -- Sturdy Lunchbox
[1656] = { "перекладений лист" }, -- Translated Letter
[1659] = { "інженерні рукавички" }, -- Engineering Gloves
[1664] = { "палиця магічної сили", use="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 20." }, -- Spellforce Rod, @equip Increases damage and healing done by magical spells and effects by up to 20.
[1677] = { "жилет з луски дракона" }, -- Drake-scale Vest
[1678] = { "чорні огрські шкари" }, -- Black Ogre Kickers
[1679] = { "бита Корґа" }, -- Korg Bat
[1680] = { "головоруб", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Headchopper, @equip Improves your chance to get a critical strike by 1%.
[1685] = { "сумка зі шкіри троля" }, -- Troll-hide Bag
[1686] = { "щетинистий вус" }, -- Bristly Whisker
[1687] = { "пазур" }, -- Retractable Claw
[1688] = { "довгий пухнастий хвіст" }, -- Long Soft Tail
[1696] = { "вигнутий кіготь раптора" }, -- Curved Raptor Talon
[1697] = { "гострий зуб раптора" }, -- Keen Raptor Tooth
[1701] = { "вигнутий кіготь василіска" }, -- Curved Basilisk Claw
[1702] = { "неушкоджений хребет василіска" }, -- Intact Basilisk Spine
[1703] = { "кришталевий хребет василіска", use="Збільшує супротив кризі та тіні на 10 протягом 1 хвилини." }, -- Crystal Basilisk Spine, @use Increases Frost and Shadow resistance by 10 for 1 min. (2 Min Cooldown)
[1705] = { "малий місячний камінь" }, -- Lesser Moonstone
[1706] = { "лазурові уламки" }, -- Azuredeep Shards
[1707] = { "штормовійський брі", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Stormwind Brie, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[1708] = { "солодкий нектар", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Sweet Nectar, @use Restores 1344.6 mana over 27 sec.  Must remain seated while drinking.
[1710] = { "велике зілля лікування", ref=118 }, -- Greater Healing Potion
[1711] = { "сувій витривалості II", ref=1180 }, -- Scroll of Stamina II
[1712] = { "сувій духу II", ref=1181 }, -- Scroll of Spirit II
[1713] = { "анкх життя", use="Зцілює вашу ціль на значення від {1} до {2} здоров'я. (Відновлення 5 хв)#for {1} to {2}" }, -- Ankh of Life, @use Heal your target for 135 to 165. (5 Min Cooldown)
[1714] = { "намисто Калісеї" }, -- Necklace of Calisea
[1715] = { "полірований кольчужний обладунок" }, -- Polished Jazeraint Armor
[1716] = { "чаклунська мантія", use="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 22." }, -- Robe of the Magi, @equip Increases damage and healing done by magical spells and effects by up to 22.
[1717] = { "подвійний мундир", equip="Збільшує навичку захисту на 9." }, -- Double Link Tunic, @equip Increased Defense +9.
[1718] = { "штани зі шкіри василіска" }, -- Basilisk Hide Pants
[1720] = { "вузлуватий посох", equip="Збільшує шкоду від заклинань і ефектів природи на 14." }, -- Tanglewood Staff, @equip Increases damage done by Nature spells and effects by up to 14.
[1721] = { "бойовий молот вікінга" }, -- Viking Warhammer
[1722] = { "гострокам'яна кувалда" }, -- Thornstone Sledgehammer
[1725] = { "великий рюкзак" }, -- Large Knapsack
[1726] = { "кістяний спис з отруйним вістрям", hit="Отруює ціль, завдаючи 30 шкоди від природи кожні 6 с протягом 30 с." }, -- Poison-tipped Bone Spear, @hit Poisons target for 30 Nature damage every 6 sec for 30 sec.
[1727] = { "меч гниття", hit="Зменшує силу цілі на 10 протягом 30 секунд." }, -- Sword of Decay, @hit Reduces target's Strength by 10 for 30 sec.
[1728] = { "полум'яний меч Тібу", hit="Завдає цілі 150 шкоди від вогню." }, -- Teebu's Blazing Longsword, @hit Blasts a target for 150 Fire damage.
[1729] = { "ранець Нічної варти" }, -- Gunnysack of the Night Watch
[1730] = { "зношений кольчужний пояс" }, -- Worn Mail Belt
[1731] = { "зношені кольчужні чоботи" }, -- Worn Mail Boots
[1732] = { "зношені кольчужні браслети" }, -- Worn Mail Bracers
[1733] = { "зношений плащ" }, -- Worn Cloak
[1734] = { "зношені кольчужні рукавиці" }, -- Worn Mail Gloves
[1735] = { "зношені кольчужні штани" }, -- Worn Mail Pants
[1737] = { "зношений кольчужний жилет" }, -- Worn Mail Vest
[1738] = { "шнурований кольчужний пояс" }, -- Laced Mail Belt
[1739] = { "шнуровані кольчужні чоботи" }, -- Laced Mail Boots
[1740] = { "шнуровані кольчужні браслети" }, -- Laced Mail Bracers
[1741] = { "шнурований плащ" }, -- Laced Cloak
[1742] = { "шнуровані кольчужні рукавиці" }, -- Laced Mail Gloves
[1743] = { "шнуровані кольчужні штани" }, -- Laced Mail Pants
[1744] = { "шнуровані кольчужні наплечі" }, -- Laced Mail Shoulderpads
[1745] = { "шнурований кольчужний жилет" }, -- Laced Mail Vest
[1746] = { "клепаний кольчужний пояс" }, -- Linked Chain Belt
[1747] = { "клепані кольчужні чоботи" }, -- Linked Chain Boots
[1748] = { "клепані кольчужні браслети" }, -- Linked Chain Bracers
[1749] = { "клепаний кольчужний плащ" }, -- Linked Chain Cloak
[1750] = { "клепані кольчужні рукавиці" }, -- Linked Chain Gloves
[1751] = { "клепані кольчужні штани" }, -- Linked Chain Pants
[1752] = { "клепані кольчужні наплечі" }, -- Linked Chain Shoulderpads
[1753] = { "клепаний кольчужний жилет" }, -- Linked Chain Vest
[1754] = { "укріплений кольчужний пояс" }, -- Reinforced Chain Belt
[1755] = { "укріплені кольчужні чоботи" }, -- Reinforced Chain Boots
[1756] = { "укріплені кольчужні браслети" }, -- Reinforced Chain Bracers
[1757] = { "укріплений кольчужний плащ" }, -- Reinforced Chain Cloak
[1758] = { "укріплені кольчужні рукавиці" }, -- Reinforced Chain Gloves
[1759] = { "укріплені кольчужні штани" }, -- Reinforced Chain Pants
[1760] = { "укріплені кольчужні наплечі" }, -- Reinforced Chain Shoulderpads
[1761] = { "укріплений кольчужний жилет" }, -- Reinforced Chain Vest
[1764] = { "полотняні туфлі" }, -- Canvas Shoes
[1766] = { "полотняний плащ" }, -- Canvas Cloak
[1767] = { "полотняні рукавички" }, -- Canvas Gloves
[1768] = { "полотняні штани" }, -- Canvas Pants
[1769] = { "полотняні наплечі" }, -- Canvas Shoulderpads
[1770] = { "полотняний жилет" }, -- Canvas Vest
[1772] = { "парчеві туфлі" }, -- Brocade Shoes
[1774] = { "парчевий плащ" }, -- Brocade Cloak
[1775] = { "парчеві рукавички" }, -- Brocade Gloves
[1776] = { "парчеві штани" }, -- Brocade Pants
[1777] = { "парчеві наплечі" }, -- Brocade Shoulderpads
[1778] = { "парчевий жилет" }, -- Brocade Vest
[1780] = { "прошиті сандалі" }, -- Cross-stitched Sandals
[1782] = { "прошитий плащ" }, -- Cross-stitched Cloak
[1783] = { "прошиті рукавички" }, -- Cross-stitched Gloves
[1784] = { "прошиті штани" }, -- Cross-stitched Pants
[1785] = { "прошиті наплечі" }, -- Cross-stitched Shoulderpads
[1786] = { "прошитий жилет" }, -- Cross-stitched Vest
[1787] = { "латаний шкіряний пояс" }, -- Patched Leather Belt
[1788] = { "латані шкіряні чоботи" }, -- Patched Leather Boots
[1789] = { "латані шкіряні браслети" }, -- Patched Leather Bracers
[1790] = { "латаний плащ" }, -- Patched Cloak
[1791] = { "латані шкіряні рукавиці" }, -- Patched Leather Gloves
[1792] = { "латані шкіряні штани" }, -- Patched Leather Pants
[1793] = { "латані шкіряні наплечі" }, -- Patched Leather Shoulderpads
[1794] = { "латаний шкіряний жилет" }, -- Patched Leather Jerkin
[1795] = { "сиричний пояс" }, -- Rawhide Belt
[1796] = { "сиричні чоботи" }, -- Rawhide Boots
[1797] = { "сиричні браслети" }, -- Rawhide Bracers
[1798] = { "сиричний плащ" }, -- Rawhide Cloak
[1799] = { "сиричні рукавиці" }, -- Rawhide Gloves
[1800] = { "сиричні штани" }, -- Rawhide Pants
[1801] = { "сиричні наплечі" }, -- Rawhide Shoulderpads
[1802] = { "сиричний жилет" }, -- Rawhide Tunic
[1803] = { "міцний шкіряний пояс" }, -- Tough Leather Belt
[1804] = { "міцні шкіряні чоботи" }, -- Tough Leather Boots
[1805] = { "міцні шкіряні браслети" }, -- Tough Leather Bracers
[1806] = { "міцний плащ" }, -- Tough Cloak
[1807] = { "міцні шкіряні рукавиці" }, -- Tough Leather Gloves
[1808] = { "міцні шкіряні штани" }, -- Tough Leather Pants
[1809] = { "міцні шкіряні наплечі" }, -- Tough Leather Shoulderpads
[1810] = { "міцний шкіряний обладунок" }, -- Tough Leather Armor
[1811] = { "затуплений клеймор" }, -- Blunt Claymore
[1812] = { "бойова сокира з коротким руків'ям" }, -- Short-handled Battle Axe
[1813] = { "розколотий посох" }, -- Chipped Quarterstaff
[1814] = { "побита киянка" }, -- Battered Mallet
[1815] = { "прикрашена булава" }, -- Ornamental Mace
[1816] = { "незбалансована сокира" }, -- Unbalanced Axe
[1817] = { "розбитий короткий меч" }, -- Stock Shortsword
[1818] = { "звичайний клеймор" }, -- Standard Claymore
[1819] = { "кирка камнелома" }, -- Gouging Pick
[1820] = { "дерев'яний молот" }, -- Wooden Maul
[1821] = { "викривлений клинок" }, -- Warped Blade
[1822] = { "кедрова тростина" }, -- Cedar Walking Stick
[1823] = { "сучкувата дубина" }, -- Bludgeoning Cudgel
[1824] = { "блискуча бойова сокира" }, -- Shiny War Axe
[1825] = { "громіздкий молот" }, -- Bulky Bludgeon
[1826] = { "кам'яний молот" }, -- Rock Maul
[1827] = { "м'ясоруб" }, -- Meat Cleaver
[1828] = { "кам'яна бойова сокира" }, -- Stone War Axe
[1829] = { "коротка абордажна сабля" }, -- Short Cutlass
[1830] = { "довгий півтораручний меч" }, -- Long Bastard Sword
[1831] = { "дубовий бойовий посох" }, -- Oaken War Staff
[1832] = { "щасливі брюки" }, -- Lucky Trousers
[1835] = { "брудний шкіряний пояс" }, -- Dirty Leather Belt
[1836] = { "брудні шкіряні браслети" }, -- Dirty Leather Bracers
[1839] = { "грубий шкіряний пояс" }, -- Rough Leather Belt
[1840] = { "грубі шкіряні браслети" }, -- Rough Leather Bracers
[1843] = { "пояс з дубленої шкіри" }, -- Tanned Leather Belt
[1844] = { "браслети з дубленої шкіри" }, -- Tanned Leather Bracers
[1845] = { "кольчужний пояс" }, -- Chainmail Belt
[1846] = { "кольчужні браслети" }, -- Chainmail Bracers
[1849] = { "пояс з обробленої шкіри" }, -- Cured Leather Belt
[1850] = { "браслети з обробленої шкіри" }, -- Cured Leather Bracers
[1851] = { "очищувальна вода", use="Очищає дружню ціль, усуваючи 1 ефект хвороби та 1 ефект отрути." }, -- Cleansing Water, @use Purifies the friendly target, removing 1 disease effect and 1 poison effect. (5 Min Cooldown)
[1852] = { "лускаті браслети" }, -- Scalemail Bracers
[1853] = { "лускатий пояс" }, -- Scalemail Belt
[1875] = { "значок Лютополоха", flavor="Десятник Лютополох — член Ліги дослідників" }, -- Thistlenettle's Badge, @flavor Foreman Thistlenettle - Member of the Explorers' League
[1893] = { "помста шахтаря" }, -- Miner's Revenge
[1894] = { "картка спілки шахтарів" }, -- Miners' Union Card
[1913] = { "шипована дубина" }, -- Studded Blackjack
[1917] = { "прикрашений кинджал" }, -- Jeweled Dagger
[1922] = { "припаси для Свена", flavor="Пакунок різноманітних припасів для Свена." }, -- Supplies for Sven, @flavor A bundle of miscellaneous supplies for Sven.
[1923] = { "сумка посланця" }, -- Ambassador's Satchel
[1925] = { "рапіра повстанців" }, -- Defias Rapier
[1926] = { "важка палиця" }, -- Weighted Sap
[1927] = { "тесак Мертвих копалень" }, -- Deadmines Cleaver
[1928] = { "посох мага повстанців" }, -- Defias Mage Staff
[1929] = { "прошиті шовком штани" }, -- Silk-threaded Trousers
[1930] = { "плащ каменяра" }, -- Stonemason Cloak
[1931] = { "величезна лапа гнола" }, -- Huge Gnoll Claw
[1933] = { "посох творення", use="Начаклувати їжу." }, -- Staff of Conjuring, @use Conjures food to eat. (5 Min Cooldown)
[1934] = { "брюки каменяра" }, -- Stonemason Trousers
[1935] = { "клинок вбивці" }, -- Assassin's Blade
[1936] = { "гоблінська викрутка" }, -- Goblin Screwdriver
[1937] = { "свисторіз" }, -- Buzz Saw
[1938] = { "будівельна киянка" }, -- Block Mallet
[1939] = { "бурдюк солодкого рому" }, -- Skin of Sweet Rum
[1941] = { "барильце Мерло" }, -- Cask of Merlot
[1942] = { "пляшка сивухи" }, -- Bottle of Moonshine
[1943] = { "гоблінські кольчужні поножі" }, -- Goblin Mail Leggings
[1944] = { "рукавиці слюсаря" }, -- Metalworking Gloves
[1945] = { "рукавиці тесляра" }, -- Woodworking Gloves
[1946] = { "дзеркальце Мері" }, -- Mary's Looking Glass
[1951] = { "абордажна сабля Чорноводдя" }, -- Blackwater Cutlass
[1955] = { "кольчужні чоботи Драконопащих" }, -- Dragonmaw Chain Boots
[1956] = { "тьмяна підвіска Тінешкурих", flavor="Заклинання, накладене на цю підвіску, вже розвіялося." }, -- Faded Shadowhide Pendant, @flavor The spell on this pendant has faded.
[1958] = { "скам'яніла гомілкова кістка" }, -- Petrified Shinbone
[1959] = { "холодна залізна кирка" }, -- Cold Iron Pick
[1962] = { "сяюча підвіска Тінешкурих", flavor="Підвіска сяє від магії." }, -- Glowing Shadowhide Pendant, @flavor This pendant glows with magic.
[1965] = { "рукавиці білого вовка" }, -- White Wolf Gloves
[1968] = { "монокль огра" }, -- Ogre's Monocle
[1970] = { "відновлюючий бальзам", use="Відновлює цілі {1} здоров'я протягом {2} сек. (Відновлення 2 хв)#Heals the target for {1} damage over {2}" }, -- Restoring Balm, @use Heals the target for 180 damage over 12 sec. (2 Min Cooldown)
[1971] = { "документ Хмуроброва" }, -- Furlbrow's Deed
[1972] = { "документи Західного краю" }, -- Westfall Deed
[1973] = { "cфера обману", use="Замаскуватися під члена протилежної фракції." }, -- Orb of Deception, @use Transforms caster to look like a member of the opposing faction. (30 Min Cooldown)
[1974] = { "браслети сили розуму" }, -- Mindthrust Bracers
[1975] = { "старий меч Пайсана" }, -- Pysan's Old Greatsword
[1976] = { "Шлакомолот" }, -- Slaghammer
[1977] = { "20-місна сумка" }, -- 20-slot Bag
[1978] = { "рукавиці вовчого пазура" }, -- Wolfclaw Gloves
[1979] = { "стіна мертвих", equip="Шанс оточити себе кістяним захистом, що збільшує броню на 150 протягом 20 секунд, при отриманні удару в бою. (Імовірність: 3%)" }, -- Wall of the Dead, @equip When struck in combat has a 3% chance to encase the caster in bone, increasing armor by 150 for 20 sec. (Proc chance: 3%)
[1980] = { "перстень Підсвіття", equip="Збільшує шкоду від заклинань і ефектів тіні на 14." }, -- Underworld Band, @equip Increases damage done by Shadow spells and effects by up to 14.
[1981] = { "крижаний кольчужний жилет" }, -- Icemail Jerkin
[1982] = { "клинок ночі", hit="Запускає у ворога заряд тіні, що завдає від 125 до 275 шкоди від тіні." }, -- Nightblade, @hit Sends a shadowy bolt at the enemy causing 125 to 275 Shadow damage.
[1986] = { "кишкоріз", hit="Ранить ціль, завдаючи від 90 до 114 шкоди." }, -- Gutrender, @hit Wounds the target for 90 to 114 damage.
[1987] = { "відремонтований горщик Кронжека", flavor="Покращений горщик з додатковими свистками та подрібнювачами." }, -- Krazek's Fixed Pot, @flavor An improved pot, with extra whistles and choppers.
[1988] = { "рукавиці старшого бригадира" }, -- Chief Brigadier Gauntlets
[1990] = { "збалансована булава" }, -- Ballast Maul
[1991] = { "гоблінська автолопата" }, -- Goblin Power Shovel
[1992] = { "фетиш болотного холоду", equip={ "Збільшує шкоду від заклинань і ефектів криги на 11.", "Збільшує шкоду від заклинань і ефектів тіні на 11." } }, -- Swampchill Fetish, @equip Increases damage done by Frost spells and effects by up to 11., @equip Increases damage done by Shadow spells and effects by up to 11.
[1993] = { "огрське кільце розуму" }, -- Ogremind Ring
[1994] = { "чорнопазуровий розоритель" }, -- Ebonclaw Reaver
[1996] = { "кільце вуду" }, -- Voodoo Band
[1997] = { "повстяна мантія" }, -- Pressed Felt Robe
[1998] = { "чаклунський посох Кровоскальпих", equip="Збільшує шкоду і зцілення від заклинань і ефектів природи на 19." }, -- Bloodscalp Channeling Staff, @equip Increases damage done by Nature spells and effects by up to 19.
[2000] = { "Архей", hit="Підриває ціль, завдаючи їй 85 шкоди від аркани.", flavor="Меч Моргана Ладімора." }, -- Archeus, @hit Blasts a target for 85 Arcane damage., @flavor Morgan Ladimore's sword.
[2004] = { "щоденник Ґреліна Білоборода" }, -- Grelin Whitebeard's Journal
[2005] = { "перша легенда тролів", flavor="Місяць над долиною" }, -- The First Troll Legend, @flavor Moon over the Vale
[2006] = { "друга легенда тролів", flavor="Ґрі'лек Мандрівник" }, -- The Second Troll Legend, @flavor Gri'lek the Wanderer
[2007] = { "третя легенда тролів", flavor="Занепад Ґурубаші" }, -- The Third Troll Legend, @flavor Fall of Gurubashi
[2008] = { "четверта легенда тролів", flavor="Гробниця імператора" }, -- The Fourth Troll Legend, @flavor The Emperor's Tomb
[2011] = { "кручена шабля" }, -- Twisted Sabre
[2013] = { "могильний посох" }, -- Cryptbone Staff
[2014] = { "великий меч з чорного металу" }, -- Black Metal Greatsword
[2015] = { "бойова сокира з чорного металу" }, -- Black Metal War Axe
[2016] = { "запорошений кольчужний обладунок" }, -- Dusty Chain Armor
[2017] = { "сяючі шкіряні браслети" }, -- Glowing Leather Bracers
[2018] = { "скелетний довгий меч" }, -- Skeletal Longsword
[2020] = { "клинок порожнистого ікла" }, -- Hollowfang Blade
[2021] = { "зелений панцирний щит" }, -- Green Carapace Shield
[2024] = { "еспадон" }, -- Espadon
[2025] = { "бородоподібна сокира" }, -- Bearded Axe
[2026] = { "скельний молот" }, -- Rock Hammer
[2027] = { "ятаган" }, -- Scimitar
[2028] = { "молот" }, -- Hammer
[2029] = { "тесак" }, -- Cleaver
[2030] = { "покручений посох" }, -- Gnarled Staff
[2032] = { "наручники Ґаллана" }, -- Gallan Cuffs
[2033] = { "черевики посланця" }, -- Ambassador's Boots
[2034] = { "мантія вченого" }, -- Scholarly Robes
[2035] = { "меч нічного неба" }, -- Sword of the Night Sky
[2036] = { "запорошені шахтарські рукавички" }, -- Dusty Mining Gloves
[2037] = { "чоботи прохідника" }, -- Tunneler's Boots
[2039] = { "перстень рівнин" }, -- Plains Ring
[2040] = { "трольський захисник", equip="Збільшує шанс блокувати атаки щитом на 2%." }, -- Troll Protector, @equip Increases your chance to block attacks with a shield by 2%.
[2041] = { "мундир західного краю" }, -- Tunic of Westfall
[2042] = { "посох західного краю" }, -- Staff of Westfall
[2043] = { "перстень знедолених духів" }, -- Ring of Forlorn Spirits
[2044] = { "півмісяць знедолених духів" }, -- Crescent of Forlorn Spirits
[2046] = { "кукрі Синьожабрих" }, -- Bluegill Kukri
[2047] = { "ковмарська сокира" }, -- Anvilmar Hand Axe
[2048] = { "ковмарський молот" }, -- Anvilmar Hammer
[2054] = { "трозька сокира" }, -- Trogg Hand Axe
[2055] = { "малий дерев'яний молот" }, -- Small Wooden Hammer
[2056] = { "оксамитовий молоток" }, -- The Velvet Hammer
[2057] = { "зазубрений короткий меч повстанців" }, -- Pitted Defias Shortsword
[2058] = { "молот Казона" }, -- Kazon's Maul
[2059] = { "плащ стражів" }, -- Sentry Cloak
[2064] = { "трозька дубина" }, -- Trogg Club
[2065] = { "клинок Кам'янощелепих" }, -- Rockjaw Blade
[2066] = { "черепоруб" }, -- Skull Hatchet
[2067] = { "посох обмороження" }, -- Frostbit Staff
[2069] = { "жилет зі шкури чорного ведмедя" }, -- Black Bear Hide Vest
[2070] = { "дарнаський блю", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Darnassian Bleu, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[2072] = { "дворфійський магічний посох" }, -- Dwarven Magestaff
[2073] = { "дворфійська сокирка" }, -- Dwarven Hatchet
[2074] = { "міцний клинок" }, -- Solid Shortblade
[2075] = { "булава жерця" }, -- Priest's Mace
[2077] = { "чаклунський посох" }, -- Magician Staff
[2078] = { "північний меч" }, -- Northern Shortsword
[2079] = { "сержантський бойовий молот" }, -- Sergeant's Warhammer
[2080] = { "сокира горянина" }, -- Hillborne Axe
[2082] = { "мішок Бацбаха" }, -- Wizbang's Gunnysack
[2084] = { "півтораручний меч з темної сталі" }, -- Darksteel Bastard Sword
[2085] = { "шмат плоті" }, -- Chunk of Flesh
[2087] = { "міцний панцир повзуна" }, -- Hard Crawler Carapace
[2088] = { "довга лапа повзуна" }, -- Long Crawler Limb
[2089] = { "різьблений кинджал" }, -- Scrimshaw Dagger
[2091] = { "магічний пил", use="Присипляє ворожу ціль на 30 секунд. Будь-яка завдана шкода розбудить ціль. Одночасно можна приспати лише одну ціль." }, -- Magic Dust, @use Puts the enemy target to sleep for up to 30 sec.  Any damage caused will awaken the target.  Only one target can be asleep at a time. (1 Min Cooldown)
[2092] = { "зношений кинджал" }, -- Worn Dagger
[2098] = { "двоствольна рушниця" }, -- Double-barreled Shotgun
[2099] = { "дворфійська ручна гармата", equip="Шан вистрілити в ціль вогняним ядром, що завдає від 33 до 39 шкоди від вогню." }, -- Dwarven Hand Cannon, @equip Chance to strike your ranged target with a Flaming Cannonball for 33 to 49 Fire damage.
[2100] = { "точно відкалібрований громостріл" }, -- Precisely Calibrated Boomstick
[2101] = { "легкий сагайдак", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Light Quiver, @equip Increases ranged attack speed by 10%.
[2102] = { "малий гаман для набоїв", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Small Ammo Pouch, @equip Increases ranged attack speed by 10%.
[2105] = { "сорочка бандита" }, -- Thug Shirt
[2108] = { "шкіряний жилет Морозогривих" }, -- Frostmane Leather Vest
[2109] = { "кольчужний жилет Морозогривих" }, -- Frostmane Chain Vest
[2110] = { "легка мантія чаротворця" }, -- Light Magesmith Robe
[2112] = { "жилет лісоруба" }, -- Lumberjack Jerkin
[2113] = { "записка Калора" }, -- Calor's Note
[2114] = { "сніжна мантія" }, -- Snowy Robe
[2117] = { "тонкі ткані черевики" }, -- Thin Cloth Shoes
[2119] = { "тонкі ткані рукавички" }, -- Thin Cloth Gloves
[2120] = { "тонкі ткані штани" }, -- Thin Cloth Pants
[2121] = { "тонкий тканий жилет" }, -- Thin Cloth Armor
[2122] = { "потрісканий шкіряний пояс" }, -- Cracked Leather Belt
[2123] = { "потріскані шкіряні чоботи" }, -- Cracked Leather Boots
[2124] = { "потріскані шкіряні браслети" }, -- Cracked Leather Bracers
[2125] = { "потріскані шкіряні рукавиці" }, -- Cracked Leather Gloves
[2126] = { "потріскані шкіряні штани" }, -- Cracked Leather Pants
[2127] = { "потрісканий шкіряний жилет" }, -- Cracked Leather Vest
[2128] = { "подряпаний клеймор" }, -- Scratched Claymore
[2129] = { "великий круглий щит" }, -- Large Round Shield
[2130] = { "дубина" }, -- Club
[2131] = { "короткий меч" }, -- Shortsword
[2132] = { "короткий посох" }, -- Short Staff
[2133] = { "малий щит" }, -- Small Shield
[2134] = { "сокирка" }, -- Hand Axe
[2136] = { "начаклована очищена вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Purified Water, @use Restores 835.2 mana over 24 sec.  Must remain seated while drinking.
[2137] = { "ніж для заточування" }, -- Whittling Knife
[2138] = { "загострений відкривач листів" }, -- Sharpened Letter Opener
[2139] = { "кортик" }, -- Dirk
[2140] = { "різьбарський ніж" }, -- Carving Knife
[2141] = { "жилет з вареної шкіри" }, -- Cuirboulli Vest
[2142] = { "пояс з вареної шкіри" }, -- Cuirboulli Belt
[2143] = { "чоботи з вареної шкіри" }, -- Cuirboulli Boots
[2144] = { "браслети з вареної шкіри" }, -- Cuirboulli Bracers
[2145] = { "рукавиці з вареної шкіри" }, -- Cuirboulli Gloves
[2146] = { "штани з вареної шкіри" }, -- Cuirboulli Pants
[2148] = { "полірований лускатий пояс" }, -- Polished Scale Belt
[2149] = { "поліровані лускаті чоботи" }, -- Polished Scale Boots
[2150] = { "поліровані лускаті браслети" }, -- Polished Scale Bracers
[2151] = { "поліровані лускаті рукавиці" }, -- Polished Scale Gloves
[2152] = { "поліровані лускаті поножі" }, -- Polished Scale Leggings
[2153] = { "полірований лускатий жилет" }, -- Polished Scale Vest
[2154] = { "\"Історія Моргана Ладімора\"" }, -- The Story of Morgan Ladimore
[2156] = { "м'які чоботи" }, -- Padded Boots
[2158] = { "м'які рукавиці" }, -- Padded Gloves
[2159] = { "м'які штани" }, -- Padded Pants
[2160] = { "м'який обладунок" }, -- Padded Armor
[2161] = { "книга з ферми Свена" }, -- Book from Sven's Farm
[2162] = { "каблучка Сари", flavor="Каблучка Сари Ладімор." }, -- Sarah's Ring, @flavor Sarah Ladimore's ring.
[2163] = { "тіньовий клинок", hit="Запускає у ворога заряд тіні, що завдає від 110 до 140 шкоди від тіні." }, -- Shadowblade, @hit Sends a shadowy bolt at the enemy causing 110 to 140 Shadow damage.
[2164] = { "Потрошитель", hit="Ранить ціль, завдаючи від 95 до 121 шкоди." }, -- Gut Ripper, @hit Wounds the target for 95 to 121 damage.
[2165] = { "ковдра старенької Білявки" }, -- Old Blanchy's Blanket
[2166] = { "поножі десятника" }, -- Foreman's Leggings
[2167] = { "рукавиці десятника" }, -- Foreman's Gloves
[2168] = { "чоботи десятника" }, -- Foreman's Boots
[2169] = { "зубець-клинок" }, -- Buzzer Blade
[2172] = { "селянський пояс" }, -- Rustic Belt
[2173] = { "старий шкіряний пояс" }, -- Old Leather Belt
[2175] = { "бойова сокира Тінешкурів" }, -- Shadowhide Battle Axe
[2186] = { "пояс екіпірувальника" }, -- Outfitter Belt
[2187] = { "стіс листів" }, -- A Stack of Letters
[2188] = { "лист до Ґреліна Білоборода" }, -- A Letter to Grelin Whitebeard
[2194] = { "діамантовий молот" }, -- Diamond Hammer
[2195] = { "ковмарський ніж" }, -- Anvilmar Knife
[2203] = { "сокира Хмизодряпа" }, -- Brashclaw's Chopper
[2204] = { "шпага Хмизодряпа" }, -- Brashclaw's Skewer
[2205] = { "вісник сутінків", hit="Запускає у ворога заряд тіні, що завдає від 60 до 100 шкоди від тіні." }, -- Duskbringer, @hit Sends a shadowy bolt at the enemy causing 60 to 100 Shadow damage.
[2207] = { "джамбія" }, -- Jambiya
[2208] = { "пуаньярд" }, -- Poniard
[2209] = { "кріс" }, -- Kris
[2210] = { "побитий баклер" }, -- Battered Buckler
[2211] = { "гнутий великий щит" }, -- Bent Large Shield
[2212] = { "потрісканий баклер" }, -- Cracked Buckler
[2213] = { "зношений великий щит" }, -- Worn Large Shield
[2214] = { "дерев'яний баклер" }, -- Wooden Buckler
[2215] = { "дерев'яний щит" }, -- Wooden Shield
[2216] = { "простий баклер" }, -- Simple Buckler
[2217] = { "прямокутний щит" }, -- Rectangular Shield
[2218] = { "кинджал ремісника" }, -- Craftsman's Dagger
[2219] = { "малий круглий щит" }, -- Small Round Shield
[2220] = { "дощаний щит" }, -- Box Shield
[2221] = { "тарг" }, -- Targe Shield
[2222] = { "вежовий щит" }, -- Tower Shield
[2223] = { "розклад Збирача" }, -- The Collector's Schedule
[2224] = { "кинджал повстанців" }, -- Militia Dagger
[2225] = { "гострий кухонний ніж" }, -- Sharp Kitchen Knife
[2226] = { "посох огра-мага" }, -- Ogremage Staff
[2227] = { "важка огрська бойова сокира" }, -- Heavy Ogre War Axe
[2230] = { "рукавички м'язів" }, -- Gloves of Brawn
[2231] = { "інфернальна мантія", equip="Збільшує шкоду від заклинань і ефектів вогню на 23." }, -- Inferno Robe, @equip Increases damage done by Fire spells and effects by up to 23.
[2232] = { "чоботи темного вісника" }, -- Dark Runner Boots
[2233] = { "поножі тіньового ткача" }, -- Shadow Weaver Leggings
[2234] = { "обладунок ночеходця" }, -- Nightwalker Armor
[2235] = { "кіготь Брека" }, -- Brackclaw
[2236] = { "чорнозуб" }, -- Blackfang
[2237] = { "штопані штани" }, -- Patched Pants
[2238] = { "штани шибеника" }, -- Urchin's Pants
[2239] = { "перстень Збирача", flavor="Вигравійовано: 'За багаторічну службу -ЕВК'" }, -- The Collector's Ring, @flavor Engraved with the words 'For years of service: -EVC.'
[2240] = { "потертий плащ" }, -- Rugged Cape
[2241] = { "плащ відчайдуха" }, -- Desperado Cape
[2243] = { "рука Едварда Дивного", hit="Вимова наступного закляття протягом 4 секунд буде миттєвою." }, -- Hand of Edward the Odd, @hit Next spell cast within 4 sec will cast instantly.
[2244] = { "клинок Крола", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Krol Blade, @equip Improves your chance to get a critical strike by 1%.
[2245] = { "шолом Нарва" }, -- Helm of Narv
[2246] = { "перстень мірмідона" }, -- Myrmidon's Signet
[2249] = { "баклер повстанців" }, -- Militia Buckler
[2250] = { "темні крабові пиріжки" }, -- Dusky Crab Cakes
[2251] = { "липка павуча лапка" }, -- Gooey Spider Leg
[2252] = { "різні гоблінські припаси", flavor="Ящик із різними припасами, адресований рядовому Торсену." }, -- Miscellaneous Goblin Supplies, @flavor A crate of miscellaneous supplies addressed to Private Thorsen.
[2254] = { "обледенілий бойовий молот" }, -- Icepane Warhammer
[2256] = { "скелетна дубина", hit="Запускає у ворога заряд тіні, що завдає 30 шкоди від тіні." }, -- Skeletal Club, @hit Sends a shadowy bolt at the enemy causing 30 Shadow damage.
[2257] = { "посох Морозогривих" }, -- Frostmane Staff
[2258] = { "короткий меч Морозогривих" }, -- Frostmane Shortsword
[2259] = { "дубина Морозогривих" }, -- Frostmane Club
[2260] = { "сокира Морозогривих" }, -- Frostmane Hand Axe
[2262] = { "печатка Керна", equip="Збільшує силу атаки на 20." }, -- Mark of Kern, @equip +20 Attack Power.
[2263] = { "фітолезо", hit="Підриває ціль, завдаючи їй 35 шкоди від природи." }, -- Phytoblade, @hit Blasts a target for 35 Nature damage.
[2264] = { "напліччя злодіїв" }, -- Mantle of Thieves
[2265] = { "сокира Каменедробів" }, -- Stonesplinter Axe
[2266] = { "кинджал Каменедробів" }, -- Stonesplinter Dagger
[2267] = { "булава Каменедробів" }, -- Stonesplinter Mace
[2268] = { "клинок Каменедробів" }, -- Stonesplinter Blade
[2271] = { "посох блаженного провидця", equip="Збільшує зцілення від заклинань і ефектів на 24." }, -- Staff of the Blessed Seer, @equip Increases healing done by spells and effects by up to 24.
[2273] = { "партизанський обладунок" }, -- Guerrilla Armor
[2274] = { "рукавиці сапера" }, -- Sapper's Gloves
[2276] = { "чоботи болотохода" }, -- Swampwalker Boots
[2277] = { "поножі некроманта", equip="Збільшує шкоду від заклинань і ефектів тіні на 10." }, -- Necromancer Leggings, @equip Increases damage done by Shadow spells and effects by up to 10.
[2278] = { "еполети лісового слідопита" }, -- Forest Tracker Epaulets
[2280] = { "тростина Кама" }, -- Kam's Walking Stick
[2281] = { "крем'яна сокира гризуна" }, -- Rodentia Flint Axe
[2282] = { "короткий меч гризуна" }, -- Rodentia Shortsword
[2283] = { "тканий пояс щура" }, -- Rat Cloth Belt
[2284] = { "тканий плащ щура" }, -- Rat Cloth Cloak
[2287] = { "шмат м'яса", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Haunch of Meat, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[2288] = { "начаклована свіжа вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Fresh Water, @use Restores 436.8 mana over 21 sec.  Must remain seated while drinking.
[2289] = { "сувій сили II", ref=954 }, -- Scroll of Strength II
[2290] = { "сувій інтелекту II", ref=955 }, -- Scroll of Intellect II
[2291] = { "Канґ-Головоруб", hit="Ранить ціль, спричиняючи 560 шкоди від кровотечі протягом 30 сек." }, -- Kang the Decapitator, @hit Wounds the target causing them to bleed for 560 damage over 30 sec.
[2292] = { "некрологічна мантія" }, -- Necrology Robes
[2295] = { "великий бивень кнура" }, -- Large Boar Tusk
[2296] = { "рило великого іклоштрика" }, -- Great Goretusk Snout
[2299] = { "пломениста бойова сокира", hit="Кидає вогняну кулю, яка завдає від 86 до 110 шкоди від вогню і додатково 18 шкоди від вогню протягом 6 с." }, -- Burning War Axe, @hit Hurls a fiery ball that causes 86 to 110 Fire damage and an additional 18 damage over 6 sec.
[2300] = { "тиснений шкіряний жилет" }, -- Embossed Leather Vest
[2302] = { "шкіряні чоботи ручної роботи" }, -- Handstitched Leather Boots
[2303] = { "шкіряні штани ручної роботи" }, -- Handstitched Leather Pants
[2304] = { "накладки з легкої шкіри", use="Укріплення предмета, який носять на тілі, ногах, руках чи ступнях, що назавжди збільшить показник його броні на 8." }, -- Light Armor Kit, @use Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 8.
[2307] = { "тонкі шкіряні чоботи" }, -- Fine Leather Boots
[2308] = { "тонкий шкіряний плащ" }, -- Fine Leather Cloak
[2309] = { "тиснені шкіряні чоботи" }, -- Embossed Leather Boots
[2310] = { "тиснений шкіряний плащ" }, -- Embossed Leather Cloak
[2311] = { "білий шкіряний жилет" }, -- White Leather Jerkin
[2312] = { "тонкі шкіряні рукавички" }, -- Fine Leather Gloves
[2313] = { "накладки з середньої шкіри", use="Укріплення предмета, який носять на тілі, ногах, руках чи ступнях, що назавжди збільшить показник його броні на 16." }, -- Medium Armor Kit, @use Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 16.
[2314] = { "укріплений шкіряний обладунок" }, -- Toughened Leather Armor
[2315] = { "темні шкіряні чоботи" }, -- Dark Leather Boots
[2316] = { "темний шкіряний плащ" }, -- Dark Leather Cloak
[2317] = { "темний шкіряний мундир" }, -- Dark Leather Tunic
[2318] = { "легка шкіра" }, -- Light Leather
[2319] = { "середня шкіра" }, -- Medium Leather
[2320] = { "груба нитка" }, -- Coarse Thread
[2321] = { "тонка нитка" }, -- Fine Thread
[2324] = { "відбілювач" }, -- Bleach
[2325] = { "чорний барвник" }, -- Black Dye
[2326] = { "плющові браслети" }, -- Ivy-weave Bracers
[2327] = { "стійкі шкіряні браслети" }, -- Sturdy Leather Bracers
[2361] = { "побитий молот" }, -- Battleworn Hammer
[2362] = { "зношений дерев'яний щит" }, -- Worn Wooden Shield
[2364] = { "вовняний жилет" }, -- Woven Vest
[2366] = { "вовняні штани" }, -- Woven Pants
[2367] = { "вовняні чоботи" }, -- Woven Boots
[2369] = { "вовняні рукавички" }, -- Woven Gloves
[2370] = { "побита шкіряна портупея" }, -- Battered Leather Harness
[2371] = { "побитий шкіряний ремінь" }, -- Battered Leather Belt
[2372] = { "побиті шкіряні штани" }, -- Battered Leather Pants
[2373] = { "побиті шкіряні чоботи" }, -- Battered Leather Boots
[2374] = { "побиті шкіряні браслети" }, -- Battered Leather Bracers
[2375] = { "побиті шкіряні рукавиці" }, -- Battered Leather Gloves
[2376] = { "зношений праскоподібний щит" }, -- Worn Heater Shield
[2377] = { "круглий баклер" }, -- Round Buckler
[2378] = { "палець скелета" }, -- Skeleton Finger
[2379] = { "потьмянілий кольчужний жилет" }, -- Tarnished Chain Vest
[2380] = { "потьмянілий кольчужний пояс" }, -- Tarnished Chain Belt
[2381] = { "потьмянілі кольчужні поножі" }, -- Tarnished Chain Leggings
[2382] = { "серце Бальзамувальника" }, -- The Embalmer's Heart
[2383] = { "потьмянілі кольчужні чоботи" }, -- Tarnished Chain Boots
[2384] = { "потьмянілі кольчужні браслети" }, -- Tarnished Chain Bracers
[2385] = { "потьмянілі кольчужні рукавиці" }, -- Tarnished Chain Gloves
[2386] = { "іржавий кольчужний жилет" }, -- Rusted Chain Vest
[2387] = { "іржавий кольчужний пояс" }, -- Rusted Chain Belt
[2388] = { "іржаві кольчужні поножі" }, -- Rusted Chain Leggings
[2389] = { "іржаві кольчужні чоботи" }, -- Rusted Chain Boots
[2390] = { "іржаві кольчужні браслети" }, -- Rusted Chain Bracers
[2391] = { "іржаві кольчужні рукавиці" }, -- Rusted Chain Gloves
[2392] = { "легкий кольчужний обладунок" }, -- Light Mail Armor
[2393] = { "легкий кольчужний пояс" }, -- Light Mail Belt
[2394] = { "легкі кольчужні поножі" }, -- Light Mail Leggings
[2395] = { "легкі кольчужні чоботи" }, -- Light Mail Boots
[2396] = { "легкі кольчужні браслети" }, -- Light Mail Bracers
[2397] = { "легкі кольчужні рукавиці" }, -- Light Mail Gloves
[2398] = { "легкий плетений обладунок" }, -- Light Chain Armor
[2399] = { "легкий плетений пояс" }, -- Light Chain Belt
[2400] = { "легкі плетений  поножі" }, -- Light Chain Leggings
[2401] = { "легкі плетений чоботи" }, -- Light Chain Boots
[2402] = { "легкі плетений браслети" }, -- Light Chain Bracers
[2403] = { "легкі плетений рукавиці" }, -- Light Chain Gloves
[2406] = { "викрійка: Тонкі шкіряні чоботи", use="Навчає вас створювати тонкі шкіряні чоботи." }, -- Pattern: Fine Leather Boots, @use Teaches you how to craft Fine Leather Boots.
[2407] = { "викрійка: Білий шкіряний жилет", use="Навчає вас створювати білий шкіряний жилет." }, -- Pattern: White Leather Jerkin, @use Teaches you how to craft a White Leather Jerkin.
[2408] = { "викрійка: Тонкі шкіряні рукавички", use="Навчає вас створювати тонкі шкіряні рукавички." }, -- Pattern: Fine Leather Gloves, @use Teaches you how to craft Fine Leather Gloves.
[2409] = { "викрійка: Темний шкіряний мундир", use="Навчає вас створювати темний шкіряний мундир." }, -- Pattern: Dark Leather Tunic, @use Teaches you how to craft a Dark Leather Tunic.
[2410] = { "димний смолоскип" }, -- Smoky Torch
[2411] = { "вузда вороного жеребця", use="Викликає та відпускає верхового вороного жеребця. (Відновлення 3 сек)" }, -- Black Stallion Bridle, @use Summons and dismisses a rideable black stallion. (3 Sec Cooldown)
[2413] = { "соловий кінь", use="Викликає та відпускає верхового солового коня. (Відновлення 3 сек)" }, -- Palomino, @use Summons and dismisses a rideable palomino. (3 Sec Cooldown)
[2414] = { "вузда рябого коня", use="Викликає та відпускає верхового рябого коня. (Відновлення 3 сек)" }, -- Pinto Bridle, @use Summons and dismisses a rideable pinto. (3 Sec Cooldown)
[2415] = { "білий жеребець", use="Викликає та відпускає верхового білого жеребця. (Відновлення 3 сек)" }, -- White Stallion, @use Summons and dismisses a rideable white stallion. (3 Sec Cooldown)
[2417] = { "підсилений кольчужний обладунок" }, -- Augmented Chain Vest
[2418] = { "підсилені кольчужні поножі" }, -- Augmented Chain Leggings
[2419] = { "підсилений кольчужний пояс" }, -- Augmented Chain Belt
[2420] = { "підсилені кольчужні чоботи" }, -- Augmented Chain Boots
[2421] = { "підсилені кольчужні браслети" }, -- Augmented Chain Bracers
[2422] = { "підсилені кольчужні рукавиці" }, -- Augmented Chain Gloves
[2423] = { "панцирний жилет" }, -- Brigandine Vest
[2424] = { "панцирний пояс" }, -- Brigandine Belt
[2425] = { "панцирні поножі" }, -- Brigandine Leggings
[2426] = { "панцирні чоботи" }, -- Brigandine Boots
[2427] = { "панцирні браслети" }, -- Brigandine Bracers
[2428] = { "панцирні рукавиці" }, -- Brigandine Gloves
[2429] = { "бурий жилет" }, -- Russet Vest
[2431] = { "бурі штани" }, -- Russet Pants
[2432] = { "бурі чоботи" }, -- Russet Boots
[2434] = { "бурі рукавиці" }, -- Russet Gloves
[2435] = { "вишитий обладунок" }, -- Embroidered Armor
[2437] = { "вишиті штани" }, -- Embroidered Pants
[2438] = { "вишиті чоботи" }, -- Embroidered Boots
[2440] = { "вишиті рукавички" }, -- Embroidered Gloves
[2441] = { "обкований баклер" }, -- Ringed Buckler
[2442] = { "укріплений тарг" }, -- Reinforced Targe
[2443] = { "металевий баклер" }, -- Metal Buckler
[2444] = { "вишуканий баклер" }, -- Ornate Buckler
[2445] = { "великий металевий щит" }, -- Large Metal Shield
[2446] = { "краплеподібний щит" }, -- Kite Shield
[2447] = { "мироквіт" }, -- Peacebloom
[2448] = { "важка павеза" }, -- Heavy Pavise
[2449] = { "землекорінь" }, -- Earthroot
[2450] = { "шипшилючка" }, -- Briarthorn
[2451] = { "гребінчастий праскоподібний щит" }, -- Crested Heater Shield
[2452] = { "прудкоп'ях" }, -- Swiftthistle
[2453] = { "синцівка" }, -- Bruiseweed
[2454] = { "еліксир сили лева", use="Збільшує силу на {1} на {2} год. (Відновлення 3 сек)#by {1} for {2} h" }, -- Elixir of Lion's Strength, @use Increases Strength by 4 for 1 hour. (3 Sec Cooldown)
[2455] = { "крихітне зілля мани", use="Відновлює від {1} до {2} мани. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Minor Mana Potion, @use Restores 140 to 180 mana. (2 Min Cooldown)
[2456] = { "крихітне зілля відживлення", use="Відновлює від {1} до {2} мани та від {3} до {4} здоров'я. (Відновлення 2 хв)#{1} to {2} mana and {3} to {4} health" }, -- Minor Rejuvenation Potion, @use Restores 90 to 150 mana and 90 to 150 health. (2 Min Cooldown)
[2457] = { "крихітний еліксир спритності", use="Збільшує спритність на {1} на {2} год. (Відновлення 3 сек)#by {1} for {2} h" }, -- Elixir of Minor Agility, @use Increases Agility by 4 for 1 hour. (3 Sec Cooldown)
[2458] = { "крихітний еліксир стійкості", use="Збільшує максимальне здоров'я на {1} на {2} год. (Відновлення 3 сек)#by {1} for {2} h" }, -- Elixir of Minor Fortitude, @use Increases the player's maximum health by 27 for 1 hour. (3 Sec Cooldown)
[2459] = { "зілля прудкості", use="Збільшує швидкість бігу на {1}% на {2} с. (Відновлення 2 хв)#by {1}% for {2} sec" }, -- Swiftness Potion, @use Increases run speed by 50% for 15 sec. (2 Min Cooldown)
[2463] = { "прикрашений дублет" }, -- Studded Doublet
[2464] = { "прикрашений пояс" }, -- Studded Belt
[2465] = { "прикрашені штани" }, -- Studded Pants
[2466] = { "фетиш Черепотрощителів" }, -- Skullsplitter Fetish
[2467] = { "прикрашені чоботи" }, -- Studded Boots
[2468] = { "прикрашені браслети" }, -- Studded Bracers
[2469] = { "прикрашені рукавиці" }, -- Studded Gloves
[2470] = { "укріплений шкіряний жилет" }, -- Reinforced Leather Vest
[2471] = { "укріплений шкіряний пояс" }, -- Reinforced Leather Belt
[2472] = { "укріплені шкіряні штани" }, -- Reinforced Leather Pants
[2473] = { "укріплені шкіряні чоботи" }, -- Reinforced Leather Boots
[2474] = { "укріплені шкіряні браслети" }, -- Reinforced Leather Bracers
[2475] = { "укріплені шкіряні рукавиці" }, -- Reinforced Leather Gloves
[2476] = { "охолоджена гомілка василіска" }, -- Chilled Basilisk Haunch
[2477] = { "череп спустошника" }, -- Ravager's Skull
[2479] = { "широка сокира" }, -- Broad Axe
[2480] = { "велика дубина" }, -- Large Club
[2481] = { "меч наймита" }, -- Peon Sword
[2482] = { "посередній томагавк" }, -- Inferior Tomahawk
[2483] = { "груба широка сокира" }, -- Rough Broad Axe
[2484] = { "маленький ніж" }, -- Small Knife
[2485] = { "розколота дошка" }, -- Splintered Board
[2486] = { "велика кам'яна булава" }, -- Large Stone Mace
[2487] = { "посох послушника" }, -- Acolyte Staff
[2488] = { "гладій" }, -- Gladius
[2489] = { "дворучний меч" }, -- Two-handed Sword
[2490] = { "томагавк" }, -- Tomahawk
[2491] = { "велика сокира" }, -- Large Axe
[2492] = { "палиця" }, -- Cudgel
[2493] = { "дерев'яний молот" }, -- Wooden Mallet
[2494] = { "стилет" }, -- Stiletto
[2495] = { "тростина" }, -- Walking Stick
[2496] = { "короткий меч рейдера" }, -- Raider Shortsword
[2497] = { "іржавий клеймор" }, -- Rusted Claymore
[2498] = { "малий томагавк" }, -- Small Tomahawk
[2499] = { "сокира з двома лезами" }, -- Double-bladed Axe
[2500] = { "легкий молот" }, -- Light Hammer
[2501] = { "дерев'яний бойовий молот" }, -- Wooden Warhammer
[2502] = { "обшарпаний кинджал" }, -- Scuffed Dagger
[2503] = { "короткий посох адепта" }, -- Adept Short Staff
[2504] = { "зношений короткий лук" }, -- Worn Shortbow
[2505] = { "полірований короткий лук" }, -- Polished Shortbow
[2506] = { "вигнутий лук Рогатого лісу" }, -- Hornwood Recurve Bow
[2507] = { "шаруватий вигнутий лук" }, -- Laminated Recurve Bow
[2508] = { "старий мушкетон" }, -- Old Blunderbuss
[2509] = { "вишуканий мушкетон" }, -- Ornate Blunderbuss
[2510] = { "міцний мушкетон" }, -- Solid Blunderbuss
[2511] = { "мисливський громостріл" }, -- Hunter's Boomstick
[2512] = { "груба стріла" }, -- Rough Arrow, @desc Adds 1.5 damage per second
[2515] = { "загострена стріла" }, -- Sharp Arrow, @desc Adds 3.5 damage per second
[2516] = { "легка куля", desc="Додає 1.5 пошкодження за секунду" }, -- Light Shot, @desc Adds 1.5 damage per second
[2519] = { "важка куля", desc="Додає 3.5 пошкодження за секунду" }, -- Heavy Shot, @desc Adds 3.5 damage per second
[2520] = { "палаш" }, -- Broadsword
[2521] = { "фламберг" }, -- Flamberge
[2522] = { "півмісячна сокира" }, -- Crescent Axe
[2523] = { "химерна сокира" }, -- Bullova
[2524] = { "буздиган" }, -- Truncheon
[2525] = { "бойовий молот" }, -- War Hammer
[2526] = { "дага" }, -- Main Gauche
[2527] = { "бійцівський посох" }, -- Battle Staff
[2528] = { "фальшіон" }, -- Falchion
[2529] = { "цвайгендер" }, -- Zweihander
[2530] = { "франциска" }, -- Francisca
[2531] = { "гігантська сокира" }, -- Great Axe
[2532] = { "моргенштерн" }, -- Morning Star
[2533] = { "бойова булава" }, -- War Maul
[2534] = { "мізерикорд" }, -- Rondel
[2535] = { "бойовий посох" }, -- War Staff
[2536] = { "кам'яний зуб трога" }, -- Trogg Stone Tooth
[2545] = { "гнучкі кольчужні поножі" }, -- Malleable Chain Leggings
[2546] = { "королівський ремінь Морозогривих" }, -- Royal Frostmane Girdle
[2547] = { "рукавиці кнуролова" }, -- Boar Handler Gloves
[2548] = { "барильце Ячміноварового Пекучого" }, -- Barrel of Barleybrew Scalder
[2549] = { "посох затінку", equip="Збільшує шкоду від заклинань і ефектів тіні на 21." }, -- Staff of the Shade, @equip Increases damage done by Shadow spells and effects by up to 21.
[2553] = { "рецепт: Крихітний еліксир спритності", use="Навчає вас створювати крихітний еліксир спритності." }, -- Recipe: Elixir of Minor Agility, @use Teaches you how to make an Elixir of Minor Agility.
[2555] = { "рецепт: Зілля прудкості", use="Навчає вас створювати зілля прудкості." }, -- Recipe: Swiftness Potion, @use Teaches you how to make a Swiftness Potion.
[2560] = { "заповнений щоденник Тремтінія" }, -- Jitters' Completed Journal
[2561] = { "голова Чок'сула" }, -- Chok'sul's Head
[2562] = { "букет червоних бегоній" }, -- Bouquet of Scarlet Begonias
[2563] = { "порошок з дивним запахом" }, -- Strange Smelling Powder
[2564] = { "кігті ельфійського духа", equip="Збільшує шкоду і зцілення від заклинань і ефектів природи на 21." }, -- Elven Spirit Claws, @equip Increases damage done by Nature spells and effects by up to 21.
[2565] = { "жезл палкого вогню", equip="Збільшує шкоду від заклинань і ефектів вогню на 13." }, -- Rod of Molten Fire, @equip Increases damage done by Fire spells and effects by up to 13.
[2566] = { "жертовна мантія" }, -- Sacrificial Robes
[2567] = { "клинок пробудителя" }, -- Evocator's Blade
[2568] = { "коричневий лляний жилет" }, -- Brown Linen Vest
[2569] = { "лляні чоботи" }, -- Linen Boots
[2570] = { "лляний плащ" }, -- Linen Cloak
[2571] = { "плетені онучі" }, -- Viny Wrappings
[2572] = { "червона лляна мантія" }, -- Red Linen Robe
[2575] = { "червона лляна сорочка" }, -- Red Linen Shirt
[2576] = { "біла лляна сорочка" }, -- White Linen Shirt
[2577] = { "блакитна лляна сорочка" }, -- Blue Linen Shirt
[2578] = { "варварський лляний жилет" }, -- Barbaric Linen Vest
[2579] = { "зелена лляна сорочка" }, -- Green Linen Shirt
[2580] = { "укріплений лляний плащ" }, -- Reinforced Linen Cape
[2581] = { "щільний лляний бинт", use="Відновлює 114 здоров'я за 6 сек." }, -- Heavy Linen Bandage, @use Heals 114 damage over 6 sec.
[2582] = { "зелений вовняний жилет" }, -- Green Woolen Vest
[2583] = { "вовняні черевики" }, -- Woolen Boots
[2584] = { "вовняний плащ" }, -- Woolen Cape
[2585] = { "сіра вовняна мантія" }, -- Gray Woolen Robe
[2586] = { "мантія гейм-майстра" }, -- Gamemaster's Robe
[2587] = { "сіра вовняна сорочка" }, -- Gray Woolen Shirt
[2589] = { "лляна тканина" }, -- Linen Cloth
[2590] = { "павутина лісового павука" }, -- Forest Spider Webbing
[2591] = { "брудна трозька ганчірка" }, -- Dirty Trogg Cloth
[2592] = { "вовняне полотно" }, -- Wool Cloth
[2593] = { "фляжка Штормовійського свина", use="Звичайний алкогольний напій." }, -- Flask of Stormwind Tawny, @use A typical alcoholic beverage.
[2594] = { "кружка дворфійської медовухи", use="Міцний алкогольний напій." }, -- Flagon of Dwarven Honeymead, @use A strong alcoholic beverage.
[2595] = { "глечик бурбону Безплідних країв", use="Міцний алкогольний напій." }, -- Jug of Badlands Bourbon, @use A strong alcoholic beverage.
[2596] = { "міх дворфійського еля", use="Звичайний алкогольний напій." }, -- Skin of Dwarven Stout, @use A typical alcoholic beverage.
[2598] = { "викрійка: Червона лляна мантія", use="Навчає вас пошиттю червоної лляної мантії." }, -- Pattern: Red Linen Robe, @use Teaches you how to sew a Red Linen Robe.
[2601] = { "викрійка: Сіра вовняна мантія", use="Навчає вас пошиттю сірої вовняної мантії." }, -- Pattern: Gray Woolen Robe, @use Teaches you how to sew a Gray Woolen Robe.
[2604] = { "червоний барвник" }, -- Red Dye
[2605] = { "зелений барвник" }, -- Green Dye
[2606] = { "павуча отрута" }, -- Lurker Venom
[2607] = { "кристал Мо'ґрош" }, -- Mo'grosh Crystal
[2608] = { "амбра молотника" }, -- Threshadon Ambergris
[2609] = { "нейтралізуючий колоїд" }, -- Disarming Colloid
[2610] = { "нейтралізуюча суміш" }, -- Disarming Mixture
[2611] = { "грубий кремінь" }, -- Crude Flint
[2612] = { "проста мантія" }, -- Plain Robe
[2613] = { "двічі прошита мантія" }, -- Double-stitched Robes
[2614] = { "учнівська мантія" }, -- Robe of Apprenticeship
[2615] = { "хроматична мантія" }, -- Chromatic Robe
[2616] = { "мерехтлива шовкова мантія" }, -- Shimmering Silk Robes
[2617] = { "палаюча мантія" }, -- Burning Robes
[2618] = { "срібляста мантія" }, -- Silver Dress Robes
[2619] = { "звіт Ґреліна" }, -- Grelin's Report
[2620] = { "капюшон авгура", use="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11." }, -- Augural Shroud, @equip Increases damage and healing done by magical spells and effects by up to 11.
[2621] = { "капюшон некромантії" }, -- Cowl of Necromancy
[2622] = { "племінний головний убір Німара" }, -- Nimar's Tribal Headdress
[2623] = { "священна діадема" }, -- Holy Diadem
[2624] = { "шапка думок" }, -- Thinking Cap
[2625] = { "статуетка Менетіла" }, -- Menethil Statuette
[2628] = { "звіт Сеніра" }, -- Senir's Report
[2629] = { "ключ від сейфа на \"Відважному\"" }, -- Intrepid Strongbox Key
[2632] = { "вигнутий кинджал" }, -- Curved Dagger
[2633] = { "зілля з джунглів", use="Лікує хвороби і знешкоджує отрути. (Відновлення 2 хв)" }, -- Jungle Remedy, @use Cures diseases and neutralizes poisons. (2 Min Cooldown)
[2634] = { "екстракт отруйної папороті" }, -- Venom Fern Extract
[2635] = { "розхитаний кольчужний пояс" }, -- Loose Chain Belt
[2636] = { "різьблений кам'яний ідол" }, -- Carved Stone Idol
[2637] = { "звіт Залізоплета" }, -- Ironband's Progress Report
[2639] = { "записка Меррін" }, -- Merrin's Letter
[2640] = { "шахтарське спорядження" }, -- Miners' Gear
[2642] = { "розхитані кольчужні чоботи" }, -- Loose Chain Boots
[2643] = { "розхитані кольчужні браслети" }, -- Loose Chain Bracers
[2644] = { "незв'язаний кольчужний плащ" }, -- Loose Chain Cloak
[2645] = { "розхитані кольчужні рукавиці" }, -- Loose Chain Gloves
[2646] = { "розхитані кольчужні штани" }, -- Loose Chain Pants
[2648] = { "розхитаний кольчужний жилет" }, -- Loose Chain Vest
[2649] = { "хиткий кольчужний пояс" }, -- Flimsy Chain Belt
[2650] = { "кепські кольчужні чоботи" }, -- Flimsy Chain Boots
[2651] = { "хиткі кольчужні браслети" }, -- Flimsy Chain Bracers
[2652] = { "кепський кольчужний плащ" }, -- Flimsy Chain Cloak
[2653] = { "хиткі кольчужні рукавиці" }, -- Flimsy Chain Gloves
[2654] = { "кепські кольчужні штани" }, -- Flimsy Chain Pants
[2656] = { "хиткий кольчужний жилет" }, -- Flimsy Chain Vest
[2657] = { "червона шкіряна сумка" }, -- Red Leather Bag
[2658] = { "фрагмент Адос" }, -- Ados Fragment
[2659] = { "фрагмент Модр" }, -- Modr Fragment
[2660] = { "фрагмент Ґолм" }, -- Golm Fragment
[2661] = { "фрагмент Неру" }, -- Neru Fragment
[2662] = { "сагайдак Рібблі", equip="Збільшує швидкість атаки дальнього бою на 14%." }, -- Ribbly's Quiver, @equip Increases ranged attack speed by 14%.
[2663] = { "набійниця Рібблі", equip="Збільшує швидкість атаки дальнього бою на 14%." }, -- Ribbly's Bandolier, @equip Increases ranged attack speed by 14%.
[2664] = { "ікло ткача" }, -- Spinner Fang
[2665] = { "штормовійська приправа" }, -- Stormwind Seasoning Herbs
[2666] = { "барильце громузвару" }, -- Barrel of Thunder Ale
[2667] = { "в'ялене м'ясо Мак-Ґранна" }, -- MacGrann's Dried Meats
[2668] = { "зуб молотника" }, -- Threshadon Tooth
[2669] = { "кіготь молотника" }, -- Threshadon Claw
[2671] = { "грива вендиго" }, -- Wendigo Mane
[2672] = { "жилаве м'ясо вовка" }, -- Stringy Wolf Meat
[2673] = { "м'ясо койота" }, -- Coyote Meat
[2674] = { "м'ясо повзуна" }, -- Crawler Meat
[2675] = { "клешня повзуна" }, -- Crawler Claw
[2676] = { "блискоквіт" }, -- Shimmerweed
[2677] = { "ребра кнура" }, -- Boar Ribs
[2678] = { "лагідні спеції", flavor="Використовується для підсилення смаку деяких страв." }, -- Mild Spices, @flavor Used to enhance the flavor in cooking recipes.
[2679] = { "смажене м'ясо вовка", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Charred Wolf Meat, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[2680] = { "вовчатина з прянощами", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 2 на 15 хв.#Restores {1} health over {2}" }, -- Spiced Wolf Meat, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min.
[2681] = { "смажене м'ясо кнура", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Roasted Boar Meat, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[2682] = { "варена клешня краба", use="Відновлює 294 здоров'я та 294 мани протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Cooked Crab Claw, @use Restores 294 health and 294 mana over 21 sec. Must remain seated while eating.
[2683] = { "крабовий пиріжок", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв." }, -- Crab Cake, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[2684] = { "стейк з койота", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв." }, -- Coyote Steak, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[2685] = { "соковиті свинячі реберця", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Succulent Pork Ribs, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[2686] = { "громузвар", use="Досить слабкий алкогольний напій." }, -- Thunder Ale, @use A fairly weak alcoholic beverage.
[2687] = { "сушені свинячі реберця", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв." }, -- Dry Pork Ribs, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[2688] = { "білчаний горіх" }, -- Squirrel Nut
[2690] = { "пояс з пряжкою" }, -- Latched Belt
[2691] = { "чоботи екіпірувальника" }, -- Outfitter Boots
[2692] = { "гострі спеції" }, -- Hot Spices
[2694] = { "поножі поселенця" }, -- Settler's Leggings
[2696] = { "барильце Вічногону" }, -- Cask of Evershine
[2697] = { "рецепт: Пиріг з печінки іклоштрика", use="Навчає вас приготуванню пирога з печінки іклоштрика." }, -- Recipe: Goretusk Liver Pie, @use Teaches you how to cook a Goretusk Liver Pie.
[2698] = { "рецепт: Варена клешня краба", use="Навчає вас приготуванню вареної клешні краба." }, -- Recipe: Cooked Crab Claw, @use Teaches you how to cook a Crab Claw.
[2699] = { "рецепт: Багрянокрязький гуляш", use="Навчає вас приготуванню багрянокрязького гуляшу." }, -- Recipe: Redridge Goulash, @use Teaches you how to cook a delicious Redridge Goulash.
[2700] = { "рецепт: Соковиті свинячі реберця", use="Навчає вас приготуванню соковитих свинячих реберець." }, -- Recipe: Succulent Pork Ribs, @use Teaches you how to cook Succulent Pork Ribs.
[2701] = { "рецепт: Пряний кебаб з вовчатини", use="Навчає вас приготуванню пряного кебаба з вовчатини." }, -- Recipe: Seasoned Wolf Kabob, @use Teaches you how to cook a Seasoned Wolf Kabob.
[2702] = { "злиток світлосталі" }, -- Lightforge Ingot
[2712] = { "скринька зі злитками світлосталі" }, -- Crate of Lightforge Ingots
[2713] = { "голова старого Чорниша" }, -- Ol' Sooty's Head
[2719] = { "маленький латунний ключ" }, -- Small Brass Key
[2720] = { "брудна записка" }, -- Muddy Note
[2721] = { "священний капюшон", equip="Збільшує зцілення від заклинань і ефектів на 33." }, -- Holy Shroud, @equip Increases healing done by spells and effects by up to 33.
[2722] = { "винний квиток" }, -- Wine Ticket
[2723] = { "пляшка \"Піно-Нуар\"", use="Досить слабкий алкогольний напій." }, -- Bottle of Dalaran Noir, @use A fairly weak alcoholic beverage.
[2724] = { "запит на тканину" }, -- Cloth Request
[2725] = { "Зелені пагорби Тернистої долини — Сторінка 1" }, -- Green Hills of Stranglethorn - Page 1
[2728] = { "Зелені пагорби Тернистої долини — Сторінка 4" }, -- Green Hills of Stranglethorn - Page 4
[2730] = { "Зелені пагорби Тернистої долини — Сторінка 6" }, -- Green Hills of Stranglethorn - Page 6
[2732] = { "Зелені пагорби Тернистої долини — Сторінка 8" }, -- Green Hills of Stranglethorn - Page 8
[2734] = { "Зелені пагорби Тернистої долини — Сторінка 10" }, -- Green Hills of Stranglethorn - Page 10
[2735] = { "Зелені пагорби Тернистої долини — Сторінка 11" }, -- Green Hills of Stranglethorn - Page 11
[2738] = { "Зелені пагорби Тернистої долини — Сторінка 14" }, -- Green Hills of Stranglethorn - Page 14
[2740] = { "Зелені пагорби Тернистої долини — Сторінка 16" }, -- Green Hills of Stranglethorn - Page 16
[2742] = { "Зелені пагорби Тернистої долини — Сторінка 18" }, -- Green Hills of Stranglethorn - Page 18
[2744] = { "Зелені пагорби Тернистої долини — Сторінка 20" }, -- Green Hills of Stranglethorn - Page 20
[2745] = { "Зелені пагорби Тернистої долини — Сторінка 21" }, -- Green Hills of Stranglethorn - Page 21
[2748] = { "Зелені пагорби Тернистої долини — Сторінка 24" }, -- Green Hills of Stranglethorn - Page 24
[2749] = { "Зелені пагорби Тернистої долини — Сторінка 25" }, -- Green Hills of Stranglethorn - Page 25
[2750] = { "Зелені пагорби Тернистої долини — Сторінка 26" }, -- Green Hills of Stranglethorn - Page 26
[2751] = { "Зелені пагорби Тернистої долини — Сторінка 27" }, -- Green Hills of Stranglethorn - Page 27
[2754] = { "потьмянілий півтораручний меч" }, -- Tarnished Bastard Sword
[2755] = { "Зелені пагорби Тернистої долини", flavor="Автор: Гемет Ернінґвей" }, -- Green Hills of Stranglethorn, @flavor By Hemet Nesingwary
[2756] = { "Зелені пагорби Тернистої долини — Розділ I" }, -- Green Hills of Stranglethorn - Chapter I
[2757] = { "Зелені пагорби Тернистої долини — Розділ II" }, -- Green Hills of Stranglethorn - Chapter II
[2758] = { "Зелені пагорби Тернистої долини — Розділ III" }, -- Green Hills of Stranglethorn - Chapter III
[2759] = { "Зелені пагорби Тернистої долини — Розділ IV" }, -- Green Hills of Stranglethorn - Chapter IV
[2760] = { "швацький набір Турмана" }, -- Thurman's Sewing Kit
[2763] = { "рибальський ніж" }, -- Fisherman Knife
[2764] = { "малий кинджал" }, -- Small Dagger
[2765] = { "мисливський ніж" }, -- Hunting Knife
[2766] = { "стилет вправності" }, -- Deft Stiletto
[2770] = { "мідна руда" }, -- Copper Ore
[2771] = { "олов'яна руда" }, -- Tin Ore
[2772] = { "залізна руда" }, -- Iron Ore
[2773] = { "тріснутий короткий лук" }, -- Cracked Shortbow
[2774] = { "покритий іржею мушкетон" }, -- Rust-covered Blunderbuss
[2775] = { "срібна руда" }, -- Silver Ore
[2776] = { "золота руда" }, -- Gold Ore
[2777] = { "хиткий короткий лук" }, -- Feeble Shortbow
[2778] = { "дешевий мушкетон" }, -- Cheap Blunderbuss
[2779] = { "сльоза Тіллої" }, -- Tear of Tilloa
[2780] = { "легкий мисливський лук" }, -- Light Hunting Bow
[2781] = { "брудний мушкетон" }, -- Dirty Blunderbuss
[2782] = { "невміло вигнутий лук" }, -- Mishandled Recurve Bow
[2783] = { "невдалий мушкетон" }, -- Shoddy Blunderbuss
[2784] = { "мускусний корінь" }, -- Musquash Root
[2785] = { "цупкий вигнутий лук" }, -- Stiff Recurve Bow
[2786] = { "змащений мушкетон" }, -- Oiled Blunderbuss
[2787] = { "трозький кинджал" }, -- Trogg Dagger
[2788] = { "\"Чорний Кіготь\"" }, -- Black Claw Stout
[2794] = { "стара історична книга" }, -- An Old History Book
[2795] = { "книга \"Гартування заліза\"" }, -- Book: Stresses of Iron
[2797] = { "серце Мокка" }, -- Heart of Mokk
[2798] = { "ретбанська руда" }, -- Rethban Ore
[2799] = { "ікло горили" }, -- Gorilla Fang
[2800] = { "чорна оксамитова мантія" }, -- Black Velvet Robes
[2801] = { "клинок Ганни" }, -- Blade of Hanna
[2802] = { "палаюча емблема", use="Збільшує опір вогню на 50 і зменшує всю вхідну шкоду від вогню на 25 протягом 15 сек." }, -- Blazing Emblem, @use Increases Fire resistance by 50 and reduces all Fire damage taken by up to 25 for 15 sec. (10 Min Cooldown)
[2805] = { "накидка з хутра єті" }, -- Yeti Fur Cloak
[2806] = { "пакунок для Бурешпиля" }, -- Package for Stormpike
[2807] = { "лезо гільйотини" }, -- Guillotine Axe
[2808] = { "смолоскип вогню", use="Знімає захисні чари з Морбента Скверна." }, -- Torch of Flame, @use Removes the protective enchantments around Morbent Fel.
[2815] = { "викривлений різак" }, -- Curve-bladed Ripper
[2816] = { "скіпетр заклинателя смерті", equip={ "Збільшує зцілення від заклинань і ефектів на 11.", "Збільшує шкоду від заклинань і ефектів тіні на 7." } }, -- Death Speaker Scepter, @equip Increases healing done by spells and effects by up to 11., @equip Increases damage done by Shadow spells and effects by up to 7.
[2817] = { "м'який шкіряний мундир" }, -- Soft Leather Tunic
[2818] = { "розтягнуті шкіряні штани" }, -- Stretched Leather Trousers
[2819] = { "хрестоподібний кинджал" }, -- Cross Dagger
[2820] = { "витончений секундомір", use="Збільшує швидкість бігу на {1}% на {2} с. (Відновлення 30 хв)#by {1}% for {2} sec" }, -- Nifty Stopwatch, @use Increases run speed by 40% for 10 sec. (30 Min Cooldown)
[2821] = { "Мо'ґрошське м'яло" }, -- Mo'grosh Masher
[2822] = { "Мо'ґрошська зубочистка" }, -- Mo'grosh Toothpick
[2823] = { "Мо'ґрошський консервний ніж" }, -- Mo'grosh Can Opener
[2824] = { "ураган", equip="Шанс вразити ціль крижаною стрілою, що завдає від 31 до 45 шкоди від криги." }, -- Hurricane, @equip Chance to strike your target with a Frost Arrow for 31 to 45 Frost damage.
[2825] = { "лук пекучих стріл", equip="Шанс вразити ціль пекучою стрілою та завдати від {1} до {2} пошкодження вогнем.#for {1} to {2}" }, -- Bow of Searing Arrows, @equip Chance to strike your ranged target with a Searing Arrow for 18 to 26 Fire damage.
[2828] = { "рештки Нісси" }, -- Nissa's Remains
[2829] = { "рештки Ґреґора" }, -- Gregor's Remains
[2830] = { "рештки Турмана" }, -- Thurman's Remains
[2831] = { "рештки Девліна" }, -- Devlin's Remains
[2832] = { "рецепт гуляшу по-західнокрайськи від Верни" }, -- Verna's Westfall Stew Recipe
[2833] = { "фоліант ліча" }, -- The Lich's Spellbook
[2834] = { "бальзамувальна сукровиця" }, -- Embalming Ichor
[2835] = { "грубий камінь" }, -- Rough Stone
[2836] = { "шорсткий камінь" }, -- Coarse Stone
[2837] = { "лист Турмана" }, -- Thurman's Letter
[2838] = { "важкий камінь" }, -- Heavy Stone
[2839] = { "лист для Іветт" }, -- A Letter to Yvette
[2840] = { "злиток міді" }, -- Copper Bar
[2841] = { "злиток бронзи" }, -- Bronze Bar
[2842] = { "злиток срібла" }, -- Silver Bar
[2843] = { "брудні паці" }, -- Dirty Knucklebones
[2844] = { "мідна булава" }, -- Copper Mace
[2845] = { "мідна сокира" }, -- Copper Axe
[2846] = { "тірісфальський гарбуз" }, -- Tirisfal Pumpkin
[2847] = { "мідний меч" }, -- Copper Shortsword
[2848] = { "бронзова булава" }, -- Bronze Mace
[2849] = { "бронзова сокира" }, -- Bronze Axe
[2850] = { "бронзовий меч" }, -- Bronze Shortsword
[2851] = { "мідний плетений пояс" }, -- Copper Chain Belt
[2852] = { "мідні кольчужні штани" }, -- Copper Chain Pants
[2853] = { "мідні браслети" }, -- Copper Bracers
[2854] = { "рунічні мідні браслети" }, -- Runed Copper Bracers
[2855] = { "смердючий пазур" }, -- Putrid Claw
[2856] = { "залізна піка" }, -- Iron Pike
[2857] = { "рунічний мідний пояс" }, -- Runed Copper Belt
[2858] = { "кров темногончої" }, -- Darkhound Blood
[2859] = { "луска Злобного Плавника" }, -- Vile Fin Scale
[2862] = { "грубий точильний камінь", use="Збільшує шкоду гострої зброї на 2 на 30 хвилин." }, -- Rough Sharpening Stone, @use Increase sharp weapon damage by 2 for 30 minutes.
[2863] = { "шорсткий точильний камінь", use="Збільшує шкоду гострої зброї на 3 на 30 хвилин." }, -- Coarse Sharpening Stone, @use Increase sharp weapon damage by 3 for 30 minutes.
[2864] = { "рунічний мідний нагрудник" }, -- Runed Copper Breastplate
[2865] = { "грубі бронзові поножі" }, -- Rough Bronze Leggings
[2866] = { "груба бронзова кіраса" }, -- Rough Bronze Cuirass
[2867] = { "грубі бронзові браслети" }, -- Rough Bronze Bracers
[2868] = { "візерунчасті бронзові поручі" }, -- Patterned Bronze Bracers
[2869] = { "посріблений бронзовий нагрудник" }, -- Silvered Bronze Breastplate
[2870] = { "сяючий срібний нагрудник" }, -- Shining Silver Breastplate
[2871] = { "важкий точильний камінь", use="Збільшує шкоду гострої зброї на 4 на 30 хвилин." }, -- Heavy Sharpening Stone, @use Increase sharp weapon damage by 4 for 30 minutes.
[2872] = { "отрута злого нічного колопряда" }, -- Vicious Night Web Spider Venom
[2874] = { "ненадісланий лист", flavor="Лист, знайдений на тілі Едвіна ван Кліфа." }, -- An Unsent Letter, @flavor A letter found on Edwin VanCleef's person.
[2875] = { "перстень-відзнака Багряного Походу" }, -- Scarlet Insignia Ring
[2876] = { "шкура сутінкового кажана" }, -- Duskbat Pelt
[2877] = { "клеймор бійця" }, -- Combatant Claymore
[2878] = { "бородоподібна бойова сокира" }, -- Bearded Boneaxe
[2879] = { "жезл антиподів", equip={ "Збільшує шкоду від заклинань і ефектів вогню на 6.", "Збільшує шкоду від заклинань і ефектів криги на 6." } }, -- Antipodean Rod, @equip Increases damage done by Fire spells and effects by up to 6., @equip Increases damage done by Frost spells and effects by up to 6.
[2880] = { "слабкий флюс", flavor="Використовується ковалями для видалення домішок." }, -- Weak Flux, @flavor Used by Blacksmiths to remove impurities.
[2881] = { "креслення: Рунічний мідний нагрудник", use="Навчає вас створювати рунічний мідний нагрудник." }, -- Plans: Runed Copper Breastplate, @use Teaches you how to make a Runed Copper Breastplate.
[2882] = { "креслення: Посріблені бронзові наплечі", use="Навчає вас створювати посріблені бронзові наплечі." }, -- Plans: Silvered Bronze Shoulders, @use Teaches you how to make Silvered Bronze Shoulders.
[2883] = { "креслення: Смертоносний бронзовий пуаньярд", use="Навчає вас створювати смертоносний бронзовий пуаньярд." }, -- Plans: Deadly Bronze Poniard, @use Teaches you how to make a Deadly Bronze Poniard.
[2885] = { "документи Багряного Походу" }, -- Scarlet Crusade Documents
[2886] = { "ребро скельного кнура" }, -- Crag Boar Rib
[2887] = { "зіпсована вовча шкура" }, -- Ruined Wolf Pelt
[2888] = { "реберця кнура в пиві", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 2 на 15 хв." }, -- Beer Basted Boar Ribs, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min.
[2889] = { "рецепт: Реберця кнура в пиві", use="Навчає вас приготуванню реберець кнура в пиві." }, -- Recipe: Beer Basted Boar Ribs, @use Teaches you how to cook Beer Basted Boar Ribs.
[2890] = { "зіпсована шкура кнура" }, -- Ruined Boar Pelt
[2891] = { "лист до головного архітектора" }, -- Letter to the City Architect
[2892] = { "смертельна отрута", use="Вкриває зброю отрутою на {1} хв. Кожен удар має {2}% імовірності отруїти ворога, завдаючи {3} пошкодження природою протягом {4} с. Накладається до {5} разів на одній цілі. {6} зарядів.#lasts for {1} min#{2}% chance#for {3} Nature damage over {4} sec#{5} times#{6} charges" }, -- Deadly Poison, @use Coats a weapon with poison that lasts for 30 minutes.Each strike has a 30% chance of poisoning the enemy for 36 Nature damage over 12 sec.  Stacks up to 5 times on a single target.  60 charges. (Proc chance: 30%)
[2893] = { "смертельна отрута II", ref=2892 }, -- Deadly Poison II
[2894] = { "солод Рапсодія", use="Досить слабкий алкогольний напій." }, -- Rhapsody Malt, @use A fairly weak alcoholic beverage.
[2895] = { "повзучий біль" }, -- Creeping Pain
[2896] = { "повзучі страждання" }, -- Creeping Anguish
[2898] = { "нагрудник горянина" }, -- Mountaineer Chestpiece
[2899] = { "нашийник вендиго" }, -- Wendigo Collar
[2900] = { "кам'яний баклер" }, -- Stone Buckler
[2901] = { "кайло", flavor="Гірникам потрібне кайло щоб копати." }, -- Mining Pick, @flavor Miners need a mining pick for digging.
[2902] = { "плащ віри" }, -- Cloak of the Faith
[2903] = { "мисливський лук Деріла" }, -- Daryl's Hunting Bow
[2904] = { "мисливська рушниця Деріла" }, -- Daryl's Hunting Rifle
[2905] = { "накидка з козячого хутра" }, -- Goat Fur Cloak
[2906] = { "кольчужні поножі Смерколісся" }, -- Darkshire Mail Leggings
[2907] = { "дворфійський колун", equip="Збільшує навичку володіння дворучними сокирами на 2." }, -- Dwarven Tree Chopper, @equip Increased Two-handed Axes +2.
[2908] = { "шипастий клинок" }, -- Thornblade
[2909] = { "червона вовняна бандана" }, -- Red Wool Bandana
[2910] = { "золоті черевики ополчення" }, -- Gold Militia Boots
[2911] = { "пояс Келлера" }, -- Keller's Girdle
[2912] = { "кіготь тінеманта", hit="Запускає у ворога заряд тіні, що завдає 35 шкоди від тіні." }, -- Claw of the Shadowmancer, @hit Sends a shadowy bolt at the enemy causing 35 Shadow damage.
[2913] = { "шовкове напліччя Ґемна" }, -- Silk Mantle of Gamn
[2915] = { "криголам Тарана", hit="Кидає вогняну кулю, яка завдає від 180 до 220 шкоди від вогню і додатково 36 шкоди від вогню протягом 8 с." }, -- Taran Icebreaker, @hit Hurls a fiery ball that causes 180 to 220 Fire damage and an additional 36 damage over 8 sec.
[2916] = { "щит з золотим левом" }, -- Gold Lion Shield
[2917] = { "перстень спокою" }, -- Tranquil Ring
[2919] = { "реліквія древніх" }, -- Relic of the Ancients
[2920] = { "священна реліквія" }, -- Sacred Relic
[2921] = { "благословенна реліквія" }, -- Blessed Relic
[2922] = { "реліквія духу" }, -- Spirit Relic
[2923] = { "реліквія праведності" }, -- Relic of Righteousness
[2924] = { "м'ясо кроколіска" }, -- Crocolisk Meat
[2925] = { "шкура кроколіска" }, -- Crocolisk Skin
[2926] = { "голова Базіла Тредда" }, -- Head of Bazil Thredd
[2927] = { "повзуча мука" }, -- Creeping Torment
[2928] = { "пил послаблення", flavor="Використовується пройдисвітами, щоб варити отруту." }, -- Dust of Decay, @flavor Used by rogues to brew poison.
[2929] = { "могильна гниль", flavor="Використовується пройдисвітами, щоб варити отруту." }, -- Tomb Rot, @flavor Used by rogues to brew poison.
[2930] = { "сутність болю", flavor="Використовується пройдисвітами, щоб варити отруту." }, -- Essence of Pain, @flavor Used by rogues to brew poison.
[2932] = { "лоза тортур", flavor="Використовується пройдисвітами, щоб варити отруту." }, -- Torment Vine, @flavor Used by rogues to brew poison.
[2933] = { "печатка Рінна" }, -- Seal of Wrynn
[2934] = { "зіпсовані обрізки шкіри" }, -- Ruined Leather Scraps
[2939] = { "сльоза кроколіска" }, -- Crocolisk Tear
[2940] = { "кривава ведмежа лапа" }, -- Bloody Bear Paw
[2941] = { "заточка" }, -- Prison Shank
[2942] = { "залізний кастет", hit="Влупити по цілі, завдавши 4 шкоди та перериваючи вимову заклять на 5 секунд." }, -- Iron Knuckles, @hit Pummel the target for 4 damage and interrupt the spell being cast for 5 sec.
[2943] = { "око Палета", equip="Збільшує зцілення від заклинань і ефектів на 13." }, -- Eye of Paleth, @equip Increases healing done by spells and effects by up to 13.
[2944] = { "прокляте око Палета", equip="Збільшує шкоду від заклинань і ефектів тіні на 10." }, -- Cursed Eye of Paleth, @equip Increases damage done by Shadow spells and effects by up to 10.
[2946] = { "збалансований метальний кинджал" }, -- Balanced Throwing Dagger
[2947] = { "малий метальний ніж" }, -- Small Throwing Knife
[2949] = { "морські черевики" }, -- Mariner Boots
[2950] = { "посох бурульок", equip="Збільшує шкоду від заклинань і ефектів криги на 10." }, -- Icicle Rod, @equip Increases damage done by Frost spells and effects by up to 10.
[2951] = { "перстень підлісся" }, -- Ring of the Underwood
[2953] = { "плащ начальника варти" }, -- Watch Master's Cloak
[2954] = { "кюлоти Нічної варти" }, -- Night Watch Pantaloons
[2955] = { "капелюх першого помічника" }, -- First Mate Hat
[2956] = { "доповідь про Повстанське братство" }, -- Report on the Defias Brotherhood
[2957] = { "жилет підмайстра" }, -- Journeyman's Vest
[2958] = { "штани підмайстра" }, -- Journeyman's Pants
[2959] = { "чоботи підмайстра" }, -- Journeyman's Boots
[2960] = { "підмастерські рукавички" }, -- Journeyman's Gloves
[2961] = { "обгорілий шкіряний жилет" }, -- Burnt Leather Vest
[2962] = { "обгорілі шкіряні брюки" }, -- Burnt Leather Breeches
[2963] = { "обгорілі шкіряні чоботи" }, -- Burnt Leather Boots
[2964] = { "обгорілі шкіряні рукавиці" }, -- Burnt Leather Gloves
[2965] = { "воїнський мундир" }, -- Warrior's Tunic
[2966] = { "воїнські штани" }, -- Warrior's Pants
[2967] = { "воїнські чоботи" }, -- Warrior's Boots
[2968] = { "воїнські рукавиці" }, -- Warrior's Gloves
[2969] = { "жилет чароплета" }, -- Spellbinder Vest
[2970] = { "штани чароплета" }, -- Spellbinder Pants
[2971] = { "чоботи чароплета" }, -- Spellbinder Boots
[2972] = { "рукавиці чароплета" }, -- Spellbinder Gloves
[2973] = { "мисливський мундир" }, -- Hunting Tunic
[2974] = { "мисливські штани" }, -- Hunting Pants
[2975] = { "мисливські чоботи" }, -- Hunting Boots
[2976] = { "мисливські рукавиці" }, -- Hunting Gloves
[2977] = { "ветеранський обладунок" }, -- Veteran Armor
[2978] = { "ветеранські поножі" }, -- Veteran Leggings
[2979] = { "ветеранські чоботи" }, -- Veteran Boots
[2980] = { "ветеранські рукавиці" }, -- Veteran Gloves
[2981] = { "мантія провидця" }, -- Seer's Robe
[2982] = { "штани провидця" }, -- Seer's Pants
[2983] = { "чоботи провидця" }, -- Seer's Boots
[2984] = { "рукавиці провидця" }, -- Seer's Gloves
[2985] = { "гравійований шкіряний нагрудник" }, -- Inscribed Leather Breastplate
[2986] = { "гравійовані шкіряні штани" }, -- Inscribed Leather Pants
[2987] = { "гравійовані шкіряні чоботи" }, -- Inscribed Leather Boots
[2988] = { "гравійовані шкіряні рукавиці" }, -- Inscribed Leather Gloves
[2989] = { "полірований мундир" }, -- Burnished Tunic
[2990] = { "поліровані поножі" }, -- Burnished Leggings
[2991] = { "поліровані чоботи" }, -- Burnished Boots
[2992] = { "поліровані рукавиці" }, -- Burnished Gloves
[2996] = { "рулон лляної тканини" }, -- Bolt of Linen Cloth
[2997] = { "рулон вовняної тканини" }, -- Bolt of Woolen Cloth
[2998] = { "звичайний компас", flavor="Перший компас Бароса Алекстона." }, -- A Simple Compass, @flavor Baros Alexston's first compass.
[2999] = { "інструменти Сталешквара" }, -- Steelgrill's Tools
[3000] = { "панцир матері виводка" }, -- Brood Mother Carapace
[3002] = { "реліктовий Ріг Справедливості" }, -- Relic Horn of Justice
[3003] = { "реліквія ока" }, -- Relic of the Eye
[3004] = { "реліквія мертвих" }, -- Relic of the Dead
[3005] = { "реліквія правди" }, -- Relic of Truth
[3006] = { "уламок священної реліквії" }, -- Holy Relic Shard
[3008] = { "плащ з хутра вендиго" }, -- Wendigo Fur Cloak
[3010] = { "дрібний пісок" }, -- Fine Sand
[3011] = { "прикрашений пір'ям головний убір" }, -- Feathered Headdress
[3012] = { "сувій спритності", use="Збільшує спритність цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Agility, @use Increases the target's Agility by 5 for 30 min.
[3013] = { "сувій захисту", use="Збільшує броню цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Protection, @use Increases the target's Armor by 60 for 30 min.
[3014] = { "зношена сокира" }, -- Battleworn Axe
[3016] = { "фоліант Ґюнтера" }, -- Gunther's Spellbook
[3017] = { "накази Севрена" }, -- Sevren's Orders
[3018] = { "шкура Люпуса" }, -- Hide of Lupos
[3019] = { "мантія вельможі" }, -- Noble's Robe
[3020] = { "шапка терпіння" }, -- Enduring Cap
[3021] = { "лук слідопита" }, -- Ranger Bow
[3022] = { "штани Синьожабрих" }, -- Bluegill Breeches
[3023] = { "великокаліберний мушкетон" }, -- Large Bore Blunderbuss
[3024] = { "ВКР 2700 \"Громило\"" }, -- BKP 2700 "Enforcer"
[3025] = { "ВКР 42 \"Ультра\"" }, -- BKP 42 "Ultra"
[3026] = { "укріплений лук" }, -- Reinforced Bow
[3027] = { "важкий вигнутий лук" }, -- Heavy Recurve Bow
[3028] = { "довгий лук" }, -- Longbow
[3030] = { "гостра стріла" }, -- Razor Arrow, @desc Adds 7.5 damage per second
[3033] = { "тверда куля", desc="Додає 7.5 пошкодження за секунду" }, -- Solid Shot, @desc Adds 7.5 damage per second
[3035] = { "оброблений гарбуз" }, -- Laced Pumpkin
[3036] = { "важкий короткий лук" }, -- Heavy Shortbow
[3037] = { "вигнутий лук Хлясткого лісу" }, -- Whipwood Recurve Bow
[3039] = { "короткий ясеневий лук" }, -- Short Ash Bow
[3040] = { "мисливський мушкет" }, -- Hunter's Muzzle Loader
[3041] = { "мушкетон \"В Яблучко\"" }, -- "Mage-Eye" Blunderbuss
[3042] = { "МКР \"Горобець\"" }, -- BKP "Sparrow" Smallbore
[3045] = { "блискучі лускаті чоботи" }, -- Lambent Scale Boots
[3047] = { "блискучі лускаті рукавиці" }, -- Lambent Scale Gloves
[3048] = { "блискучі лускаті поножі" }, -- Lambent Scale Legguards
[3049] = { "блискуча луската кіраса" }, -- Lambent Scale Breastplate
[3053] = { "нагрудник Гумберта" }, -- Humbert's Chestpiece
[3055] = { "лісовий шкіряний нагрудник" }, -- Forest Leather Chestpiece
[3056] = { "лісові шкіряні штани" }, -- Forest Leather Pants
[3057] = { "лісові шкіряні чоботи" }, -- Forest Leather Boots
[3058] = { "лісові шкіряні рукавиці" }, -- Forest Leather Gloves
[3065] = { "яскраві чоботи" }, -- Bright Boots
[3066] = { "яскраві рукавиці" }, -- Bright Gloves
[3067] = { "яскраві штани" }, -- Bright Pants
[3069] = { "яскрава мантія" }, -- Bright Robe
[3070] = { "плащ хорунжого" }, -- Ensign Cloak
[3071] = { "разюча сокира" }, -- Striking Hatchet
[3072] = { "тліюча мантія" }, -- Smoldering Robe
[3073] = { "тліючі штани", equip="Збільшує шкоду від заклинань і ефектів вогню на 13." }, -- Smoldering Pants, @equip Increases damage done by Fire spells and effects by up to 13.
[3074] = { "тліючі рукавиці" }, -- Smoldering Gloves
[3075] = { "око полум'я", equip="Збільшує шкоду від заклинань і ефектів вогню на 43." }, -- Eye of Flame, @equip Increases damage done by Fire spells and effects by up to 43.
[3076] = { "тліючі чоботи" }, -- Smoldering Boots
[3078] = { "нагський серцебій" }, -- Naga Heartpiercer
[3079] = { "рушниця Скорна" }, -- Skorn's Rifle
[3080] = { "свічка поклику" }, -- Candle of Beckoning
[3081] = { "самоцвіт Підсвіття" }, -- Nether Gem
[3082] = { "череп Дарґола" }, -- Dargol's Skull
[3083] = { "зубець рестабілізації" }, -- Restabilization Cog
[3084] = { "гіромеханічна шестірня" }, -- Gyromechanic Gear
[3085] = { "барильце \"Мерехтливого стаута\"" }, -- Barrel of Shimmer Stout
[3086] = { "барильце Мерехтливого стаута" }, -- Cask of Shimmer Stout
[3087] = { "кружка \"Мерехтливого стаута\"", use="Відновлює від {1} до {2} мани. (Відновлення 2 хв)#{1} to {2} mana" }, -- Mug of Shimmer Stout, @use Restores 140 to 180 mana. (2 Min Cooldown)
[3103] = { "молот Морозної долини" }, -- Coldridge Hammer
[3107] = { "загострений метальний ніж" }, -- Keen Throwing Knife
[3108] = { "важкий метальний кинджал" }, -- Heavy Throwing Dagger
[3110] = { "вухо тунельного щура" }, -- Tunnel Rat Ear
[3111] = { "груба метальна сокирка" }, -- Crude Throwing Axe
[3117] = { "щоденник Гілдельва" }, -- Hildelve's Journal
[3131] = { "збалансована метальна сокирка" }, -- Weighted Throwing Axe
[3135] = { "гострий метальний ніж" }, -- Sharp Throwing Axe
[3137] = { "смертоносний метальний ніж" }, -- Deadly Throwing Axe
[3151] = { "жилет штурмової бригади" }, -- Siege Brigade Vest
[3152] = { "рукавиці водія" }, -- Driving Gloves
[3153] = { "заляпаний нафтою плащ" }, -- Oil-stained Cloak
[3154] = { "телсамарська сокира" }, -- Thelsamar Axe
[3155] = { "\"Засіб Аруґала\"", flavor="Цей старий сувій розписаний нерозбірливою мовою Кірін-Тору." }, -- Remedy of Arugal, @flavor This aging scroll is written in the indecipherable language of the Kirin Tor.
[3156] = { "кайдани ненажери" }, -- Glutton Shackle
[3157] = { "кайдани темнодуха" }, -- Darksoul Shackle
[3158] = { "браслети з обгорілої шкури" }, -- Burnt Hide Bracers
[3160] = { "залізний баклер" }, -- Ironplate Buckler
[3161] = { "мантія хранителя" }, -- Robe of the Keeper
[3162] = { "надщерблене ребро" }, -- Notched Rib
[3163] = { "почорнілий череп" }, -- Blackened Skull
[3164] = { "знебарвлене серце ворга" }, -- Discolored Worg Heart
[3165] = { "Квіннове зілля" }, -- Quinn's Potion
[3166] = { "кольчуга Залізосерда" }, -- Ironheart Chain
[3167] = { "густа павуча шерсть" }, -- Thick Spider Hair
[3168] = { "розколота луска" }, -- Chipped Scale
[3169] = { "відколотий зуб ведмедя" }, -- Chipped Bear Tooth
[3170] = { "великий ведмежий зуб" }, -- Large Bear Tooth
[3171] = { "зламане ікло кабана" }, -- Broken Boar Tusk
[3172] = { "кишки кнура" }, -- Boar Intestines
[3173] = { "м'ясо ведмедя" }, -- Bear Meat
[3174] = { "лімфа павука" }, -- Spider Ichor
[3175] = { "зіпсована шкура дракона" }, -- Ruined Dragonhide
[3176] = { "малий кіготь" }, -- Small Claw
[3177] = { "крихітне ікло" }, -- Tiny Fang
[3179] = { "потріскана шкіра дракона" }, -- Cracked Dragon Molting
[3180] = { "плямиста луска раптора" }, -- Flecked Raptor Scale
[3181] = { "напівперетравлене м'ясо" }, -- Partially Digested Meat
[3182] = { "павутинний шовк" }, -- Spider's Silk
[3183] = { "зчесаний кіготь" }, -- Mangy Claw
[3184] = { "закручений кинджал" }, -- Hook Dagger
[3185] = { "акробатичний посох" }, -- Acrobatic Staff
[3186] = { "меч вікінга" }, -- Viking Sword
[3187] = { "жертовний кріс" }, -- Sacrificial Kris
[3188] = { "кораловий клеймор" }, -- Coral Claymore
[3189] = { "дроворуб" }, -- Wood Chopper
[3190] = { "колотилка" }, -- Beatstick
[3191] = { "вигнута бойова сокира" }, -- Arced War Axe
[3192] = { "короткий півтораручний меч" }, -- Short Bastard Sword
[3193] = { "дубовий молот" }, -- Oak Mallet
[3194] = { "чорна злоба", hit="Запускає у ворога заряд тіні, що завдає від 55 до 85 шкоди від тіні." }, -- Black Malice, @hit Sends a shadowy bolt at the enemy causing 55 to 85 Shadow damage.
[3195] = { "варварська бойова сокира" }, -- Barbaric Battle Axe
[3196] = { "загострений півтораручний меч" }, -- Edged Bastard Sword
[3197] = { "каменярський клеймор" }, -- Stonecutter Claymore
[3198] = { "відбійний молот" }, -- Battering Hammer
[3199] = { "бойовий сікач" }, -- Battle Slayer
[3200] = { "обгорілі шкіряні браслети" }, -- Burnt Leather Bracers
[3201] = { "варварська бойова сокира" }, -- Barbarian War Axe
[3202] = { "лісові шкіряні браслети" }, -- Forest Leather Bracers
[3203] = { "масивна трикутна булава" }, -- Dense Triangle Mace
[3204] = { "браслети глухого лісу" }, -- Deepwood Bracers
[3205] = { "гравійовані шкіряні браслети" }, -- Inscribed Leather Bracers
[3206] = { "кавалерійський дворучний меч" }, -- Cavalier Two-hander
[3207] = { "мисливські браслети" }, -- Hunting Bracers
[3208] = { "пустотний молот" }, -- Conk Hammer
[3209] = { "древній бойовий меч" }, -- Ancient War Sword
[3210] = { "брутальна бойова сокира" }, -- Brutal War Axe
[3211] = { "поліровані браслети" }, -- Burnished Bracers
[3212] = { "блискучі лускаті браслети" }, -- Lambent Scale Bracers
[3213] = { "браслети ветерана" }, -- Veteran Bracers
[3214] = { "браслети воїна" }, -- Warrior's Bracers
[3216] = { "тепла зимова мантія" }, -- Warm Winter Robe
[3217] = { "ремінь десятника" }, -- Foreman Belt
[3218] = { "кайдани з Поховальних Вогнищ" }, -- Pyrewood Shackle
[3220] = { "кров'янка", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв.#Restores {1} health over {2}" }, -- Blood Sausage, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[3222] = { "гибельний кинджал" }, -- Wicked Dagger
[3223] = { "скіпетр Морозогривих" }, -- Frostmane Scepter
[3224] = { "прикрашені сріблом браслети" }, -- Silver-lined Bracers
[3225] = { "закривавлений ніж" }, -- Bloodstained Knife
[3227] = { "посох Ночегибелі" }, -- Nightbane Staff
[3228] = { "скинуті кайдани" }, -- Jimmied Handcuffs
[3229] = { "шовковий пояс тарантула" }, -- Tarantula Silk Sash
[3230] = { "браслети чорного вовка" }, -- Black Wolf Bracers
[3231] = { "напліччя головоріза" }, -- Cutthroat Pauldrons
[3233] = { "мішок зі шкури гнола" }, -- Gnoll Hide Sack
[3234] = { "перстень Делії" }, -- Deliah's Ring
[3235] = { "кільце нехтування", flavor="Для Делії" }, -- Ring of Scorn, @flavor For Deliah
[3236] = { "пасока Гнилошкурих" }, -- Rot Hide Ichor
[3237] = { "зразок пасоки" }, -- Sample Ichor
[3238] = { "дослідження Йогаана", flavor="Запечатані дослідження аптекаря Йогаана." }, -- Johaan's Findings, @flavor The sealed findings of Apothecary Johaan.
[3239] = { "грубе грузило", use="Збільшує шкоду дробильної зброї на 2 на 30 хвилин." }, -- Rough Weightstone, @use Increase the damage of a blunt weapon by 2 for 30 minutes.
[3240] = { "шорстке грузило", use="Збільшує шкоду дробильної зброї на 3 на 30 хвилин." }, -- Coarse Weightstone, @use Increase the damage of a blunt weapon by 3 for 30 minutes.
[3241] = { "важке грузило", use="Збільшує шкоду дробильної зброї на 4 на 30 хвилин." }, -- Heavy Weightstone, @use Increase the damage of a blunt weapon by 4 for 30 minutes.
[3248] = { "перекладений лист від Бальзамувальника" }, -- Translated Letter from The Embalmer
[3250] = { "сувій Бетора" }, -- Bethor's Scroll
[3251] = { "зілля Бетора", use="Знімає чари Воронокігтя. (Відновлення 30 сек)" }, -- Bethor's Potion, @use Removes the Hex of Ravenclaw. (30 Sec Cooldown)
[3252] = { "звіт смертоловів" }, -- Deathstalker Report
[3253] = { "серце посивілого ведмедя" }, -- Grizzled Bear Heart
[3254] = { "дріботлива кров" }, -- Skittering Blood
[3255] = { "щоденник Берарда" }, -- Berard's Journal
[3256] = { "мох озерного тайноходця" }, -- Lake Skulker Moss
[3257] = { "мох озерного підкрадача" }, -- Lake Creeper Moss
[3258] = { "затверділа пухлина" }, -- Hardened Tumor
[3259] = { "зіпсована шкура кажана" }, -- Ruined Bat Hide
[3260] = { "мантія посвяченого Багряного Походу" }, -- Scarlet Initiate Robes
[3261] = { "павутинний плащ" }, -- Webbed Cloak
[3262] = { "гнилий дерев'яний молот" }, -- Putrid Wooden Hammer
[3263] = { "павутинні штани" }, -- Webbed Pants
[3264] = { "крило сутінкового кажана" }, -- Duskbat Wing
[3265] = { "лапа падальника" }, -- Scavenger Paw
[3266] = { "багряна пов'язка" }, -- Scarlet Armband
[3267] = { "короткий меч відречених" }, -- Forsaken Shortsword
[3268] = { "кинджал відречених" }, -- Forsaken Dagger
[3269] = { "молот відречених" }, -- Forsaken Maul
[3270] = { "волокняний жилет" }, -- Flax Vest
[3272] = { "поножі зі шкіри зомбі" }, -- Zombie Skin Leggings
[3273] = { "міцний кольчужний жилет" }, -- Rugged Mail Vest
[3274] = { "волокняні чоботи" }, -- Flax Boots
[3275] = { "волокняні рукавиці" }, -- Flax Gloves
[3276] = { "баклер смертестража" }, -- Deathguard Buckler
[3277] = { "посох карателя" }, -- Executor Staff
[3279] = { "бойові кольчужні чоботи" }, -- Battle Chain Boots
[3280] = { "бойові кольчужні браслети" }, -- Battle Chain Bracers
[3281] = { "бойові кольчужні рукавиці" }, -- Battle Chain Gloves
[3282] = { "бойові кольчужні штани" }, -- Battle Chain Pants
[3283] = { "бойовий кольчужний мундир" }, -- Battle Chain Tunic
[3284] = { "племінні чоботи" }, -- Tribal Boots
[3285] = { "племінні браслети" }, -- Tribal Bracers
[3286] = { "племінні рукавиці" }, -- Tribal Gloves
[3287] = { "племінні штани" }, -- Tribal Pants
[3288] = { "племінний жилет" }, -- Tribal Vest
[3289] = { "чоботи предків" }, -- Ancestral Boots
[3290] = { "рукавиці предків" }, -- Ancestral Gloves
[3291] = { "вовняні штани предків" }, -- Ancestral Woollies
[3292] = { "мундир предків" }, -- Ancestral Tunic
[3293] = { "тесак мерця" }, -- Deadman Cleaver
[3294] = { "дубина мерця" }, -- Deadman Club
[3295] = { "клинок мерця" }, -- Deadman Blade
[3296] = { "кинджал мерця" }, -- Deadman Dagger
[3297] = { "мох скверни" }, -- Fel Moss
[3299] = { "розколоте ікло" }, -- Fractured Canine
[3300] = { "лапка кролика" }, -- Rabbit's Foot
[3301] = { "гостре ікло" }, -- Sharp Canine
[3302] = { "солончакові чоботи" }, -- Brackwater Boots
[3303] = { "солончакові браслети" }, -- Brackwater Bracers
[3304] = { "солончакові рукавиці" }, -- Brackwater Gauntlets
[3305] = { "солончакові поножі" }, -- Brackwater Leggings
[3306] = { "солончаковий жилет" }, -- Brackwater Vest
[3307] = { "варварські ткані чоботи" }, -- Barbaric Cloth Boots
[3308] = { "варварські ткані рукавиці" }, -- Barbaric Cloth Gloves
[3309] = { "варварський набедреник" }, -- Barbaric Loincloth
[3310] = { "варварський тканий жилет" }, -- Barbaric Cloth Vest
[3311] = { "церемоніальні шкіряні пов'язки" }, -- Ceremonial Leather Ankleguards
[3312] = { "церемоніальні шкіряні браслети" }, -- Ceremonial Leather Bracers
[3313] = { "церемоніальна шкіряна портупея" }, -- Ceremonial Leather Harness
[3314] = { "церемоніальні шкіряні рукавиці" }, -- Ceremonial Leather Gloves
[3315] = { "церемоніальний шкіряний набедреник" }, -- Ceremonial Leather Loincloth
[3316] = { "голова Аларіка" }, -- Alaric's Head
[3317] = { "балакуча голова", flavor="Її губи ворушаться!" }, -- A Talking Head, @flavor Its lips are moving!
[3318] = { "останки Аларіка" }, -- Alaric's Remains
[3319] = { "коротка шабля" }, -- Short Sabre
[3321] = { "сірі хутряні чобітки" }, -- Gray Fur Booties
[3322] = { "тонкий плащ" }, -- Wispy Cloak
[3323] = { "примарні браслети" }, -- Ghostly Bracers
[3324] = { "примарний наплічник" }, -- Ghostly Mantle
[3325] = { "бойова сокира Злобного Плавника" }, -- Vile Fin Battle Axe
[3327] = { "посох оракула Злобного Плавника" }, -- Vile Fin Oracle Staff
[3328] = { "павутинна мантія" }, -- Spider Web Robe
[3329] = { "дошка з гвіздком" }, -- Spiked Wooden Plank
[3330] = { "гауберк Дарґола" }, -- Dargol's Hauberk
[3331] = { "плащ Мелрача" }, -- Melrache's Cape
[3332] = { "чоботи Перріна" }, -- Perrine's Boots
[3334] = { "фермерська лопата" }, -- Farmer's Shovel
[3335] = { "фермерська мітла" }, -- Farmer's Broom
[3336] = { "плотокол", hit="Ранить ціль, спричиняючи 30 шкоди від кровотечі протягом 30 сек." }, -- Flesh Piercer, @hit Wounds the target causing them to bleed for 30 damage over 30 sec.
[3337] = { "бойове знамено Драконопащих" }, -- Dragonmaw War Banner
[3339] = { "дворфійський трут" }, -- Dwarven Tinder
[3340] = { "спалахітова руда" }, -- Incendicite Ore
[3341] = { "рукавиці сили огра", equip="Збільшує силу атаки на 16." }, -- Gauntlets of Ogre Strength, @equip +16 Attack Power.
[3342] = { "сорочка капітана Сандерса" }, -- Captain Sander's Shirt
[3343] = { "грабіжний мішок капітана Сандерса" }, -- Captain Sander's Booty Bag
[3344] = { "пояс капітана Сандерса" }, -- Captain Sander's Sash
[3345] = { "шовковий чаклунський капелюх" }, -- Silk Wizard Hat
[3347] = { "оберемок кроколіскових шкір" }, -- Bundle of Crocolisk Skins
[3348] = { "шкура гігантського кроколіска" }, -- Giant Crocolisk Skin
[3349] = { "сумка Сіди", flavor="З неї крапає." }, -- Sida's Bag, @flavor It's dripping.
[3352] = { "покрита слизом сумка" }, -- Ooze-covered Bag
[3353] = { "покритий рунами кулон" }, -- Rune-inscribed Pendant
[3354] = { "даларанський кулон" }, -- Dalaran Pendant
[3355] = { "дикий сталецвіт" }, -- Wild Steelbloom
[3356] = { "королекров" }, -- Kingsblood
[3357] = { "життєкорінь" }, -- Liferoot
[3358] = { "Кадґарів вус" }, -- Khadgar's Whisker
[3360] = { "стегно Стібка" }, -- Stitches' Femur
[3363] = { "потертий пояс" }, -- Frayed Belt
[3365] = { "потерті браслети" }, -- Frayed Bracers
[3369] = { "могильний мох" }, -- Grave Moss
[3370] = { "латаний пояс" }, -- Patchwork Belt
[3371] = { "порожній фіал" }, -- Empty Vial
[3372] = { "свинцевий фіал" }, -- Leaded Vial
[3373] = { "латані браслети" }, -- Patchwork Bracers
[3374] = { "ситцевий пояс" }, -- Calico Belt
[3375] = { "ситцеві браслети" }, -- Calico Bracers
[3376] = { "полотняний пояс" }, -- Canvas Belt
[3377] = { "полотняні браслети" }, -- Canvas Bracers
[3378] = { "парчевий пояс" }, -- Brocade Belt
[3379] = { "парчеві браслети" }, -- Brocade Bracers
[3380] = { "прошитий пояс" }, -- Cross-stitched Belt
[3381] = { "прошиті браслети" }, -- Cross-stitched Bracers
[3382] = { "слабке зілля крові троля", use="Відновлює {1} здоров'я кожні {2} с протягом {3} год. (Відновлення 3 сек)#{1} health every {2} sec for {3} h" }, -- Weak Troll's Blood Potion, @use Regenerate 2 health every 5 sec for 1 hour. (3 Sec Cooldown)
[3383] = { "еліксир мудрості", use="Збільшує інтелект на {1} на {2} год. (Відновлення 3 сек)#by {1} for {2} h" }, -- Elixir of Wisdom, @use Increases Intellect by 6 for 1 hour. (3 Sec Cooldown)
[3384] = { "крихітне зілля супротиву магії", use="Збільшує ваш супротив всім школам магії на 25 на 3 хв. (Відновлення 2 хв)" }, -- Minor Magic Resistance Potion, @use Increases your resistance to all schools of magic by 25 for 3 min. (2 Min Cooldown)
[3385] = { "невелике зілля мани", ref=2455 }, -- Lesser Mana Potion
[3386] = { "еліксир супротиву отруті", use="Виліковує до чотирьох отрут до 60 рівня. (Відновлення 3 сек)" }, -- Elixir of Poison Resistance, @use Imbiber is cured of up to four poisons up to level 60. (3 Sec Cooldown)
[3387] = { "зілля обмеженої невразливості", use="Надає невразливість до фізичних атак на {1} с. (Відновлення 2 хв)#next {1} sec" }, -- Limited Invulnerability Potion, @use Imbiber is immune to physical attacks for the next 6 sec. (2 Min Cooldown)
[3388] = { "міцне зілля крові троля", ref=3382 }, -- Strong Troll's Blood Potion
[3389] = { "еліксир захисту", ref=5997 }, -- Elixir of Defense
[3390] = { "еліксир малої спритності", ref=2457 }, -- Elixir of Lesser Agility
[3391] = { "еліксир сили огра", ref=2454 }, -- Elixir of Ogre's Strength
[3392] = { "обкований шолом" }, -- Ringed Helm
[3393] = { "рецепт: Крихітне зілля супротиву магії", use="Навчає вас створювати крихітне зілля супротиву магії." }, -- Recipe: Minor Magic Resistance Potion, @use Teaches you how to make a Minor Magic Resistance Potion.
[3394] = { "Рецепт: Еліксир супротиву отруті", use="Навчає вас створювати еліксир супротиву отруті." }, -- Recipe: Elixir of Poison Resistance, @use Teaches you how to make an Elixir of Poison Resistance.
[3395] = { "Рецепт: Зілля обмеженої невразливості", use="Навчає вас створювати зілля обмеженої невразливості." }, -- Recipe: Limited Invulnerability Potion, @use Teaches you how to make a Limited Invulnerability Potion.
[3396] = { "Рецепт: Еліксир малої спритності", use="Навчає вас створювати еліксир малої спритності." }, -- Recipe: Elixir of Lesser Agility, @use Teaches you how to make an Elixir of Lesser Agility.
[3397] = { "шкура молодого кроколіска" }, -- Young Crocolisk Skin
[3399] = { "кіготь стерв'ятника" }, -- Vulture Talon
[3400] = { "сяючий довгий меч" }, -- Lucine Longsword
[3401] = { "груба луска кроколіска" }, -- Rough Crocolisk Scale
[3402] = { "м'який клаптик хутра" }, -- Soft Patch of Fur
[3403] = { "біле ікло кнура" }, -- Ivory Boar Tusk
[3404] = { "крило канюка" }, -- Buzzard Wing
[3405] = { "талісман Воронячого Пазура" }, -- Raven Claw Talisman
[3406] = { "чорне перо" }, -- Black Feather Quill
[3407] = { "сапфір небес" }, -- Sapphire of Sky
[3408] = { "руна Гніздування" }, -- Rune of Nesting
[3409] = { "ікло ночезуба" }, -- Nightsaber Fang
[3411] = { "пір'їна сови" }, -- Strigid Owl Feather
[3412] = { "павутиннолісий шовк" }, -- Webwood Spider Silk
[3413] = { "шип згуби" }, -- Doomspike
[3414] = { "хрестоподібний скіпетр" }, -- Crested Scepter
[3415] = { "посох ченця" }, -- Staff of the Friar
[3416] = { "кольчуга мученика" }, -- Martyr's Chain
[3417] = { "оніксовий клеймор" }, -- Onyx Claymore
[3418] = { "осквернена шишка" }, -- Fel Cone
[3419] = { "червона троянда" }, -- Red Rose
[3420] = { "чорна троянда" }, -- Black Rose
[3421] = { "прості польові квіти" }, -- Simple Wildflowers
[3422] = { "красиві польові квіти" }, -- Beautiful Wildflowers
[3423] = { "букет білих троянд" }, -- Bouquet of White Roses
[3424] = { "букет чорних троянд" }, -- Bouquet of Black Roses
[3425] = { "сплетений жезл" }, -- Woven Wand
[3426] = { "яскрава жовта сорочка" }, -- Bold Yellow Shirt
[3427] = { "стильна чорна сорочка" }, -- Stylish Black Shirt
[3428] = { "звичайна сіра сорочка" }, -- Common Gray Shirt
[3429] = { "пояс вартового" }, -- Guardsman Belt
[3430] = { "снайперська рушниця" }, -- Sniper Rifle
[3431] = { "укріплений кістками шкіряний жилет" }, -- Bone-studded Leather
[3434] = { "пісок дрімоти", use="Присипляє ворожу ціль на час до 20 сек. Після будь-якої заподіяної шкоди ціль прокинеться. Одночасно можна приспати лише одну ціль. (Відновлення 1 хв)" }, -- Slumber Sand, @use Puts the enemy target to sleep for up to 20 sec.  Any damage caused will awaken the target.  Only one target can be asleep at a time. (1 Min Cooldown)
[3435] = { "наручі зі шкіри зомбі" }, -- Zombie Skin Bracers
[3437] = { "пояс з пряжкою" }, -- Clasped Belt
[3438] = { "анкх воскресіння", use="Повертає мертвого гравця до життя з 70 здоров'я та 135 мани. Не можна застосувати в бою." }, -- Ankh of Resurrection, @use Brings a dead player back to life with 70 health and 135 mana.  Cannot be cast when in combat.
[3439] = { "черевики з плоті зомбі" }, -- Zombie Skin Boots
[3440] = { "кістколом" }, -- Bonecracker
[3442] = { "пояс учня" }, -- Apprentice Sash
[3443] = { "церемоніальний томагавк" }, -- Ceremonial Tomahawk
[3444] = { "жилет землероба" }, -- Tiller's Vest
[3445] = { "церемоніальний ніж" }, -- Ceremonial Knife
[3446] = { "посох темнолісся" }, -- Darkwood Staff
[3447] = { "чоботи склепоходця" }, -- Cryptwalker Boots
[3448] = { "сенджиновий корінь", use="Відновлює {1} здоров'я та {2} мани протягом {3} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health and {2} mana over {3}" }, -- Senggin Root, @use Restores 294 health and 294 mana over 21 sec. Must remain seated while eating.
[3449] = { "містична шаль" }, -- Mystic Shawl
[3450] = { "щит Фарлеї" }, -- Faerleia's Shield
[3451] = { "ночесяйний настій" }, -- Nightglow Concoction
[3452] = { "керанієвий жезл" }, -- Ceranium Rod
[3453] = { "стьобані браслети" }, -- Quilted Bracers
[3454] = { "розвідувальні черевики" }, -- Reconnaissance Boots
[3455] = { "короткий меч смертолова" }, -- Deathstalker Shortsword
[3456] = { "собачий свисток", use="Викликати мисливського собаку, що захищатиме вас протягом 10 хв." }, -- Dog Whistle, @use Summons a tracking hound that will protect you for 10 min. (10 Min Cooldown)
[3457] = { "стоптані штани" }, -- Stamped Trousers
[3458] = { "міцні кольчужні рукавиці" }, -- Rugged Mail Gloves
[3460] = { "особливий напій Йогаана" }, -- Johaan's Special Drink
[3461] = { "мантія судді" }, -- High Robe of the Adjudicator
[3462] = { "удар кігтя" }, -- Talonstrike
[3463] = { "срібна зірка" }, -- Silver Star
[3464] = { "оперена стріла", desc="Додає 9.5 пошкодження за секунду" }, -- Feathered Arrow, @desc Adds 9.5 damage per second
[3465] = { "розривна куля", desc="Додає 9.5 пошкодження за секунду" }, -- Exploding Shot, @desc Adds 9.5 damage per second
[3466] = { "сильний флюс", flavor="Використовується ковалями для видалення домішок." }, -- Strong Flux, @flavor Used by blacksmiths to remove impurities.
[3467] = { "тьмяний залізний ключ" }, -- Dull Iron Key
[3468] = { "дані досліджень Ренферрела", flavor="Запечатані дані досліджень аптекаря Ренферрела." }, -- Renferrel's Findings, @flavor The sealed findings of Apothecary Renferrel.
[3469] = { "мідні кольчужні чоботи" }, -- Copper Chain Boots
[3470] = { "грубий шліфувальний камінь" }, -- Rough Grinding Stone
[3471] = { "мідний плетений жилет" }, -- Copper Chain Vest
[3472] = { "рунічні мідні рукавиці" }, -- Runed Copper Gauntlets
[3473] = { "рунічні мідні штани" }, -- Runed Copper Pants
[3474] = { "прикрашені самоцвітами мідні рукавиці" }, -- Gemmed Copper Gauntlets
[3475] = { "полум'яний плащ", equip="Завдає 5 шкоди від вогню всім, хто атакує вас у ближньому бою." }, -- Cloak of Flames, @equip Deals 5 Fire damage to anyone who strikes you with a melee attack.
[3476] = { "язик сірого ведмедя" }, -- Gray Bear Tongue
[3477] = { "пасока підкрадача" }, -- Creeper Ichor
[3478] = { "шорсткий шліфувальний камінь" }, -- Coarse Grinding Stone
[3480] = { "грубі бронзові наплечі" }, -- Rough Bronze Shoulders
[3481] = { "посріблені бронзові наплечі" }, -- Silvered Bronze Shoulders
[3482] = { "посріблені бронзові чоботи" }, -- Silvered Bronze Boots
[3483] = { "посріблені бронзові рукавиці" }, -- Silvered Bronze Gauntlets
[3484] = { "зелені залізні чоботи" }, -- Green Iron Boots
[3485] = { "зелені залізні рукавиці" }, -- Green Iron Gauntlets
[3486] = { "важкий шліфувальний камінь" }, -- Heavy Grinding Stone
[3487] = { "важкий мідний палаш" }, -- Heavy Copper Broadsword
[3488] = { "мідна бойова сокира" }, -- Copper Battle Axe
[3489] = { "потовщена бойова сокира" }, -- Thick War Axe
[3490] = { "смертоносний бронзовий пуаньярд" }, -- Deadly Bronze Poniard
[3491] = { "важка бронзова булава" }, -- Heavy Bronze Mace
[3492] = { "могутній залізний молот" }, -- Mighty Iron Hammer
[3493] = { "гибель раптора" }, -- Raptor's End
[3495] = { "еліксир страждання" }, -- Elixir of Suffering
[3496] = { "кров гірського лева" }, -- Mountain Lion Blood
[3497] = { "еліксир болю" }, -- Elixir of Pain
[3498] = { "намисто Тарети", flavor="Півмісяць на срібному ланцюжку." }, -- Taretha's Necklace, @flavor A crescent moon dangling from a silver chain.
[3499] = { "полірований золотий ключ" }, -- Burnished Gold Key
[3502] = { "квітка Брудномордих" }, -- Mudsnout Blossoms
[3505] = { "альтерацька печатка" }, -- Alterac Signet Ring
[3506] = { "суміш Брудномордих" }, -- Mudsnout Composite
[3508] = { "розчин Брудномордих" }, -- Mudsnout Mixture
[3509] = { "луска клинкоспинної наги" }, -- Daggerspine Scale
[3510] = { "око мурлока Розірваного Плавника" }, -- Torn Fin Eye
[3511] = { "плащ народного ополчення" }, -- Cloak of the People's Militia
[3514] = { "череп Мор'Ладіма" }, -- Mor'Ladim's Skull
[3515] = { "посох Атеріка" }, -- Ataeric's Staff
[3516] = { "голова Лесковара" }, -- Lescovar's Head
[3517] = { "барильце \"Землекопського міцного\"" }, -- Keg of Shindigger Stout
[3518] = { "розшифрований лист" }, -- Decrypted Letter
[3520] = { "зіпсоване барильце" }, -- Tainted Keg
[3521] = { "кмітливо зашифрований лист", flavor="Цей лист зашифрований та нерозбірливий." }, -- Cleverly Encrypted Letter, @flavor This letter is encrypted and indecipherable.
[3530] = { "вовняний бинт", use="Відновлює 161 здоров'я за 7 сек." }, -- Wool Bandage, @use Heals 161 damage over 7 sec.
[3531] = { "щільний вовняний бинт", use="Відновлює 301 здоров'я за 7 сек." }, -- Heavy Wool Bandage, @use Heals 301 damage over 7 sec.
[3550] = { "голова Тарґа" }, -- Targ's Head
[3551] = { "голова Брудня" }, -- Muckrake's Head
[3552] = { "голова Ґломмуса" }, -- Glommus's Head
[3553] = { "голова Муґ'Тола" }, -- Mug'thol's Head
[3554] = { "корона Волі" }, -- Crown of Will
[3555] = { "мантія Соломона" }, -- Robe of Solomon
[3556] = { "магічний капелюх жаху" }, -- Dread Mage Hat
[3558] = { "мантія хранителя болота" }, -- Fen Keeper Robe
[3559] = { "рукавиці Нічної варти" }, -- Night Watch Gauntlets
[3560] = { "наплічник честі" }, -- Mantle of Honor
[3561] = { "стійке пончо" }, -- Resilient Poncho
[3562] = { "пояс поборника" }, -- Belt of Vindication
[3563] = { "штани мореплавця" }, -- Seafarer's Pantaloons
[3564] = { "партія заліза" }, -- Shipment of Iron
[3565] = { "заляпані пивом рукавиці" }, -- Beerstained Gloves
[3566] = { "броня грози рапторів", equip="Збільшує силу атаки на 30 в бою зі звірами." }, -- Raptorbane Armor, @equip +30 Attack Power when fighting Beasts.
[3567] = { "дворфійська вудка", flavor="Витонченість — не найкраща риса дворфів." }, -- Dwarven Fishing Pole, @flavor Dwarves aren't known for their subtlety.
[3569] = { "мантія вікарія" }, -- Vicar's Robe
[3570] = { "кісткоміс" }, -- Bonegrinding Pestle
[3571] = { "довбня трога" }, -- Trogg Beater
[3572] = { "короткий меч Деріла" }, -- Daryl's Shortsword
[3573] = { "мисливський сагайдак", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Hunting Quiver, @equip Increases ranged attack speed by 10%.
[3574] = { "мисливський гаман для набоїв", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Hunting Ammo Sack, @equip Increases ranged attack speed by 10%.
[3575] = { "злиток заліза" }, -- Iron Bar
[3576] = { "злиток олова" }, -- Tin Bar
[3577] = { "злиток золота" }, -- Gold Bar
[3578] = { "жнивальні штани" }, -- Harvester's Pants
[3581] = { "зубчастий ніж" }, -- Serrated Knife
[3582] = { "кислотостійкий плащ" }, -- Acidproof Cloak
[3583] = { "зношений пояс" }, -- Weathered Belt
[3585] = { "камуфляжний мундир" }, -- Camouflaged Tunic
[3586] = { "дроворуб" }, -- Logsplitter
[3587] = { "вишитий пояс" }, -- Embroidered Belt
[3588] = { "вишиті браслети" }, -- Embroidered Bracers
[3589] = { "важкий плетений пояс" }, -- Heavy Weave Belt
[3590] = { "важкі плетені браслети" }, -- Heavy Weave Bracers
[3591] = { "м'який пояс" }, -- Padded Belt
[3592] = { "м'які браслети" }, -- Padded Bracers
[3593] = { "бурий пояс" }, -- Russet Belt
[3594] = { "бурі браслети" }, -- Russet Bracers
[3595] = { "пошарпаний тканий пояс" }, -- Tattered Cloth Belt
[3596] = { "пошарпані ткані браслети" }, -- Tattered Cloth Bracers
[3597] = { "товстий тканий пояс" }, -- Thick Cloth Belt
[3598] = { "товсті ткані браслети" }, -- Thick Cloth Bracers
[3599] = { "тонкий тканий пояс" }, -- Thin Cloth Belt
[3600] = { "тонкі ткані браслети" }, -- Thin Cloth Bracers
[3601] = { "послання Синдикату" }, -- Syndicate Missive
[3602] = { "в'язаний пояс" }, -- Knitted Belt
[3603] = { "в'язані браслети" }, -- Knitted Bracers
[3604] = { "патронташ Нічної Варти", equip="Збільшує швидкість атаки дальнього бою на 11%." }, -- Bandolier of the Night Watch, @equip Increases ranged attack speed by 11%.
[3605] = { "сагайдак Нічної Варти", equip="Збільшує швидкість атаки дальнього бою на 11%." }, -- Quiver of the Night Watch, @equip Increases ranged attack speed by 11%.
[3606] = { "вовняний пояс" }, -- Woven Belt
[3607] = { "вовняні браслети" }, -- Woven Bracers
[3608] = { "креслення: Могутній залізний молот", use="Навчає вас створювати могутній залізний молот." }, -- Plans: Mighty Iron Hammer, @use Teaches you how to make a Mighty Iron Hammer.
[3609] = { "креслення: Мідний плетений жилет", use="Навчає вас створювати мідний плетений жилет." }, -- Plans: Copper Chain Vest, @use Teaches you how to make a Copper Chain Vest.
[3610] = { "креслення: Прикрашені самоцвітами мідні рукавиці", use="Навчає вас створювати прикрашені самоцвітами мідні рукавиці." }, -- Plans: Gemmed Copper Gauntlets, @use Teaches you how to make Gemmed Copper Gauntlets.
[3611] = { "креслення: Зелені залізні чоботи", use="Навчає вас створювати зелені залізні чоботи." }, -- Plans: Green Iron Boots, @use Teaches you how to make Green Iron Boots.
[3612] = { "креслення: Зелені залізні рукавиці", use="Навчає вас створювати зелені залізні рукавиці." }, -- Plans: Green Iron Gauntlets, @use Teaches you how to make Green Iron Gauntlets.
[3613] = { "руки Валдреда" }, -- Valdred's Hands
[3614] = { "лапа Скавчала" }, -- Yowler's Paw
[3615] = { "голова Курцена" }, -- Kurzen's Head
[3616] = { "Око Розуму" }, -- Mind's Eye
[3617] = { "кулон тіні" }, -- Pendant of Shadow
[3618] = { "голова Жеруна" }, -- Gobbler's Head
[3619] = { "табакерка Снелліґа" }, -- Snellig's Snuffbox
[3620] = { "рештки Лілліт" }, -- Lillith's Remains
[3621] = { "голова Айвара" }, -- Ivar's Head
[3622] = { "сутність Нічнохльостки" }, -- Essence of Nightlash
[3623] = { "голова Тула" }, -- Thule's Head
[3625] = { "голова Нек'роша" }, -- Nek'rosh's Head
[3626] = { "голова барона Вардуса" }, -- Head of Baron Vardus
[3627] = { "ікло Ваґаша" }, -- Fang of Vagash
[3628] = { "рука Декстрена Ворда" }, -- Hand of Dextren Ward
[3629] = { "сімейний перстень Імлокривів" }, -- Mistmantle Family Ring
[3630] = { "голова Тарґорра" }, -- Head of Targorr
[3631] = { "ікло Грубопуза" }, -- Bellygrub's Tusk
[3632] = { "лапа Тельбухожбура" }, -- Fangore's Paw
[3633] = { "голова Ґат'Ільзоґґа" }, -- Head of Gath'Ilzogg
[3634] = { "голова Ґрімсона" }, -- Head of Grimson
[3635] = { "лапа Червивого Ока" }, -- Maggot Eye's Paw
[3636] = { "луска старого Мутноока" }, -- Scale of Old Murk-Eye
[3637] = { "голова ван Кліфа" }, -- Head of VanCleef
[3638] = { "пазур Сарлозуба" }, -- Sarltooth's Talon
[3639] = { "вухо Балґараса" }, -- Ear of Balgaras
[3640] = { "голова Темнолюта" }, -- Head of Deepfury
[3641] = { "браслети підмайстра" }, -- Journeyman's Bracers
[3642] = { "браслети предків" }, -- Ancestral Bracers
[3643] = { "браслети чароплета" }, -- Spellbinder Bracers
[3644] = { "варварські ткані браслети" }, -- Barbaric Cloth Bracers
[3645] = { "браслети провидця" }, -- Seer's Cuffs
[3647] = { "яскраві браслети" }, -- Bright Bracers
[3648] = { "баклер воїна" }, -- Warrior's Buckler
[3649] = { "племінний баклер" }, -- Tribal Buckler
[3650] = { "бойовий щит" }, -- Battle Shield
[3651] = { "ветеранський щит" }, -- Veteran Shield
[3652] = { "мисливський баклер" }, -- Hunting Buckler
[3653] = { "церемоніальний баклер" }, -- Ceremonial Buckler
[3654] = { "солончаковий щит" }, -- Brackwater Shield
[3655] = { "полірований щит" }, -- Burnished Shield
[3656] = { "блискучий лускатий щит" }, -- Lambent Scale Shield
[3657] = { "реєстр Гіллзбраду" }, -- Hillsbrad Town Registry
[3658] = { "врятований том" }, -- Recovered Tome
[3659] = { "потерта шкіряна книга", flavor="Рука Ґрі'лека" }, -- Worn Leather Book, @flavor Arm of Gri'lek
[3660] = { "альтерацькі томи" }, -- Tomes of Alterac
[3661] = { "посох ручної роботи" }, -- Handcrafted Staff
[3662] = { "стейк з кроколіска", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв." }, -- Crocolisk Steak, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[3663] = { "суп з плавців мурлоків", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Murloc Fin Soup, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3664] = { "рагу з кроколіска", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Crocolisk Gumbo, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3665] = { "дивовижно смачний омлет", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв." }, -- Curiously Tasty Omelet, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3666] = { "липкий павучий пиріг", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Gooey Spider Cake, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3667] = { "ніжне м'ясо кроколіска" }, -- Tender Crocolisk Meat
[3668] = { "контракт вбивці" }, -- Assassin's Contract
[3669] = { "драглистий слиз" }, -- Gelatinous Goo
[3670] = { "велика слизька кістка" }, -- Large Slimy Bone
[3671] = { "неживий череп" }, -- Lifeless Skull
[3672] = { "голова Наґаза" }, -- Head of Nagaz
[3673] = { "зламана стріла" }, -- Broken Arrow
[3674] = { "прогнилий чобіт" }, -- Decomposed Boot
[3675] = { "вигорілий смолоскип" }, -- Burnt Out Torch
[3676] = { "слизька лімфа" }, -- Slimy Ichor
[3678] = { "рецепт: Стейк з кроколіска", use="Навчає вас готувати стейк з кроколіска." }, -- Recipe: Crocolisk Steak, @use Teaches you how to cook a Crocolisk Steak.
[3679] = { "рецепт: Кров'янка", use="Навчає вас приготуванню кров'янки." }, -- Recipe: Blood Sausage, @use Teaches you how to cook a Blood Sausage.
[3680] = { "рецепт: Суп з плавців мурлоків", use="Навчає вас приготуванню супу з плавців мурлоків." }, -- Recipe: Murloc Fin Soup, @use Teaches you how to cook a Murloc Fin Soup.
[3681] = { "рецепт: Рагу з кроколіска", use="Навчає вас приготуванню рагу з кроколіска." }, -- Recipe: Crocolisk Gumbo, @use Teaches you how to cook a Crocolisk Gumbo.
[3682] = { "рецепт: Дивовижно смачний омлет", use="Навчає вас готувати стейк з дивовижно смачний омлет. Наіть не питайте, з чого він." }, -- Recipe: Curiously Tasty Omelet, @use Teaches you how to cook a Curiously Tasty Omelet.  Don't ask, you don't want to know.
[3683] = { "рецепт: Липкий павучий пиріг", use="Навчає вас приготуванню липкого павучого пирога." }, -- Recipe: Gooey Spider Cake, @use Teaches you how to cook a Gooey Spider Cake.
[3684] = { "тіара Перенольдів" }, -- Perenolde Tiara
[3685] = { "яйце раптора" }, -- Raptor Egg
[3688] = { "овал з кривавого каменю" }, -- Bloodstone Oval
[3689] = { "кулька з кривавого каменю" }, -- Bloodstone Marble
[3690] = { "осколок з кривавого каменю" }, -- Bloodstone Shard
[3691] = { "клин з кривавого каменю" }, -- Bloodstone Wedge
[3692] = { "людський череп з Гіллзбраду" }, -- Hillsbrad Human Skull
[3693] = { "меч Гумберта" }, -- Humbert's Sword
[3701] = { "запечатана грамота Дарталії", flavor="Вручити особисто лорду Варіматрасу." }, -- Darthalia's Sealed Commendation, @flavor To be opened by Lord Varimathras.
[3702] = { "ведмежий жовчний міхур" }, -- Bear Gall Bladder
[3703] = { "південнобережне міцне", use="Звичайний алкогольний напій." }, -- Southshore Stout, @use A typical alcoholic beverage.
[3704] = { "іржавий залізний ключ" }, -- Rusted Iron Key
[3706] = { "зачаклований пергамент", flavor="Написи на ньому оповиті магією." }, -- Ensorcelled Parchment, @flavor Its letters are enshrouded in magic.
[3707] = { "пергамент Наґаза" }, -- Nagaz Parchment
[3708] = { "жезл Гелькулара" }, -- Helcular's Rod
[3710] = { "жезл Гелькулара", use="Зарядити жезл Гелькулара на трьох церемоніальних вогнищах." }, -- Rod of Helcular, @use Charges the Rod of Helcular when used at the three ceremonial pyres.
[3711] = { "журнал досліджень Беламур" }, -- Belamoore's Research Journal
[3712] = { "черепашаче м'ясо" }, -- Turtle Meat
[3713] = { "духмяні спеції" }, -- Soothing Spices
[3714] = { "потертий кам'яний талісман", flavor="Його магія згасла." }, -- Worn Stone Token, @flavor Its magic has faded.
[3715] = { "зв'язувальні браслети землі" }, -- Bracers of Earth Binding
[3716] = { "голова мурлока" }, -- Murloc Head
[3717] = { "мішок голів мурлоків" }, -- Sack of Murloc Heads
[3718] = { "лиховісні плани" }, -- Foreboding Plans
[3719] = { "накидка жителя пагорбів" }, -- Hillman's Cloak
[3720] = { "хутро єті" }, -- Yeti Fur
[3721] = { "звіт Фаррена" }, -- Farren's Report
[3722] = { "шкура фамільяра" }, -- Familiar Hide
[3723] = { "ікло фамільяра" }, -- Familiar Fang
[3724] = { "кіготь фамільяра" }, -- Familiar Claw
[3725] = { "ріг фамільяра" }, -- Familiar Horn
[3726] = { "великий ведмежий стейк", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Big Bear Steak, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3727] = { "гострі відбивні з лева", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв." }, -- Hot Lion Chops, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3728] = { "смачний стейк з лева", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 8 на 15 хв.#Restores {1} health over {2}" }, -- Tasty Lion Steak, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 8 Stamina and Spirit for 15 min.
[3729] = { "ніжний черепаховий суп", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 8 на 15 хв.#Restores {1} health over {2}" }, -- Soothing Turtle Bisque, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 8 Stamina and Spirit for 15 min.
[3730] = { "велике ведмеже м'ясо" }, -- Big Bear Meat
[3731] = { "м'ясо лева" }, -- Lion Meat
[3732] = { "широкий капюшон" }, -- Hooded Cowl
[3733] = { "орча бойова кольчуга" }, -- Orcish War Chain
[3734] = { "рецепт: Великий ведмежий стейк", use="Навчає вас приготуванню великого ведмежого стейка." }, -- Recipe: Big Bear Steak, @use Teaches you how to cook a Big Bear Steak.
[3735] = { "рецепт: Гострі відбивні з лева", use="Навчає вас приготуванню гострих відбивних з лева." }, -- Recipe: Hot Lion Chops, @use Teaches you how to cook up some Hot Lion Chops.
[3736] = { "рецепт: Смачний стейк з лева", use="Навчає вас приготуванню смачного стейка з лева." }, -- Recipe: Tasty Lion Steak, @use Teaches you how to cook a Tasty Lion Steak.
[3737] = { "рецепт: Ніжний черепаховий суп", use="Навчає вас приготуванню ніжного черепахового супу." }, -- Recipe: Soothing Turtle Bisque, @use Teaches you how to cook a Soothing Turtle Bisque.
[3738] = { "броварський жезл" }, -- Brewing Rod
[3739] = { "перстень з черепом" }, -- Skull Ring
[3740] = { "обезголовлюючий меч" }, -- Decapitating Sword
[3741] = { "чоботи тупотіння" }, -- Stomping Boots
[3742] = { "лук грабежу" }, -- Bow of Plunder
[3743] = { "баклер караульного" }, -- Sentry Buckler
[3744] = { "кулон з кривавим каменем" }, -- Bloodstone Pendant, @flavor NYI - THIS ITEM WILL SPAWN A QUEST
[3745] = { "руна відкриття", use="Відкриває певні сейфи навколо Даларана." }, -- Rune of Opening, @use Opens certain Dalaran-sealed containers.
[3747] = { "пояс медитації" }, -- Meditative Sash
[3748] = { "котяче напліччя" }, -- Feline Mantle
[3749] = { "плащ верховного аптекаря" }, -- High Apothecary Cloak
[3750] = { "ребристий нагрудник" }, -- Ribbed Breastplate
[3751] = { "поножі найманця" }, -- Mercenary Leggings
[3752] = { "жилет бугая" }, -- Grunt Vest
[3753] = { "пояс пастуха" }, -- Shepherd's Girdle
[3754] = { "рукавиці пастуха" }, -- Shepherd's Gloves
[3755] = { "риборіз" }, -- Fish Gutter
[3758] = { "пояс лицаря" }, -- Crusader Belt
[3759] = { "утеплені рукавички мудреця" }, -- Insulated Sage Gloves
[3760] = { "перстень Підмістя" }, -- Band of the Undercity
[3761] = { "щит мертвого черепа" }, -- Deadskull Shield
[3762] = { "сумка бібліотекаря" }, -- Librarian's Satchel
[3763] = { "місячний баклер" }, -- Lunar Buckler
[3764] = { "черевики богомола" }, -- Mantis Boots
[3765] = { "розбійницьке напліччя" }, -- Brigand's Pauldrons
[3766] = { "перо грифона" }, -- Gryphon Feather Quill
[3767] = { "тонкий пергамент" }, -- Fine Parchment
[3769] = { "зламаний жезл" }, -- Broken Wand
[3770] = { "відбивна з баранини", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Mutton Chop, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[3771] = { "рулька дикого кабана", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Wild Hog Shank, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[3772] = { "начаклована джерельна вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Spring Water, @use Restores 1344.6 mana over 27 sec.  Must remain seated while drinking.
[3775] = { "травматична отрута", use="Вкриває зброю отрутою на {1} хв. Кожен удар має {2}% імовірності отруїти ворога, сповільнюючи рух на {3}% на {4} с.#lasts for {1} min#{2}% chance#speed by {3}% for {4} sec" }, -- Crippling Poison, @use Coats a weapon with poison that lasts for 30 minutes.Each strike has a 30% chance of poisoning the enemy, slowing their movement speed by 50% for 12 sec. (Proc chance: 30%)
[3776] = { "травматична отрута II", ref=3775 }, -- Crippling Poison II
[3777] = { "корінь млявості" }, -- Lethargy Root
[3778] = { "тугий композитний лук" }, -- Taut Compound Bow
[3779] = { "важка бойова сокира" }, -- Hefty War Axe
[3780] = { "довгоствольний мушкет" }, -- Long-barreled Musket
[3781] = { "широкий клеймор" }, -- Broad Claymore
[3782] = { "велика бойова дубина" }, -- Large War Club
[3783] = { "легкий ятаган" }, -- Light Scimitar
[3784] = { "металевий посох" }, -- Metal Stave
[3785] = { "гостра сокира" }, -- Keen Axe
[3786] = { "блискучий кортик" }, -- Shiny Dirk
[3787] = { "кам'яна дубина" }, -- Stone Club
[3788] = { "реліктовий кристал душі" }, -- Soul Crystal Relic
[3789] = { "реліктовий камінь благочестя" }, -- Relic Stone of Piety
[3790] = { "освячений реліктовий пергамент" }, -- Consecrated Relic Parchment
[3791] = { "реліквія Світла" }, -- Relic of the Light
[3792] = { "переплетений пояс" }, -- Interlaced Belt
[3793] = { "переплетені чоботи" }, -- Interlaced Boots
[3794] = { "переплетені браслети" }, -- Interlaced Bracers
[3795] = { "переплетений плащ" }, -- Interlaced Cloak
[3796] = { "переплетені рукавички" }, -- Interlaced Gloves
[3797] = { "переплетені штани" }, -- Interlaced Pants
[3798] = { "переплетені наплічники" }, -- Interlaced Shoulderpads
[3799] = { "переплетений жилет" }, -- Interlaced Vest
[3800] = { "загрубілий шкіряний пояс" }, -- Hardened Leather Belt
[3801] = { "загрубілі шкіряні чоботи" }, -- Hardened Leather Boots
[3802] = { "загрубілі шкіряні браслети" }, -- Hardened Leather Bracers
[3803] = { "загрубілий плащ" }, -- Hardened Cloak
[3804] = { "загрубілі шкіряні рукавиці" }, -- Hardened Leather Gloves
[3805] = { "загрубілі шкіряні штани" }, -- Hardened Leather Pants
[3806] = { "загрубілі шкіряні наплічники" }, -- Hardened Leather Shoulderpads
[3807] = { "загрубілий шкіряний мундир" }, -- Hardened Leather Tunic
[3808] = { "подвійний кольчужний пояс" }, -- Double Mail Belt
[3809] = { "подвійні кольчужні чоботи" }, -- Double Mail Boots
[3810] = { "подвійні кольчужні браслети" }, -- Double Mail Bracers
[3811] = { "двічі прошитий плащ" }, -- Double-stitched Cloak
[3812] = { "подвійні кольчужні рукавиці" }, -- Double Mail Gloves
[3813] = { "подвійні кольчужні штани" }, -- Double Mail Pants
[3814] = { "подвійні кольчужні наплічники" }, -- Double Mail Shoulderpads
[3815] = { "подвійний кольчужний жилет" }, -- Double Mail Vest
[3816] = { "відбиваюча пластина" }, -- Reflective Heater
[3817] = { "укріплений баклер" }, -- Reinforced Buckler
[3818] = { "бляклолист" }, -- Fadeleaf
[3819] = { "зимокус" }, -- Wintersbite
[3820] = { "душирість" }, -- Stranglekelp
[3821] = { "злотошпичка" }, -- Goldthorn
[3822] = { "темний рунічний клинок", hit="Запускає у ворога заряд тіні, що завдає 35 шкоди від тіні." }, -- Runic Darkblade, @hit Sends a shadowy bolt at the enemy causing 35 Shadow damage.
[3823] = { "зілля малої невидимості", use="Надає малу невидимість на {1} с. (Відновлення 10 хв)#for {1} sec" }, -- Lesser Invisibility Potion, @use Gives the imbiber lesser invisibility for 15 sec. (10 Min Cooldown)
[3824] = { "тіньова олія", use="При нанесенні на зброю ближнього бою дає 15% ймовірності застосувати тіньову стрілу ІІІ на опонента при ударі. Триває 30 хвилин." }, -- Shadow Oil, @use When applied to a melee weapon it gives a 15% chance of casting Shadowbolt III at the opponent when it hits.  Lasts 30 minutes.
[3825] = { "еліксир стійкості", ref=2458 }, -- Elixir of Fortitude
[3826] = { "потужне зілля крові троля", ref=3382 }, -- Mighty Troll's Blood Potion
[3827] = { "зілля мани", ref=2455 }, -- Mana Potion
[3828] = { "еліксир виявлення малої невидимості", use="Надає виявлення малої невидимості на {1} хв. (Відновлення 3 сек)#for {1} min" }, -- Elixir of Detect Lesser Invisibility, @use Grants detect lesser invisibility for 10 min. (3 Sec Cooldown)
[3829] = { "крижана олія", use="При нанесенні на зброю ближнього бою дає 10% ймовірності застосувати крижану стрілу на опонента при ударі. Триває 30 хвилин." }, -- Frost Oil, @use When applied to a melee weapon it gives a 10% chance of casting Frostbolt at the opponent when it hits.  Lasts 30 minutes.
[3830] = { "рецепт: Еліксир стійкості", use="Навчає вас створювати еліксир стійкості." }, -- Recipe: Elixir of Fortitude, @use Teaches you how to make an Elixir of Fortitude.
[3831] = { "рецепт: Потужне зілля крові троля", use="Навчає вас створювати потужне зілля крові троля." }, -- Recipe: Mighty Troll's Blood Potion, @use Teaches you how to make a Mighty Troll's Blood Potion.
[3832] = { "рецепт: Еліксир виявлення малої невидимості", use="Навчає вас створювати еліксир виявлення малої невидимості." }, -- Recipe: Elixir of Detect Lesser Invisibility, @use Teaches you how to make an Elixir of Detect Lesser Invisibility.
[3833] = { "плащ адепта" }, -- Adept's Cloak
[3834] = { "міцні полотняні штани" }, -- Sturdy Cloth Trousers
[3835] = { "зелені залізні браслети" }, -- Green Iron Bracers
[3836] = { "зелений залізний шолом" }, -- Green Iron Helm
[3837] = { "золотий лускатий койф" }, -- Golden Scale Coif
[3838] = { "пазур тінепащої пантери" }, -- Shadowmaw Claw
[3839] = { "бездоганне ікло тигриці" }, -- Pristine Tigress Fang
[3840] = { "зелені залізні наплечі" }, -- Green Iron Shoulders
[3841] = { "золоті лускаті наплечі" }, -- Golden Scale Shoulders
[3842] = { "зелені залізні поножі" }, -- Green Iron Leggings
[3843] = { "золоті лускаті поножі" }, -- Golden Scale Leggings
[3844] = { "зелений залізний гауберк" }, -- Green Iron Hauberk
[3845] = { "золота луската кіраса" }, -- Golden Scale Cuirass
[3846] = { "поліровані сталеві чоботи" }, -- Polished Steel Boots
[3847] = { "золоті лускаті чоботи" }, -- Golden Scale Boots
[3848] = { "великий бронзовий ніж" }, -- Big Bronze Knife
[3849] = { "загартований залічний короткий меч" }, -- Hardened Iron Shortsword
[3850] = { "нефритовий зміїний клинок" }, -- Jade Serpentblade
[3851] = { "міцний залізний молот" }, -- Solid Iron Maul
[3852] = { "позолочений залізний руйнівник" }, -- Golden Iron Destroyer
[3853] = { "палаш з місяцесталі" }, -- Moonsteel Broadsword
[3854] = { "клинок крижаного тигра", equip="Збільшує ваш шанс нанесення критичного удару на 1%.", hit="Запускає у ворога крижану стрілу, що завдає від 20 до 30 шкоди від криги та зменшує його швидкість руху на 50% протягом 5 секунд." }, -- Frost Tiger Blade, @equip Improves your chance to get a critical strike by 1%., @hit Launches a bolt of frost at the enemy causing 20 to 30 Frost damage and slowing movement speed by 50% for 5 sec.
[3855] = { "масивна залізна сокира" }, -- Massive Iron Axe
[3856] = { "темна півмісячна сокира" }, -- Shadow Crescent Axe
[3857] = { "вугілля" }, -- Coal
[3858] = { "мітрилова руда" }, -- Mithril Ore
[3859] = { "злиток сталі" }, -- Steel Bar
[3860] = { "злиток мітрилу" }, -- Mithril Bar
[3861] = { "злиток чорносталі" }, -- Blacksteel Bar
[3862] = { "сухожилля старої горили" }, -- Aged Gorilla Sinew
[3863] = { "перо ловця джунглів" }, -- Jungle Stalker Feather
[3864] = { "цитрин" }, -- Citrine
[3866] = { "креслення: Нефритовий зміїний клинок", use="Навчає вас створювати нефритовий зміїний клинок." }, -- Plans: Jade Serpentblade, @use Teaches you how to make a Jade Serpentblade.
[3867] = { "креслення: Позолочений залізний руйнівник", use="Навчає вас створювати позолочений залізний руйнівник." }, -- Plans: Golden Iron Destroyer, @use Teaches you how to make a Golden Iron Destroyer.
[3868] = { "креслення: Клинок крижаного тигра", use="Навчає вас створювати клинок крижаного тигра." }, -- Plans: Frost Tiger Blade, @use Teaches you how to make a Frost Tiger Blade.
[3869] = { "креслення: Темна півмісячна сокира", use="Навчає вас створювати темну півмісячну сокиру." }, -- Plans: Shadow Crescent Axe, @use Teaches you how to make a Shadow Crescent Axe.
[3870] = { "креслення: Зелені залізні наплечі", use="Навчає вас створювати зелені залізні наплечі." }, -- Plans: Green Iron Shoulders, @use Teaches you how to make Green Iron Shoulders.
[3871] = { "креслення: Золоті лускаті наплечі", use="Навчає вас створювати золоті лускаті наплечі." }, -- Plans: Golden Scale Shoulders, @use Teaches you how to make Golden Scale Shoulders.
[3872] = { "креслення: Золоті лускаті поножі", use="Навчає вас створювати золоті лускаті поножі." }, -- Plans: Golden Scale Leggings, @use Teaches you how to make Golden Scale Leggings.
[3873] = { "креслення: Золота луската кіраса", use="Навчає вас створювати золоту лускату кірасу." }, -- Plans: Golden Scale Cuirass, @use Teaches you how to make a Golden Scale Cuirass.
[3874] = { "креслення: Поліровані сталеві чоботи", use="Навчає вас створювати поліровані сталеві чоботи." }, -- Plans: Polished Steel Boots, @use Teaches you how to make Polished Steel Boots.
[3875] = { "креслення: Золоті лускаті чоботи", use="Навчає вас створювати золоті лускаті чоботи." }, -- Plans: Golden Scale Boots, @use Teaches you how to make Golden Scale Boots.
[3876] = { "ікло Баґ'тіри" }, -- Fang of Bhag'thera
[3877] = { "кіготь Тетіса" }, -- Talon of Tethis
[3879] = { "лапа Сін'Далла" }, -- Paw of Sin'Dall
[3880] = { "голова Банґалаша" }, -- Head of Bangalash
[3882] = { "перо канюка" }, -- Buzzard Feather
[3889] = { "бурий капелюх" }, -- Russet Hat
[3890] = { "прикрашений капелюх" }, -- Studded Hat
[3891] = { "підсилений кольчужний шолом" }, -- Augmented Chain Helm
[3892] = { "вишитий капелюх" }, -- Embroidered Hat
[3893] = { "укріплений шкіряний шолом" }, -- Reinforced Leather Cap
[3894] = { "панцирний шолом" }, -- Brigandine Helm
[3897] = { "око Запаморока" }, -- Dizzy's Eye
[3898] = { "бібліотечний сувій" }, -- Library Scrip
[3899] = { "\"Легенди Ґурубаші, том 3\"", flavor="Камінь Припливів" }, -- Legends of the Gurubashi, Volume 3, @flavor Stone of the Tides
[3900] = { "портвейн \"Пупеллівербос\"" }, -- Pupellyverbos Port
[3901] = { "ікло Кровоскальпого" }, -- Bloodscalp Tusk
[3902] = { "посох вельможі" }, -- Staff of Nobles
[3904] = { "голова Ґан'зули" }, -- Gan'zulah's Head
[3905] = { "голова Неззліока" }, -- Nezzliok's Head
[3906] = { "трофей з Баліа'ма" }, -- Balia'mah Trophy
[3907] = { "трофей з Зіата'джай" }, -- Ziata'jai Trophy
[3908] = { "трофей з Зул'Мамве" }, -- Zul'Mamwe Trophy
[3909] = { "розтрощені обладунки Ана'тека" }, -- Broken Armor of Ana'thek
[3910] = { "понюшка тютюну" }, -- Snuff
[3911] = { "пульсуючий блакитний осколок" }, -- Pulsing Blue Shard
[3912] = { "камінь душі", use="Звільнити душу Єнніку з ув'язнення. (Відновлення 2 хв)" }, -- Soul Gem, @use Will release Yenniku from his imprisonment (2 Min Cooldown)
[3913] = { "наповнений камінь душі", flavor="Сяючий камінь, наповнений душею Єнніку." }, -- Filled Soul Gem, @flavor A glowing gem filled with the soul of Yenniku.
[3914] = { "рюкзак підмайстра" }, -- Journeyman's Backpack
[3915] = { "намисто з кривавих кісток" }, -- Bloody Bone Necklace
[3916] = { "намисто з розщеплених кісток" }, -- Split Bone Necklace
[3917] = { "співочий блакитний кристал" }, -- Singing Blue Crystal
[3918] = { "осколок співочого кристала" }, -- Singing Crystal Shard
[3919] = { "потрухи туманодільної горили" }, -- Mistvale Giblets
[3920] = { "карти Кривавого Вітрила" }, -- Bloodsail Charts
[3921] = { "накази Кривавого Вітрила" }, -- Bloodsail Orders
[3922] = { "борг Полохуна" }, -- Shaky's Payment
[3923] = { "браслет водяного елементаля" }, -- Water Elemental Bracers
[3924] = { "дерев'яна нога Морі", flavor="Всередині щось дзвенить." }, -- Maury's Clubbed Foot, @flavor It jingles when shaken.
[3925] = { "золота підзорна труба Джон-Джона" }, -- Jon-Jon's Golden Spyglass
[3926] = { "величезний перстень Чакі" }, -- Chucky's Huge Ring
[3927] = { "витриманий чеддер", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Fine Aged Cheddar, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[3928] = { "відмінне зілля лікування" }, -- Superior Healing Potion, @use Restores 700 to 900 health. (2 Min Cooldown)
[3929] = { "здобич Морі" }, -- Maury's Loot
[3930] = { "ключ Морі" }, -- Maury's Key
[3931] = { "отруйне павуче ікло" }, -- Poisoned Spider Fang
[3932] = { "скриня Смоттса" }, -- Smotts' Chest
[3935] = { "шабля Смоттса" }, -- Smotts' Cutlass
[3936] = { "в'язаний пояс" }, -- Crochet Belt
[3937] = { "в'язані чоботи" }, -- Crochet Boots
[3938] = { "в'язані браслети" }, -- Crochet Bracers
[3939] = { "в'язаний плащ" }, -- Crochet Cloak
[3940] = { "в'язані рукавиці" }, -- Crochet Gloves
[3941] = { "в'язані брюки" }, -- Crochet Pants
[3942] = { "в'язані наплічники" }, -- Crochet Shoulderpads
[3943] = { "в'язаний жилет" }, -- Crochet Vest
[3944] = { "саржевий пояс" }, -- Twill Belt
[3945] = { "саржеві чоботи" }, -- Twill Boots
[3946] = { "саржеві браслети" }, -- Twill Bracers
[3947] = { "саржевий плащ" }, -- Twill Cloak
[3948] = { "саржеві рукавички" }, -- Twill Gloves
[3949] = { "саржеві штани" }, -- Twill Pants
[3950] = { "саржеві наплічники" }, -- Twill Shoulderpads
[3951] = { "саржевий жилет" }, -- Twill Vest
[3952] = { "сітчастий пояс" }, -- Mesh Belt
[3953] = { "сітчасті чоботи" }, -- Mesh Boots
[3954] = { "сітчасті браслети" }, -- Mesh Bracers
[3955] = { "сітчастий пояс" }, -- Mesh Cloak
[3956] = { "сітчасті рукавички" }, -- Mesh Gloves
[3957] = { "сітчасті штани" }, -- Mesh Pants
[3958] = { "сітчасте напліччя" }, -- Mesh Mantle
[3959] = { "сітчастий обладунок" }, -- Mesh Armor
[3960] = { "мішок з браслетами водяних елементалів" }, -- Bag of Water Elemental Bracers
[3961] = { "товстий шкіряний пояс" }, -- Thick Leather Belt
[3962] = { "товсті шкіряні чоботи" }, -- Thick Leather Boots
[3963] = { "товсті шкіряні браслети" }, -- Thick Leather Bracers
[3964] = { "товстий плащ" }, -- Thick Cloak
[3965] = { "товсті шкіряні рукавиці" }, -- Thick Leather Gloves
[3966] = { "товсті шкіряні штани" }, -- Thick Leather Pants
[3967] = { "товсті шкіряні наплічники" }, -- Thick Leather Shoulderpads
[3968] = { "товстий шкіряний мундир" }, -- Thick Leather Tunic
[3969] = { "гладкий шкіряний пояс" }, -- Smooth Leather Belt
[3970] = { "гладкі шкіряні чоботи" }, -- Smooth Leather Boots
[3971] = { "гладкі шкіряні браслети" }, -- Smooth Leather Bracers
[3972] = { "гладкий плащ" }, -- Smooth Cloak
[3973] = { "гладкі шкіряні рукавиці" }, -- Smooth Leather Gloves
[3974] = { "гладкі шкіряні штани" }, -- Smooth Leather Pants
[3975] = { "гладкі шкіряні наплічники" }, -- Smooth Leather Shoulderpads
[3976] = { "гладкий шкіряний обладунок" }, -- Smooth Leather Armor
[3977] = { "ремінчастий пояс" }, -- Strapped Belt
[3978] = { "ремінчасті чоботи" }, -- Strapped Boots
[3979] = { "ремінчасті браслети" }, -- Strapped Bracers
[3980] = { "ремінчастий плащ" }, -- Strapped Cloak
[3981] = { "ремінчасті рукавиці" }, -- Strapped Gloves
[3982] = { "ремінчасті штани" }, -- Strapped Pants
[3983] = { "ремінчасті наплічники" }, -- Strapped Shoulderpads
[3984] = { "ремінчастий обладунок" }, -- Strapped Armor
[3985] = { "пояс з монограмою" }, -- Monogrammed Sash
[3986] = { "павеза захисника" }, -- Protective Pavise
[3987] = { "відбиваючий вежовий щит" }, -- Deflecting Tower
[3988] = { "латний баштовий щит" }, -- Plate Wall Shield
[3989] = { "блокуючий тарг" }, -- Blocking Targe
[3990] = { "гребінчастий баклер" }, -- Crested Buckler
[3991] = { "латний баклер" }, -- Plated Buckler
[3992] = { "шаруватий лускатий пояс" }, -- Laminated Scale Belt
[3993] = { "шаруваті лускаті чоботи" }, -- Laminated Scale Boots
[3994] = { "шаруваті лускаті браслети" }, -- Laminated Scale Bracers
[3995] = { "шаруватий лускатий плащ" }, -- Laminated Scale Cloak
[3996] = { "шаруваті лускаті рукавиці" }, -- Laminated Scale Gloves
[3997] = { "шаруваті лускаті штани" }, -- Laminated Scale Pants
[3998] = { "шаруваті лускаті наплічники" }, -- Laminated Scale Shoulderpads
[3999] = { "шаруватий лускатий обладунок" }, -- Laminated Scale Armor
[4000] = { "переплетений кольчужний пояс" }, -- Overlinked Chain Belt
[4001] = { "переплетені кольчужні чоботи" }, -- Overlinked Chain Boots
[4002] = { "переплетені кольчужні браслети" }, -- Overlinked Chain Bracers
[4003] = { "переплетений кольчужний плащ" }, -- Overlinked Chain Cloak
[4004] = { "переплетені кольчужні рукавиці" }, -- Overlinked Chain Gloves
[4005] = { "переплетені кольчужні штани" }, -- Overlinked Chain Pants
[4006] = { "переплетені кольчужні наплічники" }, -- Overlinked Chain Shoulderpads
[4007] = { "переплетений кольчужний обладунок" }, -- Overlinked Chain Armor
[4008] = { "посріблений кольчужний пояс" }, -- Sterling Chain Belt
[4009] = { "посріблені кольчужні чоботи" }, -- Sterling Chain Boots
[4010] = { "посріблені кольчужні браслети" }, -- Sterling Chain Bracers
[4011] = { "посріблений кольчужний плащ" }, -- Sterling Chain Cloak
[4012] = { "посріблені кольчужні рукавиці" }, -- Sterling Chain Gloves
[4013] = { "посріблені кольчужні штани" }, -- Sterling Chain Pants
[4014] = { "посріблені кольчужні наплічники" }, -- Sterling Chain Shoulderpads
[4015] = { "посріблений кольчужний обладунок" }, -- Sterling Chain Armor
[4016] = { "суміш Занзіла" }, -- Zanzil's Mixture
[4017] = { "гострий короткий меч" }, -- Sharp Shortsword
[4018] = { "загострений клеймор" }, -- Whetted Claymore
[4019] = { "важка крем'яна сокира" }, -- Heavy Flint Axe
[4020] = { "бойовий колун" }, -- Splintering Battle Axe
[4021] = { "дробильна булава" }, -- Blunting Mace
[4022] = { "нищівна кувалда" }, -- Crushing Maul
[4023] = { "тонкий загострений кинджал" }, -- Fine Pointed Dagger
[4024] = { "важкий бойовий посох" }, -- Heavy War Staff
[4025] = { "збалансований довгий лук" }, -- Balanced Long Bow
[4026] = { "мушкет стражів" }, -- Sentinel Musket
[4027] = { "кинджал Кателіни", use="Використати кинджал на вівтарі припливів." }, -- Catelyn's Blade, @use Use the blade on the Altar of the Tides.
[4028] = { "в'язка стеблин акіріса", flavor="Для корсара Ґроя" }, -- Bundle of Akiris Reeds, @flavor To: Privateer Groy
[4029] = { "стебло акіріс" }, -- Akiris Reed
[4030] = { "священна реліктова вода" }, -- Holy Relic Water
[4031] = { "освячений реліктовий оберіг" }, -- Hallowed Relic Charm
[4032] = { "променистий реліктовий молот" }, -- Radiant Relic Hammer
[4033] = { "сяйво світанку" }, -- Dawn's Glow
[4034] = { "камінь припливів" }, -- Stone of the Tides
[4035] = { "срібляста мантія" }, -- Silver-thread Robe
[4036] = { "сріблясті манжети" }, -- Silver-thread Cuffs
[4037] = { "сріблясті штани" }, -- Silver-thread Pants
[4038] = { "мантія нічного неба" }, -- Nightsky Robe
[4039] = { "капюшон нічного неба" }, -- Nightsky Cowl
[4040] = { "рукавички нічного неба" }, -- Nightsky Gloves
[4041] = { "капюшон зорі" }, -- Aurora Cowl
[4042] = { "рукавички зорі" }, -- Aurora Gloves
[4043] = { "браслети зорі" }, -- Aurora Bracers
[4044] = { "штани зорі" }, -- Aurora Pants
[4045] = { "імлисті браслети" }, -- Mistscape Bracers
[4046] = { "імлисті штани" }, -- Mistscape Pants
[4047] = { "імлисті чоботи" }, -- Mistscape Boots
[4048] = { "гербовий капелюх" }, -- Emblazoned Hat
[4049] = { "гербові браслети" }, -- Emblazoned Bracers
[4050] = { "гербові поножі" }, -- Emblazoned Leggings
[4051] = { "гербові чоботи" }, -- Emblazoned Boots
[4052] = { "орденська шапка" }, -- Insignia Cap
[4053] = { "велика шкура річкового кроколіска" }, -- Large River Crocolisk Skin
[4054] = { "орденські поножі" }, -- Insignia Leggings
[4055] = { "орденські чоботи" }, -- Insignia Boots
[4056] = { "загадка Кортелло" }, -- Cortello's Riddle
[4057] = { "орденський мундир" }, -- Insignia Chestguard
[4058] = { "прикрашений гліфами мундир" }, -- Glyphed Breastplate
[4059] = { "прикрашені гліфами браслети" }, -- Glyphed Bracers
[4060] = { "прикрашені гліфами поножі" }, -- Glyphed Leggings
[4061] = { "імперські шкіряні браслети" }, -- Imperial Leather Bracers
[4062] = { "імперські шкіряні штани" }, -- Imperial Leather Pants
[4063] = { "імперські шкіряні рукавиці" }, -- Imperial Leather Gloves
[4064] = { "гербовий баклер" }, -- Emblazoned Buckler
[4065] = { "бійцівський щит" }, -- Combat Shield
[4066] = { "орденський баклер" }, -- Insignia Buckler
[4067] = { "прикрашений гліфами баклер" }, -- Glyphed Buckler
[4068] = { "щит старшого бригадира" }, -- Chief Brigadier Shield
[4069] = { "баклер Чорної кузні" }, -- Blackforge Buckler
[4070] = { "лицарський щит" }, -- Jouster's Crest
[4071] = { "блискуча кольчужна кіраса" }, -- Glimmering Mail Breastplate
[4072] = { "блискучі кольчужні рукавиці" }, -- Glimmering Mail Gauntlets
[4073] = { "блискучі кольчужні наголінники" }, -- Glimmering Mail Greaves
[4074] = { "кольчужний бойовий обладунок" }, -- Mail Combat Armor
[4075] = { "кольчужні бойові рукавиці" }, -- Mail Combat Gauntlets
[4076] = { "кольчужні бойові чоботи" }, -- Mail Combat Boots
[4077] = { "кольчужний бойовий обруч" }, -- Mail Combat Headguard
[4078] = { "койф старшого бригадира" }, -- Chief Brigadier Coif
[4079] = { "поножі старшого бригадира" }, -- Chief Brigadier Leggings
[4080] = { "капюшон Чорної кузні" }, -- Blackforge Cowl
[4082] = { "кіраса Чорної кузні" }, -- Blackforge Breastplate
[4083] = { "рукавиці Чорної кузні" }, -- Blackforge Gauntlets
[4084] = { "поножі Чорної кузні" }, -- Blackforge Leggings
[4085] = { "зламаний горщик Кронжека", flavor="Горщик вкритий манометрами та циферблатами." }, -- Krazek's Crock Pot, @flavor A cooking pot covered with gauges and dials.
[4086] = { "світлова гвинтівка" }, -- Flash Rifle
[4087] = { "міткострільний лук" }, -- Trueshot Bow
[4088] = { "жахливий клинок" }, -- Dreadblade
[4089] = { "рикошетний мушкетон" }, -- Ricochet Blunderbuss
[4090] = { "кружка болю", hit="Сповільнює рух цілі на 50% протягом 10 с." }, -- Mug O' Hurt, @hit Slows the target's movement by 50% for 10 sec.
[4091] = { "Вдовороб" }, -- Widowmaker
[4092] = { "призматична луска василіска" }, -- Prismatic Basilisk Scale
[4093] = { "великий хвіст василіска" }, -- Large Basilisk Tail
[4094] = { "уламок скрижалі" }, -- Tablet Shard
[4096] = { "груба шерсть горили" }, -- Coarse Gorilla Hair
[4097] = { "надколений зуб горили" }, -- Chipped Gorilla Tooth
[4098] = { "акуратно складена записка" }, -- Carefully Folded Note
[4099] = { "пучок шерсті горили" }, -- Tuft of Gorilla Hair
[4100] = { "зім'ята записка" }, -- Crumpled Note
[4101] = { "подрана записка" }, -- Ripped Note
[4102] = { "порвана записка" }, -- Torn Note
[4103] = { "ключ від кайданів" }, -- Shackle Key
[4104] = { "шкура кроколіска-тріскощелепа" }, -- Snapjaw Crocolisk Skin
[4105] = { "шкура старого кроколіска" }, -- Elder Crocolisk Skin
[4106] = { "галтований кристал" }, -- Tumbled Crystal
[4107] = { "рукавиці тигролова" }, -- Tiger Hunter Gloves
[4108] = { "поножі мисливця на пантер" }, -- Panther Hunter Leggings
[4109] = { "черевики \"Переможець\"" }, -- Excelsior Boots
[4110] = { "лук мисливця-майстра" }, -- Master Hunter's Bow
[4111] = { "рушниця мисливця-майстра" }, -- Master Hunter's Rifle
[4112] = { "намисто верховного шамана" }, -- Choker of the High Shaman
[4113] = { "зігрівальна ковдра" }, -- Medicine Blanket
[4114] = { "плащ темного припливу" }, -- Darktide Cape
[4115] = { "Ґром'ґолський баклер" }, -- Grom'gol Buckler
[4116] = { "севар Олмана" }, -- Olmann Sewar
[4117] = { "опікаючий пояс", equip="Збільшує шкоду від заклинань і ефектів вогню на 13." }, -- Scorching Sash, @equip Increases damage done by Fire spells and effects by up to 13.
[4118] = { "носова сережка Пуби" }, -- Poobah's Nose Ring
[4119] = { "мундир мисливця на рапторів" }, -- Raptor Hunter Tunic
[4120] = { "мантія кришталевих вод" }, -- Robe of Crystal Waters
[4121] = { "рукавички з самоцвітами" }, -- Gemmed Gloves
[4122] = { "букмекерський скіпетр" }, -- Bookmaker's Scepter
[4123] = { "наплечі крижаного металу" }, -- Frost Metal Pauldrons
[4124] = { "шапка гармонії" }, -- Cap of Harmony
[4125] = { "сфера спокою" }, -- Tranquil Orb
[4126] = { "партизанський сікач" }, -- Guerrilla Cleaver
[4127] = { "шрапнельна рушниця" }, -- Shrapnel Blaster
[4128] = { "срібна копалка" }, -- Silver Spade
[4129] = { "щит колектора" }, -- Collection Plate
[4130] = { "компас Смоттса", equip="Збільшує ваш шанс ухилитися від атаки на 1%." }, -- Smotts' Compass, @equip Increases your chance to dodge an attack by 1%.
[4131] = { "пояс псування" }, -- Belt of Corruption
[4132] = { "наручі Темного Списа" }, -- Darkspear Armsplints
[4133] = { "браслети Темного Списа" }, -- Darkspear Cuffs
[4134] = { "містичний посох Німбої" }, -- Nimboya's Mystical Staff
[4135] = { "кільце з кривавої кістки" }, -- Bloodbone Band
[4136] = { "чоботи Темного Списа" }, -- Darkspear Boots
[4137] = { "черевики Темного Списа" }, -- Darkspear Shoes
[4138] = { "мундир Чорноводдя" }, -- Blackwater Tunic
[4139] = { "сандалі джунглів" }, -- Junglewalker Sandals
[4140] = { "пальмові наплечі" }, -- Palm Frond Mantle
[4190] = { "пір'яний обладунок" }, -- Feathered Armor
[4194] = { "пір'яні браслети" }, -- Feathered Bracers
[4195] = { "пір'яні чоботи" }, -- Feathered Boots
[4196] = { "пір'яне напліччя" }, -- Feathered Mantle
[4197] = { "берилові наплічники" }, -- Berylline Pads
[4213] = { "гримуар приречення", use="Навчає закляттю \"Ритуал приречення\"." }, -- Grimoire of Doom, @use Teaches Ritual of Doom.
[4231] = { "оброблена легка шкура" }, -- Cured Light Hide
[4232] = { "середня шкура" }, -- Medium Hide
[4233] = { "оброблена середня шкура" }, -- Cured Medium Hide
[4234] = { "важка шкіра" }, -- Heavy Leather
[4235] = { "важка шкура" }, -- Heavy Hide
[4236] = { "оброблена важка шкура" }, -- Cured Heavy Hide
[4237] = { "шкіряний ремінь ручної роботи" }, -- Handstitched Leather Belt
[4238] = { "лляна сумка" }, -- Linen Bag
[4239] = { "тиснені шкіряні рукавички" }, -- Embossed Leather Gloves
[4240] = { "вовняна сумка" }, -- Woolen Bag
[4241] = { "зелена вовняна сумка" }, -- Green Woolen Bag
[4242] = { "тиснені шкіряні штани" }, -- Embossed Leather Pants
[4243] = { "тонкий шкіряний мундир" }, -- Fine Leather Tunic
[4244] = { "жилет жителя пагорбів" }, -- Hillman's Leather Vest
[4245] = { "маленька шовкова сумка" }, -- Small Silk Pack
[4246] = { "тонкий шкіряний пояс" }, -- Fine Leather Belt
[4247] = { "рукавиці жителя пагорбів" }, -- Hillman's Leather Gloves
[4248] = { "темні шкіряні рукавиці", equip="Трохи збільшує вашу здібність зламу замків." }, -- Dark Leather Gloves, @equip Increases your lockpicking skill slightly.
[4249] = { "темний шкіряний пояс" }, -- Dark Leather Belt
[4250] = { "пояс жителя пагорбів" }, -- Hillman's Belt
[4251] = { "наплечі жителя пагорбів" }, -- Hillman's Shoulders
[4252] = { "темні шкіряні наплечі" }, -- Dark Leather Shoulders
[4253] = { "укріплені шкіряні рукавиці" }, -- Toughened Leather Gloves
[4254] = { "варварські рукавиці" }, -- Barbaric Gloves
[4255] = { "зелений шкіряний обладунок" }, -- Green Leather Armor
[4256] = { "обладунок вартового" }, -- Guardian Armor
[4257] = { "зелений шкіряний пояс" }, -- Green Leather Belt
[4258] = { "пояс вартового" }, -- Guardian Belt
[4259] = { "зелені шкіряні браслети" }, -- Green Leather Bracers
[4260] = { "шкіряні браслети вартового" }, -- Guardian Leather Bracers
[4261] = { "брюки Соллідена" }, -- Solliden's Trousers
[4262] = { "прикрашений самоцвітами шкіряний пояс", use="Зцілює вам від 225 до 375 здоров'я." }, -- Gem-studded Leather Belt, @use Heal yourself for 225 to 375. (1 Hour Cooldown)
[4263] = { "стандартний щит" }, -- Standard Issue Shield
[4264] = { "варварський пояс", use="Збільшити лють на 30." }, -- Barbaric Belt, @use Increase Rage by 30. (1 Hour Cooldown)
[4265] = { "накладки з важкої шкіри", use="Укріплення предмета, який носять на тілі, ногах, руках чи ступнях, що назавжди збільшить показник його броні на 24. Можна використовувати лише на предметах 15-го рівня і вище." }, -- Heavy Armor Kit, @use Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 24.  Only usable on items level 15 and above.
[4278] = { "мала руда кривавого каменю" }, -- Lesser Bloodstone Ore
[4289] = { "сіль" }, -- Salt
[4290] = { "пиловий щит" }, -- Dust Bowl
[4291] = { "шовкова нитка" }, -- Silken Thread
[4292] = { "викрійка: Зелена вовняна сумка", use="Навчає вас створювати зелену вовняну сумку." }, -- Pattern: Green Woolen Bag, @use Teaches you how to sew a Green Woolen Bag.
[4293] = { "викрійка: Жилет жителя пагорбів", use="Навчає вас створювати жилет жителя пагорбів." }, -- Pattern: Hillman's Leather Vest, @use Teaches you how to craft a Hillman's Leather Vest.
[4294] = { "викрійка: Пояс жителя пагорбів", use="Навчає вас створювати пояс жителя пагорбів." }, -- Pattern: Hillman's Belt, @use Teaches you how to craft a Hillman's Belt.
[4296] = { "викрійка: Темні шкіряні наплечі", use="Навчає вас створювати темні шкіряні наплечі." }, -- Pattern: Dark Leather Shoulders, @use Teaches you how to craft Dark Leather Shoulders.
[4297] = { "викрійка: Варварські рукавиці", use="Навчає вас створювати варварські рукавиці." }, -- Pattern: Barbaric Gloves, @use Teaches you how to craft Barbaric Gloves.
[4298] = { "викрійка: Пояс вартового", use="Навчає вас створювати пояс вартового." }, -- Pattern: Guardian Belt, @use Teaches you how to craft a Guardian Belt.
[4299] = { "викрійка: Обладунок вартового", use="Навчає вас створювати обладунок вартового." }, -- Pattern: Guardian Armor, @use Teaches you how to craft Guardian Armor.
[4300] = { "викрійка: Шкіряні браслети вартового", use="Навчає вас створювати шкіряні браслети вартового." }, -- Pattern: Guardian Leather Bracers, @use Teaches you how to craft Guardian Leather Bracers.
[4301] = { "викрійка: Варварський пояс", use="Навчає вас створювати варварський пояс." }, -- Pattern: Barbaric Belt, @use Teaches you how to craft a Barbaric Belt.
[4302] = { "маленький зелений кинджал" }, -- Small Green Dagger
[4303] = { "череподробитель" }, -- Cranial Thumper
[4304] = { "товста шкіра" }, -- Thick Leather
[4305] = { "рулон шовкової тканини" }, -- Bolt of Silk Cloth
[4306] = { "шовкове полотно" }, -- Silk Cloth
[4307] = { "щільні лляні рукавички" }, -- Heavy Linen Gloves
[4308] = { "зелені лляні браслети" }, -- Green Linen Bracers
[4309] = { "лляні брюки ручної роботи" }, -- Handstitched Linen Britches
[4310] = { "щільні вовняні рукавички" }, -- Heavy Woolen Gloves
[4311] = { "щільний вовняний плащ" }, -- Heavy Woolen Cloak
[4312] = { "лляні черевики на м'якій підошві" }, -- Soft-soled Linen Boots
[4313] = { "червоні вовняні черевики" }, -- Red Woolen Boots
[4314] = { "двічі прошиті вовняні наплечі" }, -- Double-stitched Woolen Shoulders
[4315] = { "укріплені вовняні наплечі" }, -- Reinforced Woolen Shoulders
[4316] = { "щільні вовняні штани" }, -- Heavy Woolen Pants
[4317] = { "штани фенікса", equip="Збільшує шкоду від заклинань і ефектів вогню на 10." }, -- Phoenix Pants, @equip Increases damage done by Fire spells and effects by up to 10.
[4318] = { "рукавички медитації" }, -- Gloves of Meditation
[4319] = { "лазурові шовкові рукавички", equip="Збільшує шкоду від заклинань і ефектів криги на 10." }, -- Azure Silk Gloves, @equip Increases damage done by Frost spells and effects by up to 10.
[4320] = { "чоботи з павутинного шовку" }, -- Spidersilk Boots
[4321] = { "павутинні черевики" }, -- Spider Silk Slippers
[4322] = { "капюшон чародія" }, -- Enchanter's Cowl
[4323] = { "тіньовий капюшон", equip="Збільшує шкоду від заклинань і ефектів тіні на 7." }, -- Shadow Hood, @equip Increases damage done by Shadow spells and effects by up to 7.
[4324] = { "лазуровий шовковий жилет", equip="Збільшує шкоду від заклинань і ефектів криги на 7." }, -- Azure Silk Vest, @equip Increases damage done by Frost spells and effects by up to 7.
[4325] = { "черевики чародія" }, -- Boots of the Enchanter
[4326] = { "довгий шовковий плащ" }, -- Long Silken Cloak
[4327] = { "льодяний плащ" }, -- Icy Cloak
[4328] = { "павучий пояс", use="Знімає наявні ефекти знерухомлення і дає невразливість до ефектів знерухомлення на 5 секунд." }, -- Spider Belt, @use Removes existing Immobilizing effects and makes you immune to Immobilizing effects for 5 sec. (30 Min Cooldown)
[4329] = { "зоряний пояс", use="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 13." }, -- Star Belt, @equip Increases damage and healing done by magical spells and effects by up to 13.
[4330] = { "стильна червона сорочка" }, -- Stylish Red Shirt
[4331] = { "рукавички фенікса", equip="Збільшує шкоду від заклинань і ефектів вогню на 9." }, -- Phoenix Gloves, @equip Increases damage done by Fire spells and effects by up to 9.
[4332] = { "яскрава жовта сорочка" }, -- Bright Yellow Shirt
[4333] = { "темна шовкова сорочка" }, -- Dark Silk Shirt
[4334] = { "офіційна біла сорочка" }, -- Formal White Shirt
[4335] = { "розкішна фіолетова шовкова сорочка" }, -- Rich Purple Silk Shirt
[4336] = { "чорна сорочка шибайголови" }, -- Black Swashbuckler's Shirt
[4337] = { "товстий павутинний шовк" }, -- Thick Spider's Silk
[4338] = { "маготкане полотно" }, -- Mageweave Cloth
[4339] = { "рулон маготканої тканини" }, -- Bolt of Mageweave
[4340] = { "сірий барвник" }, -- Gray Dye
[4341] = { "жовтий барвник" }, -- Yellow Dye
[4342] = { "пурпуровий барвник" }, -- Purple Dye
[4343] = { "коричневі лляні штани" }, -- Brown Linen Pants
[4344] = { "коричнева лляна сорочка" }, -- Brown Linen Shirt
[4345] = { "викрійка: Червоні вовняні черевики", use="Навчає вас створювати червоні вовняні черевики." }, -- Pattern: Red Woolen Boots, @use Teaches you how to sew Red Woolen Boots.
[4346] = { "викрійка: Щільний вовняний плащ", use="Навчає вас створювати щільний вовняний плащ." }, -- Pattern: Heavy Woolen Cloak, @use Teaches you how to sew a Heavy Woolen Cloak.
[4347] = { "викрійка: Укріплені вовняні наплечі", use="Навчає вас створювати укріплені вовняні наплечі." }, -- Pattern: Reinforced Woolen Shoulders, @use Teaches you how to sew Reinforced Woolen Shoulders.
[4348] = { "викрійка: Рукавички фенікса", use="Навчає вас створювати рукавички фенікса." }, -- Pattern: Phoenix Gloves, @use Teaches you how to sew Phoenix Gloves.
[4349] = { "викрійка: Штани фенікса", use="Навчає вас створювати штани фенікса." }, -- Pattern: Phoenix Pants, @use Teaches you how to sew Phoenix Pants.
[4350] = { "викрійка: Павутинні черевики", use="Навчає вас створювати павутинні черевики." }, -- Pattern: Spider Silk Slippers, @use Teaches you how to sew Spider Silk Slippers.
[4351] = { "викрійка: Тіньовий капюшон", use="Навчає вас створювати тіньовий капюшон." }, -- Pattern: Shadow Hood, @use Teaches you how to sew a Shadow Hood.
[4352] = { "викрійка: Черевики чародія", use="Навчає вас створювати черевики чародія." }, -- Pattern: Boots of the Enchanter, @use Teaches you how to sew Boots of the Enchanter.
[4353] = { "викрійка: Павучий пояс", use="Навчає вас створювати павучий пояс." }, -- Pattern: Spider Belt, @use Teaches you how to sew a Spider Belt.
[4354] = { "викрійка: Розкішна фіолетова шовкова сорочка", use="Навчає вас створювати розкішну фіолетову шовкову сорочку." }, -- Pattern: Rich Purple Silk Shirt, @use Teaches you how to sew a Rich Purple Silk Shirt.
[4355] = { "викрійка: Льодяний плащ", use="Навчає вас створювати льодяний плащ." }, -- Pattern: Icy Cloak, @use Teaches you how to sew an Icy Cloak.
[4356] = { "викрійка: Зоряний пояс", use="Навчає вас створювати зоряний пояс." }, -- Pattern: Star Belt, @use Teaches you how to sew a Star Belt.
[4357] = { "грубий вибуховий порошок" }, -- Rough Blasting Powder
[4358] = { "грубий динаміт", use="Завдає від 26 до 34 шкоди вогнем в радіусі 5 м. (Відновлення 1 хв)" }, -- Rough Dynamite, @use Inflicts 26 to 34 Fire damage in a 5 yard radius. (1 Min Cooldown)
[4359] = { "жменя мідних болтів" }, -- Handful of Copper Bolts
[4360] = { "груба мідна бомба", use="Завдає від 22 до 28 шкоди вогнем та оглушує цілі в радіусі 3 м на 1 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- Rough Copper Bomb, @use Inflicts 22 to 28 Fire damage and stuns targets in a 3 yard radius for 1 sec.  Any damage will break the effect. (1 Min Cooldown)
[4361] = { "мідна трубка" }, -- Copper Tube
[4362] = { "грубий громостріл" }, -- Rough Boomstick
[4363] = { "мідний модулятор" }, -- Copper Modulator
[4364] = { "шорсткий вибуховий порошок" }, -- Coarse Blasting Powder
[4365] = { "шорсткий динаміт", use="Завдає від 51 до 69 шкоди вогнем в радіусі 5 м. (Відновлення 1 хв)" }, -- Coarse Dynamite, @use Inflicts 51 to 69 Fire damage in a 5 yard radius. (1 Min Cooldown)
[4366] = { "манекен-мішень", use="Встановлення на землі манекена, який притягуватиме до себе найближчих ворогів.  Існує 15 сек або до знищення. (Відновлення 2 хв)" }, -- Target Dummy, @use Drops a target dummy on the ground that attracts nearby monsters to attack it.  Lasts for 15 seconds or until killed. (2 Min Cooldown)
[4367] = { "малий сифорієвий заряд", use="Підриває прості замки." }, -- Small Seaforium Charge, @use Blasts open simple locked doors.
[4368] = { "окуляри літаючого тигра" }, -- Flying Tiger Goggles
[4369] = { "смертоносний мушкетон" }, -- Deadly Blunderbuss
[4370] = { "велика мідна бомба", use="Завдає від 43 до 57 шкоди вогнем та оглушує цілі в радіусі 5 м на 1 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- Large Copper Bomb, @use Inflicts 43 to 57 Fire damage and stuns targets in a 5 yard radius for 1 sec.  Any damage will break the effect. (1 Min Cooldown)
[4371] = { "бронзова трубка" }, -- Bronze Tube
[4372] = { "створений з любов'ю громостріл" }, -- Lovingly Crafted Boomstick
[4373] = { "тіньові окуляри" }, -- Shadow Goggles
[4374] = { "мала бронзова бомба", use="Завдає від 73 до 97 шкоди вогнем та оглушує цілі в радіусі 3 м на 2 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- Small Bronze Bomb, @use Inflicts 73 to 97 Fire damage and stuns targets in a 3 yard radius for 2 sec.  Any damage will break the effect. (1 Min Cooldown)
[4375] = { "бронзова тріщалка" }, -- Whirring Bronze Gizmo
[4376] = { "відбивач полум'я", use="Поглинає 500 шкоди від вогню. Триває 1 хвилину." }, -- Flame Deflector, @use Absorbs 500 fire damage.  Lasts 1 min. (15 Min Cooldown)
[4377] = { "важкий вибуховий порошок" }, -- Heavy Blasting Powder
[4378] = { "важкий динаміт", use="Завдає від 128 до 172 шкоди вогнем в радіусі 5 м. (Відновлення 1 хв)" }, -- Heavy Dynamite, @use Inflicts 128 to 172 Fire damage in a 5 yard radius. (1 Min Cooldown)
[4379] = { "посріблений дробовик" }, -- Silver-plated Shotgun
[4380] = { "велика бронзова бомба", use="Завдає від 85 до 115 шкоди вогнем та оглушує цілі в радіусі 5 м на 2 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- Big Bronze Bomb, @use Inflicts 85 to 115 Fire damage and stuns targets in a 5 yard radius for 2 sec.  Any damage will break the effect. (1 Min Cooldown)
[4381] = { "малий рекомбобулятор", use="Розсіює ефекти поліморфії з дружньої цілі. Також відновлює від 150 до 250 здоров'я та мани." }, -- Minor Recombobulator, @use Dispels Polymorph effects on a friendly target.  Also restores 150 to 250 health and mana. (5 Min Cooldown)
[4382] = { "бронзовий каркас" }, -- Bronze Framework
[4383] = { "місячна гвинтівка" }, -- Moonsight Rifle
[4384] = { "вибухова вівця", use="Викликати вибухову вівцю, яка кидається на найближчого ворога та вибухає, завдаючи від 135 до 165 шкоди.  Існує 3 хвилини або поки не вибухне. (Відновлення 1 хв)" }, -- Explosive Sheep, @use Summons an Explosive Sheep which will charge at a nearby enemy and explode for 135 to 165 damage.  Lasts for 3 min or until it explodes. (1 Min Cooldown)
[4385] = { "зелені тоновані окуляри" }, -- Green Tinted Goggles
[4386] = { "відбивач криги", use="Поглинає 600 шкоди від криги. Триває 1 хвилину." }, -- Ice Deflector, @use Absorbs 600 frost damage.  Lasts 1 min. (15 Min Cooldown)
[4387] = { "залізна стійка" }, -- Iron Strut
[4388] = { "промінь заплутаності", use="Перетворює ціль в лепрогнома, зменшуючи її шкоду від атак в ближньому бою та заклинань на 40, а швидкість пересування на 20% на 12 секунд. (Відновлення 1 хв)" }, -- Discombobulator Ray, @use Transforms the target into a Leper Gnome, reducing its melee and spell damage by 40 and its movement rate by 20% for 12 sec. (1 Min Cooldown)
[4389] = { "гірохронатом" }, -- Gyrochronatom
[4390] = { "залізна граната", use="Завдає від 132 до 218 шкоди вогнем та оглушує цілі в радіусі 3 м на 3 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- Iron Grenade, @use Inflicts 132 to 218 Fire damage and stuns targets for 3 sec in a 3 yard radius.  Any damage will break the effect. (1 Min Cooldown)
[4391] = { "портативний жнивальний збирач", use="Створити портативний жнивальний збирач, що битиметься за вас протягом 10 хв або доки його не буде знищено. (Відновлення 10 хв)" }, -- Compact Harvest Reaper Kit, @use Creates a Compact Harvest Reaper that will fight for you for 10 min or until it is destroyed. (10 Min Cooldown)
[4392] = { "вдосконалений манекен-мішень", use="Встановлення на землі манекена, який притягуватиме до себе найближчих ворогів.  Існує 15 сек або до знищення. (Відновлення 2 хв)" }, -- Advanced Target Dummy, @use Drops a target dummy on the ground that attracts nearby monsters to attack it. Lasts for 15 seconds or until killed. (2 Min Cooldown)
[4393] = { "монокль ремісника" }, -- Craftsman's Monocle
[4394] = { "велика залізна бомба", use="Завдає від 149 до 201 шкоди вогнем та оглушує цілі в радіусі 5 м на 3 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- Big Iron Bomb, @use Inflicts 149 to 201 Fire damage and stuns targets in a 5 yard radius for 3 sec.  Any damage will break the effect. (1 Min Cooldown)
[4395] = { "гоблінська міна", use="Розмістити на землі гоблінську міну, яка вибухне, завдавши від 394 до 506 вогняної шкоди коли поруч пройде ворог.  Міна існує 1 хв. (Відновлення 1 хв)" }, -- Goblin Land Mine, @use Places the Goblin Land Mine on the ground.  It will explode for 394 to 506 fire damage the next time a hostile creature passes near it.  The mine has a duration of 1 min. (1 Min Cooldown)
[4396] = { "механічне драконеня", use="Активувати ваше механічне драконеня, що битиметься за вас протягом 1 хвилини. Перш ніж його можна буде використати знову, йому потрібно відновитись протягом години." }, -- Mechanical Dragonling, @use Activates your Mechanical Dragonling to fight for you for 1 min.  It requires an hour to cool down before it can be used again. (1 Hour Cooldown)
[4397] = { "гномський маскувальний пристрій", use="Дає невидимість на 10 секунд. Можна використовувати лише раз в 60 хвилин." }, -- Gnomish Cloaking Device, @use Gives invisibility for 10 sec.  It can only be used every 60 minutes. (1 Hour Cooldown)
[4398] = { "великий сифорієвий заряд", use="Підриває складні замки." }, -- Large Seaforium Charge, @use Blasts open difficult locked doors.
[4399] = { "дерев'яний приклад" }, -- Wooden Stock
[4400] = { "важкий приклад" }, -- Heavy Stock
[4401] = { "коробка з механічною білкою", use="Створює механічну білку, яка слідує за вами. Клацніть правою кнопкою миші, щоб викликати і відпустити білку." }, -- Mechanical Squirrel Box, @use Creates a Mechanical Squirrel that follows you around.  Right Click to summon and dismiss your Squirrel.
[4402] = { "мала полум'яна залоза" }, -- Small Flame Sac
[4403] = { "портативна бронзова мортира", use="Завдає від 85 до 115 шкоди вогнем та оглушує цілі в радіусі 5 м на 2 сек.  Будь-яка шкода припиняє дію." }, -- Portable Bronze Mortar, @use Inflicts 85 to 115 Fire damage and stuns targets in a 5 yard radius for 2 sec.  Any damage will break the effect. (1 Min Cooldown)
[4404] = { "срібний контакт" }, -- Silver Contact
[4405] = { "кустарний приціл", use="Оснащення лука або вогнепальної зброї прицілом, що збільшує шкоду на 1." }, -- Crude Scope, @use Attaches a permanent scope to a bow or gun that increases its damage by 1.
[4406] = { "звичайний приціл", use="Оснащення лука або вогнепальної зброї прицілом, що збільшує шкоду на 2." }, -- Standard Scope, @use Attaches a permanent scope to a bow or gun that increases its damage by 2.
[4407] = { "точний приціл", use="Оснащення лука або вогнепальної зброї прицілом, що збільшує шкоду на 3." }, -- Accurate Scope, @use Attaches a permanent scope to a bow or gun that increases its damage by 3.
[4408] = { "креслення: Коробка з механічною білкою", use="Навчає вас створювати коробку з механічною білкою." }, -- Schematic: Mechanical Squirrel, @use Teaches you how to make a Mechanical Squirrel.
[4409] = { "креслення: Малий сифорієвий заряд", use="Навчає вас створювати малий сифорієвий заряд." }, -- Schematic: Small Seaforium Charge, @use Teaches you how to make a Small Seaforium Charge.
[4410] = { "креслення: Тіньові окуляри", use="Навчає вас створювати тіньові окуляри." }, -- Schematic: Shadow Goggles, @use Teaches you how to make Shadow Goggles.
[4411] = { "креслення: Відбивач полум'я", use="Навчає вас створювати відбивач полум'я." }, -- Schematic: Flame Deflector, @use Teaches you how to make a Flame Deflector.
[4412] = { "креслення: Місячна гвинтівка", use="Навчає вас створювати місячну гвинтівку." }, -- Schematic: Moonsight Rifle, @use Teaches you how to make a Moonsight Rifle.
[4413] = { "креслення: Промінь заплутаності", use="Навчає вас створювати промінь заплутаності." }, -- Schematic: Discombobulator Ray, @use Teaches you how to make a Discombobulator Ray.
[4414] = { "креслення: Портативна бронзова мортира", use="Навчає вас створювати портативну бронзову мортиру." }, -- Schematic: Portable Bronze Mortar, @use Teaches you how to make a Portable Bronze Mortar.
[4415] = { "креслення: Монокль ремісника", use="Навчає вас створювати монокль ремісника." }, -- Schematic: Craftsman's Monocle, @use Teaches you how to make a Craftman's Monocle.
[4416] = { "креслення: Гоблінська міна", use="Навчає вас створювати гоблінську міну." }, -- Schematic: Goblin Land Mine, @use Teaches you how to make a Goblin Land Mine.
[4417] = { "креслення: Великий сифорієвий заряд", use="Навчає вас створювати гоблінську міну." }, -- Schematic: Large Seaforium Charge, @use Teaches you how to make a Large Seaforium Charge.
[4419] = { "сувій інтелекту III", ref=955 }, -- Scroll of Intellect III
[4421] = { "сувій захисту III", ref=3013 }, -- Scroll of Protection III
[4422] = { "сувій витривалості III", ref=1180 }, -- Scroll of Stamina III
[4424] = { "сувій духу III", ref=1181 }, -- Scroll of Spirit III
[4425] = { "сувій спритності III", ref=3012 }, -- Scroll of Agility III
[4426] = { "сувій сили III", ref=954 }, -- Scroll of Strength III
[4428] = { "павуча лапка" }, -- Spider Palp
[4429] = { "накази Темнолюта" }, -- Deepfury's Orders
[4430] = { "примарний талісман" }, -- Ethereal Talisman
[4432] = { "лист Саллі Баллу", flavor="Моя люба Саро..." }, -- Sully Balloo's Letter, @flavor My dear Sara...
[4433] = { "промоклий конверт" }, -- Waterlogged Envelope
[4434] = { "штани опудала" }, -- Scarecrow Trousers
[4435] = { "порошинка Мізраель" }, -- Mote of Myzrael
[4436] = { "інкрустований самоцвітами пояс" }, -- Jewel-encrusted Sash
[4437] = { "посох чаклуна" }, -- Channeler's Staff
[4438] = { "браслети борця" }, -- Pugilist Bracers
[4439] = { "дубина забіяки" }, -- Bruiser Club
[4440] = { "сигіла Строма" }, -- Sigil of Strom
[4441] = { "самогон Мак-Кріла" }, -- MacKreel's Moonshine
[4443] = { "зловісні наплічники" }, -- Grim Pauldrons
[4444] = { "щит чорного панцира", use="Намагається зняти один ефект отрути з цілі, та ще один ефект отрути кожні 2 с протягом 8 с." }, -- Black Husk Shield, @use Attempts to cure 1 poison effect on the target, and 1 more poison effect every 2 seconds for 8 sec. (5 Min Cooldown)
[4445] = { "різьбяр плоті" }, -- Flesh Carver
[4446] = { "клинок чорної отрути", hit="Отруює ціль, завдаючи 5 шкоди від природи кожні 3 с протягом 15 с." }, -- Blackvenom Blade, @hit Poisons target for 5 Nature damage every 3 sec for 15 sec.
[4447] = { "покров ночі" }, -- Cloak of Night
[4448] = { "панцир Нараксіса" }, -- Husk of Naraxis
[4449] = { "ікло Нараксіса", hit="Отруює ціль, завдаючи 6 шкоди від природи кожні 3 с протягом 15 с." }, -- Naraxis' Fang, @hit Poisons target for 6 Nature damage every 3 sec for 15 sec.
[4450] = { "фрагмент сигіли" }, -- Sigil Fragment
[4453] = { "сигіла Торадіна" }, -- Sigil of Thoradin
[4454] = { "кіготь Коструба" }, -- Talon of Vultros
[4455] = { "портупея зі шкури раптора" }, -- Raptor Hide Harness
[4456] = { "ремінь зі шкури раптора" }, -- Raptor Hide Belt
[4457] = { "смажене крильце канюка", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 8 на 15 хв." }, -- Barbecued Buzzard Wing, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 8 Stamina and Spirit for 15 min.
[4458] = { "сигіла Аратора" }, -- Sigil of Arathor
[4459] = { "крихка кістка дракона" }, -- Brittle Dragon Bone
[4460] = { "рвана перетинка крила" }, -- Ripped Wing Webbing
[4461] = { "шкура раптора" }, -- Raptor Hide
[4462] = { "плащ гнилі" }, -- Cloak of Rot
[4463] = { "бісерний нашийник раптора" }, -- Beaded Raptor Collar
[4464] = { "чоботи для побиття" }, -- Trouncing Boots
[4465] = { "рукавиці кістяного кулака" }, -- Bonefist Gauntlets
[4466] = { "сигіла Тролебоя" }, -- Sigil of Trollbane
[4467] = { "сигіла Іґная" }, -- Sigil of Ignaeus
[4468] = { "Трол'Калар в піхвах", flavor="Легендарний меч Іґная Тролебоя." }, -- Sheathed Trol'kalar, @flavor The legendary blade of Ignaeus Trollbane.
[4469] = { "скіпетр порядку" }, -- Rod of Order
[4470] = { "проста деревина" }, -- Simple Wood
[4471] = { "кремінь і трут" }, -- Flint and Tinder
[4472] = { "сувій Мізраель", use="Викликає Мізраель з осколків Мізраель." }, -- Scroll of Myzrael, @use Summon Myzrael from the Shards of Myzrael.
[4473] = { "таємничі кайдани" }, -- Eldritch Shackles
[4474] = { "лук воронячого лісу" }, -- Ravenwood Bow
[4476] = { "мантія звіровода" }, -- Beastwalker Robe
[4477] = { "мерзенний баклер" }, -- Nefarious Buckler
[4478] = { "райдужні лускаті поножі" }, -- Iridescent Scale Leggings
[4479] = { "палаючий оберіг", use="Позбувається буревійного вигнанця (Відновлення 10 сек)" }, -- Burning Charm, @use Banishes a Thundering Exile (10 Sec Cooldown)
[4480] = { "буревійний оберіг", use="Позбувається бурунистого вигнанця (Відновлення 10 сек)" }, -- Thundering Charm, @use Banishes a Cresting Exile (10 Sec Cooldown)
[4481] = { "бурунистий оберіг", use="Позбувається палаючого вигнанця (Відновлення 10 сек)" }, -- Cresting Charm, @use Banishes a Burning Exile (10 Sec Cooldown)
[4482] = { "запечатана тека" }, -- Sealed Folder
[4483] = { "палаючий ключ" }, -- Burning Key
[4484] = { "бурунистий ключ" }, -- Cresting Key
[4485] = { "буревійний ключ" }, -- Thundering Key
[4487] = { "карта з \"Дівочої примхи\"" }, -- Maiden's Folly Charts
[4488] = { "карта з \"Духу Срібнохвою\"" }, -- Spirit of Silverpine Charts
[4489] = { "журнал \"Дівочої примхи\"" }, -- Maiden's Folly Log
[4490] = { "журнал \"Духу Срібнохвою\"" }, -- Spirit of Silverpine Log
[4491] = { "окуляри для пошуку самоцвітів", equip="На мінімапі відображаються найближчі ельфійські самоцвіти." }, -- Goggles of Gem Hunting, @equip Nearby elven gems appear on the minimap.
[4492] = { "ельфійський самоцвіт" }, -- Elven Gem
[4493] = { "ельфійські самоцвіти" }, -- Elven Gems
[4494] = { "запечатаний лист Морського Рога" }, -- Seahorn's Sealed Letter
[4495] = { "амулет з кривавого каменю" }, -- Bloodstone Amulet
[4496] = { "маленький коричневий мішечок" }, -- Small Brown Pouch
[4497] = { "важка коричнева сумка" }, -- Heavy Brown Bag
[4498] = { "коричневий шкіряний ранець" }, -- Brown Leather Satchel
[4499] = { "величезний коричневий мішок" }, -- Huge Brown Sack
[4500] = { "рюкзак мандрівника" }, -- Traveler's Backpack
[4502] = { "зразок ельфійського самоцвіту" }, -- Sample Elven Gem
[4503] = { "ікло троля Зів'ялої Кори" }, -- Witherbark Tusk
[4504] = { "плащ дворфійської варти" }, -- Dwarven Guard Cloak
[4505] = { "болотні брюки" }, -- Swampland Trousers
[4506] = { "cтромґардський значок" }, -- Stromgarde Badge
[4507] = { "щит бійця ями" }, -- Pit Fighter's Shield
[4508] = { "кривавий обладунок" }, -- Blood-tinged Armor
[4509] = { "рукавиці морського вовка" }, -- Seawolf Gloves
[4510] = { "мерзенна сфера з кривавого каменю" }, -- Befouled Bloodstone Orb
[4511] = { "молот чорноводдя" }, -- Black Water Hammer
[4512] = { "око плоскогірного раптора" }, -- Highland Raptor Eye
[4513] = { "серце раптора" }, -- Raptor Heart
[4514] = { "прохання Сари Баллу", flavor="Моєму шановному королю" }, -- Sara Balloo's Plea, @flavor To My Honorable King
[4515] = { "голова Марез" }, -- Marez's Head
[4516] = { "голова Отто" }, -- Otto's Head
[4517] = { "голова Соколохресного" }, -- Falconcrest's Head
[4518] = { "рваний фрагмент сувою" }, -- Torn Scroll Fragment
[4519] = { "м'ятий фрагмент сувою" }, -- Crumpled Scroll Fragment
[4520] = { "обпалений фрагмент сувою" }, -- Singed Scroll Fragment
[4521] = { "альтерацький граніт" }, -- Alterac Granite
[4522] = { "мішечок з травами Зів'ялої Кори" }, -- Witherbark Medicine Pouch
[4524] = { "пам'ятник Баллу" }, -- Balloo's Memorial
[4525] = { "жезл Трелейна для виклику" }, -- Trelane's Wand of Invocation
[4526] = { "амулет із пазура раптора" }, -- Raptor Talon Amulet
[4527] = { "лазурний агат" }, -- Azure Agate
[4528] = { "сфера Тор'ґана" }, -- Tor'gan's Orb
[4529] = { "зачарований агат", use="Активує захист вежі Трелейна." }, -- Enchanted Agate, @use Activates Trelane's tower defenses.
[4530] = { "філактерія Трелейна" }, -- Trelane's Phylactery
[4531] = { "сфера Трелейна" }, -- Trelane's Orb
[4532] = { "червоний агат Трелейна" }, -- Trelane's Ember Agate
[4533] = { "запечатаний лист до архімага Маліна" }, -- Sealed Letter to Archmage Malin
[4534] = { "наручі зі сталевими застібками" }, -- Steel-clasped Bracers
[4535] = { "пам'ятний перстень Залізогарта" }, -- Ironforge Memorial Ring
[4536] = { "соковите червоне яблуко", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Shiny Red Apple, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[4537] = { "Тел'абімський банан", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Tel'Abim Banana, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[4538] = { "дикий кавун", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Snapvine Watermelon, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[4539] = { "золотисте яблуко", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Goldenbark Apple, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[4540] = { "кусень твердого хліба", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Tough Hunk of Bread, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[4541] = { "свіжоспечений хліб", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Freshly Baked Bread, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[4542] = { "вологий кукурудзяний хліб", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Moist Cornbread, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[4543] = { "каптур зі шкіри білого дракончика" }, -- White Drakeskin Cap
[4544] = { "мулгорський хліб із прянощами", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Mulgore Spice Bread, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[4545] = { "сяючі срібні наручі" }, -- Radiant Silver Bracers
[4546] = { "клич раптора", use="Збільшує спритність на 12 на 30 хв." }, -- Call of the Raptor, @use Increases your Agility by 12 for 30 min.
[4547] = { "гном'ячий шокер" }, -- Gnomish Zapper
[4548] = { "сервомеханічна кувалда", equip="Збільшує навичку володіння дворучними булавами на 7." }, -- Servomechanic Sledgehammer, @equip Increased Two-handed Maces +7.
[4549] = { "перстень морського вогню" }, -- Seafire Band
[4550] = { "холодноводний перстень" }, -- Coldwater Ring
[4551] = { "голова Ор'Калара" }, -- Or'Kalar's Head
[4552] = { "гладкий уламок каменю" }, -- Smooth Stone Chip
[4553] = { "зазубрений шматок каменю" }, -- Jagged Piece of Stone
[4554] = { "блискучий полірований камінь" }, -- Shiny Polished Stone
[4555] = { "товстий лускатий хвіст" }, -- Thick Scaly Tail
[4556] = { "фрагмент плямистого панцира" }, -- Speckled Shell Fragment
[4557] = { "вогняна залоза" }, -- Fiery Gland
[4558] = { "порожня діжка" }, -- Empty Barrel
[4560] = { "тонкий ятаган" }, -- Fine Scimitar
[4561] = { "скальпуючий томагавк" }, -- Scalping Tomahawk
[4562] = { "сікуча сокира" }, -- Severing Axe
[4563] = { "дубина бугая" }, -- Billy Club
[4564] = { "шипаста дубина" }, -- Spiked Club
[4565] = { "простий кинджал" }, -- Simple Dagger
[4566] = { "міцний кийок" }, -- Sturdy Quarterstaff
[4567] = { "меч найманця" }, -- Merc Sword
[4568] = { "сокира бугая" }, -- Grunt Axe
[4569] = { "незломний молоток" }, -- Staunch Hammer
[4570] = { "березовий молот" }, -- Birchwood Maul
[4571] = { "бойовий ніж" }, -- War Knife
[4575] = { "медичний посох" }, -- Medicine Staff
[4576] = { "легкий лук" }, -- Light Bow
[4577] = { "компактний дробовик" }, -- Compact Shotgun
[4580] = { "ікло шаблезуба" }, -- Sabertooth Fang
[4581] = { "клаптик тонкого хутра" }, -- Patch of Fine Fur
[4582] = { "м'який пухнастий хвіст" }, -- Soft Bushy Tail
[4583] = { "густа пухнаста грива" }, -- Thick Furry Mane
[4584] = { "велика трофейна лапа" }, -- Large Trophy Paw
[4585] = { "мокре жвало павука" }, -- Dripping Spider Mandible
[4586] = { "гладка шкіра раптора" }, -- Smooth Raptor Skin
[4587] = { "пір'я племінного раптора" }, -- Tribal Raptor Feathers
[4588] = { "бездоганний череп раптора" }, -- Pristine Raptor Skull
[4589] = { "довге елегантне перо" }, -- Long Elegant Feather
[4590] = { "загнутий жовтий дзьоб" }, -- Curved Yellow Bill
[4591] = { "орлине око" }, -- Eagle Eye
[4592] = { "муловий луціан", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Longjaw Mud Snapper, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[4593] = { "щетиновусий сом", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Bristle Whisker Catfish, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[4594] = { "камнелуска тріска", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Rockscale Cod, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[4595] = { "вино з джунглів", use="Міцний алкогольний напій." }, -- Junglevine Wine, @use A strong alcoholic beverage.
[4596] = { "безбарвне зілля лікування", use="Відновлює від {1} до {2} здоров'я. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Discolored Healing Potion, @use Restores 140 to 180 health. (2 Min Cooldown)
[4597] = { "рецепт: Безбарвне зілля лікування", use="Навчає вас створювати безбарвне зілля лікування.", recipe_result_item=4596 }, -- Recipe: Discolored Healing Potion, @use Teaches you how to make a Discolored Healing Potion.
[4598] = { "гоблінська вудка", use="Завдає від 128 до 172 шкоди вогнем в радіусі 5 м. (Відновлення 1 хв)" }, -- Goblin Fishing Pole, @use Inflicts 128 to 172 Fire damage in a 5 yard radius. (1 Min Cooldown)
[4599] = { "шмат в'яленої шинки", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Cured Ham Steak, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[4600] = { "вишневий грог", use="Міцний алкогольний напій." }, -- Cherry Grog, @use A strong alcoholic beverage.
[4601] = { "м'який банановий хліб", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Soft Banana Bread, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[4602] = { "гарбуз місячного врожаю", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Moon Harvest Pumpkin, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[4603] = { "сирий плямистий жовтохвіст", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Spotted Yellowtail, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[4604] = { "шапинка лісового гриба", use=433 }, -- Forest Mushroom Cap, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[4605] = { "червоний крапчастий гриб", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Red-speckled Mushroom, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[4606] = { "губчастий зморшок", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Spongy Morel, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[4607] = { "смачна печерна пліснява", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Delicious Cave Mold, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[4608] = { "сирий чорний трюфель", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Black Truffle, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[4609] = { "рецепт: Смажене крило канюка", use="Навчає вас приготуванню смажених крилець канюка." }, -- Recipe: Barbecued Buzzard Wing, @use Teaches you how to cook a Barbecued Buzzard Wing.
[4610] = { "різьблена кам'яна урна" }, -- Carved Stone Urn
[4611] = { "синя перлина" }, -- Blue Pearl
[4612] = { "серце чорного дракончика" }, -- Black Drake's Heart
[4613] = { "заіржавілий чорний ящик" }, -- Corroded Black Box
[4614] = { "кулон Мізраель" }, -- Pendant of Myzrael
[4615] = { "наручники Чорнохлиста" }, -- Blacklash's Bindings
[4616] = { "щасливе кайло Житника" }, -- Ryedol's Lucky Pick
[4621] = { "браслет посла Інферна" }, -- Ambassador Infernus' Bracer
[4622] = { "записка для радника Белґрама" }, -- Sealed Note to Advisor Belgrum
[4623] = { "мале зілля каменещита", use="Збільшує броню на {1} на 1.5 хв. (Відновлення 2 хв)#armor by {1}" }, -- Lesser Stoneshield Potion, @use Increases armor by 1000 for 1.50 min. (2 Min Cooldown)
[4624] = { "рецепт: Мале зілля каменещита", use="Навчає вас створювати мале зілля каменещита." }, -- Recipe: Lesser Stoneshield Potion, @use Teaches you how to make a Lesser Stoneshield Potion.
[4625] = { "вогнеквіт" }, -- Firebloom
[4626] = { "маленький кам'яний осколок" }, -- Small Stone Shard
[4627] = { "велика кам'яна брила" }, -- Large Stone Slab
[4628] = { "поручі зв'язування каменю" }, -- Bracers of Rock Binding
[4629] = { "ящик з припасами" }, -- Supply Crate
[4630] = { "брухт" }, -- Scrap Metal
[4631] = { "скрижаль Р'юн'еха" }, -- Tablet of Ryun'eh
[4632] = { "вишукана бронзова скринька" }, -- Ornate Bronze Lockbox
[4633] = { "важка бронзова скринька" }, -- Heavy Bronze Lockbox
[4634] = { "залізна скринька" }, -- Iron Lockbox
[4635] = { "амулет Молотопалого" }, -- Hammertoe's Amulet
[4636] = { "міцна залізна скринька" }, -- Strong Iron Lockbox
[4637] = { "сталева скринька" }, -- Steel Lockbox
[4638] = { "укріплена сталева скринька" }, -- Reinforced Steel Lockbox
[4639] = { "зачаровані морські водорості", use="Покладіть на сточений морем вівтар, якщо наважитеся..." }, -- Enchanted Sea Kelp, @use Place upon the Seaworn Altar, if you dare...
[4640] = { "знак Землі" }, -- Sign of the Earth
[4641] = { "рука Даґуна" }, -- Hand of Dagun
[4643] = { "накидка хмуросталі" }, -- Grimsteel Cape
[4644] = { "серце спадку" }, -- The Legacy Heart
[4645] = { "ланцюги Гемата" }, -- Chains of Hematus
[4646] = { "зірка Ксіл'єх" }, -- Star of Xil'yeh
[4647] = { "збірник Яґіна" }, -- Yagyin's Digest
[4648] = { "сигіла молота" }, -- Sigil of the Hammer
[4649] = { "записка Кісткохвата" }, -- Bonegrip's Note
[4650] = { "записка Бел'дуґура" }, -- Bel'dugur's Note
[4652] = { "щит Салбака" }, -- Salbac Shield
[4653] = { "підковані черевики" }, -- Ironheel Boots
[4654] = { "таємнича скам'янілість" }, -- Mysterious Fossil
[4655] = { "м'ясо гігантського молюска" }, -- Giant Clam Meat
[4656] = { "гарбузик", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Small Pumpkin, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[4658] = { "плащ воїна" }, -- Warrior's Cloak
[4659] = { "пасок воїна" }, -- Warrior's Girdle
[4660] = { "черевики для прогулянок" }, -- Walking Boots
[4661] = { "яскраве напліччя" }, -- Bright Mantle
[4662] = { "плащ підмайстра" }, -- Journeyman's Cloak
[4663] = { "пояс підмайстра" }, -- Journeyman's Belt
[4665] = { "обгорілий плащ" }, -- Burnt Cloak
[4666] = { "обпалений шкіряний ремінь" }, -- Burnt Leather Belt
[4668] = { "бойовий кольчужний плащ" }, -- Battle Chain Cloak
[4669] = { "бойовий кольчужний пасок" }, -- Battle Chain Girdle
[4671] = { "плащ предків" }, -- Ancestral Cloak
[4672] = { "пояс предків" }, -- Ancestral Belt
[4674] = { "племінний плащ" }, -- Tribal Cloak
[4675] = { "племінний пояс" }, -- Tribal Belt
[4676] = { "скелетні рукавиці" }, -- Skeletal Gauntlets
[4677] = { "ветеранський плащ" }, -- Veteran Cloak
[4678] = { "ветеранський пояс" }, -- Veteran Girdle
[4680] = { "солончаковий плащ" }, -- Brackwater Cloak
[4681] = { "солончаковий пасок" }, -- Brackwater Girdle
[4683] = { "плащ чароплета" }, -- Spellbinder Cloak
[4684] = { "пояс чароплета" }, -- Spellbinder Belt
[4686] = { "варварський тканий плащ" }, -- Barbaric Cloth Cloak
[4687] = { "варварський тканий пояс" }, -- Barbaric Cloth Belt
[4689] = { "мисливський плащ" }, -- Hunting Cloak
[4690] = { "мисливський пояс" }, -- Hunting Belt
[4692] = { "церемоніальний плащ" }, -- Ceremonial Cloak
[4693] = { "церемоніальний шкіряний пояс" }, -- Ceremonial Leather Belt
[4694] = { "поліроване напліччя" }, -- Burnished Pauldrons
[4695] = { "полірований плащ" }, -- Burnished Cloak
[4696] = { "лапідісова чаша морехльоба", use="Відновлює 1992 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час пиття." }, -- Lapidis Tankard of Tidesippe, @use Restores 1992 mana over 30 sec.  Must remain seated while drinking. (10 Min Cooldown)
[4697] = { "полірований пасок" }, -- Burnished Girdle
[4698] = { "напліччя провидця" }, -- Seer's Mantle
[4699] = { "пояс провидця" }, -- Seer's Belt
[4700] = { "гравійовані шкіряні наплічники" }, -- Inscribed Leather Spaulders
[4701] = { "гравійований плащ" }, -- Inscribed Cloak
[4702] = { "кайло розвідувача", use="Розтрощити кайло у кузні." }, -- Prospector's Pick, @use Right click near a forge to break.
[4703] = { "зламані інструменти" }, -- Broken Tools
[4705] = { "блискуче лускате напліччя" }, -- Lambent Scale Pauldrons
[4706] = { "блискучий лускатий плащ" }, -- Lambent Scale Cloak
[4707] = { "блискучий лускатий пасок" }, -- Lambent Scale Girdle
[4708] = { "яскравий пояс" }, -- Bright Belt
[4709] = { "лісове шкіряне напліччя" }, -- Forest Leather Mantle
[4710] = { "лісовий плащ" }, -- Forest Cloak
[4711] = { "блискучий плащ" }, -- Glimmering Cloak
[4712] = { "блискучий кольчужний пасок" }, -- Glimmering Mail Girdle
[4713] = { "сріблястий плащ" }, -- Silver-thread Cloak
[4714] = { "сріблястий пояс" }, -- Silver-thread Sash
[4715] = { "гербовий плащ" }, -- Emblazoned Cloak
[4716] = { "бойовий плащ" }, -- Combat Cloak
[4717] = { "кольчужний бойовий пояс" }, -- Mail Combat Belt
[4718] = { "напліччя нічного неба" }, -- Nightsky Mantle
[4719] = { "плащ нічного неба" }, -- Nightsky Cloak
[4720] = { "пояс нічного неба" }, -- Nightsky Sash
[4721] = { "орденське напліччя" }, -- Insignia Mantle
[4722] = { "орденський плащ" }, -- Insignia Cloak
[4723] = { "штани Гумберта" }, -- Humbert's Pants
[4724] = { "шолом Гумберта" }, -- Humbert's Helm
[4725] = { "напліччя старшого бригадира" }, -- Chief Brigadier Pauldrons
[4726] = { "плащ старшого бригадира" }, -- Chief Brigadier Cloak
[4727] = { "пасок старшого бригадира" }, -- Chief Brigadier Girdle
[4728] = { "наплечі Твена" }, -- Twain's Shoulder
[4729] = { "напліччя зорі" }, -- Aurora Mantle
[4731] = { "прикрашені гліфами еполети" }, -- Glyphed Epaulets
[4732] = { "прикрашений гліфами плащ" }, -- Glyphed Cloak
[4733] = { "напліччя Чорної кузні" }, -- Blackforge Pauldrons
[4734] = { "імлисте напліччя" }, -- Mistscape Mantle
[4735] = { "імлистий плащ" }, -- Mistscape Cloak
[4736] = { "імлистий пояс" }, -- Mistscape Sash
[4737] = { "імперські шкіряні наплічники" }, -- Imperial Leather Spaulders
[4738] = { "імперський шкіряний ремінь" }, -- Imperial Leather Belt
[4739] = { "м'ясо рівнинобіга" }, -- Plainstrider Meat
[4740] = { "пір'я рівнинобіга" }, -- Plainstrider Feather
[4741] = { "cтромґардські кавалерійські штани" }, -- Stromgarde Cavalry Leggings
[4742] = { "шкура гірської пуми" }, -- Mountain Cougar Pelt
[4743] = { "пульсуючий кристалічний осколок" }, -- Pulsating Crystalline Shard
[4744] = { "наручі з арканічними рунами" }, -- Arcane Runed Bracers
[4745] = { "наручі військового вершника" }, -- War Rider Bracers
[4746] = { "мантія вісника загибелі" }, -- Doomsayer's Robe
[4751] = { "кіготь Вітролютих" }, -- Windfury Talon
[4752] = { "лазурова пір'їна" }, -- Azure Feather
[4753] = { "бронзова пір'їна" }, -- Bronze Feather
[4755] = { "глечик води" }, -- Water Pitcher
[4756] = { "зіпсована котяча шкура" }, -- Ruined Cat Pelt
[4757] = { "тріснута яєчна шкаралупа" }, -- Cracked Egg Shells
[4758] = { "лапа степового вовка" }, -- Prairie Wolf Paw
[4759] = { "кіготь рівнинобіга" }, -- Plainstrider Talon
[4763] = { "вигнутий лук Чорного лісу" }, -- Blackwood Recurve Bow
[4765] = { "емальований палаш" }, -- Enamelled Broadsword
[4766] = { "дикий клинок" }, -- Feral Blade
[4767] = { "рукавички з мідної тканини" }, -- Coppercloth Gloves
[4768] = { "рукавички адепта" }, -- Adept's Gloves
[4769] = { "трофейна пір'їна хапуна" }, -- Trophy Swoop Quill
[4770] = { "пояс Щетиношкурих" }, -- Bristleback Belt
[4771] = { "плащ жнив" }, -- Harvest Cloak
[4772] = { "теплий плащ" }, -- Warm Cloak
[4775] = { "тріснутий дзьоб" }, -- Cracked Bill
[4776] = { "скуйовджене перо" }, -- Ruffled Feather
[4777] = { "кувалда залізного дерева" }, -- Ironwood Maul
[4778] = { "важка шипаста булава" }, -- Heavy Spiked Mace
[4779] = { "тупий зуб кодо" }, -- Dull Kodo Tooth
[4780] = { "фрагмент рогу кодо" }, -- Kodo Horn Fragment
[4781] = { "жилет шепоту" }, -- Whispering Vest
[4782] = { "мантія сонцестояння" }, -- Solstice Robe
[4783] = { "тотем Соколиного Вітру" }, -- Totem of Hawkwind
[4784] = { "неживий камінь" }, -- Lifeless Stone
[4785] = { "сірчаний пояс" }, -- Brimstone Belt
[4786] = { "пояс мудреця" }, -- Wise Man's Belt
[4787] = { "палаюча смола" }, -- Burning Pitch
[4788] = { "черевики спритності" }, -- Agile Boots
[4789] = { "витривалі черевики" }, -- Stable Boots
[4790] = { "інфернальний плащ" }, -- Inferno Cloak
[4791] = { "зачарована вода", use="Відновлює 1344.6 мани протягом 27 сек. Потрібно залишатися в сидячому положенні під час пиття." }, -- Enchanted Water, @use Restores 1344.6 mana over 27 sec.  Must remain seated while drinking.
[4792] = { "плащ духу" }, -- Spirit Cloak
[4793] = { "лісовий плащ" }, -- Sylvan Cloak
[4794] = { "вовчі браслети" }, -- Wolf Bracers
[4795] = { "ведмежі браслети" }, -- Bear Bracers
[4796] = { "совині браслети" }, -- Owl Bracers
[4797] = { "вогняний плащ" }, -- Fiery Cloak
[4798] = { "важкий рунічний плащ" }, -- Heavy Runed Cloak
[4799] = { "антикварний плащ" }, -- Antiquated Cloak
[4800] = { "міцні кольчужні штани" }, -- Mighty Chain Pants
[4801] = { "пазурі ловця" }, -- Stalker Claws
[4802] = { "пазурі пуми" }, -- Cougar Claws
[4803] = { "зуб степового альфи" }, -- Prairie Alpha Tooth
[4804] = { "серце степового вовка" }, -- Prairie Wolf Heart
[4805] = { "стегнова кістка рівнинної пуми" }, -- Flatland Cougar Femur
[4806] = { "луска рівнинобіга" }, -- Plainstrider Scale
[4807] = { "шлунок хапуна" }, -- Swoop Gizzard
[4808] = { "колодязний камінь" }, -- Well Stone
[4809] = { "бурштинова насінина" }, -- Ambercorn
[4810] = { "наплічники валуна" }, -- Boulder Pads
[4813] = { "маленький шкіряний нашийник" }, -- Small Leather Collar
[4814] = { "знебарвлене ікло" }, -- Discolored Fang
[4816] = { "поножі легіонера" }, -- Legionnaire's Leggings
[4817] = { "благословенний клеймор" }, -- Blessed Claymore
[4818] = { "меч ката" }, -- Executioner's Sword
[4819] = { "записник Шуморакети" }, -- Fizsprocket's Clipboard
[4820] = { "баклер вартового" }, -- Guardian Buckler
[4821] = { "ведмежий баклер" }, -- Bear Buckler
[4822] = { "совиний диск" }, -- Owl's Disk
[4823] = { "вода провидців", use="Викликає видіння." }, -- Water of the Seers, @use Induces a Vision.
[4824] = { "забруднена сокира" }, -- Blurred Axe
[4825] = { "загрубіла сокира", equip="Збільшує силу атаки на 8." }, -- Callous Axe, @equip +8 Attack Power.
[4826] = { "сокира мародера" }, -- Marauder Axe
[4827] = { "пояс чарівника" }, -- Wizard's Belt
[4828] = { "пояс Ночевітра" }, -- Nightwind Belt
[4829] = { "пояс сновиди" }, -- Dreamer's Belt
[4830] = { "шабельні поножі" }, -- Saber Leggings
[4831] = { "штани ловця" }, -- Stalking Pants
[4832] = { "містичний сарунг" }, -- Mystic Sarong
[4833] = { "славетні наплечі" }, -- Glorious Shoulders
[4834] = { "документи ТзНБ \"Авантюра\"" }, -- Venture Co. Documents
[4835] = { "елітні наплечі" }, -- Elite Shoulders
[4836] = { "вогнетривка куля" }, -- Fireproof Orb
[4837] = { "сила волі" }, -- Strength of Will
[4838] = { "куля могутності" }, -- Orb of Power
[4840] = { "довгий багнет" }, -- Long Bayonet
[4841] = { "ріг Арра'чі" }, -- Horn of Arra'chea
[4843] = { "аметистовий рунічний камінь" }, -- Amethyst Runestone
[4844] = { "опаловий рунічний камінь" }, -- Opal Runestone
[4845] = { "діамантовий рунічний камінь" }, -- Diamond Runestone
[4846] = { "зубець #5" }, -- Cog #5
[4847] = { "кайдани зв'язування стихій Лотвіля" }, -- Lotwil's Shackles of Elemental Binding
[4848] = { "рило бойового кнура" }, -- Battleboar Snout
[4849] = { "вирізка бойового кнура" }, -- Battleboar Flank
[4850] = { "плани нападу Щетиношкурих" }, -- Bristleback Attack Plans
[4851] = { "замазана брудом мапа" }, -- Dirt-stained Map
[4852] = { "світлова бомба", use="Змушує всіх звірів у радіусі 5 метрів тікати 10 сек. (Відновлення 1 хв)" }, -- Flash Bomb, @use Causes all Beasts in a 5 yard radius to run away for 10 sec. (1 Min Cooldown)
[4854] = { "пошматований демонами плащ" }, -- Demon Scarred Cloak
[4859] = { "медальйон Палаючого Леза" }, -- Burning Blade Medallion
[4860] = { "блискуча луска навіженки" }, -- Glistening Frenzy Scale
[4861] = { "прикрашений пір'ям лискучий мундир" }, -- Sleek Feathered Tunic
[4862] = { "хвіст скорпіда-робітника" }, -- Scorpid Worker Tail
[4863] = { "інструменти гномів" }, -- Gnomish Tools
[4864] = { "череп Міншини" }, -- Minshina's Skull
[4865] = { "зіпсована шкура" }, -- Ruined Pelt
[4866] = { "голова Залазейна" }, -- Zalazane's Head
[4867] = { "зламана лапа скорпіда" }, -- Broken Scorpid Leg
[4869] = { "кіготь Фіззла" }, -- Fizzle's Claw
[4870] = { "уривки полотна" }, -- Canvas Scraps
[4871] = { "опалюючий нашийник" }, -- Searing Collar
[4872] = { "сухе око скорпіда" }, -- Dry Scorpid Eye
[4873] = { "сухий затверділий молюск" }, -- Dry Hardened Barnacle
[4874] = { "чисті рибні кістки" }, -- Clean Fishbones
[4875] = { "слизька кістка" }, -- Slimy Bone
[4876] = { "кривавий шкіряний черевик" }, -- Bloody Leather Boot
[4877] = { "кам'яний наконечник стріли" }, -- Stone Arrowhead
[4878] = { "зламаний закривавлений лук" }, -- Broken Bloodstained Bow
[4879] = { "роздавлена тушка кролика" }, -- Squashed Rabbit Carcass
[4880] = { "зламаний спис" }, -- Broken Spear
[4881] = { "старий конверт" }, -- Aged Envelope
[4882] = { "ключ Бенедикта" }, -- Benedict's Key
[4883] = { "накази адмірала Праудмура" }, -- Admiral Proudmoore's Orders
[4886] = { "отруйна залоза отрутохвоста" }, -- Venomtail Poison Sac
[4887] = { "непошкоджене око макрури" }, -- Intact Makrura Eye
[4888] = { "слиз повзуна" }, -- Crawler Mucus
[4890] = { "яйце хвостохляста" }, -- Taillasher Egg
[4891] = { "амулет Крона" }, -- Kron's Amulet
[4892] = { "хутро дуротарського тигра" }, -- Durotar Tiger Fur
[4893] = { "ікло лева савани" }, -- Savannah Lion Tusk
[4894] = { "нирка рівнинобіга" }, -- Plainstrider Kidney
[4895] = { "ріг громоящера" }, -- Thunder Lizard Horn
[4896] = { "печінка кодо" }, -- Kodo Liver
[4897] = { "слинна залоза громояструба" }, -- Thunderhawk Saliva Gland
[4898] = { "громозалоза" }, -- Lightning Gland
[4903] = { "око палаючої тіні" }, -- Eye of Burning Shadow
[4904] = { "протиотрута з отрутохвоста" }, -- Venomtail Antidote
[4905] = { "понівечена клешня Саркота" }, -- Sarkoth's Mangled Claw
[4906] = { "черевики дощеходця" }, -- Rainwalker Boots
[4907] = { "мундир діброви" }, -- Woodland Tunic
[4908] = { "наручі кочівника" }, -- Nomadic Bracers
[4909] = { "поножі мисливця на кодо" }, -- Kodo Hunter's Leggings
[4910] = { "розфарбовані кольчужні рукавиці" }, -- Painted Chain Gloves
[4911] = { "луб'яний баклер" }, -- Thick Bark Buckler
[4913] = { "розфарбований кольчужний ремінь" }, -- Painted Chain Belt
[4914] = { "потерті шкіряні рукавички" }, -- Battleworn Leather Gloves
[4915] = { "м'які вовняні чоботи" }, -- Soft Wool Boots
[4916] = { "м'який вовняний жилет" }, -- Soft Wool Vest
[4917] = { "зношені кольчужні поножі" }, -- Battleworn Chain Leggings
[4918] = { "мішок з припасами" }, -- Sack of Supplies
[4919] = { "м'який вовняний пояс" }, -- Soft Wool Belt
[4920] = { "зношена накидка" }, -- Battleworn Cape
[4921] = { "вкриті пилом поножі" }, -- Dust-covered Leggings
[4922] = { "зубчастий кольчужний жилет" }, -- Jagged Chain Vest
[4923] = { "груба сокира" }, -- Primitive Hatchet
[4924] = { "грубий кийок" }, -- Primitive Club
[4925] = { "грубий клинок" }, -- Primitive Hand Blade
[4926] = { "порожня діжка Ченя" }, -- Chen's Empty Keg
[4928] = { "наручі піскобіга" }, -- Sandrunner Wristguards
[4929] = { "легка скорпідна броня" }, -- Light Scorpid Armor
[4930] = { "шкіряна сумка ручної роботи" }, -- Handmade Leather Bag
[4931] = { "короткий лук з гікорі" }, -- Hickory Shortbow
[4932] = { "гарпієвий крилоріз" }, -- Harpy Wing Clipper
[4933] = { "плащ загартованого бійця" }, -- Seasoned Fighter's Cloak
[4935] = { "широкий металевий пояс" }, -- Wide Metal Girdle
[4936] = { "забруднені черевики" }, -- Dirt-trodden Boots
[4937] = { "штурмовий баклер" }, -- Charging Buckler
[4938] = { "заплямована дерев'яна палиця" }, -- Blemished Wooden Staff
[4939] = { "непохитний довгий меч" }, -- Steady Bastard Sword
[4940] = { "маскувальні захвати" }, -- Veiled Grips
[4941] = { "дуже міцний клей", use="Не дозволяє цілі рухатись впродовж 10 секунд. (Відновлення 1 хв)" }, -- Really Sticky Glue, @use Renders a target unable to move for 10 sec. (1 Min Cooldown)
[4942] = { "чоботи з тигрової шкури" }, -- Tiger Hide Boots
[4944] = { "плащ ручної роботи" }, -- Handsewn Cloak
[4945] = { "череп з блідим світінням", use="Викрадає від 75 до 125 здоров'я у ворожої цілі." }, -- Faintly Glowing Skull, @use Steals 75 to 125 life from target enemy.
[4946] = { "легкі черевики" }, -- Lightweight Boots
[4947] = { "зазубрений кинджал" }, -- Jagged Dagger
[4948] = { "жаляча булава" }, -- Stinging Mace
[4949] = { "оркський сікач" }, -- Orcish Cleaver
[4951] = { "пояс Верескуна" }, -- Squealer's Belt
[4952] = { "бурехміль", use="Міцний ель, що збільшує вашу силу на 4 та зменшує ваш інтелект на 5 на 5 хв." }, -- Stormstout, @use A powerful brew that increases your strength by 4 and decreases your intellect by 5 for 5 min.
[4953] = { "трозька брага", use="Збільшує ваше здоров'я від 23 до 38, але зменшує дух на 4 на 5 хв." }, -- Trogg Brew, @use Increases your health by 23 to 37, but decreases your spirit by 4 for 5 min.
[4954] = { "пояс кочівника" }, -- Nomadic Belt
[4957] = { "старий гаманець" }, -- Old Moneybag
[4958] = { "вицвілий плащ" }, -- Sun-beaten Cloak
[4959] = { "метальний томагавк" }, -- Throwing Tomahawk
[4960] = { "легкий дріб", desc="Додає 2 пошкодження за секунду" }, -- Flash Pellet, @desc Adds 2 damage per second
[4961] = { "посох вартового снів" }, -- Dreamwatcher Staff
[4962] = { "двошарові рукавички" }, -- Double-layered Gloves
[4963] = { "плащ громового рога" }, -- Thunderhorn Cloak
[4964] = { "убивач гоблінів" }, -- Goblin Smasher
[4965] = { "сокира Кривавого Копита" }, -- Bloodhoof Hand Axe
[4966] = { "голова Маззраначе" }, -- Mazzranache's Head
[4967] = { "щит воїна племені" }, -- Tribal Warrior's Shield
[4968] = { "зв'язана портупея" }, -- Bound Harness
[4969] = { "укріплені наручі" }, -- Fortified Bindings
[4970] = { "грубо зшиті поножі зі шкіри кодо" }, -- Rough-hewn Kodo Leggings
[4971] = { "молот Скорна" }, -- Skorn's Hammer
[4972] = { "черевики скелебіга" }, -- Cliff Runner Boots
[4973] = { "наручі рівнинного мисливця" }, -- Plains Hunter Wristguards
[4974] = { "компактний бойовий ніж" }, -- Compact Fighting Knife
[4975] = { "баклер дозорного", equip="Збільшує шанс блокувати атаки щитом на 1%." }, -- Vigilant Buckler, @equip Increases your chance to block attacks with a shield by 1%.
[4976] = { "кілт туманного серпанку" }, -- Mistspray Kilt
[4977] = { "меч Молотобою" }, -- Sword of Hammerfall
[4978] = { "молот Житника" }, -- Ryedol's Hammer
[4979] = { "зачаровані камнеткані поручі" }, -- Enchanted Stonecloth Bracers
[4980] = { "рукавиці розвідувача" }, -- Prospector Gloves
[4981] = { "поясна сумка Аґмонда" }, -- Agmond's Belt Pouch
[4982] = { "порваний пояс розвідувача" }, -- Ripped Prospector Belt
[4983] = { "трощитель каменю", equip="Збільшує силу атаки на 34." }, -- Rock Pulverizer, @equip +34 Attack Power.
[4984] = { "череп неминучої загибелі", use="Збільшує вашу швидкість бігу на 60% на 10 сек, але завдає від 100 до 500 шкоди та витягує від 100 до 500 мани кожні 2 сек. (Відновлення 5 хв)" }, -- Skull of Impending Doom, @use Increase your run speed by 60% for 10 sec, but deals 100 to 500 damage and drains 100 to 500 mana every 2 seconds. (5 Min Cooldown)
[4986] = { "тріснутий камінь сили", use="Помістити на жертовник вогню" }, -- Flawed Power Stone, @use Place upon the Altar of Fire
[4987] = { "меч дворфійського капітана" }, -- Dwarf Captain's Sword
[4988] = { "палаючий обсидіановий перстень" }, -- Burning Obsidian Band
[4989] = { "мантія мага-дракона" }, -- Mage Dragon Robe
[4990] = { "обпалені пов'язки" }, -- Scorched Bands
[4992] = { "вербувальний лист", flavor="Непідписаний вербувальний лист." }, -- Recruitment Letter, @flavor An unsigned recruitment letter.
[4995] = { "підписаний вербувальний лист" }, -- Signed Recruitment Letter
[4998] = { "перстень крові" }, -- Blood Ring
[4999] = { "воля Азори" }, -- Azora's Will
[5000] = { "кораловий перстень" }, -- Coral Band
[5001] = { "перстень серця" }, -- Heart Ring
[5002] = { "сяючий зелений талісман" }, -- Glowing Green Talisman
[5003] = { "кришталевий медальйон зоряного вогню" }, -- Crystal Starfire Medallion
[5004] = { "знак Кірін-Тора" }, -- Mark of the Kirin Tor
[5005] = { "кулон іскристого жару" }, -- Emberspark Pendant
[5006] = { "журнал Хазґорма" }, -- Khazgorm's Journal
[5007] = { "кільце шипів" }, -- Band of Thorns
[5008] = { "перстень ртуті" }, -- Quicksilver Ring
[5009] = { "перстень покорителя розуму" }, -- Mindbender Loop
[5010] = { "гравійований золотий перстень" }, -- Inscribed Gold Ring
[5011] = { "перстень в'янення" }, -- Welken Ring
[5012] = { "спори грибів" }, -- Fungal Spores
[5013] = { "проросла цибулина", use="Завдає від 47 до 53 шкоди від природи в радіусі 10 м." }, -- Fertile Bulb, @use Inflicts 47 to 53 Nature damage in a 10 yard radius. (1 Min Cooldown)
[5016] = { "штани ремісника" }, -- Artisan's Trousers
[5017] = { "нітрогліцерин" }, -- Nitroglycerin
[5018] = { "целюлоза" }, -- Wood Pulp
[5019] = { "нітрат натрію" }, -- Sodium Nitrate
[5020] = { "ключ від скрині зі здобиччю Колкарів", use="Відчиняє скриню зі здобиччю Колкарів." }, -- Kolkar Booty Key, @use Opens the Kolkar Booty chest.
[5021] = { "вибухівка Ґанна", use="Чудово підходить для знищення літальних апаратів." }, -- Explosive Stick of Gann, @use Perfect for destroying flying machines.
[5022] = { "голова Барака" }, -- Kodobane's Head
[5023] = { "голова Вероґа" }, -- Verog's Head
[5024] = { "крижаний фіал" }, -- Frost Vial
[5025] = { "голова Герзула" }, -- Hezrul's Head
[5026] = { "вогняна смола" }, -- Fire Tar
[5027] = { "оброблені спори" }, -- Rendered Spores
[5028] = { "скіпетр повелителя Сакрасіса" }, -- Lord Sakrasis' Scepter
[5029] = { "скіпетр повелителя наг" }, -- Talisman of the Naga Lord
[5030] = { "наручі кентаврів" }, -- Centaur Bracers
[5038] = { "Сльоза Місяця" }, -- Tear of the Moons
[5040] = { "ніж темного мисливця" }, -- Shadow Hunter Knife
[5042] = { "обгортковий папір з червоною стрічкою" }, -- Red Ribboned Wrapping Paper
[5043] = { "подарунок з червоною стрічкою" }, -- Red Ribboned Gift
[5044] = { "подарунок з блакитною стрічкою" }, -- Blue Ribboned Gift
[5045] = { "подарунок з черепом" }, -- Skull Gift
[5046] = { "замкнений подарунок" }, -- Locked Gift
[5048] = { "обгортковий папір з блакитною стрічкою" }, -- Blue Ribboned Wrapping Paper
[5050] = { "ключ запалювання" }, -- Ignition Key
[5051] = { "печерний щур" }, -- Dig Rat
[5052] = { "непритомний печерний щур", use="Цей печерний щур все ще живий, чому б вам не відпустити його?" }, -- Unconscious Dig Rat, @use This dig rat is still struggling, why don't you let it go?
[5054] = { "самофланж" }, -- Samophlange
[5055] = { "неушкоджений ріг раптора" }, -- Intact Raptor Horn
[5056] = { "зразок кореня" }, -- Root Sample
[5057] = { "стиглий кавун", ref=117 }, -- Ripe Watermelon
[5058] = { "яйце силітида" }, -- Silithid Egg
[5059] = { "рийний кіготь", use="Вирити яйця силітидів." }, -- Digging Claw, @use Digs up silithid eggs.
[5060] = { "інструменти зломника" }, -- Thieves' Tools
[5061] = { "вкрадене срібло" }, -- Stolen Silver
[5062] = { "голова раптора" }, -- Raptor Head
[5063] = { "ікло Крініга Рилоскала" }, -- Kreenig Snarlsnout's Tusk
[5064] = { "кіготь чарокрилої" }, -- Witchwing Talon
[5065] = { "лейтенантський перстень гарпії" }, -- Harpy Lieutenant Ring
[5066] = { "розколинь", ref=117 }, -- Fissure Plant
[5067] = { "голова Серени" }, -- Serena's Head
[5068] = { "висохле насіння", use="Помістити зерна в розколину Застійного оазису." }, -- Dried Seeds, @use Plant these seeds in the Stagnant Oasis fissure.
[5069] = { "вогняний жезл" }, -- Fire Wand
[5071] = { "жезл тіні" }, -- Shadow Wand
[5072] = { "череп Лока" }, -- Lok's Skull
[5073] = { "череп Нака" }, -- Nak's Skull
[5074] = { "череп Каза" }, -- Kuz's Skull
[5075] = { "кривавий скалок" }, -- Blood Shard
[5076] = { "партія черевиків" }, -- Shipment of Boots
[5077] = { "лінза для телескопа" }, -- Telescopic Lens
[5078] = { "медаль Терамору" }, -- Theramore Medal
[5079] = { "холодне око василіска", use="Збільшує час між атаками цілі на 5% протягом 15 с." }, -- Cold Basilisk Eye, @use Increases time between target's attacks by 5% for 15 sec. (5 Min Cooldown)
[5080] = { "гросбух Ґазлоу" }, -- Gazlowe's Ledger
[5081] = { "сумка зі шкури кодо" }, -- Kodo Hide Bag
[5082] = { "тонка шкіра кодо", flavor="'Тонка' - поняття відносне..." }, -- Thin Kodo Leather, @flavor 'Thin' is a relative term....
[5083] = { "викрійка: Сумка зі шкіри кодо", use="Навчає вас створенню сумки зі шкіри кодо." }, -- Pattern: Kodo Hide Bag, @use Teaches you how to craft a Kodo Hide Bag.
[5084] = { "голова барона Довгоберега" }, -- Baron Longshore's Head
[5085] = { "ікло щетиношкурого свинобраза" }, -- Bristleback Quilboar Tusk
[5086] = { "копита жеври" }, -- Zhevra Hooves
[5087] = { "дзьоб рівнинобіга" }, -- Plainstrider Beak
[5088] = { "інструкція з експлуатації панелі управління", flavor="Документ ТзНБ \"Авантюра\" 534x9" }, -- Control Console Operating Manual, @flavor Venture Co. Document 534x9
[5089] = { "ключ від панелі" }, -- Console Key
[5092] = { "обгоріла паличка Бритвогривих" }, -- Charred Razormane Wand
[5093] = { "стилет Бритвогривих" }, -- Razormane Backstabber
[5094] = { "бойовий щит Бритвогривих" }, -- Razormane War Shield
[5095] = { "веселковий тунець", ref=117 }, -- Rainbow Fin Albacore
[5096] = { "пазурі скрадача" }, -- Prowler Claws
[5097] = { "смарагд «Котяче око»" }, -- Cats Eye Emerald
[5098] = { "панцир видозміненого тріскощелепа" }, -- Altered Snapjaw Shell
[5099] = { "копито Лакота'мані" }, -- Hoof of Lakota'mani
[5100] = { "шкура Ечеякі" }, -- Echeyakee's Hide
[5101] = { "ікло Ішамугала" }, -- Ishamuhale's Fang
[5102] = { "хвостовий шип Оватанки" }, -- Owatanka's Tailspike
[5103] = { "перо Ваште Пауні" }, -- Washte Pawne's Feather
[5104] = { "серце Іши Авака" }, -- Heart of Isha Awak
[5105] = { "вибуховий снаряд" }, -- Explosive Shell
[5107] = { "сорочка матроса" }, -- Deckhand's Shirt
[5108] = { "шкіряний обладунок Темного Заліза" }, -- Dark Iron Leather
[5109] = { "лахміття Каменедробів" }, -- Stonesplinter Rags
[5110] = { "мантія даларанського чарівника" }, -- Dalaran Wizard's Robe
[5111] = { "накидка Раторіана" }, -- Rathorian's Cape
[5112] = { "ритуальний клинок" }, -- Ritual Blade
[5113] = { "знак Синдикату" }, -- Mark of the Syndicate
[5114] = { "відрубаний кіготь" }, -- Severed Talon
[5115] = { "зламаний хребець" }, -- Broken Wishbone
[5116] = { "довге хвостове перо" }, -- Long Tail Feather
[5117] = { "яскраве перо" }, -- Vibrant Plume
[5118] = { "великий плаский зуб" }, -- Large Flat Tooth
[5119] = { "тонка полиняла шерсть" }, -- Fine Loose Hair
[5120] = { "довга хвостова шерсть" }, -- Long Tail Hair
[5121] = { "брудна луска кодо" }, -- Dirty Kodo Scale
[5122] = { "товста шерсть кодо" }, -- Thick Kodo Hair
[5123] = { "сталевий наконечник стріли" }, -- Steel Arrowhead
[5124] = { "маленький зуб раптора" }, -- Small Raptor Tooth
[5125] = { "заряджена луска" }, -- Charged Scale
[5128] = { "полиняла шкіра ящірки" }, -- Shed Lizard Skin
[5133] = { "мокрі тельбухи" }, -- Seeping Gizzard
[5134] = { "маленька пухнаста лапка" }, -- Small Furry Paw
[5135] = { "тонкий чорний кіготь" }, -- Thin Black Claw
[5136] = { "відірване пухнасте вухо" }, -- Torn Furry Ear
[5137] = { "блискуче око" }, -- Bright Eyeball
[5138] = { "голова женця" }, -- Harvester's Head
[5140] = { "пломенистий порошок" }, -- Flash Powder
[5143] = { "кров громоящера" }, -- Thunder Lizard Blood
[5164] = { "крила громояструба" }, -- Thunderhawk Wings
[5165] = { "перо сонцелуского раптора", use="Помістити в гніздо сонцелуского раптора. (Відновлення 10 сек)" }, -- Sunscale Feather, @use Place at a scytheclaw nest. (10 Sec Cooldown)
[5166] = { "отруйна залоза павутиннолісих" }, -- Webwood Venom Sac
[5167] = { "яйце павутиннолісих" }, -- Webwood Egg
[5168] = { "насіння деревника" }, -- Timberling Seed
[5169] = { "паросток деревника" }, -- Timberling Sprout
[5170] = { "вкрита мохом пухлина" }, -- Mossy Tumor
[5172] = { "капсула смерті" }, -- Death Capsule
[5173] = { "смертоквіт", flavor="Нести дуже-дуже обережно." }, -- Deathweed, @flavor It must be carried very, very carefully.
[5174] = { "записка від Нііру" }, -- Note from Neeru
[5175] = { "тотем землі" }, -- Earth Totem
[5176] = { "тотем вогню" }, -- Fire Totem
[5177] = { "тотем води" }, -- Water Totem
[5178] = { "тотем повітря" }, -- Air Totem
[5179] = { "вкрите мохом серце" }, -- Moss-twined Heart
[5180] = { "намисто гармонії" }, -- Necklace of Harmony
[5181] = { "яскрава шовкова накидка" }, -- Vibrant Silk Cape
[5182] = { "тремтливий клинок", hit="Завдає цілі 150 шкоди від криги." }, -- Shiver Blade, @hit Blasts a target for 35 Frost damage.
[5183] = { "пульсуюче серце гідри", equip="Збільшує шкоду від заклинань і ефектів вогню на 7." }, -- Pulsating Hydra Heart, @equip Increases damage done by Fire spells and effects by up to 7.
[5184] = { "наповнений кришталевий фіал" }, -- Filled Crystal Phial
[5185] = { "кришталевий фіал", use="Наповнити кришталевий фіал водами місячного колодязя Тінистої долини." }, -- Crystal Phial, @use Right-click to fill the Crystal Phial at the Shadowglen moonwell.
[5186] = { "частково наповнена ємність" }, -- Partially Filled Vessel
[5187] = { "молот Рак'Зора" }, -- Rhahk'Zor's Hammer
[5188] = { "наповнений флакон" }, -- Filled Vessel
[5189] = { "сяючий плід" }, -- Glowing Fruit
[5190] = { "мерехтливий паросток" }, -- Shimmering Frond
[5191] = { "шабля жорстокості", equip="Збільшує силу атаки на 12." }, -- Cruel Barb, @equip +12 Attack Power.
[5192] = { "клинок злодія" }, -- Thief's Blade
[5193] = { "накидка братства" }, -- Cape of the Brotherhood
[5194] = { "сокира орударя" }, -- Taskmaster Axe
[5195] = { "рукавички з золотистими вкрапленнями" }, -- Gold-flecked Gloves
[5196] = { "розоритель Баца" }, -- Smite's Reaver
[5197] = { "качалка Кухарчика" }, -- Cookie's Tenderizer
[5198] = { "мішалка Кухарчика" }, -- Cookie's Stirring Rod
[5199] = { "штани плавильника" }, -- Smelting Pants
[5200] = { "пронизуючий гарпун" }, -- Impaling Harpoon
[5201] = { "вуглекамінний посох" }, -- Emberstone Staff
[5202] = { "сорочка корсара" }, -- Corsair's Overshirt
[5203] = { "пазур рівнинного скрадача" }, -- Flatland Prowler Claw
[5204] = { "пояс Кривавоперих" }, -- Bloodfeather Belt
[5205] = { "пророслий паросток", use="Відновити вашій цілі від 76 до 91 здоров'я. (Відновлення 2 хв)" }, -- Sprouted Frond, @use Heal your target for 76 to 91. (2 Min Cooldown)
[5206] = { "корінь болотянчика", use="Збільшує фізичну шкоду на 1 протягом 10 хв." }, -- Bogling Root, @use Increases physical damage by 1 for 10 min.
[5207] = { "мутний жезл" }, -- Opaque Wand
[5208] = { "тліючий жезл" }, -- Smoldering Wand
[5209] = { "жезл мороку" }, -- Gloom Wand
[5210] = { "палаючий жезл" }, -- Burning Wand
[5211] = { "жезл сутінків" }, -- Dusk Wand
[5212] = { "палючий жезл" }, -- Blazing Wand
[5213] = { "опікаючий жезл" }, -- Scorching Wand
[5214] = { "жезл повечір'я" }, -- Wand of Eventide
[5215] = { "бурштиновий жезл" }, -- Ember Wand
[5216] = { "смерковий жезл" }, -- Umbral Wand
[5217] = { "заражене серце" }, -- Tainted Heart
[5218] = { "очищене серце деревника", use="Викликати деревника, який захищатиме вас протягом 20 хв." }, -- Cleansed Timberling Heart, @use Summons a Timberling to protect you for 20 min.
[5219] = { "вкрита написами кора" }, -- Inscribed Bark
[5220] = { "ікло хутропуза Кривої Сосни" }, -- Gnarlpine Fang
[5221] = { "голова Меленаса" }, -- Melenas' Head
[5223] = { "порожній самоцвіт мани" }, -- Empty Mana Gem
[5227] = { "порожній самоцвіт мани" }, -- Empty Mana Jewel
[5229] = { "порожній великий кривавий камінь" }, -- Empty Greater Bloodstone
[5232] = { "крихітний камінь душі", use="Зберігає душу дружньої цілі. Якщо ціль, чия душа збережена, помирає, вона може оживити себе з {1} здоров'я та {2} мани.#{1} health and {2} mana" }, -- Minor Soulstone, @use Stores the friendly target's soul.  If the target dies while his soul is stored, he will be able to resurrect with 400 health and 700 mana. (30 Min Cooldown)
[5233] = { "камінь Релу" }, -- Stone of Relu
[5234] = { "скам'янілість Флягопуза" }, -- Flagongut's Fossil
[5235] = { "жезл алхіміка" }, -- Alchemist's Wand
[5236] = { "горючий жезл" }, -- Combustible Wand
[5237] = { "задурлива отрута", use="Вкриває зброю отрутою на {1} хв. Кожен удар має {2}% імовірності отруїти ворога, сповільнюючи вимову заклять на {3}% на {4} с. {5} зарядів.#lasts for {1} min#{2}% chance#by {3}% for {4} sec#{5} charges" }, -- Mind-numbing Poison, @use Coats a weapon with poison that lasts for 30 minutes.Each strike has a 20% chance of poisoning the enemy, increasing their casting time by 40% for 10 sec.  50 charges. (Proc chance: 20%)
[5238] = { "смоляний жезл" }, -- Pitchwood Wand
[5239] = { "чорнокістяний жезл" }, -- Blackbone Wand
[5240] = { "смолоскипний жезл" }, -- Torchlight Wand
[5241] = { "дворфійська вогняна паличка" }, -- Dwarven Flamestick
[5242] = { "тліючий жезл" }, -- Cinder Wand
[5243] = { "вогнеплюй" }, -- Firebelcher
[5244] = { "освячена паличка" }, -- Consecrated Wand
[5245] = { "жезл закликача" }, -- Summoner's Wand
[5246] = { "жезл розкопок" }, -- Excavation Rod
[5247] = { "скіпетр скорботи" }, -- Rod of Sorrow
[5248] = { "світловий жезл" }, -- Flash Wand
[5249] = { "палаюча тріска" }, -- Burning Sliver
[5250] = { "обгорілий жезл" }, -- Charred Wand
[5251] = { "фіал провидіння", use="Створити чашу провидіння. (Відновлення 2 хв)" }, -- Phial of Scrying, @use Creates a bowl of scrying. (2 Min Cooldown)
[5252] = { "жезл розкладання" }, -- Wand of Decay
[5253] = { "гоблінський запальник" }, -- Goblin Igniter
[5254] = { "потерті наплічники" }, -- Rugged Spaulders
[5255] = { "томагавк свинобраза" }, -- Quilboar Tomahawk
[5256] = { "брязкальце Коворка" }, -- Kovork's Rattle
[5257] = { "накидка з темним капюшоном" }, -- Dark Hooded Cape
[5263] = { "кишеньковий ворс" }, -- Pocket Lint
[5264] = { "жетон на безкоштовне пиво" }, -- Complimentary Beer Token
[5265] = { "розбавлене пиво", use="Це слабке пиво збільшує ваш дух на 1 і зменшує витривалість на 1 протягом 10 хвилин." }, -- Watered-down Beer, @use This weak beer increases your Spirit by 1 and decreases your Stamina by 1 for 10 min.
[5266] = { "око Адеґуса" }, -- Eye of Adaegus
[5267] = { "багряний кріс" }, -- Scarlet Kris
[5268] = { "тріснутий панцир силітида" }, -- Cracked Silithid Shell
[5269] = { "лімфа силітида" }, -- Silithid Ichor
[5270] = { "мертвошляпка" }, -- Death Cap
[5271] = { "лусконіжка" }, -- Scaber Stalk
[5272] = { "божевільні письмена" }, -- Insane Scribbles
[5273] = { "реліквія Матистри" }, -- Mathystra Relic
[5274] = { "наплічник троянди" }, -- Rose Mantle
[5275] = { "стягуючий пояс" }, -- Binding Girdle
[5279] = { "гарпієвий кушнір" }, -- Harpy Skinner
[5299] = { "рукавички місяця" }, -- Gloves of the Moon
[5302] = { "кобальтовий баклер" }, -- Cobalt Buckler
[5306] = { "посох вершника вітру" }, -- Wind Rider Staff
[5309] = { "мушкет корсара" }, -- Privateer Musket
[5310] = { "бриджі морського пса" }, -- Sea Dog Britches
[5311] = { "черевики з пряжками" }, -- Buckled Boots
[5312] = { "клепані рукавиці" }, -- Riveted Gauntlets
[5313] = { "тотемна племінна каблучка" }, -- Totemic Clan Ring
[5314] = { "накидка мисливця на кнурів" }, -- Boar Hunter's Cape
[5315] = { "нарукавники полісся" }, -- Timberland Armguards
[5316] = { "жакет з облущеної кори" }, -- Barkshell Tunic
[5317] = { "жакет з пересохлого моху" }, -- Dry Moss Tunic
[5318] = { "протигарпієва сокира" }, -- Zhovur Axe
[5319] = { "приголомшливі напліччя" }, -- Bashing Pauldrons
[5320] = { "м'які пластинчасті чоботи" }, -- Padded Lamellar Boots
[5321] = { "елегантний короткий меч" }, -- Elegant Shortsword
[5322] = { "відбійний молот" }, -- Demolition Hammer
[5323] = { "вічносяйний ліхтар", use="Зцілює вашу ціль на значення від {1} до {2} здоров'я. (Відновлення 30 хв)#for {1} to {2}" }, -- Everglow Lantern, @use Heal your target for 135 to 165. (30 Min Cooldown)
[5324] = { "молоток інженера" }, -- Engineer's Hammer
[5325] = { "зварювальний щит" }, -- Welding Shield
[5326] = { "спалахкуючий жезл" }, -- Flaring Baton
[5327] = { "заяложені штани майструвальника" }, -- Greasy Tinker's Pants
[5328] = { "пояс із застібкою" }, -- Cinched Belt
[5329] = { "фігурка кота" }, -- Cat Figurine
[5330] = { "реліктова ельфійська чаша" }, -- Elven Cup Relic
[5332] = { "сяюча фігурка кота", use="Викликати примарного шаблезуба, який битиметься за вас протягом 10 хв. (Відновлення 10 хв)" }, -- Glowing Cat Figurine, @use Summons a Ghost Saber to fight for you for 10 min. (10 Min Cooldown)
[5334] = { "99-річний портвейн" }, -- 99-Year-Old Port
[5335] = { "мішечок з монетами" }, -- A Sack of Coins
[5336] = { "сережка грела" }, -- Grell Earring
[5337] = { "рукавички мандрів" }, -- Wayfaring Gloves
[5338] = { "древня печатка місячного каменю" }, -- Ancient Moonstone Seal
[5339] = { "змієквіт" }, -- Serpentbloom
[5340] = { "мішалка для казана" }, -- Cauldron Stirrer
[5341] = { "вкритий спорами мундир" }, -- Spore-covered Tunic
[5342] = { "рапторовий пунш", use="Збільшує ваш інтелект на 4 та зменшує вашу витривалість на 5 на 5 хв." }, -- Raptor Punch, @use Increases your Intellect by 4 and decreases your Stamina by 5 for 5 min.
[5343] = { "плащ бармена" }, -- Barkeeper's Cloak
[5344] = { "загострена сокира" }, -- Pointed Axe
[5345] = { "камнедеревний молот" }, -- Stonewood Hammer
[5346] = { "орчий бойовий лук" }, -- Orcish Battle Bow
[5347] = { "згубний жезл" }, -- Pestilent Wand
[5348] = { "потертий пергамент" }, -- Worn Parchment
[5349] = { "начаклований кекс", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Muffin, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[5350] = { "начаклована вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Water, @use Restores 151.2 mana over 18 sec.  Must remain seated while drinking.
[5351] = { "каблучка мисливця за головами" }, -- Bounty Hunter's Ring
[5352] = { "книга \"Сили підземні\"" }, -- Book: The Powers Below
[5353] = { "повідомлення для Елісси Зоребриз" }, -- Message for Elissa Starbreeze
[5354] = { "лист до Дельґрена" }, -- Letter to Delgren
[5355] = { "пояс володаря звірів" }, -- Beastmaster's Girdle
[5356] = { "опалюючий жезл" }, -- Branding Rod
[5357] = { "вартовий долини" }, -- Ward of the Vale
[5359] = { "манускрипт Лорґаліса" }, -- Lorgalis Manuscript
[5360] = { "реліквія високородних" }, -- Highborne Relic
[5361] = { "зубочистка з риб'ячої кістки" }, -- Fishbone Toothpick
[5362] = { "жувальна іграшка" }, -- Chew Toy
[5363] = { "складена хустинка" }, -- Folded Handkerchief
[5364] = { "кам'яна сіль" }, -- Dry Salt Lick
[5366] = { "сяючий камінь душі" }, -- Glowing Soul Gem
[5367] = { "примітивний кам'яний інструмент" }, -- Primitive Rock Tool
[5368] = { "порожній гаманець" }, -- Empty Wallet
[5369] = { "обгризена кістка" }, -- Gnawed Bone
[5370] = { "зігнута ложка" }, -- Bent Spoon
[5371] = { "шматочок корала" }, -- Piece of Coral
[5373] = { "щасливий талісман" }, -- Lucky Charm
[5374] = { "кишеньковий годинник" }, -- Small Pocket Watch
[5375] = { "палиця-чесалка" }, -- Scratching Stick
[5376] = { "розбите дзеркало" }, -- Broken Mirror
[5377] = { "мушля гребінця" }, -- Scallop Shell
[5379] = { "захалявний ніж" }, -- Boot Knife
[5380] = { "запечатаний лист до Елісси", flavor="Запечатаний лист для Елісси Зоребриз з Аубердіна." }, -- Sealed Letter to Elissa, @flavor A sealed letter for Elissa Starbreeze in Auberdine.
[5381] = { "запечатаний лист до Балтула", flavor="Запечатаний лист для Балтула Тіневдара." }, -- Sealed Letter to Balthule, @flavor A sealed letter for Balthule Shadowstrike.
[5382] = { "кулон Анайї" }, -- Anaya's Pendant
[5383] = { "голова Атріка Нарассіна" }, -- Athrikus Narassin's Head
[5385] = { "нога повзуна" }, -- Crawler Leg
[5386] = { "чудова шкура місяцескрада" }, -- Fine Moonstalker Pelt
[5387] = { "зачарований плащ місяцескрада", use="Перетворитися на місяцескрада та отримати невидимість на 5 хв." }, -- Enchanted Moonstalker Cloak, @use Transform into a Moonstalker and become invisible for 5 min.
[5388] = { "череп Рана Кривавозубого" }, -- Ran Bloodtooth's Skull
[5389] = { "осквернений тотем хутропузів" }, -- Corrupted Furbolg Totem
[5390] = { "повідомлення Фендрала" }, -- Fandral's Message
[5391] = { "рідкісна земля" }, -- Rare Earth
[5392] = { "кинджал шиподерева" }, -- Thistlewood Dagger
[5393] = { "посох шиподерева" }, -- Thistlewood Staff
[5394] = { "тренувальні рукавиці лучника" }, -- Archery Training Gloves
[5395] = { "щит діброви" }, -- Woodland Shield
[5396] = { "ключ від Випаленої ущелини" }, -- Key to Searing Gorge
[5397] = { "порох повстанців" }, -- Defias Gunpowder
[5398] = { "широкі поножі" }, -- Canopy Leggings
[5399] = { "чоботи вистежування" }, -- Tracking Boots
[5400] = { "кров Кобрана" }, -- Blood of Cobrahn
[5401] = { "кров Анакондри" }, -- Blood of Pythas
[5402] = { "кров Пітонаса" }, -- Blood of Anacondra
[5403] = { "кров Серпентіса" }, -- Blood of Serpentis
[5404] = { "зміїні наплечі" }, -- Serpent's Shoulders
[5405] = { "вовняний плащ" }, -- Draped Cloak
[5406] = { "порожній малий кривавий камінь" }, -- Empty Minor Bloodstone
[5411] = { "тотем очищення Зимового Копита", use="Викликає духів Зимового Копита для очищення." }, -- Winterhoof Cleansing Totem, @use Invokes Winterhoof spirits of cleansing.
[5412] = { "око молотника" }, -- Thresher Eye
[5413] = { "ікло місяцескрада" }, -- Moonstalker Fang
[5414] = { "посивілий скальп" }, -- Grizzled Scalp
[5415] = { "тотем очищення Громового Рога", use="Викликає духів Громового Рога для очищення." }, -- Thunderhorn Cleansing Totem, @use Invokes Thunderhorn spirits of cleansing.
[5416] = { "тотем очищення Дикої Гриви", use="Викликає духів Дикої Гриви для очищення." }, -- Wildmane Cleansing Totem, @use Invokes Wildmane spirits of cleansing.
[5419] = { "дикі наручі" }, -- Feral Bracers
[5420] = { "броня банші" }, -- Banshee Armor
[5421] = { "зачарування вогняного спалаху", use="Зачарування зброї чарами, що дозволяють з 15% шансом нанести від 9 до 13 шкоди від вогню всім ворогам в радіусі 3 м." }, -- Fiery Blaze Enchantment, @use Enchants a weapon to have a 15% chance to inflict 9 to 13 Fire damage to all enemies within 3 yards.
[5422] = { "ожинові поножі" }, -- Brambleweed Leggings
[5423] = { "ікло Боана" }, -- Boahn's Fang
[5424] = { "стародавня статуетка" }, -- Ancient Statuette
[5425] = { "пояс з рунічної луски" }, -- Runescale Girdle
[5426] = { "поцілунок змії", hit="Отруює ціль, завдаючи 7 шкоди від природи кожні 3 с протягом 15 с." }, -- Serpent's Kiss, @hit Poisons target for 7 Nature damage every 3 sec for 15 sec.
[5427] = { "примітивний кишеньковий годинник" }, -- Crude Pocket Watch
[5428] = { "екзотична кулінарна книга", flavor="Як готувати людина" }, -- An Exotic Cookbook, @flavor How To Serve Man
[5429] = { "красивий камінчик" }, -- A Pretty Rock
[5430] = { "хитромудра дрібничка" }, -- Intricate Bauble
[5431] = { "порожня фляга" }, -- Empty Hip Flask
[5432] = { "дерев'яна люлька" }, -- Hickory Pipe
[5433] = { "лялька-мотанка" }, -- Rag Doll
[5435] = { "блискуча виделка" }, -- Shiny Dinglehopper
[5437] = { "батранове волосся" }, -- Bathran's Hair
[5439] = { "малий сагайдак", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Small Quiver, @equip Increases ranged attack speed by 10%.
[5440] = { "пляшка пошесті" }, -- Bottle of Disease
[5441] = { "малий гаман для куль", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Small Shot Pouch, @equip Increases ranged attack speed by 10%.
[5442] = { "голова Аруґала" }, -- Head of Arugal
[5443] = { "позолочений баклер" }, -- Gold-plated Buckler
[5444] = { "шахтарська накидка" }, -- Miner's Cape
[5445] = { "зорамський перстень" }, -- Ring of Zoram
[5446] = { "зламаний браслет елементаля" }, -- Broken Elemental Bracer
[5447] = { "пошкоджений браслет елементаля" }, -- Damaged Elemental Bracer
[5448] = { "розколотий браслет елементаля" }, -- Fractured Elemental Bracer
[5451] = { "розбитий браслет елементаля" }, -- Crushed Elemental Bracer
[5455] = { "сувій з провіщенням", flavor=" Цей сувій вкритий сяючими рунами." }, -- Divined Scroll, @flavor This paper is covered in glowing runes.
[5456] = { "сувій провіщення", flavor="Сувій чистий, за винятком кількох рун. Для його використання вам знадобляться браслети елементалів." }, -- Divining Scroll, @flavor The paper is blank save for a few runes. You'll need bracers from the elementals to use it.
[5457] = { "відрізаний кіготь вуду", use="Зменшити фізичну шкоду цілі на 5 на 2 хв. (Відновлення 1 хв)" }, -- Severed Voodoo Claw, @use Physical damage caused by the target is reduced by 5 for 2 min. (1 Min Cooldown)
[5458] = { "болотолісий пояс" }, -- Dirtwood Belt
[5459] = { "сокира захисника" }, -- Defender Axe
[5460] = { "ліки Оренділа" }, -- Orendil's Cure
[5461] = { "гілка Кенарія" }, -- Branch of Cenarius
[5462] = { "жезл трансформації Дартола", use="Перетворює вас на хутропуза на 3 хв. (Відновлення 1 хв)" }, -- Dartol's Rod of Transformation, @use Transforms you into a Furbolg for 3 min. (1 Min Cooldown)
[5463] = { "сяючий самоцвіт" }, -- Glowing Gem
[5464] = { "залізне руків'я" }, -- Iron Shaft
[5465] = { "мала павуча лапка" }, -- Small Spider Leg
[5466] = { "жало скорпіда" }, -- Scorpid Stinger
[5467] = { "м'ясо кодо" }, -- Kodo Meat
[5468] = { "м'яке м'ясо навіженка" }, -- Soft Frenzy Flesh
[5469] = { "м'ясо бігуна" }, -- Strider Meat
[5470] = { "хвіст громоящіра" }, -- Thunder Lizard Tail
[5471] = { "м'ясо оленя" }, -- Stag Meat
[5472] = { "калдорейський павучий шашлик", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 2 на 15 хв." }, -- Kaldorei Spider Kabob, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min.
[5473] = { "скорпідовий сюрприз", use="Відновлює 294 здоров'я протягом 21 сек, якщо вам, звісно, не трапиться отруйна залоза." }, -- Scorpid Surprise, @use Heals 294 damage over 21 sec, assuming you don't bite down on a poison sac.
[5474] = { "смажене м'ясо кодо", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 2 на 15 хв." }, -- Roasted Kodo Meat, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min.
[5475] = { "дерев'яний ключ", use="Відкриває обдерту скриню." }, -- Wooden Key, @use Unlocks a worn chest.
[5476] = { "філе навіженки", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв." }, -- Fillet of Frenzy, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[5477] = { "гуляш з бігуна", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв." }, -- Strider Stew, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[5478] = { "рагу з печерних щурів", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Dig Rat Stew, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[5479] = { "хрусткий хвіст ящірки", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв." }, -- Crispy Lizard Tail, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[5480] = { "пісна оленина", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв." }, -- Lean Venison, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[5481] = { "роги сатира" }, -- Satyr Horns
[5482] = { "рецепт: Калдорейський павучий шашлик", use="Навчає вас приготуванню калдорейського павучого шашлику." }, -- Recipe: Kaldorei Spider Kabob, @use Teaches you how to cook a Kaldorei Spider Kabob.
[5483] = { "рецепт: Скорпідовий сюрприз", use="Навчає вас готувати скорпідовий сюрприз." }, -- Recipe: Scorpid Surprise, @use Teaches you how to cook a Scorpid Surprise.
[5484] = { "рецепт: Смажене м'ясо кодо", use="Навчає вас готувати смажене м'ясо кодо." }, -- Recipe: Roasted Kodo Meat, @use Teaches you how to cook Roasted Kodo Meat.
[5485] = { "рецепт: Філе навіженки", use="Навчає вас готувати філе навіженки." }, -- Recipe: Fillet of Frenzy, @use Teaches you how to cook a Fillet of Frenzy.
[5486] = { "рецепт: Гуляш з бігуна", use="Навчає вас приготуванню гуляшу з бігуна." }, -- Recipe: Strider Stew, @use Teaches you how to cook a Strider Stew.
[5487] = { "рецепт: Рагу з печерних щурів", use="Навчає вас приготуванню огидного рагу з печерних щурів." }, -- Recipe: Dig Rat Stew, @use Teaches you how to cook a disgusting Dig Rat Stew.
[5488] = { "рецепт: Хрусткий хвіст ящірки", use="Навчає вас готувати хрусткий хвіст ящірки." }, -- Recipe: Crispy Lizard Tail, @use Teaches you how to cook up a Crispy Lizard Tail.
[5489] = { "рецепт: Пісна оленина", use="Навчає вас готувати пісну оленину." }, -- Recipe: Lean Venison, @use Teaches you how to cook Lean Venison.
[5490] = { "голова гнівохвостої наги" }, -- Wrathtail Head
[5493] = { "сльоза Елуни" }, -- Elune's Tear
[5494] = { "жменя зорепилу" }, -- Handful of Stardust
[5498] = { "маленька блискуча перлина" }, -- Small Lustrous Pearl
[5500] = { "райдужна перлина" }, -- Iridescent Pearl
[5503] = { "м'ясо молюска" }, -- Clam Meat
[5504] = { "гостре м'ясо молюска" }, -- Tangy Clam Meat
[5505] = { "щоденник Тероніса", flavor="Щоденник підмочений, але загалом в хорошому стані." }, -- Teronis' Journal, @flavor The journal is waterlogged, but in otherwise good condition.
[5506] = { "око повзуна" }, -- Beady Eye Stalk
[5507] = { "вишукана підзорна труба", use="Дозволяє поглянути в далечінь." }, -- Ornate Spyglass, @use Allows you to look far into the distance.
[5508] = { "впалий місячний камінь" }, -- Fallen Moonstone
[5509] = { "камінь здоров'я", use="Миттєво відновлює 500 здоров'я. (Відновлення 2 хв)" }, -- Healthstone, @use Instantly restores 500 life. (2 Min Cooldown)
[5510] = { "великий камінь здоров'я", use="Миттєво відновлює 800 здоров'я. (Відновлення 2 хв)" }, -- Greater Healthstone, @use Instantly restores 800 life. (2 Min Cooldown)
[5511] = { "малий камінь здоров'я", use="Миттєво відновлює 250 здоров'я. (Відновлення 2 хв)" }, -- Lesser Healthstone, @use Instantly restores 250 life. (2 Min Cooldown)
[5512] = { "крихітний камінь здоров'я", use="Миттєво відновлює 100 здоров'я. (Відновлення 2 хв)" }, -- Minor Healthstone, @use Instantly restores 100 life. (2 Min Cooldown)
[5513] = { "нефрит мани", use="Відновлює від 550 до 650 мани. (Відновлення 2 хв)" }, -- Mana Jade, @use Restores 550 to 650 mana. (2 Min Cooldown)
[5514] = { "агат мани", use="Відновлює від 375 до 425 мани. (Відновлення 2 хв)" }, -- Mana Agate, @use Restores 375 to 425 mana. (2 Min Cooldown)
[5516] = { "ікло молотника" }, -- Threshadon Fang
[5519] = { "залізне навершя" }, -- Iron Pommel
[5520] = { "щоденник Велінди" }, -- Velinde's Journal
[5521] = { "ключ Велінди" }, -- Velinde's Key
[5522] = { "камінь чарів", equip="Підвищує вашу ймовірність завдати критичного удару закляттями на {1}%.#spells by {1}", use="Усуває всі магічні ефекти з заклинача та поглинає {1} магічного пошкодження протягом {2} хв.#absorb {1}#for {2} min" }, -- Spellstone, @equip Improves your chance to get a critical strike with spells by 1%., @use Removes all magic effects from the caster and will absorb 400 magic damage for 1 min.
[5523] = { "маленький вусатий молюск" }, -- Small Barnacled Clam
[5524] = { "товстостінний молюск" }, -- Thick-shelled Clam
[5525] = { "варені молюски", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв." }, -- Boiled Clams, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[5526] = { "суп з молюсків", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Clam Chowder, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[5527] = { "гоблінські фаршировані молюски", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Goblin Deviled Clams, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[5528] = { "рецепт: Суп з молюсків", use="Навчає вас готувати суп з молюсків." }, -- Recipe: Clam Chowder, @use Teaches you how to cook a delicious Clam Chowder.
[5529] = { "могильний пил" }, -- Tomb Dust
[5530] = { "сліпучий порошок" }, -- Blinding Powder
[5533] = { "фоліант Ілкруда Маґтрулла" }, -- Ilkrud Magthrull's Tome
[5534] = { "обід Паркера" }, -- Parker's Lunch
[5535] = { "Компендіум полеглих" }, -- Compendium of the Fallen
[5536] = { "Мітологія титанів" }, -- Mythology of the Titans
[5537] = { "голова Сарілуса Гидкородного" }, -- Sarilus Foulborne's Head
[5538] = { "обручка Воррела" }, -- Vorrel's Wedding Ring
[5539] = { "рекомендаційний лист", flavor="Від брата Антона з Багряного Походу" }, -- Letter of Commendation, @flavor Sealed by Brother Anton of the Scarlet Crusade
[5540] = { "прикрашений перлами кинджал" }, -- Pearl-handled Dagger
[5541] = { "райдужний молот" }, -- Iridescent Hammer
[5542] = { "оздоблений перлами плащ" }, -- Pearl-clasped Cloak
[5543] = { "креслення: Райдужний молот", use="Навчає вас створювати райдужний молот." }, -- Plans: Iridescent Hammer, @use Teaches you how to make an Iridescent Hammer.
[5544] = { "череп Дала Кровопазура" }, -- Dal Bloodclaw's Skull
[5547] = { "відтворений жезл" }, -- Reconstructed Rod
[5565] = { "пекельний камінь" }, -- Infernal Stone
[5566] = { "зламаний ріг" }, -- Broken Antler
[5567] = { "срібний гачок" }, -- Silver Hook
[5568] = { "гладка галька" }, -- Smooth Pebble, @desc Adds 4 damage per second
[5569] = { "водорості" }, -- Seaweed
[5570] = { "яйце мохового павука" }, -- Deepmoss Egg
[5571] = { "маленький чорний мішечок" }, -- Small Black Pouch
[5572] = { "маленький зелений мішечок" }, -- Small Green Pouch
[5573] = { "зелена шкіряна сумка" }, -- Green Leather Bag
[5574] = { "біла шкіряна сумка" }, -- White Leather Bag
[5575] = { "великий зелений мішок" }, -- Large Green Sack
[5576] = { "великий коричневий мішок" }, -- Large Brown Sack
[5577] = { "креслення: Грубі бронзові браслети", use="Навчає вас створювати грубі бронзові браслети." }, -- Plans: Rough Bronze Bracers, @use Teaches you how to make Rough Bronze Bracers.
[5578] = { "креслення: Посріблений бронзовий нагрудник", use="Навчає вас створювати посріблений бронзовий нагрудник." }, -- Plans: Silvered Bronze Breastplate, @use Teaches you how to make a Silvered Bronze Breastplate.
[5579] = { "молот повстанців" }, -- Militia Warhammer
[5580] = { "молоток повстанців" }, -- Militia Hammer
[5581] = { "гладка тростина" }, -- Smooth Walking Staff
[5582] = { "каміннопазуриста живиця" }, -- Stonetalon Sap
[5583] = { "луска чародракончика" }, -- Fey Dragon Scale
[5584] = { "сутінковий вус" }, -- Twilight Whisker
[5585] = { "око оленя" }, -- Courser Eye
[5586] = { "клинок шиподерева" }, -- Thistlewood Blade
[5587] = { "шипокорінна палиця" }, -- Thornroot Club
[5588] = { "токсин Лідона" }, -- Lydon's Toxin
[5589] = { "вкриті мохом рукавиці" }, -- Moss-covered Gauntlets
[5590] = { "плетені поручі" }, -- Cord Bracers
[5591] = { "промокла накидка" }, -- Rain-spotted Cape
[5592] = { "сковуючий пасок" }, -- Shackled Girdle
[5593] = { "баклер скель" }, -- Crag Buckler
[5594] = { "лист для Джин'Зіла" }, -- Letter to Jin'Zil
[5595] = { "молот хащів" }, -- Thicket Hammer
[5596] = { "ясеневий лук" }, -- Ashwood Bow
[5601] = { "вилуплене яйце" }, -- Hatched Egg Sac
[5602] = { "липка павутина" }, -- Sticky Spider Webbing
[5603] = { "мішок Бацбаха" }, -- Wizbang's Gunnysack
[5604] = { "ельфійський жезл" }, -- Elven Wand
[5605] = { "ніж для кронування" }, -- Pruning Knife
[5606] = { "садові рукавички" }, -- Gardening Gloves
[5608] = { "капюшон життя" }, -- Living Cowl
[5609] = { "пояс непохитності" }, -- Steadfast Cinch
[5610] = { "лісошквальний плащ" }, -- Gustweald Cloak
[5611] = { "сльоза горя" }, -- Tear of Grief
[5612] = { "манжети з плюща" }, -- Ivy Cuffs
[5613] = { "посох Очистителя", use="Очищає дружню ціль, усуваючи 1 ефект хвороби та 1 ефект отрути. (Відновлення 5 хв)" }, -- Staff of the Purifier, @use Purifies the friendly target, removing 1 disease effect and 1 poison effect. (5 Min Cooldown)
[5614] = { "удар серафима" }, -- Seraph's Strike
[5615] = { "меч лісника" }, -- Woodsman Sword
[5616] = { "кишковерт", hit="Ранить ціль, спричиняючи 80 шкоди від кровотечі протягом 30 сек." }, -- Gutwrencher, @hit Wounds the target causing them to bleed for 80 damage over 30 sec.
[5617] = { "поножі волоцюги" }, -- Vagabond Leggings
[5618] = { "плащ розвідника" }, -- Scout's Cloak
[5619] = { "нефритовий фіал", use="Наповнити нефритовий фіал водами місячного колодязя Зоряного Бризу." }, -- Jade Phial, @use Fill the Jade Phial at the Starbreeze moonwell.
[5620] = { "флакон крові невинних" }, -- Vial of Innocent Blood
[5621] = { "турмаліновий фіал", use="Наповнити турмаліновий фіал водами місячного колодязя Арлітріенських ставів." }, -- Tourmaline Phial, @use Fill the Tourmaline Phial at the Pools of Arlithrien moonwell.
[5622] = { "перстень духовенства" }, -- Clergy Ring
[5623] = { "аметистовий фіал", use="Наповнити аметистовий фіал водами місячного колодязя поляни Оракула." }, -- Amethyst Phial, @use Fill the Amethyst Phial at the Oracle Glade moonwell.
[5624] = { "обруч порядку" }, -- Circlet of the Order
[5626] = { "черепотес" }, -- Skullchipper
[5627] = { "клинок-реліквія" }, -- Relic Blade
[5628] = { "записка Зами" }, -- Zamah's Note
[5629] = { "рукавиці Молоторука" }, -- Hammerfist Gloves
[5630] = { "вітрофетрові рукавиці" }, -- Windfelt Gloves
[5631] = { "зілля люті", use="Збільшує лють на {1}-{2}. (Відновлення 2 хв)#by {1} to {2}" }, -- Rage Potion, @use Increases Rage by 20 to 40. (2 Min Cooldown)
[5632] = { "зілля боягузливої втечі", use="Ви в страху тікаєте від найближчого ворога у випадковому напрямку.  Якщо поблизу немає ворогів, ви завмираєте від страху." }, -- Cowardly Flight Potion, @use You run in fear at a high speed from a nearby enemy in a random direction.   If there are no enemies nearby you stand frozen in fear. (2 Min Cooldown)
[5633] = { "велике зілля люті", use="Збільшує лють на {1}-{2}. (Відновлення 2 хв)#by {1} to {2}" }, -- Great Rage Potion, @use Increases Rage by 30 to 60. (2 Min Cooldown)
[5634] = { "зілля вільної дії", use="Надає невразливість до приголомшення та ефектів ускладнення руху на наступні 30 сек. Не знімає вже наявні ефекти. (Відновлення 2 хв)" }, -- Free Action Potion, @use Makes you immune to Stun and Movement Impairing effects for the next 30 sec.   Does not remove effects already on the imbiber. (2 Min Cooldown)
[5635] = { "гострий кіготь" }, -- Sharp Claw
[5636] = { "вишукане перо" }, -- Delicate Feather
[5637] = { "велике ікло" }, -- Large Fang
[5638] = { "розсіювач токсичного туману", use="Розмістити біля повітряного порту ТзНБ \"Авантюра\"." }, -- Toxic Fogger, @use Place near the Venture Co. Airport
[5639] = { "наповнений нефритовий фіал" }, -- Filled Jade Phial
[5640] = { "рецепт: Зілля люті", use="Навчає вас створювати зілля люті." }, -- Recipe: Rage Potion, @use Teaches you how to make a Rage Potion.
[5642] = { "рецепт: Зілля вільної дії", use="Навчає вас створювати зілля вільної дії." }, -- Recipe: Free Action Potion, @use Teaches you how to make a Free Action Potion.
[5643] = { "рецепт: Велике зілля люті", use="Навчає вас створювати велике зілля люті." }, -- Recipe: Great Rage Potion, @use Teaches you how to make a Great Rage Potion.
[5645] = { "наповнений турмаліновий фіал" }, -- Filled Tourmaline Phial
[5646] = { "флакон з благословенною водою" }, -- Vial of Blessed Water
[5654] = { "миттєвий токсин", use="Вкрити меч або кинджал отрутою на {1} хв. Кожен удар має шанс отруїти ворога, миттєво завдаючи від {2} до {3} шкоди від природи.#lasts for {1} min#inflicts {2}-{3}" }, -- Instant Toxin, @use Coats a sword or dagger with poison that lasts for 30 minutes.Each strike has a chance of poisoning the enemy which instantly inflicts 10-30 damage.
[5655] = { "вузда каштанової кобили", use="Викликає та відпускає верхову каштанову кобилу. (Відновлення 3 сек)" }, -- Chestnut Mare Bridle, @use Summons and dismisses a rideable Chestnut Mare. (3 Sec Cooldown)
[5656] = { "вузда гнідого коня", use="Викликає та відпускає верхового гнідого коня. (Відновлення 3 сек)" }, -- Brown Horse Bridle, @use Summons and dismisses a rideable brown horse. (3 Sec Cooldown)
[5657] = { "рецепт: Миттєвий токсин", use="Навчає вас створювати миттєвий токсин." }, -- Recipe: Instant Toxin, @use Teaches you how to make an Instant Toxin.
[5659] = { "тліюча вуглинка" }, -- Smoldering Embers
[5663] = { "ріг рудого вовка", use="Викликає та відпускає верхового рудого вовка. (Відновлення 3 сек)" }, -- Horn of the Red Wolf, @use Summons and dismisses a rideable red wolf. (3 Sec Cooldown)
[5664] = { "іржава шрапнель" }, -- Corroded Shrapnel
[5665] = { "ріг темного вовка", use="Викликає та відпускає верхового темного вовка. (Відновлення 3 сек)" }, -- Horn of the Dire Wolf, @use Summons and dismisses a rideable Dire Wolf. (3 Sec Cooldown)
[5668] = { "ріг бурого вовка", use="Викликає та відпускає верхового бурого вовка. (Відновлення 3 сек)" }, -- Horn of the Brown Wolf, @use Summons and dismisses a rideable Brown Wolf. (3 Sec Cooldown)
[5669] = { "уламки пилового дідька" }, -- Dust Devil Debris
[5675] = { "кристалічна луска" }, -- Crystalized Scales
[5681] = { "ідкий сік" }, -- Corrosive Sap
[5686] = { "голова Ордана" }, -- Ordanus' Head
[5687] = { "ключ хранителя воріт" }, -- Gatekeeper's Key
[5689] = { "ключ сплячих" }, -- Sleepers' Key
[5690] = { "ключ пазура" }, -- Claw Key
[5691] = { "ключ прихистку" }, -- Barrow Key
[5692] = { "дистанційний детонатор (червоний)", use="Підірвати заряд НГ-5 (червоний) після встановлення." }, -- Remote Detonator (Red), @use Detonates NG-5 Charge (Red) after it's been set.
[5693] = { "дистанційний детонатор (синій)", use="Підірвати заряд НГ-5 (синій) після встановлення." }, -- Remote Detonator (Blue), @use Detonates NG-5 Charge (Blue) after it's been set.
[5694] = { "заряд НГ-5 (червоний)", use="Встановити заряд НГ-5 (червоний)" }, -- NG-5 Explosives (Red), @use Sets NG-5 Charge (Red)
[5695] = { "заряд НГ-5 (синій)", use="Встановити заряд НГ-5 (синій)" }, -- NG-5 Explosives (Blue), @use Sets NG-5 Charge (Blue)
[5717] = { "документи ТзНБ \"Авантюра\"" }, -- Venture Co. Letters
[5718] = { "інженерні креслення ТзНБ \"Авантюра\"" }, -- Venture Co. Engineering Plans
[5731] = { "сувій повідомлення" }, -- Scroll of Messaging
[5732] = { "НГ-5" }, -- NG-5
[5733] = { "невідома руда" }, -- Unidentified Ore
[5734] = { "креслення Супер дереворуба 6000" }, -- Super Reaper 6000 Blueprints
[5735] = { "запечатаний конверт" }, -- Sealed Envelope
[5736] = { "механічна рука Ґерензо" }, -- Gerenzo's Mechanical Arm
[5737] = { "плани таємних операцій: Альфа і Бета" }, -- Covert Ops Plans: Alpha & Beta
[5738] = { "речі для таємної операції" }, -- Covert Ops Pack
[5739] = { "варварська портупея" }, -- Barbaric Harness
[5740] = { "червона ракета", use="Вистрілює в повітря феєрверк, який вибухає тисячею червоних зірок." }, -- Red Fireworks Rocket, @use Shoots a firework into the air that bursts into a thousand red stars.
[5741] = { "уламок каменю" }, -- Rock Chip
[5742] = { "дорогоцінний кинджал" }, -- Gemstone Dagger
[5743] = { "призматичний перстень" }, -- Prismstone Ring
[5744] = { "блідий шкуродер" }, -- Pale Skinner
[5748] = { "довгий лук кентавра" }, -- Centaur Longbow
[5749] = { "сокира-коса" }, -- Scythe Axe
[5750] = { "пасок вождя" }, -- Warchief's Girdle
[5751] = { "павутинокрилий плащ" }, -- Webwing Cloak
[5752] = { "хвостовий шип виверни", hit="Отруює ціль, завдаючи 6 шкоди від природи кожні 3 с протягом 15 с." }, -- Wyvern Tailspike, @hit Poisons target for 6 Nature damage every 3 sec for 15 sec.
[5753] = { "шолом зі скуйовдженим пір'ям" }, -- Ruffled Chaplet
[5754] = { "медальйон вовчої зграї" }, -- Wolfpack Medallion
[5755] = { "оніксова пластина подрібнювача" }, -- Onyx Shredder Plate
[5756] = { "клинок-різак", hit="Завдає цілі 45 шкоди від криги." }, -- Sliverblade, @hit Blasts a target for 45 Frost damage.
[5757] = { "дубова палиця" }, -- Hardwood Cudgel
[5758] = { "мітрилова скринька" }, -- Mithril Lockbox
[5759] = { "торієва скринька" }, -- Thorium Lockbox
[5760] = { "етернієва скринька" }, -- Eternium Lockbox
[5761] = { "ковмарська кувалда" }, -- Anvilmar Sledge
[5762] = { "червона лляна сумка" }, -- Red Linen Bag
[5763] = { "червона вовняна сумка" }, -- Red Woolen Bag
[5764] = { "зелена шовкова сумка" }, -- Green Silk Pack
[5765] = { "чорна шовкова сумка" }, -- Black Silk Pack
[5766] = { "мантія молодшого чарівника" }, -- Lesser Wizard's Robe
[5767] = { "фіолетова мантія" }, -- Violet Robes
[5768] = { "квиток на перегони гномів" }, -- Gnome Race Ticket
[5769] = { "квиток на перегони гоблінів" }, -- Goblin Race Ticket
[5770] = { "мантія аркани" }, -- Robes of Arcana
[5771] = { "викрійка: Червона лляна сумка", use="Навчає вас створювати червону лляну сумку." }, -- Pattern: Red Linen Bag, @use Teaches you how to sew a Red Linen Bag.
[5772] = { "викрійка: Червона вовняна сумка", use="Навчає вас створювати червону вовняну сумку." }, -- Pattern: Red Woolen Bag, @use Teaches you how to sew a Red Woolen Bag.
[5773] = { "викрійка: Мантія аркани", use="Навчає вас створювати мантію аркани." }, -- Pattern: Robes of Arcana, @use Teaches you how to sew Robes of Arcana.
[5774] = { "викрійка: Зелена шовкова сумка", use="Навчає вас створювати зелену шовкову сумку." }, -- Pattern: Green Silk Pack, @use Teaches you how to sew a Green Silk Pack.
[5775] = { "викрійка: Чорна шовкова сумка", use="Навчає вас створювати чорну шовкову сумку." }, -- Pattern: Black Silk Pack, @use Teaches you how to sew a Black Silk Pack.
[5776] = { "кийок старійшини" }, -- Elder's Cane
[5777] = { "сокира сміливця" }, -- Brave's Axe
[5778] = { "груба тростина" }, -- Primitive Walking Stick
[5779] = { "півтораручний меч відречених" }, -- Forsaken Bastard Sword
[5780] = { "пояс з луски мурлока" }, -- Murloc Scale Belt
[5781] = { "кіраса з луски мурлока" }, -- Murloc Scale Breastplate
[5782] = { "обладунок з луски мурлока" }, -- Thick Murloc Armor
[5783] = { "браслети з луски мурлока" }, -- Murloc Scale Bracers
[5784] = { "слизотна луска мурлока" }, -- Slimy Murloc Scale
[5785] = { "товста луска мурлока" }, -- Thick Murloc Scale
[5786] = { "викрійка: Пояс з луски мурлока", use="Навчає вас створювати пояс з луски мурлока." }, -- Pattern: Murloc Scale Belt, @use Teaches you how to craft a Murloc Scale Belt.
[5787] = { "викрійка: Кіраса з луски мурлока", use="Навчає вас створювати кірасу з луски мурлока." }, -- Pattern: Murloc Scale Breastplate, @use Teaches you how to craft a Murloc Scale Breastplate.
[5788] = { "викрійка: Обладунок з луски мурлока", use="Навчає вас створювати обладунок з луски мурлока." }, -- Pattern: Thick Murloc Armor, @use Teaches you how to craft Thick Murloc Armor.
[5789] = { "викрійка: Браслети з луски мурлока", use="Навчає вас створювати браслети з луски мурлока." }, -- Pattern: Murloc Scale Bracers, @use Teaches you how to craft Murloc Scale Bracers.
[5790] = { "щоденник Однобрового" }, -- Lonebrow's Journal
[5791] = { "щоденник Генріґа Однобрового" }, -- Henrig Lonebrow's Journal
[5792] = { "медальйон Бритвобокої" }, -- Razorflank's Medallion
[5793] = { "серце Бритвобокої" }, -- Razorflank's Heart
[5794] = { "солона отрута скорпіда" }, -- Salty Scorpid Venom
[5795] = { "міцний черепашачий панцир" }, -- Hardened Tortoise Shell
[5796] = { "вкритий сіллю хвостовий плавник" }, -- Encrusted Tail Fin
[5797] = { "шматок індурію" }, -- Indurium Flake
[5798] = { "деталі боліда" }, -- Rocket Car Parts
[5799] = { "замовлення запчастин Крейвела" }, -- Kravel's Parts Order
[5800] = { "запчастини Крейвела" }, -- Kravel's Parts
[5801] = { "гуано краальського кажана" }, -- Kraul Guano
[5802] = { "крихкі запчастини для машини" }, -- Delicate Car Parts
[5803] = { "дрібка пудри блаженства" }, -- Speck of Dream Dust
[5804] = { "гоблінські чутки" }, -- Goblin Rumors
[5805] = { "ревнісне серце" }, -- Heart of Zeal
[5806] = { "Йолопиво" }, -- Fool's Stout
[5807] = { "звіт про \"Йолопиво\"" }, -- Fool's Stout Report
[5808] = { "отруйна залоза гордокрила" }, -- Pridewing Venom Sac
[5809] = { "отруйна залоза Високого Сідала" }, -- Highperch Venom Sac
[5810] = { "свіжа туша", use="Покласти на полум'я Узеля." }, -- Fresh Carcass, @use Place upon the Flame of Uzel.
[5811] = { "грива Кригопащі" }, -- Frostmaw's Mane
[5812] = { "мантія античності" }, -- Robes of Antiquity
[5813] = { "тавро Еміля" }, -- Emil's Brand
[5814] = { "обладунок тріскоплину" }, -- Snapbrook Armor
[5815] = { "льодовиковий камінь", hit="Підриває ціль, завдаючи їй 75 шкоди від криги." }, -- Glacial Stone, @hit Blasts a target for 75 Frost damage.
[5816] = { "сяйво Елуни", use="Дає невразливість до пошкодження та заклять на {1} с. (Відновлення 2 хв)#for {1} sec" }, -- Light of Elune, @use Grants immunity from all damage and spells for 10 sec. (2 Min Cooldown)
[5817] = { "лук Лунаріса" }, -- Lunaris Bow
[5818] = { "жезл місячного вогню" }, -- Moonbeam Wand
[5819] = { "койф сонячного жару" }, -- Sunblaze Coif
[5820] = { "чарівне напліччя" }, -- Faerie Mantle
[5821] = { "чоботи темноловів" }, -- Darkstalker Boots
[5822] = { "рукавиці з живоплоту" }, -- Hedgeseed Gauntlets
[5823] = { "отруйний гриб", use="Не їж мене." }, -- Poisonous Mushroom, @use Don't eat me.
[5824] = { "скрижаль волі" }, -- Tablet of Will
[5825] = { "кулон Трешали" }, -- Treshala's Pendant
[5826] = { "план Крейвела" }, -- Kravel's Scheme
[5827] = { "лист Фіззла Латуноболта" }, -- Fizzle Brassbolts' Letter
[5829] = { "гострий дзьоб" }, -- Razor-sharp Beak
[5830] = { "голова Кенати" }, -- Kenata's Head
[5831] = { "голова Фардела" }, -- Fardel's Head
[5832] = { "голова Марселя" }, -- Marcel's Head
[5833] = { "індурієва руда" }, -- Indurium Ore
[5834] = { "тютюн Мок'Морокка" }, -- Mok'Morokk's Snuff
[5835] = { "грог Мок'Морокка" }, -- Mok'Morokk's Grog
[5836] = { "сейф Мок'Морокка" }, -- Mok'Morokk's Strongbox
[5837] = { "ребро Сталекуса" }, -- Steelsnap's Rib
[5838] = { "сувій зі шкіри кодо" }, -- Kodo Skin Scroll
[5839] = { "сторінка щоденника" }, -- Journal Page
[5840] = { "палючий язик" }, -- Searing Tongue
[5841] = { "палюче серце" }, -- Searing Heart
[5842] = { "неочищений зразок руди" }, -- Unrefined Ore Sample
[5843] = { "кіготь Ґренки" }, -- Grenka's Claw
[5844] = { "фрагменти Рок'аліма" }, -- Fragments of Rok'Alim
[5845] = { "шмат м'яса", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Flank of Meat, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[5846] = { "запечатана записка Коррана" }, -- Korran's Sealed Note
[5847] = { "голова моквоплавникового мурлока" }, -- Mirefin Head
[5848] = { "порожниста кістка стерв'ятника" }, -- Hollow Vulture Bone
[5849] = { "ящик захисних шоломів" }, -- Crate of Crash Helmets
[5850] = { "запечатана записка Белґрома" }, -- Belgrom's Sealed Note
[5851] = { "ключ Коззла" }, -- Cozzle's Key
[5852] = { "креслення паливного регулятора" }, -- Fuel Regulator Blueprints
[5853] = { "цілий панцир силітида" }, -- Intact Silithid Carapace
[5854] = { "кіготь силітида" }, -- Silithid Talon
[5855] = { "серце силітида" }, -- Silithid Heart
[5859] = { "святкова граната", use="Найкраща річ для вечірки!" }, -- Party Grenade, @use The ultimate party favor!
[5860] = { "Спадщина Аспектів" }, -- Legacy of the Aspects
[5861] = { "Джерела загрози невмерлих" }, -- Beginnings of the Undead Threat
[5862] = { "сифорієвий прискорювач" }, -- Seaforium Booster
[5863] = { "хартія гільдії" }, -- Guild Charter
[5864] = { "сірий баран", use="Викликає та відпускає верхового сірого барана. (Відновлення 3 сек)" }, -- Gray Ram, @use Summons and dismisses a rideable gray ram. (3 Sec Cooldown)
[5865] = { "модифікований сифорієвий прискорювач" }, -- Modified Seaforium Booster
[5866] = { "зразок індурієвої руди" }, -- Sample of Indurium Ore
[5867] = { "гравійований фіал", use="Наповнити гравійований фіал у місячному колодязі Ясенедолу." }, -- Etched Phial, @use Fill the Etched Phial at the Ashenvale moonwell.
[5868] = { "наповнений гравійований фіал" }, -- Filled Etched Phial
[5869] = { "роздвоєне копито" }, -- Cloven Hoof
[5871] = { "велике копито" }, -- Large Hoof
[5872] = { "коричневий баран", use="Викликає та відпускає верхового коричневого барана. (Відновлення 3 сек)" }, -- Brown Ram, @use Summons and dismisses a rideable brown ram. (3 Sec Cooldown)
[5873] = { "білий баран", use="Викликає та відпускає верхового білого барана. (Відновлення 3 сек)" }, -- White Ram, @use Summons and dismisses a rideable white ram. (3 Sec Cooldown)
[5874] = { "упряж: чорний баран", use="Викликає та відпускає верхового чорного барана. (Відновлення 3 сек)" }, -- Harness: Black Ram, @use Summons and dismisses a rideable black ram. (3 Sec Cooldown)
[5875] = { "упряж: синій баран", use="Викликає та відпускає верхового синього барана. (Відновлення 3 сек)" }, -- Harness: Blue Ram, @use Summons and dismisses a rideable blue ram. (3 Sec Cooldown)
[5876] = { "бульба синьолиста" }, -- Blueleaf Tuber
[5877] = { "тріснутий панцир силітида" }, -- Cracked Silithid Carapace
[5878] = { "супер понюшка", use="Змушує вас чхати!" }, -- Super Snuff, @use Makes you sneeze!
[5879] = { "сутінкова підвіска" }, -- Twilight Pendant
[5880] = { "ящик з отворами", use="Випустити шморгоноса біля закопаних булб синьолиста в краалі Бритвоболотих. (Відновлення 30 сек)" }, -- Crate With Holes, @use Use in Razorfen Kraul near buried tubers to summon a Snufflenose Gopher. (30 Sec Cooldown)
[5881] = { "голова Келріса" }, -- Head of Kelris
[5882] = { "документи капітана" }, -- Captain's Documents
[5883] = { "роздвоєний язик болотяної черепахи" }, -- Forked Mudrock Tongue
[5884] = { "ціле око імлистого павука" }, -- Unpopped Darkmist Eye
[5897] = { "посібник власника шморгоноса" }, -- Snufflenose Owner's Manual
[5917] = { "звіт шпигуна" }, -- Spy's Report
[5918] = { "голова зухвалого орка" }, -- Defiant Orc Head
[5919] = { "почорнілий залізний щит" }, -- Blackened Iron Shield
[5936] = { "пояс зі шкіри звіра" }, -- Animal Skin Belt
[5938] = { "бездоганна лапа повзуна" }, -- Pristine Crawler Leg
[5939] = { "швацькі рукавички" }, -- Sewing Gloves
[5940] = { "кістяний баклер" }, -- Bone Buckler
[5941] = { "латунні лускаті штани" }, -- Brass Scale Pants
[5942] = { "кулон з самоцвітами" }, -- Jeweled Pendant
[5943] = { "браслети розлому" }, -- Rift Bracers
[5944] = { "наголінники народного ополчення" }, -- Greaves of the People's Militia
[5945] = { "зуб Сипуна" }, -- Deadmire's Tooth
[5946] = { "запечатана записка для Еллінга" }, -- Sealed Note to Elling
[5947] = { "документи повстанського братства" }, -- Defias Docket
[5948] = { "лист до Йорґена" }, -- Letter to Jorgen
[5949] = { "клаптик паперу" }, -- Scrap of Paper
[5950] = { "жетон Ріта" }, -- Reethe's Badge
[5951] = { "волога серветка", use="Знімає з вас 1 негативний ефект заклинання.  Очищає силою лимона." }, -- Moist Towelette, @use Removes 1 negative spell effect from user.  Cleans with the power of lemon.
[5952] = { "заражений мозковий стовбур" }, -- Corrupted Brain Stem
[5956] = { "ковальський молот" }, -- Blacksmith Hammer
[5957] = { "шкіряний жилет ручної роботи" }, -- Handstitched Leather Vest
[5958] = { "тонкі шкіряні штани" }, -- Fine Leather Pants
[5959] = { "їдка отруйна залоза" }, -- Acidic Venom Sac
[5960] = { "запечатана записка для наглядача Бакуса" }, -- Sealed Note to Watcher Backus
[5961] = { "темні шкіряні штани" }, -- Dark Leather Pants
[5962] = { "штани вартового" }, -- Guardian Pants
[5963] = { "варварські поножі" }, -- Barbaric Leggings
[5964] = { "варварські наплечі" }, -- Barbaric Shoulders
[5965] = { "плащ вартового" }, -- Guardian Cloak
[5966] = { "рукавиці вартового" }, -- Guardian Gloves
[5967] = { "дворянський пояс" }, -- Girdle of Nobility
[5968] = { "потерті чоботи" }, -- Rugged Boots
[5969] = { "потертий плащ" }, -- Regent's Cloak
[5970] = { "зміїні рукавиці" }, -- Serpent Gloves
[5971] = { "пір'яна накидка" }, -- Feathered Cape
[5972] = { "викрійка: Тонкі шкіряні штани", use="Навчає вас створювати тонкі шкіряні штани." }, -- Pattern: Fine Leather Pants, @use Teaches you how to craft Fine Leather Pants.
[5973] = { "викрійка: Варварські поножі", use="Навчає вас створювати варварські поножі." }, -- Pattern: Barbaric Leggings, @use Teaches you how to craft Barbaric Leggings.
[5974] = { "викрійка: Плащ вартового", use="Навчає вас створювати плащ вартового." }, -- Pattern: Guardian Cloak, @use Teaches you how to craft a Guardian Cloak.
[5975] = { "пояс розбійника" }, -- Ruffian Belt
[5976] = { "гільдійська гербова накидка" }, -- Guild Tabard
[5996] = { "еліксир водного дихання", use="Дозволяє дихати водою протягом {1} хв. (Відновлення 3 сек)#for {1} min" }, -- Elixir of Water Breathing, @use Allows the Imbiber to breathe water for 30 min. (3 Sec Cooldown)
[5997] = { "еліксир слабкого захисту", use="Збільшує броню на {1} на {2} год. (Відновлення 3 сек)#by {1} for {2} h" }, -- Elixir of Minor Defense, @use Increases armor by 50 for 1 hour. (3 Sec Cooldown)
[5998] = { "замовлення Бурешпиля" }, -- Stormpike's Request
[6016] = { "зразок вовчого серця" }, -- Wolf Heart Sample
[6037] = { "злиток ясносрібла" }, -- Truesilver Bar
[6038] = { "смажений гігантський молюск", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 8 на 15 хв." }, -- Giant Clam Scorcho, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 8 Stamina and Spirit for 15 min.
[6039] = { "рецепт: Смажений гігантський молюск", use="Навчає вас готувати суп смаженого гігантського молюска." }, -- Recipe: Giant Clam Scorcho, @use Teaches you how to cook a delicious Giant Clam Scorcho.
[6040] = { "золоті лускаті браслети" }, -- Golden Scale Bracers
[6041] = { "сталевий ланцюг для зброї", use="Припити до зброї ланцюг, що не дозволяє вас роззброїти." }, -- Steel Weapon Chain, @use Attaches a chain to your weapon, making it impossible to disarm.
[6042] = { "залізний шип для щита", use="Припити до вашого щита залізний шип, що завдає шкоди щоразу, коли ви блокуєте." }, -- Iron Shield Spike, @use Attaches an Iron Spike to your shield that deals damage every time you block with it.
[6043] = { "залізна противага", use="Припити до вашого дворучного меча, булави, сокири або держакової зброї противагу, що збільшує її швидкість на 3%." }, -- Iron Counterweight, @use Attaches a counterweight to a two-handed sword, mace, axe or polearm making it 3% faster.
[6044] = { "креслення: Залізний шип для щита", use="Навчає вас створювати залізний шип для щита." }, -- Plans: Iron Shield Spike, @use Teaches you how to make an Iron Shield Spike.
[6045] = { "креслення: Залізна противага", use="Навчає вас створювати залізну противагу." }, -- Plans: Iron Counterweight, @use Teaches you how to make an Iron Counterweight to help balance a two-handed weapon.
[6046] = { "креслення: Сталевий ланцюг для зброї", use="Навчає вас створювати сталевий ланцюг для зброї." }, -- Plans: Steel Weapon Chain, @use Teaches you how to make a Steel Weapon Chain to prevent you from being disarmed.
[6047] = { "креслення: Золотий лускатий койф", use="Навчає вас створювати золотий лускатий койф." }, -- Plans: Golden Scale Coif, @use Teaches you how to make a Golden Scale Coif.
[6048] = { "зілля тіньового захисту", use="Поглинає від {1} до {2} шкоди від тіні. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Shadow Protection Potion, @use Absorbs 675 to 1125 shadow damage.  Lasts 1 hour. (2 Min Cooldown)
[6049] = { "зілля вогняного захисту", use="Поглинає від {1} до {2} шкоди від вогню. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Fire Protection Potion, @use Absorbs 975 to 1625 fire damage.  Lasts 1 hour. (2 Min Cooldown)
[6050] = { "зілля крижаного захисту", use="Поглинає від {1} до {2} шкоди від криги. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Frost Protection Potion, @use Absorbs 1350 to 2250 frost damage.  Lasts 1 hour. (2 Min Cooldown)
[6051] = { "зілля священного захисту", use="Поглинає від {1} до {2} шкоди від священності. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Holy Protection Potion, @use Absorbs 300 to 500 holy damage.  Lasts 1 hour. (2 Min Cooldown)
[6052] = { "зілля природного захисту", use="Поглинає від {1} до {2} шкоди від природи. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Nature Protection Potion, @use Absorbs 1350 to 2250 nature damage.  Lasts 1 hour. (2 Min Cooldown)
[6053] = { "рецепт: Зілля священного захисту", use="Навчає вас створювати зілля священного захисту." }, -- Recipe: Holy Protection Potion, @use Teaches you how to make a Holy Protection Potion.
[6054] = { "рецепт: Зілля тіньового захисту", use="Навчає вас створювати зілля тіньового захисту." }, -- Recipe: Shadow Protection Potion, @use Teaches you how to make a Shadow Protection Potion.
[6055] = { "рецепт: Зілля вогняного захисту", use="Навчає вас створювати зілля вогняного захисту." }, -- Recipe: Fire Protection Potion, @use Teaches you how to make a Fire Protection Potion.
[6056] = { "рецепт: Зілля крижаного захисту", use="Навчає вас створювати зілля крижаного захисту." }, -- Recipe: Frost Protection Potion, @use Teaches you how to make a Frost Protection Potion.
[6057] = { "рецепт: Зілля природного захисту", use="Навчає вас створювати зілля природного захисту." }, -- Recipe: Nature Protection Potion, @use Teaches you how to make a Nature Protection Potion.
[6058] = { "почорнілий шкіряний ремінь" }, -- Blackened Leather Belt
[6059] = { "жилет кочівника" }, -- Nomadic Vest
[6060] = { "волокняні наручі" }, -- Flax Bracers
[6061] = { "сірокам'яні наручі" }, -- Graystone Bracers
[6062] = { "грубі в'язані наручі" }, -- Heavy Cord Bracers
[6063] = { "підковані залізом рукавиці" }, -- Cold Steel Gauntlets
[6064] = { "мініатюрні платинові диски" }, -- Miniature Platinum Discs
[6065] = { "дослідження просторової конвергенції Кадґара", flavor="Ці папери запечатані магічними силами." }, -- Khadgar's Essays on Dimensional Convergence, @flavor These documents are sealed by a magical force.
[6066] = { "голова хана Дез'гепа" }, -- Khan Dez'hepah's Head
[6067] = { "вухо кентавра" }, -- Centaur Ear
[6068] = { "рецепт: Тіньова олія", use="Навчає вас створювати тіньову олію." }, -- Recipe: Shadow Oil, @use Teaches you how to make Shadow Oil.
[6069] = { "грубо в'ялене м'ясо" }, -- Crudely Dried Meat
[6070] = { "браслети з вовчої шкіри" }, -- Wolfskin Bracers
[6071] = { "кристал дренетисту" }, -- Draenethyst Crystal
[6072] = { "голова хана Джена" }, -- Khan Jehn's Head
[6073] = { "голова хана Шаки" }, -- Khan Shaka's Head
[6074] = { "мундштук бойового рога", use="Помістити в мародінський бойовий ріг і засурмити." }, -- War Horn Mouthpiece, @use Place in the Maraudine War Horn, and blow.
[6075] = { "звіт Ваймса" }, -- Vimes's Report
[6076] = { "завужені штани" }, -- Tapered Pants
[6077] = { "мародінський фрагмент ключа" }, -- Maraudine Key Fragment
[6078] = { "щит пікінера" }, -- Pikeman Shield
[6079] = { "грубий оберіг" }, -- Crude Charm
[6080] = { "серце тіньової пантери" }, -- Shadow Panther Heart
[6081] = { "гриб повелителя болота" }, -- Mire Lord Fungus
[6082] = { "пухлина глибокохода" }, -- Deepstrider Tumor
[6083] = { "розбиті сльози" }, -- Broken Tears
[6084] = { "поножі вартового Штормовія" }, -- Stormwind Guard Leggings
[6085] = { "мундир піхотинця" }, -- Footman Tunic
[6086] = { "сироватка правди Фаустіна" }, -- Faustin's Truth Serum
[6087] = { "шоси західного краю" }, -- Chausses of Westfall
[6089] = { "вариво Зредуса" }, -- Zraedus's Brew
[6091] = { "ящик з камінням сили" }, -- Crate of Power Stones
[6092] = { "чоботи з чорного дракончика" }, -- Black Whelp Boots
[6093] = { "погибель орків" }, -- Orc Crusher
[6094] = { "пронзаюча сокира" }, -- Piercing Axe
[6095] = { "чоботи мандрів" }, -- Wandering Boots
[6096] = { "сорочка підмайстра" }, -- Apprentice's Shirt
[6097] = { "сорочка послушника" }, -- Acolyte's Shirt
[6098] = { "мантія неофіта" }, -- Neophyte's Robe
[6116] = { "мантія учня" }, -- Apprentice's Robe
[6117] = { "сорочка зброєносця" }, -- Squire's Shirt
[6118] = { "штани зброєносця" }, -- Squire's Pants
[6119] = { "мантія неофіта" }, -- Neophyte's Robe
[6120] = { "сорочка рекрута" }, -- Recruit's Shirt
[6121] = { "штани рекрута" }, -- Recruit's Pants
[6122] = { "чоботи рекрута" }, -- Recruit's Boots
[6123] = { "мантія новобранця" }, -- Novice's Robe
[6124] = { "штани новобранця" }, -- Novice's Pants
[6125] = { "портупея забіяки" }, -- Brawler's Harness
[6126] = { "штани капканника" }, -- Trapper's Pants
[6127] = { "чоботи капканника" }, -- Trapper's Boots
[6129] = { "мантія послушника" }, -- Acolyte's Robe
[6130] = { "сорочка капканника" }, -- Trapper's Shirt
[6131] = { "штани капканника" }, -- Trapper's Pants
[6134] = { "проста накидка" }, -- Primitive Mantle
[6135] = { "простий кілт" }, -- Primitive Kilt
[6136] = { "сорочка бандита" }, -- Thug Shirt
[6137] = { "штани бандита" }, -- Thug Pants
[6138] = { "чоботи бандита" }, -- Thug Boots
[6139] = { "мантія новобранця" }, -- Novice's Robe
[6140] = { "мантія учня" }, -- Apprentice's Robe
[6144] = { "мантія неофіта" }, -- Neophyte's Robe
[6145] = { "кулон Клариси", flavor="Покладіть на могилу Юріва." }, -- Clarice's Pendant, @flavor Place upon Yuriv's grave.
[6146] = { "сухий плавник" }, -- Sundried Driftwood
[6147] = { "обшарпаний старий пояс" }, -- Ratty Old Belt
[6148] = { "вкриті павутинням чоботи" }, -- Web-covered Boots
[6149] = { "велике зілля мани", ref=2455 }, -- Greater Mana Potion
[6150] = { "потертий вузол" }, -- A Frayed Knot
[6166] = { "щелепа койота" }, -- Coyote Jawbone
[6167] = { "доповідь Ніки" }, -- Neeka's Report
[6168] = { "пазур пилкозубого кусача" }, -- Sawtooth Snapper Claw
[6169] = { "сира вирізка пилкозуба" }, -- Unprepared Sawtooth Flank
[6170] = { "реактиви чарівників" }, -- Wizards' Reagents
[6171] = { "рукавиці мисливця на вовків" }, -- Wolf Handler Gloves
[6172] = { "втрачені припаси" }, -- Lost Supplies
[6173] = { "снігові чоботи" }, -- Snow Boots
[6175] = { "артефакт Атал'ай" }, -- Atal'ai Artifact
[6176] = { "дворфійський краплеподібний щит" }, -- Dwarven Kite Shield
[6177] = { "залізні ковані браслети" }, -- Ironwrought Bracers
[6178] = { "вантаж для Підсвітньої Варти" }, -- Shipment to Nethergarde
[6179] = { "накидка корсара" }, -- Privateer's Cape
[6180] = { "шкіра Сларка" }, -- Slarkskin
[6181] = { "фетиш Гаккара" }, -- Fetish of Hakkar
[6182] = { "тьмяний смолоскип", equip="Збільшує дух членів групи поблизу на 4." }, -- Dim Torch, @equip Increase the Spirit of nearby party members by 4.
[6183] = { "незапалений поганий смолоскип" }, -- Unlit Poor Torch
[6184] = { "нога жахливого повзуна" }, -- Monstrous Crawler Leg
[6185] = { "ведмежа накидка" }, -- Bear Shawl
[6186] = { "трозький тесак" }, -- Trogg Slicer
[6187] = { "дворфійський захисник" }, -- Dwarven Defender
[6188] = { "болотоступи" }, -- Mud Stompers
[6189] = { "міцні кольчужні наплечі" }, -- Durable Chain Shoulders
[6190] = { "уламок дренетиста" }, -- Draenethyst Shard
[6191] = { "чоботи Кімбри" }, -- Kimbra Boots
[6192] = { "голова хана Грати" }, -- Khan Hratha's Head
[6193] = { "пакунок з артефактами Атал'ай" }, -- Bundle of Atal'ai Artifacts
[6194] = { "бочкоруб" }, -- Barreling Reaper
[6195] = { "навощений обладунок" }, -- Wax-polished Armor
[6196] = { "дубина Нобору" }, -- Noboru's Cudgel
[6197] = { "жилет зі шкури кроколіска" }, -- Loch Croc Hide Vest
[6198] = { "доісторичні наручі" }, -- Jurassic Wristguards
[6199] = { "перстень чорної вдови" }, -- Black Widow Band
[6200] = { "бойовий пояс Ґарнеґа" }, -- Garneg's War Belt
[6201] = { "гнучкі чоботи" }, -- Lithe Boots
[6202] = { "рукавички без пальців" }, -- Fingerless Gloves
[6203] = { "бандитський щит" }, -- Thuggish Shield
[6204] = { "племінний шолом ворга" }, -- Tribal Worg Helm
[6205] = { "землерийна лопата" }, -- Burrowing Shovel
[6206] = { "камнедробарка" }, -- Rock Chipper
[6211] = { "рецепт: Еліксир сили огра", use="Навчає вас створювати еліксир сили огра." }, -- Recipe: Elixir of Ogre's Strength, @use Teaches you how to make an Elixir of Ogre's Strength.
[6212] = { "голова Джаммал'ана" }, -- Head of Jammal'an
[6214] = { "важкий мідний молот" }, -- Heavy Copper Maul
[6215] = { "збалансований бойовий посох" }, -- Balanced Fighting Stick
[6216] = { "загадковий порошок", flavor="Використовується чародіями для накладання чарів." }, -- Mystical Powder, @flavor Used by Enchanters to enchant items.
[6217] = { "мідний жезл", flavor="Використовується чародіями для створення рунічного мідного жезла." }, -- Copper Rod, @flavor Needed by an Enchanter to make a runed copper rod.
[6218] = { "рунічний мідний жезл" }, -- Runed Copper Rod
[6219] = { "дуговий гайковерт" }, -- Arclight Spanner
[6220] = { "осколок метеорита", hit="Завдає цілі 35 шкоди від вогню." }, -- Meteor Shard, @hit Blasts a target for 35 Fire damage.
[6223] = { "щит Темнодолу" }, -- Crest of Darkshire
[6226] = { "кривавий фартух" }, -- Bloody Apron
[6238] = { "коричнева лляна мантія" }, -- Brown Linen Robe
[6239] = { "червоний лляний жилет" }, -- Red Linen Vest
[6240] = { "синій лляний жилет" }, -- Blue Linen Vest
[6241] = { "біла лляна мантія" }, -- White Linen Robe
[6242] = { "блакитна лляна мантія" }, -- Blue Linen Robe
[6243] = { "зелена вовняна мантія" }, -- Green Woolen Robe
[6245] = { "торба Карнітола" }, -- Karnitol's Satchel
[6246] = { "кіготь скаженолютого сатира" }, -- Hatefury Claw
[6247] = { "ріг скаженолютого сатира" }, -- Hatefury Horn
[6248] = { "отрута скорпаші" }, -- Scorpashi Venom
[6249] = { "шкура старого кодо" }, -- Aged Kodo Hide
[6250] = { "мозок скверногончої" }, -- Felhound Brain
[6251] = { "підсвітне крило" }, -- Nether Wing
[6252] = { "кров стража приречення" }, -- Doomwarder Blood
[6253] = { "пакунок Лівшиці" }, -- Leftwitch's Package
[6256] = { "вудка" }, -- Fishing Pole
[6257] = { "шлунок руха" }, -- Roc Gizzard
[6258] = { "печінка залізохутрого ведмедя" }, -- Ironfur Liver
[6259] = { "печінка гроддокської мавпи" }, -- Groddoc Liver
[6260] = { "блакитний барвник" }, -- Blue Dye
[6261] = { "помаранчевий барвник" }, -- Orange Dye
[6262] = { "щоденник Ґалена" }, -- Galen's Journal
[6263] = { "синій комбінезон" }, -- Blue Overalls
[6264] = { "мантія старшого адепта" }, -- Greater Adept's Robe
[6265] = { "уламок душі" }, -- Soul Shard
[6266] = { "жилет послідовника" }, -- Disciple's Vest
[6267] = { "штани послідовника" }, -- Disciple's Pants
[6268] = { "мундир першопроходця" }, -- Pioneer Tunic
[6269] = { "штани першопроходця" }, -- Pioneer Trousers
[6281] = { "череп брязкокісткового скелета" }, -- Rattlecage Skull
[6282] = { "священні поховальні штани" }, -- Sacred Burial Trousers
[6283] = { "книга Ура" }, -- The Book of Ur
[6284] = { "руни виклику", use="Викликати пустотника в колі виклику. (Відновлення 3 хв)" }, -- Runes of Summoning, @use Call forth a voidwalker using the summoning circle. (3 Min Cooldown)
[6285] = { "гримуар Еґаліна" }, -- Egalin's Grimoire
[6286] = { "чисті серця", use="Викликати сукуба в колі виклику. (Відновлення 3 хв)" }, -- Pure Hearts, @use Call forth a succubus using the summoning circle. (3 Min Cooldown)
[6287] = { "уламок таблички Атал'ай" }, -- Atal'ai Tablet Fragment
[6288] = { "скрижаль Атал'ай" }, -- Atal'ai Tablet
[6289] = { "сирий муловий луціан", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Longjaw Mud Snapper, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[6290] = { "блискуча рибка", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Brilliant Smallfish, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[6291] = { "сира блискуча рибка", use="Відновлює 30 здоров'я протягом 15 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Brilliant Smallfish, @use Restores 30 health over 15 sec.  Must remain seated while eating.
[6303] = { "сира слизькошкіра скумбрія", use="Відновлює 30 здоров'я протягом 15 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Slitherskin Mackerel, @use Restores 30 health over 15 sec.  Must remain seated while eating.
[6304] = { "розмокла сторінка щоденника (день 4)" }, -- Damp Diary Page (Day 4)
[6305] = { "розмокла сторінка щоденника (день 87)" }, -- Damp Diary Page (Day 87)
[6306] = { "розмокла сторінка щоденника (день 512)" }, -- Damp Diary Page (Day 512)
[6307] = { "послання в пляшці" }, -- Message in a Bottle
[6308] = { "сирий щетиновусий сом", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Bristle Whisker Catfish, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[6312] = { "серце Даліна" }, -- Dalin's Heart
[6313] = { "серце Комара" }, -- Comar's Heart
[6316] = { "делікатес з озерної навіженки", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Loch Frenzy Delight, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[6317] = { "сира озерна навіженка", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Loch Frenzy, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[6335] = { "вицвілі чоботи" }, -- Grizzled Boots
[6338] = { "срібний жезл", flavor="Потрібен чародіям." }, -- Silver Rod, @flavor Needed by Enchanters.
[6339] = { "рунічний срібний жезл" }, -- Runed Silver Rod
[6350] = { "грубі бронзові чоботи" }, -- Rough Bronze Boots
[6358] = { "маслянистий чорноротик" }, -- Oily Blackmouth
[6359] = { "вогнеперий луціан" }, -- Firefin Snapper
[6361] = { "сирий веселковий тунець", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Rainbow Fin Albacore, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[6362] = { "сира камнелуска тріска", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Rockscale Cod, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[6365] = { "міцна вудка", equip="Збільшує навичку риболовлі на 5." }, -- Strong Fishing Pole, @equip Increased Fishing +5.
[6367] = { "велика залізна вудка", equip="Збільшує навичку риболовлі на 20." }, -- Big Iron Fishing Pole, @equip Increased Fishing +20.
[6370] = { "олія чорноротика" }, -- Blackmouth Oil
[6371] = { "вогняна олія" }, -- Fire Oil
[6372] = { "зілля швидкого плавання", use="Збільшує швидкість плавання на {1}% на {2} с. (Відновлення 2 хв)#by {1}% for {2} sec" }, -- Swim Speed Potion, @use Increases swim speed by 100% for 20 sec. (2 Min Cooldown)
[6373] = { "еліксир вогнеміці", use="Збільшує шкоду від вогняних заклинань на {1} на {2} хв. (Відновлення 3 сек)#by up to {1} for {2} min" }, -- Elixir of Firepower, @use Increases spell fire damage by up to 10 for 30 min. (3 Sec Cooldown)
[6414] = { "печатка Сильвани" }, -- Seal of Sylvanas
[6435] = { "наповнений палаючий самоцвіт" }, -- Infused Burning Gem
[6436] = { "палаючий самоцвіт", use="Захоплює дух найближчого члена Палаючого Леза. Якщо ціль помирає під час дії заклинання — заклинач отримує 1 наповнений палаючий самоцвіт." }, -- Burning Gem, @use Captures the spirit of the nearest Burning Blade member. If target dies while being drained, the caster gains 1 Infused Burning Gem.
[6441] = { "скальп тінелова" }, -- Shadowstalker Scalp
[6442] = { "кристал оракула" }, -- Oracle Crystal
[6443] = { "спотворена шкура" }, -- Deviate Hide
[6450] = { "шовковий бинт", use="Відновлює 400 здоров'я за 8 сек." }, -- Silk Bandage, @use Heals 400 damage over 8 sec.
[6451] = { "щільний шовковий бинт", use="Відновлює 640 здоров'я за 8 сек." }, -- Heavy Silk Bandage, @use Heals 640 damage over 8 sec.
[6452] = { "протиотрута", use="Зцілення цілі від отрут до 25 рівня. (Відновлення 1 хв)" }, -- Anti-Venom, @use Target is cured of poisons up to level 25. (1 Min Cooldown)
[6453] = { "сильна протиотрута", use="Зцілення цілі від отрут до 35 рівня. (Відновлення 1 хв)" }, -- Strong Anti-Venom, @use Target is cured of poisons up to level 35. (1 Min Cooldown)
[6458] = { "вкрита мастилом риба", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Oil Covered Fish, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[6462] = { "запечатаний ящик" }, -- Secure Crate
[6464] = { "плачуча сутність" }, -- Wailing Essence
[6468] = { "пояс зі спотвореної луски" }, -- Deviate Scale Belt
[6470] = { "спотворена луска" }, -- Deviate Scale
[6471] = { "бездоганна спотворена луска" }, -- Perfect Deviate Scale
[6476] = { "рецепт: Пояс зі спотвореної луски", use="Навчає вас створенню пояса зі спотвореної луски." }, -- Pattern: Deviate Scale Belt, @use Teaches you how to craft a Deviate Scale Belt.
[6477] = { "пояс лугів" }, -- Grassland Sash
[6479] = { "кулон Малемів" }, -- Malem Pendant
[6480] = { "поножі зі спотвореної шкіри" }, -- Slick Deviate Leggings
[6481] = { "болотні рукавиці" }, -- Dagmire Gauntlets
[6482] = { "черевики вогнехода" }, -- Firewalker Boots
[6486] = { "припалена луска" }, -- Singed Scale
[6487] = { "голова паскудного фамільяра" }, -- Vile Familiar Head
[6488] = { "проста скрижаль" }, -- Simple Tablet
[6502] = { "броня з фіолетової луски" }, -- Violet Scale Armor
[6503] = { "мантія арлекіна" }, -- Harlequin Robes
[6504] = { "клинок-крило" }, -- Wingblade
[6505] = { "посох півмісяця" }, -- Crescent Staff
[6522] = { "загадкова риба", use="З'їж мене. (Відновлення 10 сек)" }, -- Deviate Fish, @use Eat me. (10 Sec Cooldown)
[6529] = { "блискуча блешня", use="Оснащення вашої вудки такою наживкою збільшує навичку риболовлі на 25 протягом 10 хв." }, -- Shiny Bauble, @use When applied to your fishing pole, increases Fishing by 25 for 10 min.
[6530] = { "опариші", use="Оснащення вашої вудки такою наживкою збільшує навичку риболовлі на 50 протягом 10 хв." }, -- Nightcrawlers, @use When applied to your fishing pole, increases Fishing by 50 for 10 min.
[6532] = { "райдужні блешні", use="Оснащення вашої вудки такою наживкою збільшує навичку риболовлі на 75 протягом 10 хв." }, -- Bright Baubles, @use When applied to your fishing pole, increases Fishing by 75 for 10 minutes.
[6533] = { "аквадинамічний магніт для риби", use="Оснащення вашої вудки такою наживкою збільшує навичку риболовлі на 100 протягом 5 хв." }, -- Aquadynamic Fish Attractor, @use When applied to your fishing pole, increases Fishing by 100 for 5 minutes.
[6534] = { "бруски кованої сталі" }, -- Forged Steel Bars
[6535] = { "скрижаль Верґи" }, -- Tablet of Verga
[6624] = { "настій Кен'зіґли" }, -- Ken'zigla's Draught
[6625] = { "вкритий брудом кулон" }, -- Dirt-caked Pendant
[6626] = { "кулон Доґрана", use="Викликати сукуба в колі виклику. (Відновлення 3 хв)" }, -- Dogran's Pendant, @use Call forth a succubus using the summoning circle. (3 Min Cooldown)
[6634] = { "ритуальна мазь" }, -- Ritual Salve
[6635] = { "сапта землі", use="Дозволяє шаману бачити духів стихій." }, -- Earth Sapta, @use Allows the shaman to see elemental spirits.
[6636] = { "сапта вогню", use="Дозволяє шаману бачити духів стихій." }, -- Fire Sapta, @use Allows the shaman to see elemental spirits.
[6637] = { "сапта води", use="Дозволяє шаману бачити духів стихій." }, -- Water Sapta, @use Allows the shaman to see elemental spirits.
[6638] = { "сапта повітря", use="Дозволяє шаману бачити духів стихій." }, -- Air Sapta, @use Allows the shaman to see elemental spirits.
[6640] = { "копито сквернолова" }, -- Felstalker Hoof
[6652] = { "мішечок з реагентами" }, -- Reagent Pouch
[6653] = { "смолоскип дрімаючого полум'я" }, -- Torch of the Dormant Flame
[6654] = { "смолоскип вічного полум'я" }, -- Torch of the Eternal Flame
[6655] = { "розжарена вуглинка" }, -- Glowing Ember
[6656] = { "грубий кварц" }, -- Rough Quartz
[6657] = { "пікантний загадковий делікатес", use="З'їж мене. (Відновлення 10 сек)" }, -- Savory Deviate Delight, @use Eat me. (10 Sec Cooldown)
[6658] = { "зразок ошийника" }, -- Example Collar
[6659] = { "штани скарабея" }, -- Scarab Trousers
[6661] = { "рецепт: пікантна видозмінена пожива", use="Навчає вас готувати пікантну видозмінену поживу." }, -- Recipe: Savory Deviate Delight, @use Teaches you how to cook a Savory Deviate Delight.
[6662] = { "еліксир велетенського росту", use="Ваш розмір збільшено, а ваша сила зростає на {1}, відповідно до вашого нового розміру. Триває {2} хв. (Відновлення 3 сек)#up by {1}#Lasts {2} min" }, -- Elixir of Giant Growth, @use Your size is increased and your Strength goes up by 8 to match your new size.  Lasts 2 min. (3 Sec Cooldown)
[6663] = { "рецепт: Еліксир велетенського росту", use="Навчає вас створювати еліксир велетенського росту." }, -- Recipe: Elixir of Giant Growth, @use Teaches you how to make an Elixir of Giant Growth.
[6664] = { "напліччя вуду" }, -- Voodoo Mantle
[6665] = { "наручі заклять" }, -- Hexed Bracers
[6666] = { "черевики землечерпа" }, -- Dredge Boots
[6669] = { "священний перстень" }, -- Sacred Band
[6670] = { "броня пантери" }, -- Panther Armor
[6671] = { "поножі джаггернаута" }, -- Juggernaut Leggings
[6672] = { "креслення: Світлова бомба", use="Навчає вас створювати світлову бомбу." }, -- Schematic: Flash Bomb, @use Teaches you how to make a Flash Bomb.
[6675] = { "загартовані наручі" }, -- Tempered Bracers
[6676] = { "баклер констебля" }, -- Constable Buckler
[6677] = { "жезл заклинателя" }, -- Spellcrafter Wand
[6678] = { "перстень ельфійської благодаті" }, -- Band of Elven Grace
[6684] = { "палиця керування шморгоносом", use="Для керування шморгоносом." }, -- Snufflenose Command Stick, @use For use on a Snufflenose Gopher.
[6709] = { "жилет місячного сяйва" }, -- Moonglow Vest
[6710] = { "викрійка: Жилет місячного сяйва", use="Навчає вас створенню жилета місячного сяйва." }, -- Pattern: Moonglow Vest, @use Teaches you how to craft a Moonglow Vest.
[6713] = { "рвані штани" }, -- Ripped Pants
[6714] = { "динаміт \"Простокид\"", use="Динаміт для неінженерів, який майже завжди досягає цілі! Завдає від 51 до 69 шкоди вогнем в радіусі 5 м. (Відновлення 1 хв)" }, -- Ez-Thro Dynamite, @use The dynamite for Non-Engineers that nearly always gets to the target!  Inflicts 51 to 69 Fire damage in a 5 yard radius. (1 Min Cooldown)
[6716] = { "креслення: Динаміт \"Простокид\"", use="Навчає вас створювати динаміт \"Простокид\"." }, -- Schematic: EZ-Thro Dynamite, @use Teaches you how to make EZ-Thro Dynamite.
[6717] = { "світлоштепсель" }, -- Gaffer Jack
[6718] = { "електропелер" }, -- Electropeller
[6719] = { "вітряний пояс" }, -- Windborne Belt
[6720] = { "головний убір мисливця за духами" }, -- Spirit Hunter Headdress
[6721] = { "нагрудник Кора" }, -- Chestplate of Kor
[6722] = { "звірячі кайдани" }, -- Beastial Manacles
[6723] = { "медаль за відвагу" }, -- Medal of Courage
[6725] = { "мармуровий баклер" }, -- Marbled Buckler
[6726] = { "модифікований ремінь безпеки Раззеріка" }, -- Razzeric's Customized Seatbelt
[6727] = { "перегонові рукавички Раззеріка" }, -- Razzeric's Racing Grips
[6729] = { "блискавична запальничка Фіззла" }, -- Fizzle's Zippy Lighter
[6731] = { "кіраса Залізогарта" }, -- Ironforge Breastplate
[6732] = { "рукавички гнома-механіка" }, -- Gnomish Mechanic's Gloves
[6735] = { "креслення: Кіраса Залізогарта", use="Навчає вас створювати кірасу Залізогарта." }, -- Plans: Ironforge Breastplate, @use Teaches you how to make an Ironforge Breastplate.
[6737] = { "штани сухолисту" }, -- Dryleaf Pants
[6738] = { "кривавий півмісяць", hit="Ранить ціль, спричиняючи 45 шкоди від кровотечі протягом 30 сек." }, -- Bleeding Crescent, @hit Wounds the target causing them to bleed for 45 damage over 30 sec.
[6739] = { "лук Скелеступа" }, -- Cliffrunner's Aim
[6740] = { "лазурний пояс" }, -- Azure Sash
[6741] = { "орчий бойовий меч" }, -- Orcish War Sword
[6742] = { "пояс кам'яного кулака" }, -- Stonefist Girdle
[6744] = { "рукавиці капелана" }, -- Gloves of Kapelan
[6745] = { "накидка стрімкобіга" }, -- Swiftrunner Cape
[6746] = { "базальтовий баклер" }, -- Basalt Buckler
[6747] = { "напліччя громили" }, -- Enforcer Pauldrons
[6748] = { "перстень мавпи" }, -- Monkey Ring
[6749] = { "перстень тигра" }, -- Tiger Band
[6750] = { "перстень змії" }, -- Snake Hoop
[6751] = { "траурна шаль" }, -- Mourning Shawl
[6752] = { "уланські чоботи" }, -- Lancer Boots
[6753] = { "оберіг з пір'я" }, -- Feather Charm
[6755] = { "невеликий ящик з самоцвітами" }, -- A Small Container of Gems
[6757] = { "перстень-печатка Джайни" }, -- Jaina's Signet Ring
[6767] = { "кулон Тіраніса" }, -- Tyranis' Pendant
[6773] = { "кольчуга мародера Ґелкісів" }, -- Gelkis Marauder Chain
[6774] = { "палець Утек" }, -- Uthek's Finger
[6775] = { "фоліант божественності" }, -- Tome of Divinity
[6780] = { "бузковий поясок" }, -- Lilac Sash
[6781] = { "кружка Бартлбі" }, -- Bartleby's Mug
[6782] = { "значок маршала Знесилія" }, -- Marshal Haggard's Badge
[6783] = { "ключ Мертвозуба", use="Відкриває скриню Мертвозуба." }, -- Dead-tooth's Key, @use Opens Dead-tooth's Strongbox.
[6784] = { "укріплені бойові рукавиці" }, -- Braced Handguards
[6785] = { "Сили Порожнечі", flavor="За авторством Кадґара" }, -- Powers of the Void, @flavor By the hand of Khadgar
[6788] = { "пояс маґрамського мисливця" }, -- Magram Hunter's Belt
[6789] = { "церемоніальна ковдра кентаврів" }, -- Ceremonial Centaur Blanket
[6790] = { "перстень спокою" }, -- Ring of Calm
[6791] = { "чоботи розбишаки" }, -- Hellion Boots
[6792] = { "багряне напліччя" }, -- Sanguine Pauldrons
[6793] = { "золотисті наручі" }, -- Auric Bracers
[6794] = { "рукавиці вогняної бурі" }, -- Stormfire Gauntlets
[6797] = { "окоштрих" }, -- Eyepoker
[6798] = { "вибуховий аркебуз" }, -- Blasting Hackbut
[6799] = { "голова Веджріка" }, -- Vejrek's Head
[6800] = { "смеркова руда" }, -- Umbral Ore
[6802] = { "меч Омена" }, -- Sword of Omen
[6803] = { "палиця пророцтва" }, -- Prophetic Cane
[6804] = { "молот бурелому" }, -- Windstorm Hammer
[6805] = { "ріг Ворла" }, -- Horn of Vorlus
[6806] = { "танцююче полум'я" }, -- Dancing Flame
[6807] = { "гуляш з жаб'ячих лапок", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Frog Leg Stew, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[6808] = { "елунітова руда" }, -- Elunite Ore
[6809] = { "медальйон Елури" }, -- Elura's Medallion
[6810] = { "кольє Сурени" }, -- Surena's Choker
[6811] = { "аквадинамічна блешня", use="Оснащення вашої вудки такою наживкою збільшує навичку риболовлі на 50 протягом 10 хв." }, -- Aquadynamic Fish Lens, @use When applied to your fishing pole, increases Fishing by 50 for 10 minutes.
[6812] = { "ящик елуніту" }, -- Case of Elunite
[6827] = { "коробка з припасами" }, -- Box of Supplies
[6828] = { "баклер провидця" }, -- Visionary Buckler
[6829] = { "меч спокою" }, -- Sword of Serenity
[6830] = { "костокус" }, -- Bonebiter
[6831] = { "чорна напасть", hit="Запускає у ворога заряд тіні, що завдає 30 шкоди від тіні." }, -- Black Menace, @hit Sends a shadowy bolt at the enemy causing 30 Shadow damage.
[6832] = { "плащ гнилі" }, -- Cloak of Blight
[6838] = { "обпалене павуче ікло" }, -- Scorched Spider Fang
[6839] = { "обвуглений ріг" }, -- Charred Horn
[6840] = { "гальванізований ріг" }, -- Galvanized Horn
[6841] = { "фіал флогістону" }, -- Vial of Phlogiston
[6842] = { "інструкції Фьюрена" }, -- Furen's Instructions
[6843] = { "барильце пекучої бражки" }, -- Cask of Scalder
[6844] = { "палаюча кров" }, -- Burning Blood
[6845] = { "палаючий камінь" }, -- Burning Rock
[6846] = { "накази повстанців" }, -- Defias Script
[6847] = { "накази Темного Заліза" }, -- Dark Iron Script
[6848] = { "обпалюючий корал" }, -- Searing Coral
[6849] = { "випалена сонцем шкаралупа" }, -- Sunscorched Shell
[6851] = { "сутність вигнанця" }, -- Essence of the Exile
[6866] = { "знак життя", use="Знак життя повертає персонажа, пов'язаного з ним, до життя." }, -- Symbol of Life, @use The Symbol of Life will bring the person attuned to it back to life.
[6887] = { "плямистий жовтохвіст", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Spotted Yellowtail, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[6888] = { "запечене яйце з травами", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 2 на 15 хв.#Restores {1} health over {2}" }, -- Herb Baked Egg, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min.
[6890] = { "копчена ведмежатина", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Smoked Bear Meat, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[6894] = { "серце вихору" }, -- Whirlwind Heart
[6895] = { "ковальський молоток Джордана" }, -- Jordan's Smithing Hammer
[6898] = { "сфера Соран'рука", equip={ "Збільшує шкоду від заклинань і ефектів вогню на 4.", "Збільшує шкоду від заклинань і ефектів тіні на 4." }, use="Відновлює 25 здоров'я кожні 3 сек протягом 30 сек. (Відновлення 30 хв)" }, -- Orb of Soran'ruk, @equip Increases damage done by Fire spells and effects by up to 4., @equip Increases damage done by Shadow spells and effects by up to 4., @use Restores 25 health every 3 sec for 30 sec. (30 Min Cooldown)
[6900] = { "зачарована золота кровомантія" }, -- Enchanted Gold Bloodrobe
[6904] = { "укус Серра'кіса", hit="Отруює ціль, завдаючи 4 шкоди від природи кожні 2 с протягом 20 с." }, -- Bite of Serra'kis, @hit Poisons target for 4 Nature damage every 2 sec for 20 sec.
[6912] = { "серцедерево" }, -- Heartswood
[6913] = { "серцевина серцедерева", use="Викликати сукуба в колі виклику. (Відновлення 3 хв)" }, -- Heartswood Core, @use Call forth a succubus using the summoning circle. (3 Min Cooldown)
[6914] = { "фрагмент Соран'рука" }, -- Soran'ruk Fragment
[6915] = { "великий фрагмент Соран'рука" }, -- Large Soran'ruk Fragment
[6926] = { "записи Фьюрена", flavor="Цей лист запечатано" }, -- Furen's Notes, @flavor This letter is sealed
[6928] = { "кольє з кривавого каменю", use="Викликати пустотника в колі виклику. (Відновлення 3 хв)" }, -- Bloodstone Choker, @use Call forth a voidwalker using the summoning circle. (3 Min Cooldown)
[6929] = { "пергамент Бат'раха" }, -- Bath'rah's Parchment
[6930] = { "жезл виклику" }, -- Rod of Channeling
[6931] = { "запліснявілий фоліант", use="Викликати скверногончу в колі виклику. (Відновлення 3 хв)", flavor="На обкладинці видніється тьмяний напис: 'Фоліант Змови'." }, -- Moldy Tome, @use Call forth a felhunter using the summoning circle. (3 Min Cooldown), @flavor Faint letters on the cover of the locked book read, 'Tome of the Cabal.'
[6947] = { "миттєва отрута", use="Вкриває зброю отрутою на {1} хв. Кожен удар має {2}% імовірності отруїти ворога, миттєво завдаючи від {3} до {4} пошкодження природою. {5} зарядів.#lasts for {1} min#{2}% chance#inflicts {3} to {4}#{5} charges" }, -- Instant Poison, @use Coats a weapon with poison that lasts for 30 minutes.Each strike has a 20% chance of poisoning the enemy which instantly inflicts 19 to 25 Nature damage.  40 charges. (Proc chance: 20%)
[6948] = { "камінь повернення", use="Повертає вас додому. Поговоріть з корчмарем в іншому місці, щоб змінити домівку." }, -- Hearthstone, @use Returns you to <Hearthstone Location>.  Speak to an Innkeeper in a different place to change your home location.
[6949] = { "миттєва отрута II", ref=6947 }, -- Instant Poison II
[6950] = { "миттєва отрута III", ref=6947 }, -- Instant Poison III
[6951] = { "задурлива отрута II", ref=5237 }, -- Mind-numbing Poison II
[6952] = { "товста шкура ведмедя" }, -- Thick Bear Fur
[6953] = { "кулак Веріґана" }, -- Verigan's Fist
[6966] = { "елунітова сокира" }, -- Elunite Axe
[6967] = { "елунітовий меч" }, -- Elunite Sword
[6968] = { "елунітовий молот" }, -- Elunite Hammer
[6969] = { "елунітовий кинджал" }, -- Elunite Dagger
[6970] = { "борг Фьюрена" }, -- Furen's Favor
[6971] = { "загартований вогнем койф" }, -- Fire Hardened Coif
[6972] = { "загартований вогнем гауберк", use="Збільшити лють на 30. (Відновлення 1 год)" }, -- Fire Hardened Hauberk, @use Increase Rage by 30. (1 Hour Cooldown)
[6973] = { "загартовані вогнем поножі" }, -- Fire Hardened Leggings
[6974] = { "загартовані вогнем рукавиці" }, -- Fire Hardened Gauntlets
[6975] = { "сокира вихору" }, -- Whirlwind Axe
[6976] = { "молот вихору" }, -- Whirlwind Warhammer
[6977] = { "меч вихору" }, -- Whirlwind Sword
[6978] = { "смеркова сокира" }, -- Umbral Axe
[6979] = { "сокира Знесилія" }, -- Haggard's Axe
[6980] = { "кинджал Знесилія" }, -- Haggard's Dagger
[6981] = { "смерковий кинджал" }, -- Umbral Dagger
[6982] = { "смеркова булава" }, -- Umbral Mace
[6983] = { "молот Знесилія" }, -- Haggard's Hammer
[6984] = { "смерковий меч" }, -- Umbral Sword
[6985] = { "меч Знесилія" }, -- Haggard's Sword
[6989] = { "флакон крові скаженолютого сатира" }, -- Vial of Hatefury Blood
[6990] = { "камінь молодшого пекельника" }, -- Lesser Infernal Stone
[6991] = { "жаристе вугілля" }, -- Smoldering Coal
[6992] = { "партія руди Джордана" }, -- Jordan's Ore Shipment
[6993] = { "партія очищеної руди Джордана" }, -- Jordan's Refined Ore Shipment
[6994] = { "деревина білокам'яного дуба" }, -- Whitestone Oak Lumber
[6995] = { "осквернений самоцвіт Кора" }, -- Corrupted Kor Gem
[6996] = { "вказівки Джордана" }, -- Jordan's Weapon Notes
[6997] = { "пошарпаний манускрипт", use="Викликати скверногончу в колі виклику. (Відновлення 3 хв)", flavor="Велика кількість сторінок з 'Фоліанту Змови'." }, -- Tattered Manuscript, @use Call forth a felhunter using the summoning circle. (3 Min Cooldown), @flavor A large number of papers from the 'Tome of the Cabal.'
[6999] = { "Фоліант Змови", use="Викликати скверногончу в колі виклику. (Відновлення 3 хв)" }, -- Tome of the Cabal, @use Call forth a felhunter using the summoning circle. (3 Min Cooldown)
[7001] = { "надгробний скіпетр" }, -- Gravestone Scepter
[7002] = { "арктичний баклер" }, -- Arctic Buckler
[7005] = { "білувальний ніж" }, -- Skinning Knife
[7006] = { "відновлений фоліант" }, -- Reconstructed Tome
[7062] = { "багряні шовкові штани" }, -- Crimson Silk Pantaloons
[7067] = { "первородна земля" }, -- Elemental Earth
[7068] = { "первородний вогонь" }, -- Elemental Fire
[7069] = { "первородне повітря" }, -- Elemental Air
[7070] = { "первородна вода" }, -- Elemental Water
[7071] = { "залізна пряжка" }, -- Iron Buckle
[7072] = { "луска наги" }, -- Naga Scale
[7073] = { "зламаний пазур" }, -- Broken Fang
[7074] = { "відколотий кіготь" }, -- Chipped Claw
[7075] = { "ядро землі" }, -- Core of Earth
[7076] = { "сутність землі" }, -- Essence of Earth
[7077] = { "серце вогню" }, -- Heart of Fire
[7078] = { "сутність вогню" }, -- Essence of Fire
[7079] = { "куля води" }, -- Globe of Water
[7080] = { "сутність води" }, -- Essence of Water
[7081] = { "подих вітру" }, -- Breath of Wind
[7082] = { "сутність повітря" }, -- Essence of Air
[7083] = { "очищений самоцвіт Кора" }, -- Purified Kor Gem
[7097] = { "стегенце", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Leg Meat, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[7115] = { "родова сокира" }, -- Heirloom Axe
[7116] = { "родовий кинджал" }, -- Heirloom Dagger
[7117] = { "родовий молот" }, -- Heirloom Hammer
[7118] = { "родовий меч" }, -- Heirloom Sword
[7119] = { "судомний вусик", flavor="Цей вусик не смикатиметься вічно" }, -- Twitching Antenna, @flavor This antenna won't twitch forever
[7120] = { "оплот Руґи" }, -- Ruga's Bulwark
[7126] = { "злиток димчастого заліза" }, -- Smoky Iron Ingot
[7127] = { "молотий азурит" }, -- Powdered Azurite
[7128] = { "нероздвоєне копито сатира" }, -- Uncloven Satyr Hoof
[7129] = { "рукавиці жорстокості" }, -- Brutal Gauntlets
[7130] = { "шолом жорстокості" }, -- Brutal Helm
[7131] = { "гомілкова кістка Драконопащих", use="Перевірити на міцність." }, -- Dragonmaw Shinbone, @use Right click to test its sturdiness.
[7132] = { "набедреники жорстокості" }, -- Brutal Legguards
[7133] = { "гауберк жорстокості", use="Збільшити лють на 30. (Відновлення 1 год)" }, -- Brutal Hauberk, @use Increase Rage by 30. (1 Hour Cooldown)
[7134] = { "міцна гомілкова кістка Драконопащих" }, -- Sturdy Dragonmaw Shinbone
[7189] = { "гоблінські реактивні черевики", use="Ці небезпечні на вигляд черевики значно збільшують швидкість руху на 20 секунд. Однак вони можуть вибухнути, тому будьте обережні." }, -- Goblin Rocket Boots, @use These dangerous looking boots significantly increase your run speed for 20 sec.  They are prone to explode however, so use with caution. (5 Min Cooldown)
[7206] = { "зразок води Дзеркального озера" }, -- Mirror Lake Water Sample
[7207] = { "фляга Дженні" }, -- Jennea's Flask, @use Use at the base of the Mirror Lake waterfall.
[7208] = { "ключ Тазана", use="Використовується для відкриття ранця Тазана." }, -- Tazan's Key, @use Used to open Tazan's satchel.
[7209] = { "ранець Тазана" }, -- Tazan's Satchel
[7226] = { "маг-тастичний гізмонітор" }, -- Mage-tastic Gizmonitor
[7227] = { "ротики Бальнірів" }, -- Balnir Snapdragons
[7228] = { "полуничне морозиво Тіґуля", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Tigule's Strawberry Ice Cream, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[7229] = { "жилет дослідників" }, -- Explorer's Vest
[7231] = { "рекомендаційний лист Астора" }, -- Astor's Letter of Introduction
[7247] = { "ящик зі скринями стримування", use="Створити скриню для стримування приголомшеного породження розлому (Відновлення 8 сек)" }, -- Chest of Containment Coffers, @use Create a containment coffer on a stunned Rift Spawn (8 Sec Cooldown)
[7249] = { "заряджений камінь розлому" }, -- Charged Rift Gem
[7266] = { "трактат Ура про темну магію" }, -- Ur's Treatise on Shadow Magic
[7267] = { "бездоганне павутиння" }, -- Pristine Spider Silk
[7268] = { "зразок води Завіана" }, -- Xavian Water Sample
[7269] = { "фляга Дейно", use="Наповнити водою біля підніжжя водоспаду Завіана." }, -- Deino's Flask, @use Use at the base of the Xavian waterfall.
[7270] = { "волосина веселої сестри" }, -- Laughing Sister's Hair
[7272] = { "заряджена блискавкою тростина" }, -- Bolt Charged Bramble
[7273] = { "тотемна палиця Зів'ялої Кори", use="Зберіть 10 тотемних палиць і скористайтесь ними біля каменю Зовнішнього Поневолення." }, -- Witherbark Totem Stick, @use Gather 10 totem sticks, and use them at the Stone of Outer Binding.
[7274] = { "\"Ритуали сили\"", flavor="Автор: чаклун Тірт" }, -- Rituals of Power, @flavor By Magus Tirth
[7279] = { "малий шкіряний гаман для набоїв", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Small Leather Ammo Pouch, @equip Increases ranged attack speed by 10%.
[7286] = { "луска чорного драконеняти" }, -- Black Whelp Scale
[7291] = { "сфера пекельника" }, -- Infernal Orb
[7292] = { "заповнена скриня стримування" }, -- Filled Containment Coffer
[7293] = { "даларанський самоцвіт мани" }, -- Dalaran Mana Gem
[7294] = { "гросбух Андрона" }, -- Andron's Ledger
[7295] = { "щоденник Тазана" }, -- Tazan's Logbook
[7297] = { "прокляття Морбента", use="Знімає захисні чари навколо Морбента Скверна. (Відновлення 3 хв)" }, -- Morbent's Bane, @use Removes the protective enchantments around Morbent Fel. (3 Min Cooldown)
[7298] = { "лезо підступності" }, -- Blade of Cunning
[7306] = { "голова Фенвіка" }, -- Fenwick's Head
[7307] = { "плотожерка", use="Оснащення вашої вудки такою наживкою збільшує навичку риболовлі на 75 протягом 10 хв." }, -- Flesh Eating Worm, @use When applied to your fishing pole, increases Fishing by 75 for 10 minutes.
[7308] = { "закляття прояву", flavor="Використовувати поруч з розломом мани" }, -- Cantation of Manifestation, @flavor Use near a mana rift disturbance
[7309] = { "звіт про ситуацію в Даларані" }, -- Dalaran Status Report
[7326] = { "сокира Тун'Ґріма" }, -- Thun'grim's Axe
[7327] = { "кинджал Тун'Ґріма" }, -- Thun'grim's Dagger
[7328] = { "булава Тун'Ґріма" }, -- Thun'grim's Mace
[7329] = { "меч Тун'Ґріма" }, -- Thun'grim's Sword
[7333] = { "свисток розпорядника" }, -- Overseer's Whistle
[7334] = { "мантія цвітіння" }, -- Efflorescent Robe
[7335] = { "вицвілий мундир" }, -- Grizzly Tunic
[7336] = { "кольчуга диколісся" }, -- Wildwood Chain
[7343] = { "гайковий ключ Бінґлса" }, -- Bingles' Wrench
[7344] = { "смолоскип благодатного вогню", use="Знижує броню цілі на 50 на 1 хв. (Відновлення 1 хв)" }, -- Torch of Holy Flame, @use Decrease the armor of target by 50 for 1 min. (1 Min Cooldown)
[7345] = { "викрутка Бінґлса" }, -- Bingles' Screwdriver
[7346] = { "молоток Бінґлса" }, -- Bingles' Hammer
[7365] = { "гномський шпрековерт" }, -- Gnoam Sprecklesprocket
[7372] = { "важкий шкіряний гаман для набоїв", equip="Збільшує швидкість атаки дальнього бою на 12%." }, -- Heavy Leather Ammo Pouch, @equip Increases ranged attack speed by 12%.
[7376] = { "болтозрив Бінґлса" }, -- Bingles' Blastencapper
[7377] = { "морозний шкіряний плащ" }, -- Frost Leather Cloak, @equip Increases damage done by Frost spells and effects by up to 11.
[7392] = { "луска зеленого драконеняти" }, -- Green Whelp Scale
[7428] = { "шкура тінекота" }, -- Shadowcat Hide
[7442] = { "ключ Гірощогла" }, -- Gyromast's Key
[7464] = { "гліфи виклику", use="Викликати пустотника в колі виклику. (Відновлення 3 хв)" }, -- Glyphs of Summoning, @use Call forth a voidwalker using the summoning circle. (3 Min Cooldown)
[7498] = { "верхня частина ключа Ґелкака" }, -- Top of Gelkak's Key
[7499] = { "середня частина ключа Ґелкака" }, -- Middle of Gelkak's Key
[7500] = { "нижня частина ключа Ґелкака" }, -- Bottom of Gelkak's Key
[7507] = { "арканічна сфера", use="Відновлює від 80 до 240 мани. (Відновлення 30 хв)" }, -- Arcane Orb, @use Restores 80 to 240 mana. (30 Min Cooldown)
[7508] = { "сфера лей-енергії", use="Відновлює від 80 до 240 мани. (Відновлення 30 хв)" }, -- Ley Orb, @use Restores 80 to 240 mana. (30 Min Cooldown)
[7509] = { "мантія з манополотна" }, -- Manaweave Robe
[7510] = { "мала мантія заклинателя" }, -- Lesser Spellfire Robes
[7511] = { "мантія астрального плетіння" }, -- Astral Knot Robe
[7512] = { "мантія підсвітнього плетіння" }, -- Nether-lace Robe
[7515] = { "небесна сфера", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 13.", use="Відновлює від 400 до 1200 мани. (Відновлення 30 хв)" }, -- Celestial Orb, @equip Increases damage and healing done by magical spells and effects by up to 13., @use Restores 400 to 1200 mana. (30 Min Cooldown)
[7516] = { "інструкції Табети" }, -- Tabetha's Instructions
[7566] = { "родовий меч Аґамандів" }, -- Agamand Family Sword
[7567] = { "родова сокира Аґамандів" }, -- Agamand Family Axe
[7568] = { "родовий кинджал Аґамандів" }, -- Agamand Family Dagger
[7569] = { "родова булава Аґамандів" }, -- Agamand Family Mace
[7586] = { "надія Тарнаріуна", use="Спіймати скаженого татарного ведмедя." }, -- Tharnariun's Hope, @use Used to capture a rabid thistle bear.
[7587] = { "інструкції Тун'ґріма" }, -- Thun'grim's Instructions
[7606] = { "полярні рукавиці" }, -- Polar Gauntlets
[7607] = { "соболиний жезл" }, -- Sable Wand
[7626] = { "зв'язка хутра" }, -- Bundle of Furs
[7627] = { "посилка в Доланаар" }, -- Dolanaar Delivery
[7628] = { "непідписаний лист", flavor="Запечатаний лист" }, -- Nondescript Letter, @flavor A sealed letter
[7629] = { "ноша Укора" }, -- Ukor's Burden
[7646] = { "ящик припасів для корчми" }, -- Crate of Inn Supplies
[7666] = { "пошкоджене намисто" }, -- Shattered Necklace
[7667] = { "фіал провидіння Талваша", use="Створити чашу провидіння для зв'язку з Талвашем. (Відновлення 2 хв)" }, -- Talvash's Phial of Scrying, @use Creates a bowl of scrying that will contact Talvash. (2 Min Cooldown)
[7668] = { "закривавлений щоденник" }, -- Bloodstained Journal
[7669] = { "рубін пошкодженого намиста" }, -- Shattered Necklace Ruby
[7670] = { "сапфір пошкодженого намиста" }, -- Shattered Necklace Sapphire
[7671] = { "топаз пошкодженого намиста" }, -- Shattered Necklace Topaz
[7672] = { "джерело сили пошкодженого намиста" }, -- Shattered Necklace Power Source
[7673] = { "підсилювальне намисто Талваша" }, -- Talvash's Enhancing Necklace
[7674] = { "пакунок для Матіаса", flavor="Запечатано" }, -- Delivery to Mathias, @flavor Sealed
[7675] = { "розклад постачань повстанців" }, -- Defias Shipping Schedule
[7676] = { "прудкоп'яховий чай", use="Миттєво відновлює 100 енергії. (Відновлення 5 хв)" }, -- Thistle Tea, @use Instantly restores 100 energy. (5 Min Cooldown)
[7691] = { "набальзамований капюшон" }, -- Embalmed Shroud
[7708] = { "некротичний жезл" }, -- Necrotic Wand
[7711] = { "мантія Доана" }, -- Robe of Doan
[7712] = { "напліччя Доана" }, -- Mantle of Doan
[7713] = { "ілюзорна палиця" }, -- Illusionary Rod
[7714] = { "гіпнотичний клинок", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 9." }, -- Hypnotic Blade, @equip Increases damage and healing done by magical spells and effects by up to 9.
[7715] = { "звіт Оніна" }, -- Onin's Report
[7720] = { "капелюх Білошкур" }, -- Whitemane's Chapeau
[7722] = { "триєдиний амулет" }, -- Triune Amulet
[7723] = { "міць Моґрейна" }, -- Mograine's Might
[7731] = { "талісман з примарного каменю" }, -- Ghostshard Talisman
[7735] = { "троянда Яннока" }, -- Jannok's Rose
[7737] = { "щоденник Сетіра", flavor="Написано невідомою вам мовою." }, -- Sethir's Journal, @flavor Written in a language you cannot decipher.
[7738] = { "вічнозелені рукавички" }, -- Evergreen Gloves
[7739] = { "накидка полісся" }, -- Timberland Cape
[7746] = { "подяка Ліги Дослідників" }, -- Explorers' League Commendation
[7747] = { "мерзенний захисник", equip="Шанс завдати ворогу від 105 до 175 шкоди від тіні при отриманні удару в бою. (Імовірність: 1%)" }, -- Vile Protector, @equip When struck in combat has a 1% chance of inflicting 105 to 175 Shadow damage to the attacker. (Proc chance: 1%)
[7749] = { "сфера Омеги", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11." }, -- Omega Orb, @equip Increases damage and healing done by magical spells and effects by up to 11.
[7750] = { "наплічник горя" }, -- Mantle of Woe
[7751] = { "чоботи Воррела" }, -- Vorrel's Boots
[7766] = { "порожній коричневий бурдюк", use="Наповнити водою зі ставу біля хатини Бріни в Степах." }, -- Empty Brown Waterskin, @use This container needs to be filled with water from the watering hole near Brine's hut in the Barrens.
[7767] = { "порожній блакитний бурдюк", use="Наповнити водою з колодязя в руїнах Зорепилу." }, -- Empty Blue Waterskin, @use This container should be filled with water from the Ruins of Stardust well.
[7768] = { "порожній червоний бурдюк", use="Наповнити водою з колодязя на Тарренському Млині." }, -- Empty Red Waterskin, @use This container needs to be filled with water from the well in Tarren Mill.
[7769] = { "наповнений коричневий бурдюк" }, -- Filled Brown Waterskin
[7770] = { "наповнений блакитний бурдюк" }, -- Filled Blue Waterskin
[7771] = { "наповнений червоний бурдюк" }, -- Filled Red Waterskin
[7810] = { "фіал найчистішої води" }, -- Vial of Purest Water
[7811] = { "залишки крапель найчистішої води" }, -- Remaining Drops of Purest Water
[7812] = { "наручі зіпсованого прояву" }, -- Corrupt Manifestation's Bracers
[7813] = { "осколок води" }, -- Shard of Water
[7846] = { "ікло скельного койота" }, -- Crag Coyote Fang
[7847] = { "шлунок канюка" }, -- Buzzard Gizzard
[7848] = { "уламок кам'яного елементаля" }, -- Rock Elemental Shard
[7866] = { "порожній тавматургічний флакон", use="Наповнити порожній тавматургічний флакон кров'ю випаленого дракона-стража. (Відновлення 1 хв)" }, -- Empty Thaumaturgy Vessel, @use Fills the empty thaumaturgy vessel when used on Scorched Guardians. (1 Min Cooldown)
[7867] = { "флакон з кров'ю дракона" }, -- Vessel of Dragon's Blood
[7870] = { "скринька з тавматургічними флаконами", flavor="Всередині цієї скриньки знаходяться порожні тавматургічні флакони." }, -- Thaumaturgy Vessel Lockbox, @flavor Inside this lockbox are the empty thaumaturgy vessels.
[7871] = { "жетон розбійництва" }, -- Token of Thievery
[7886] = { "неперекладений щоденник", flavor="Ви не можете зрозуміти записи в цьому щоденнику." }, -- Untranslated Journal, @flavor You do not understand the writing in the journal.
[7887] = { "намисто і самоцвіти" }, -- Necklace and Gem Salvage
[7888] = { "підсилювальне намисто Джаркала" }, -- Jarkal's Enhancing Necklace
[7907] = { "сертифікат розбійництва" }, -- Certificate of Thievery
[7908] = { "щоденник Клейвена Мортвейка" }, -- Klaven Mortwake's Journal
[7909] = { "аквамарин" }, -- Aquamarine
[7910] = { "зоряний рубін" }, -- Star Ruby
[7911] = { "ясносрібна руда" }, -- Truesilver Ore
[7912] = { "твердий камінь" }, -- Solid Stone
[7913] = { "варварські залізні наплічники" }, -- Barbaric Iron Shoulders
[7914] = { "варварська залізна кіраса" }, -- Barbaric Iron Breastplate
[7915] = { "варварський залізний шолом" }, -- Barbaric Iron Helm
[7916] = { "варварські залізні чоботи" }, -- Barbaric Iron Boots
[7917] = { "варварські залізні рукавиці" }, -- Barbaric Iron Gloves
[7919] = { "важкі мітрилові рукавиці" }, -- Heavy Mithril Gauntlet
[7922] = { "сталевий шолом" }, -- Steel Plate Helm
[7923] = { "ключ від вежі повстанців" }, -- Defias Tower Key
[7926] = { "вишукані мітрилові штани", equip="Збільшує ваш шанс ухилитися від атаки на 1%." }, -- Ornate Mithril Pants, @equip Increases your chance to dodge an attack by 1%.
[7927] = { "вишукані мітрилові рукавиці", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Ornate Mithril Gloves, @equip Improves your chance to get a critical strike by 1%.
[7928] = { "вишукані мітрилові наплічники", equip="Збільшує ваш шанс ухилитися від атаки на 1%." }, -- Ornate Mithril Shoulder, @equip Increases your chance to dodge an attack by 1%.
[7930] = { "важка мітрилова кіраса" }, -- Heavy Mithril Breastplate
[7931] = { "мітриловий капюшон" }, -- Mithril Coif
[7933] = { "важкі мітрилові чоботи" }, -- Heavy Mithril Boots
[7935] = { "вишукана мітрилова кіраса", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс ухилитися від атаки на 1%." } }, -- Ornate Mithril Breastplate, @equip Improves your chance to get a critical strike by 1%., @equip Increases your chance to dodge an attack by 1%.
[7936] = { "вишукані мітрилові чоботи", equip="Збільшує ваш шанс ухилитися від атаки на 1%.", use="Усуває наявні ефекти знерухомлення та надає несприйнятливість до ефектів знерухомлення протягом 5 сек. (Відновлення 30 хв)" }, -- Ornate Mithril Boots, @equip Increases your chance to dodge an attack by 1%., @use Removes existing Immobilizing effects and makes you immune to Immobilizing effects for 5 sec. (30 Min Cooldown)
[7937] = { "вишуканий мітриловий шолом", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Ornate Mithril Helm, @equip Improves your chance to get a critical strike by 1%.
[7938] = { "ясносрібні рукавиці" }, -- Truesilver Gauntlets
[7941] = { "важка мітрилова сокира" }, -- Heavy Mithril Axe
[7945] = { "велика чорна булава" }, -- Big Black Mace
[7956] = { "бронзовий бойовий молот" }, -- Bronze Warhammer
[7957] = { "довгий бронзовий меч" }, -- Bronze Greatsword
[7958] = { "бронзова бойова сокира" }, -- Bronze Battle Axe
[7963] = { "сталева кіраса" }, -- Steel Breastplate
[7964] = { "твердий точильний камінь", use="Збільшує шкоду гострої зброї на 6 на 30 хвилин." }, -- Solid Sharpening Stone, @use Increase sharp weapon damage by 6 for 30 minutes.
[7965] = { "тверде грузило", use="Збільшує шкоду дробильної зброї на 6 на 30 хвилин." }, -- Solid Weightstone, @use Increase the damage of a blunt weapon by 6 for 30 minutes.
[7966] = { "твердий шліфувальний камінь" }, -- Solid Grinding Stone
[7968] = { "скарб Південних морів" }, -- Southsea Treasure
[7970] = { "В.Х.М.К", use="Папуги люблять крекери!", flavor="Величезний хімічно змінений крекер" }, -- E.C.A.C., @use Parrots love crackers!, @flavor Enormous Chemically Altered Cracker
[7971] = { "чорна перлина" }, -- Black Pearl
[7972] = { "пасока невмерлих" }, -- Ichor of Undeath
[7974] = { "пікантне м'ясо молюска" }, -- Zesty Clam Meat
[7978] = { "креслення: Варварські залізні наплічники", use="Навчає вас створювати варварські залізні наплічники." }, -- Plans: Barbaric Iron Shoulders, @use Teaches you how to make Barbaric Iron Shoulders.
[7979] = { "креслення: Варварська залізна кіраса", use="Навчає вас створювати варварську залізну кірасу." }, -- Plans: Barbaric Iron Breastplate, @use Teaches you how to make a Barbaric Iron Breastplate.
[7980] = { "креслення: Варварський залізний шолом", use="Навчає вас створювати варварський залізний шолом." }, -- Plans: Barbaric Iron Helm, @use Teaches you how to make a Barbaric Iron Helm.
[7981] = { "креслення: Варварські залізні чоботи", use="Навчає вас створювати варварські залізні чоботи." }, -- Plans: Barbaric Iron Boots, @use Teaches you how to make Barbaric Iron Boots.
[7982] = { "креслення: Варварські залізні рукавиці", use="Навчає вас створювати варварські залізні рукавиці." }, -- Plans: Barbaric Iron Gloves, @use Teaches you how to make Barbaric Iron Gloves.
[7983] = { "креслення: Вишукані мітрилові штани", use="Навчає вас створювати вишукані мітрилові штани." }, -- Plans: Ornate Mithril Pants, @use Teaches you how to make Ornate Mithril Pants.
[7984] = { "креслення: Вишукані мітрилові рукавиці", use="Навчає вас створювати вишукані мітрилові рукавиці." }, -- Plans: Ornate Mithril Gloves, @use Teaches you how to make Ornate Mithril Gloves.
[7985] = { "креслення: Вишукані мітрилові наплічники", use="Навчає вас створювати вишукані мітрилові наплічники." }, -- Plans: Ornate Mithril Shoulder, @use Teaches you how to make Ornate Mithril Shoulders.
[7987] = { "креслення: Вишуканий мітриловий шолом", use="Навчає вас створювати вишуканий мітриловий шолом." }, -- Plans: Ornate Mithril Helm, @use Teaches you how to make Ornate Mithril Helm.
[8007] = { "цитрин мани", use="Відновлює від 775 до 925 мани. (Відновлення 2 хв)" }, -- Mana Citrine, @use Restores 775 to 925 mana. (2 Min Cooldown)
[8008] = { "рубін мани", use="Відновлює від 1000 до 1200 мани. (Відновлення 2 хв)" }, -- Mana Ruby, @use Restores 1000 to 1200 mana. (2 Min Cooldown)
[8009] = { "дентрієвий камінь сили" }, -- Dentrium Power Stone
[8026] = { "родинний скарб Ґарретів" }, -- Garrett Family Treasure
[8027] = { "скарб Крома Міцнорука" }, -- Krom Stoutarm's Treasure
[8046] = { "записи Кірнен" }, -- Kearnen's Journal
[8047] = { "гриб-малиновик" }, -- Magenta Fungus Cap
[8048] = { "смарагдовий ловець снів" }, -- Emerald Dreamcatcher
[8049] = { "намисто Кривої Сосни", flavor="Сяючий смарагд так і просить, щоб його витягли..." }, -- Gnarlpine Necklace, @flavor The glowing emerald just needs to be pulled out...
[8050] = { "самоцвіт Таллонкая" }, -- Tallonkai's Jewel
[8051] = { "сигнальний пістолет", use="Випускає в повітря сигнальну ракету." }, -- Flare Gun, @use Shoots a flare into the air.
[8052] = { "камінь сили Ан'Аллеума" }, -- An'Alleum Power Stone
[8053] = { "обсидіанове джерело сили" }, -- Obsidian Power Source
[8066] = { "свисток Фіззула", use="Посвистіть, щоб дати зрозуміти Фіззулу, що ви союзник." }, -- Fizzule's Whistle, @use Blow on the whistle to let Fizzule know you're an ally.
[8067] = { "майстерна легка куля", desc="Додає 2 пошкодження за секунду" }, -- Crafted Light Shot, @desc Adds 2 damage per second
[8068] = { "майстерна важка куля", desc="Додає 4,5 пошкодження за секунду" }, -- Crafted Heavy Shot, @desc Adds 4.5 damage per second
[8070] = { "талон на винагороду" }, -- Reward Voucher
[8071] = { "шипляча палиця" }, -- Sizzle Stick
[8072] = { "ключ від вежі Силіксиза" }, -- Silixiz's Tower Key
[8073] = { "запас зміненої суміші Занзіла" }, -- Cache of Zanzil's Altered Mixture
[8074] = { "голова Ґаллівікса" }, -- Gallywix's Head
[8075] = { "начаклована хлібина на заквасці", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Sourdough, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[8076] = { "начаклований солодкий рулет", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Sweet Roll, @use Restores 2148 health over 30 sec.  Must remain seated while eating.
[8077] = { "начаклована мінеральна вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Mineral Water, @use Restores 1992 mana over 30 sec.  Must remain seated while drinking.
[8078] = { "начаклована газована вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Sparkling Water, @use Restores 2934 mana over 30 sec.  Must remain seated while drinking.
[8079] = { "начаклована кристалічна вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Crystal Water, @use Restores 4200 mana over 30 sec.  Must remain seated while drinking.
[8087] = { "зразок зміненої суміші Занзіла" }, -- Sample of Zanzil's Altered Mixture
[8095] = { "масло Гінотта", use="Ліки від дотику Занзіла." }, -- Hinott's Oil, @use Cure for the Touch of Zanzil.
[8136] = { "велетенська пухлина" }, -- Gargantuan Tumor
[8149] = { "оберіг вуду", use="Використати на тілі Лютопазура." }, -- Voodoo Charm, @use Use on the fallen body of Rageclaw.
[8150] = { "глибокоскельна сіль" }, -- Deeprock Salt
[8152] = { "фляга великого моджо" }, -- Flask of Big Mojo
[8153] = { "диколоззя" }, -- Wildvine
[8154] = { "луска скорпіда" }, -- Scorpid Scale
[8155] = { "жертва Сатри", use="Залишити жертву біля фонтану в храмі Місяця." }, -- Sathrah's Sacrifice, @use Offer at the Temple of the Moon fountain.
[8165] = { "зношена драконяча луска" }, -- Worn Dragonscale
[8167] = { "черепашача луска" }, -- Turtle Scale
[8169] = { "товста шкура" }, -- Thick Hide
[8170] = { "міцна шкіра" }, -- Rugged Leather
[8171] = { "міцна шкура" }, -- Rugged Hide
[8172] = { "оброблена товста шкура" }, -- Cured Thick Hide
[8173] = { "накладки з товстої шкіри", use="Укріплення предмета, який носять на тілі, ногах, руках чи ступнях, що назавжди збільшить показник його броні на 32. Можна використовувати лише на предметах 25-го рівня і вище." }, -- Thick Armor Kit, @use Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 32.  Only usable on items level 25 and above.
[8175] = { "мундир нічного краєвиду" }, -- Nightscape Tunic
[8176] = { "пов'язка нічного краєвиду" }, -- Nightscape Headband
[8183] = { "точний лук" }, -- Precision Bow
[8185] = { "поножі з черепашачої луски" }, -- Turtle Scale Leggings
[8187] = { "рукавиці з черепашачої луски" }, -- Turtle Scale Gloves
[8189] = { "кіраса з черепашачої луски" }, -- Turtle Scale Breastplate
[8191] = { "шолом з черепашачої луски" }, -- Turtle Scale Helm
[8193] = { "штани нічного краєвиду" }, -- Nightscape Pants
[8197] = { "чоботи нічного краєвиду", equip="Збільшує ефективність непомітності на 1 рівень." }, -- Nightscape Boots, @equip Increases your effective stealth level by 1.
[8198] = { "браслети з черепашачої луски" }, -- Turtle Scale Bracers
[8203] = { "міцна кіраса з луски скорпіда" }, -- Tough Scorpid Breastplate
[8204] = { "міцні рукавиці з луски скорпіда" }, -- Tough Scorpid Gloves
[8210] = { "наплічники з дикої шкіри" }, -- Wild Leather Shoulders
[8211] = { "жилет з дикої шкіри" }, -- Wild Leather Vest
[8212] = { "штани з дикої шкіри" }, -- Wild Leather Leggings
[8213] = { "чоботи з дикої шкіри" }, -- Wild Leather Boots
[8214] = { "шолом з дикої шкіри" }, -- Wild Leather Helmet
[8215] = { "плащ з дикої шкіри" }, -- Wild Leather Cloak
[8226] = { "м'ясар" }, -- The Butcher
[8244] = { "бездоганна сфера з дренетисту" }, -- Flawless Draenethyst Sphere
[8343] = { "міцна шовкова нитка" }, -- Heavy Silken Thread
[8344] = { "сріблопавутинні залози" }, -- Silvery Spinnerets
[8363] = { "шаманський оберіг вуду" }, -- Shaman Voodoo Charm
[8364] = { "мітрилоголова форель", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Mithril Head Trout, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[8365] = { "сира мітрилоголова форель", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Mithril Head Trout, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[8368] = { "товста вовча шкура" }, -- Thick Wolfhide
[8383] = { "простий лист" }, -- Plain Letter
[8391] = { "щелепа хихотуна" }, -- Snickerfang Jowl
[8392] = { "легеня пеклокнура" }, -- Blasted Boar Lung
[8393] = { "клешня скорпока" }, -- Scorpok Pincer
[8394] = { "мозок василіска" }, -- Basilisk Brain
[8396] = { "шлунок стерв'ятника" }, -- Vulture Gizzard
[8403] = { "викрійка: Наплічники з дикої шкіри", use="Навчає вас створенню наплічників з дикої шкіри." }, -- Pattern: Wild Leather Shoulders, @use Teaches you how to craft Wild Leather Shoulders.
[8404] = { "викрійка: Жилет з дикої шкіри", use="Навчає вас створенню жилета з дикої шкіри." }, -- Pattern: Wild Leather Vest, @use Teaches you how to craft a Wild Leather Vest.
[8405] = { "викрійка: Шолом з дикої шкіри", use="Навчає вас створенню шолома з дикої шкіри." }, -- Pattern: Wild Leather Helmet, @use Teaches you how to craft a Wild Leather Helmet.
[8406] = { "викрійка: Чоботи з дикої шкіри", use="Навчає вас створенню чобіт з дикої шкіри." }, -- Pattern: Wild Leather Boots, @use Teaches you how to craft Wild Leather Boots.
[8407] = { "викрійка: Штани з дикої шкіри", use="Навчає вас створенню штанів з дикої шкіри." }, -- Pattern: Wild Leather Leggings, @use Teaches you how to craft Wild Leather Leggings.
[8408] = { "викрійка: Плащ з дикої шкіри", use="Навчає вас створенню плаща з дикої шкіри." }, -- Pattern: Wild Leather Cloak, @use Teaches you how to craft Wild Leather Cloak.
[8410] = { "Б.А.Д", use="Збільшує силу на 25 при споживанні. Ефект діє 60 хвилин. (Відновлення 1 год)", flavor="Бездоганний Ампліфікатор Дужості" }, -- R.O.I.D.S., @use Increases Strength by 25 when consumed. Effect lasts for 60 minutes. (1 Hour Cooldown), @flavor Robust Operational Imbue Derived From Snickerfang
[8411] = { "легеневий коктейль", use="Збільшує витривалість на 25 при споживанні. Ефект діє 60 хвилин. (Відновлення 1 год)", flavor="100% свіжого легеневого соку прямого віджиму!" }, -- Lung Juice Cocktail, @use Increases Stamina by 25 when consumed. Effect lasts for 60 minutes. (1 Hour Cooldown), @flavor 100% Grade A Lung Juice - Freshly Squeezed
[8412] = { "сіль скорпока", use="Збільшує спритність на 25 при споживанні. Ефект діє 60 хвилин. (Відновлення 1 год)" }, -- Ground Scorpok Assay, @use Increases Agility by 25 when consumed. Effect lasts for 60 minutes. (1 Hour Cooldown)
[8423] = { "мозковий збір", use="Збільшує інтелект на 25 при споживанні. Ефект діє 60 хвилин. (Відновлення 1 год)", flavor="Найкраще смакує охолодженим" }, -- Cerebral Cortex Compound, @use Increases Intellect by 25 when consumed. Effect lasts for 60 minutes. (1 Hour Cooldown), @flavor Best Served Chilled
[8424] = { "шлункова жуйка", use="Збільшує дух на 25 при споживанні. Ефект діє 60 хвилин. (Відновлення 1 год)", flavor="Зі смаком полуниці" }, -- Gizzard Gum, @use Increases Spirit by 25 when consumed. Effect lasts for 60 minutes. (1 Hour Cooldown), @flavor Strawberry Flavor
[8428] = { "насичена росяна залоза" }, -- Laden Dew Gland
[8429] = { "пробита росяна залоза" }, -- Punctured Dew Gland
[8431] = { "котушка світло-оливкових шовкових ниток" }, -- Spool of Light Chartreuse Silk Thread
[8432] = { "Міксільпіксілін", use="Ліки від дотику Занзіла." }, -- Eau de Mixilpixil, @use Cure for the Touch of Zanzil.
[8443] = { "ґаз'ридіанська прикраса" }, -- Gahz'ridian Ornament
[8463] = { "накази воєвождя", flavor="Печатка зламана." }, -- Warchief's Orders, @flavor The seal is broken.
[8483] = { "бурдюк з водою Пустелебродів" }, -- Wastewander Water Pouch
[8484] = { "польовий набір Пристробляхводоканалу", flavor="Модель 103-XB!" }, -- Gadgetzan Water Co. Care Package, @flavor Model 103-XB!
[8485] = { "переноска для кішки (бомбейська кішка)", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашу кішку." }, -- Cat Carrier (Bombay), @use Right Click to summon and dismiss your cat.
[8486] = { "переноска для кішки (корніш-рекс)", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашу кішку." }, -- Cat Carrier (Cornish Rex), @use Right Click to summon and dismiss your cat.
[8487] = { "переноска для кішки (руда смугаста кішка)", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашу кішку." }, -- Cat Carrier (Orange Tabby), @use Right Click to summon and dismiss your cat.
[8488] = { "переноска для кішки (срібляста смугаста кішка)", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашу кішку." }, -- Cat Carrier (Silver Tabby), @use Right Click to summon and dismiss your cat.
[8489] = { "переноска для кішки (біле кошеня)", use="Клацніть правою кнопкою миші, щоб викликати і відпустити ваше кошеня." }, -- Cat Carrier (White Kitten), @use Right Click to summon and dismiss your cat.
[8492] = { "клітка з папугою (зеленокрилий макао)", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашого папугу." }, -- Parrot Cage (Green Wing Macaw), @use Right Click to summon and dismiss your bird.
[8494] = { "клітка з папугою (гіацинтовий макао)", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашого папугу." }, -- Parrot Cage (Hyacinth Macaw), @use Right Click to summon and dismiss your bird.
[8495] = { "клітка з папугою (сенегальський)", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашого папугу." }, -- Parrot Cage (Senegal), @use Right Click to summon and dismiss your bird.
[8496] = { "клітка з папугою (корела)", use="Use: Клацніть правою кнопкою миші, щоб викликати і відпустити вашого папугу." }, -- Parrot Cage (Cockatiel), @use Right Click to summon and dismiss your bird.
[8497] = { "клітка з кроликом (снігоступ)", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашого кролика." }, -- Rabbit Crate (Snowshoe), @use Right Click to summon and dismiss your rabbit.
[8500] = { "велика рогата сова", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашу сову." }, -- Great Horned Owl, @use Right Click to summon and dismiss your owl.
[8501] = { "соколина сова", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашу сову." }, -- Hawk Owl, @use Right Click to summon and dismiss your owl.
[8523] = { "набір для польових досліджень" }, -- Field Testing Kit
[8524] = { "джерело енергії моделі 4711-FTZ", flavor="Це джерело енергії може живити набір для польових досліджень." }, -- Model 4711-FTZ Power Source, @flavor Using this power source will activate the Field Testing Kit.
[8525] = { "список покупок Зінґе" }, -- Zinge's Purchase Order
[8526] = { "фіалковий траган", use="Не їж мене." }, -- Violet Tragan, @use Don't eat me.
[8527] = { "запечатаний набір для польових досліджень" }, -- Sealed Field Testing Kit
[8528] = { "фіалковий порошок" }, -- Violet Powder
[8529] = { "еліксир Гогельмогеля", use="Випий мене. (Відновлення 3 сек)" }, -- Noggenfogger Elixir, @use Drink Me. (3 Sec Cooldown)
[8544] = { "маготканий бинт", use="Відновлює 800 здоров'я за 8 сек." }, -- Mageweave Bandage, @use Heals 800 damage over 8 sec.
[8545] = { "щільний маготканий бинт", use="Відновлює 1104 здоров'я за 8 сек." }, -- Heavy Mageweave Bandage, @use Heals 1104 damage over 8 sec.
[8548] = { "водоматичний стрижень" }, -- Divino-matic Rod
[8563] = { "червоний механобіг", use="Викликає та відпускає верхового механічного довгобіга. (Відновлення 3 сек)" }, -- Red Mechanostrider, @use Summons and dismisses a rideable mechanical tallstrider. (3 Sec Cooldown)
[8564] = { "яйце гіпогрифа", flavor="Воно величезне!" }, -- Hippogryph Egg, @flavor It's huge!
[8583] = { "ріг верхового коня-скелета", use="Викликає та відпускає верхового коня-скелета. (Відновлення 3 сек)" }, -- Horn of the Skeletal Mount, @use Summons and dismisses a rideable skeletal horse. (3 Sec Cooldown)
[8584] = { "невикористаний пристрій для пошуку води", use="Наповнити невикористаний пристрій для пошуку води біля водойми Варти Зажурених Пісків." }, -- Untapped Dowsing Widget, @use Fill the Untapped Dowsing Widget at the Sandsorrow Watch water hole.
[8585] = { "використаний пристрій для пошуку води" }, -- Tapped Dowsing Widget
[8586] = { "свисток строкатого червоного раптора", use="Викликає та відпускає верхового раптора. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Whistle of the Mottled Red Raptor, @use Summons and dismisses a rideable Raptor.  This is a very fast mount. (3 Sec Cooldown)
[8587] = { "частини тіл комах Сентіпаар" }, -- Centipaar Insect Parts
[8588] = { "свисток смарагдового раптора", use="Викликає та відпускає верхового раптора. (Відновлення 3 сек)" }, -- Whistle of the Emerald Raptor, @use Summons and dismisses a rideable Raptor. (3 Sec Cooldown)
[8591] = { "свисток бірюзового раптора", use="Викликає та відпускає верхового раптора. (Відновлення 3 сек)" }, -- Whistle of the Turquoise Raptor, @use Summons and dismisses a rideable Raptor. (3 Sec Cooldown)
[8592] = { "свисток лілового раптора", use="Викликає та відпускає верхового раптора. (Відновлення 3 сек)" }, -- Whistle of the Violet Raptor, @use Summons and dismisses a rideable Raptor. (3 Sec Cooldown)
[8593] = { "землемірне спорядження Полотноміра" }, -- Scrimshank's Surveying Gear
[8594] = { "звіт про дослідження комах" }, -- Insect Analysis Report
[8595] = { "синій механобіг", use="Викликає та відпускає верхового механічного довгобіга. (Відновлення 3 сек)" }, -- Blue Mechanostrider, @use Summons and dismisses a rideable mechanical tallstrider. (3 Sec Cooldown)
[8603] = { "чортополохова роса" }, -- Thistleshrub Dew
[8623] = { "аварійний маяк OOX-17/ТН" }, -- OOX-17/TN Distress Beacon
[8624] = { "червоний бенгальський вогонь" }, -- Red Sparkler
[8625] = { "білий бенгальський вогонь" }, -- White Sparkler
[8626] = { "синій бенгальський вогонь" }, -- Blue Sparkler
[8629] = { "поводи смугастого ночезуба", use="Викликає та відпускає верхового шаблезуба. (Відновлення 3 сек)" }, -- Reins of the Striped Nightsaber, @use Summons and dismisses a rideable Sabre Cat. (3 Sec Cooldown)
[8631] = { "поводи смугастого кригозуба", use="Викликає та відпускає верхового смугастого кригозуба. (Відновлення 3 сек)" }, -- Reins of the Striped Frostsaber, @use Summons and dismisses a rideable Striped Frostsaber. (3 Sec Cooldown)
[8632] = { "поводи плямистого кригозуба", use="Викликає та відпускає верхового плямистого кригозуба. (Відновлення 3 сек)" }, -- Reins of the Spotted Frostsaber, @use Summons and dismisses a rideable Spotted Frostsaber (3 Sec Cooldown)
[8643] = { "незвичайне яйце", flavor="У цьому яйці є щось особливе..." }, -- Extraordinary Egg, @flavor There's something very special about this egg...
[8644] = { "чудове яйце" }, -- Fine Egg
[8645] = { "звичайне яйце" }, -- Ordinary Egg
[8646] = { "погане яйце" }, -- Bad Egg
[8647] = { "ящик для яєць", flavor="Якість гарантована!" }, -- Egg Crate, @flavor Quality Guaranteed!
[8663] = { "мітрилова печатка", flavor="E Pluribus Mithril" }, -- Mithril Insignia, @flavor E Pluribus Mithril
[8683] = { "свіже яблуко Клари", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}", flavor="Свіжий смачний фрукт... що гарно підходить для маскування." }, -- Clara's Fresh Apple, @use Restores 30 health over 15 sec.  Must remain seated while eating., @flavor A fresh piece of fruit that's good to eat... and is apparently good for disguises also!
[8684] = { "медова шипучка Внутрішніх земель" }, -- Hinterlands Honey Ripple
[8685] = { "вантаж шипучки для Драна", flavor="В цій бочці знаходиться пакунок шипучки для Драна та кілька додаткових пляшок" }, -- Dran's Ripple Delivery, @flavor This barrel contains Dran's packaged ripple and his extra bottles.
[8686] = { "мітрилова підвіска", flavor="Несе на собі знак Ґалвана Древнього" }, -- Mithril Pendant, @flavor Bears the Seal of Galvan the Ancient
[8687] = { "запечатаний опис відвідувача Тредда" }, -- Sealed Description of Thredd's Visitor
[8703] = { "перстень майстерності", use="Викликає молоток майстерності. (Відновлення 3 год)", flavor="Почесний член ордену мітрилу" }, -- Signet of Expertise, @use Summons a Hammer of Expertise. (3 Hrs Cooldown), @flavor Honorable Member of the Mithril Order
[8704] = { "аварійний маяк OOX-09/ВЗ" }, -- OOX-09/HL Distress Beacon
[8705] = { "аварійний маяк OOX-22/ФЕ" }, -- OOX-22/FE Distress Beacon
[8707] = { "наелектризована луска Ґаз'рілли" }, -- Gahz'rilla's Electrified Scale
[8708] = { "молоток майстерності" }, -- Hammer of Expertise
[8723] = { "голова Халіфа Скорпідожала" }, -- Caliph Scorpidsting's Head
[8724] = { "таємничка Рін'джі" }, -- Rin'ji's Secret
[8827] = { "еліксир ходіння по воді", use="Дозволяє вам ходити по воді протягом {1} хв.#for {1} min" }, -- Elixir of Water Walking, @use Lets you walk on water for 30 min. (3 Sec Cooldown)
[8831] = { "пурпуровий лотос" }, -- Purple Lotus
[8836] = { "сльози Артаса" }, -- Arthas' Tears
[8838] = { "сонцетравка" }, -- Sungrass
[8839] = { "сліпниця" }, -- Blindweed
[8845] = { "примарний гриб" }, -- Ghost Mushroom
[8846] = { "ґромокров" }, -- Gromsblood
[8923] = { "сутність агонії", flavor="Використовується пройдисвітами, щоб варити отруту." }, -- Essence of Agony, @flavor Used by rogues to brew poison.
[8924] = { "пил псування", flavor="Використовується пройдисвітами, щоб варити отруту." }, -- Dust of Deterioration, @flavor Used by rogues to brew poison.
[8925] = { "кришталевий фіал" }, -- Crystal Vial
[8926] = { "миттєва отрута IV", ref=6947 }, -- Instant Poison IV
[8927] = { "миттєва отрута V", ref=6947 }, -- Instant Poison V
[8928] = { "миттєва отрута VI", ref=6947 }, -- Instant Poison VI
[8932] = { "альтерацький сир", ref=117 }, -- Alterac Swiss
[8949] = { "еліксир спритності", ref=2457 }, -- Elixir of Agility
[8951] = { "еліксир сильного захисту", ref=5997 }, -- Elixir of Greater Defense
[8956] = { "олія жертвоприношення", use="Завдає 50 шкоди вогнем усім ворогам у радіусі 5 м кожні 3 секунди протягом 15 сек. (Відновлення 3 сек)" }, -- Oil of Immolation, @use Does 50 fire damage to any enemies within a 5 yard radius around the caster every 3 seconds for 15 sec (3 Sec Cooldown)
[8973] = { "товста шкура єті" }, -- Thick Yeti Hide
[8984] = { "смертельна отрута III", ref=2892 }, -- Deadly Poison III
[8985] = { "смертельна отрута IV", ref=2892 }, -- Deadly Poison IV
[9030] = { "відновлювальне зілля", use="Знімає один магічний ефект, прокляття, отруту або хворобу кожні {1} с протягом {2} с. (Відновлення 2 хв)#every {1} seconds for {2} seconds" }, -- Restorative Potion, @use Removes 1 magic, curse, poison or disease effect on you every 5 seconds for 30 seconds. (2 Min Cooldown)
[9036] = { "зілля супротиву магії", use="Збільшує ваш супротив всім школам магії на 50 на 3 хв. (Відновлення 2 хв)" }, -- Magic Resistance Potion, @use Increases your resistance to all schools of magic by 50 for 3 min. (2 Min Cooldown)
[9061] = { "гоблінське ракетне паливо", flavor="Використовується гоблінськими інженерами для живлення своїх творінь" }, -- Goblin Rocket Fuel, @flavor Used by Goblin Engineers to power their creations
[9088] = { "дар Артаса", use="Збільшує супротив тіні на {1}. Кожен нападник буде уражений хворобою з імовірністю {2}%, яка збільшить отриману ним шкоду на {3} на {4} хв. Триває {5} хв. (Відновлення 3 сек)#shadow by {1}#{2}% chance#damage taken by {3} for {4} min#Lasts for {5} min" }, -- Gift of Arthas, @use Increases resistance to shadow by 10.  If an enemy strikes the imbiber, the attacker has a 30% chance of being inflicted with disease that increases their damage taken by 8 for 3 min.  Lasts for 30 min. (Proc chance: 30%) (3 Sec Cooldown)
[9144] = { "зілля диколоззя", use="Відновлює від {1} до {2} здоров'я та від {3} до {4} мани. (Відновлення 2 хв)#{1} to {2} health and {3} to {4} mana" }, -- Wildvine Potion, @use Restores 1 to 1500 health and 1 to 1500 mana. (2 Min Cooldown)
[9149] = { "філософський камінь", flavor="Потрібен для алхімічної трансмутації." }, -- Philosopher's Stone, @flavor Required for Alchemical Transmutation.
[9153] = { "креслення машини" }, -- Rig Blueprints
[9154] = { "еліксир виявлення невмерлих", use="Відображає на мінімапі місцезнаходження найближчих невмерлих протягом {1} год. (Відновлення 3 сек)#for {1} h" }, -- Elixir of Detect Undead, @use Shows the location of all nearby undead on the minimap for 1 hour. (3 Sec Cooldown)
[9155] = { "арканічний еліксир", use="Збільшує шкоду від заклинань на {1} на {2} хв. (Відновлення 3 сек)#to {1} for {2} min" }, -- Arcane Elixir, @use Increases spell damage by up to 20 for 30 min. (3 Sec Cooldown)
[9172] = { "зілля невидимості", use="Надає невидимість на {1} с. (Відновлення 10 хв)#for {1} sec" }, -- Invisibility Potion, @use Gives the imbiber invisibility for 18 sec. (10 Min Cooldown)
[9173] = { "гоблінський транспондер" }, -- Goblin Transponder
[9179] = { "еліксир більшого інтелекту", ref=3383 }, -- Elixir of Greater Intellect
[9186] = { "задурлива отрута III", ref=5237 }, -- Mind-numbing Poison III
[9187] = { "еліксир більшої спритності", ref=2457 }, -- Elixir of Greater Agility
[9189] = { "дзвіночок Шей", use="Подзвоніть, щоб покликати Шей. (Відновлення 1 хв)" }, -- Shay's Bell, @use Ring to call Shay back to you. (1 Min Cooldown)
[9197] = { "еліксир снобачення", use="Надає вам снобачення, що дозволяє досліджувати місцини, надто небезпечні для дослідження особисто. (Відновлення 3 сек)" }, -- Elixir of Dream Vision, @use Gives you a dream vision that lets you explore areas that are too dangerous to explore in person. (3 Sec Cooldown)
[9206] = { "еліксир велетнів", ref=2454 }, -- Elixir of Giants
[9210] = { "примарний барвник" }, -- Ghost Dye
[9214] = { "гримуар пекла", use="Навчає закляттю \"Пекло\"." }, -- Grimoire of Inferno, @use Teaches Inferno.
[9224] = { "еліксир демонорізні", use="Збільшує силу атаки проти демонів на {1}. Триває 5 хв. (Відновлення 3 сек)#power by {1}#Lasts {2} min" }, -- Elixir of Demonslaying, @use Increases attack power by 265 against demons.  Lasts 5 min. (3 Sec Cooldown)
[9233] = { "еліксир виявлення демона", use="Відображає на мінімапі місцезнаходження найближчих демонів протягом {1} год. (Відновлення 3 сек)#for {1} h" }, -- Elixir of Detect Demon, @use Shows the location of all nearby demons on the minimap for 1 hour. (3 Sec Cooldown)
[9234] = { "тіара Глибин" }, -- Tiara of the Deep
[9235] = { "лист Пратта" }, -- Pratt's Letter
[9236] = { "лист Джанґдора" }, -- Jangdor's Letter
[9237] = { "грива дереволапого гнола" }, -- Woodpaw Gnoll Mane
[9238] = { "цілий панцир скарабея" }, -- Uncracked Scarab Shell
[9240] = { "молот Зул'Фаррака" }, -- Mallet of Zul'Farrak
[9241] = { "священний молот", use="Скористатись на вівтарі Джінта'Алора, щоб створити молот Зул'Фаррака." }, -- Sacred Mallet, @use Use at the Jintha'Alor Altar to create the Mallet of Zul'Farrak.
[9242] = { "древня скрижаль" }, -- Ancient Tablet
[9244] = { "вантаж Стоулі" }, -- Stoley's Shipment
[9245] = { "пляшка Стоулі" }, -- Stoley's Bottle
[9246] = { "голова Вогнебородого" }, -- Firebeard's Head
[9247] = { "луска наги Гребеня Ненависті" }, -- Hatecrest Naga Scale
[9248] = { "таємнича реліквія" }, -- Mysterious Relic
[9249] = { "ключ капітана" }, -- Captain's Key
[9250] = { "розклад кораблів" }, -- Ship Schedule
[9251] = { "верхній фрагмент мапи", use="З'єднати разом нижній, середній та верхній фрагменти мапи." }, -- Upper Map Fragment, @use Join together the Lower, Middle and Upper Map Fragments.
[9252] = { "нижній фрагмент мапи", use="З'єднати разом нижній, середній та верхній фрагменти мапи." }, -- Lower Map Fragment, @use Join together the Lower, Middle and Upper Map Fragments.
[9253] = { "середній фрагмент мапи", use="З'єднати разом нижній, середній та верхній фрагменти мапи." }, -- Middle Map Fragment, @use Join together the Lower, Middle and Upper Map Fragments.
[9254] = { "мапа скарбів Куерґо" }, -- Cuergo's Treasure Map
[9255] = { "сутність Лагасса" }, -- Lahassa Essence
[9256] = { "сутність Імбел" }, -- Imbel Essence
[9257] = { "сутність Самга" }, -- Samha Essence
[9258] = { "сутність Білтан" }, -- Byltan Essence
[9259] = { "племінне намисто тролів" }, -- Troll Tribal Necklace
[9261] = { "свинцева руда" }, -- Lead Ore
[9262] = { "чорний купорос" }, -- Black Vitriol
[9263] = { "посох Трояса", use="Зарядити на моноліті рівнодення." }, -- Troyas' Stave, @use Energize at the Equinex Monolith.
[9264] = { "еліксир сили тіні", use="Збільшує шкоду від заклинань тіні на {1} на {2} хв. (Відновлення 3 сек)#to {1} for {2} min" }, -- Elixir of Shadow Power, @use Increases spell shadow damage by up to 40 for 30 min. (3 Sec Cooldown)
[9265] = { "захований скарб Куерґо" }, -- Cuergo's Hidden Treasure
[9266] = { "бойові плани Дереволапих" }, -- Woodpaw Battle Plans
[9275] = { "ключ Куерґо" }, -- Cuergo's Key
[9276] = { "піратська скринька" }, -- Pirate's Footlocker
[9277] = { "ядро пам'яті Техбота" }, -- Techbot's Memory Core
[9278] = { "базовий штучень" }, -- Essential Artificial
[9279] = { "біла перфокарта", flavor="Надає доступ до матричного перфографа 3005-А" }, -- White Punch Card, @flavor Grants access to Matrix Punchograph 3005-A
[9280] = { "жовта перфокарта", flavor="Надає доступ до матричного перфографа 3005-B" }, -- Yellow Punch Card, @flavor Grants access to Matrix Punchograph 3005-B
[9281] = { "червона перфокарта", flavor="Надає доступ до матричного перфографа 3005-D" }, -- Red Punch Card, @flavor Grants access to Matrix Punchograph 3005-D
[9282] = { "синя перфокарта", flavor="Надає доступ до матричного перфографа 3005-C" }, -- Blue Punch Card, @flavor Grants access to Matrix Punchograph 3005-C
[9283] = { "порожній свинцевий фіал для зразків", use="Зібрати радіоактивний осад.", flavor="Збір в один дотик" }, -- Empty Leaden Collection Phial, @use Captures radioactive fallout., @flavor One Shot, One Fill
[9284] = { "наповнений свинцевий фіал для зразків", flavor="Зберігати в місцях, недоступних для дітей" }, -- Full Leaden Collection Phial, @flavor Keep Out of Reach of Children
[9293] = { "рецепт: Зілля супротиву магії", use="Навчає вас створювати зілля супротиву магії." }, -- Recipe: Magic Resistance Potion, @use Teaches you how to make a Magic Resistance Potion.
[9294] = { "рецепт: Зілля диколоззя", use="Навчає вас створювати зілля диколоззя." }, -- Recipe: Wildvine Potion, @use Teaches you how to make a Wildvine potion.
[9295] = { "рецепт: Зілля невидимості", use="Навчає вас створювати зілля невидимості." }, -- Recipe: Invisibility Potion, @use Teaches you how to make an Invisibility Potion.
[9296] = { "рецепт: Дар Артаса", use="Навчає вас створювати дар Артаса." }, -- Recipe: Gift of Arthas, @use Teaches you how to make a Gift of Arthas.
[9297] = { "рецепт: Еліксир снобачення", use="Навчає вас створювати еліксир снобачення." }, -- Recipe: Elixir of Dream Vision, @use Teaches you how to make an Elixir of Dream Vision.
[9298] = { "рецепт: Еліксир велетнів", use="Навчає вас створювати еліксир велетнів." }, -- Recipe: Elixir of Giants, @use Teaches you how to make an Elixir of Giants.
[9299] = { "код від сейфа Термоштепселя" }, -- Thermaplugg's Safe Combination
[9300] = { "рецепт: Еліксир демонорізні", use="Навчає вас створювати еліксир демонорізні." }, -- Recipe: Elixir of Demonslaying, @use Teaches you how to make an Elixir of Demonslaying.
[9301] = { "рецепт: Еліксир сили тіні", use="Навчає вас створювати еліксир сили тіні." }, -- Recipe: Elixir of Shadow Power, @use Teaches you how to make an Elixir of Shadow Power.
[9302] = { "рецепт: Примарний барвник", use="Навчає вас створювати примарний барвник." }, -- Recipe: Ghost Dye, @use Teaches you how to make Ghost Dye.
[9303] = { "рецепт: Філософський камінь", use="Навчає вас створювати філософський камінь." }, -- Recipe: Philosopher's Stone, @use Teaches you how to make a Philosophers' Stone.
[9304] = { "рецепт: Трансмутація заліза у золото", use="Навчає вас перетворювати залізо на золото." }, -- Recipe: Transmute Iron to Gold, @use Teaches you how to transmute Iron into Gold.
[9305] = { "рецепт: Трансмутація мітрилу в ясносрібло", use="Навчає вас перетворювати мітрил на ясносрібло." }, -- Recipe: Transmute Mithril to Truesilver, @use Teaches you how to transmute Mithril into Truesilver.
[9306] = { "посох рівнодення" }, -- Stave of Equinex
[9307] = { "іскристий камінь" }, -- A Sparkling Stone
[9308] = { "вкритий брудом предмет", flavor="Шар бруду приховує справжню сутність цього предмета." }, -- Grime-Encrusted Object, @flavor Caked grime obscures the true identity of this object.
[9309] = { "робо-механічні нутрощі" }, -- Robo-mechanical Guts
[9312] = { "синій феєрверк", use="Вистрілює в повітря феєрверк, який вибухає тисячею синіх зірок." }, -- Blue Firework, @use Shoots a firework into the air that bursts into a thousand blue stars.
[9313] = { "зелений феєрверк", use="Вистрілює в повітря феєрверк, який вибухає тисячею зелених зірок." }, -- Green Firework, @use Shoots a firework into the air that bursts into a thousand green stars.
[9314] = { "червоно-смугастий феєрверк", use="Вистрілює в повітря феєрверк, який вибухає червоними смужками." }, -- Red Streaks Firework, @use Shoots a firework into the air that bursts into red streaks.
[9315] = { "феєрверк \"Жовта троянда\"", use="Вистрілює в повітря феєрверк, який вибухає жовтим візерунком." }, -- Yellow Rose Firework, @use Shoots a firework into the air that bursts in a yellow pattern.
[9316] = { "призматична перфокарта", flavor="Карта з даними" }, -- Prismatic Punch Card, @flavor Data card only
[9317] = { "червоно-біло-синій феєрверк", use="Вистрілює в повітря феєрверк, який вибухає червоними, білими та синіми зірками." }, -- Red, White and Blue Firework, @use Shoots a firework into the air that bursts into red, white and blue stars.
[9318] = { "червоний феєрверк", use="Вистрілює в повітря феєрверк, який вибухає тисячею червоних зірок." }, -- Red Firework, @use Shoots a firework into the air that bursts into a thousand red stars.
[9319] = { "спис Німбої з черепами", use="Розмістити в селищі Зів'ялої Кори." }, -- Nimboya's Laden Pike, @use Place at a Witherbark village.
[9320] = { "череп троля Зів'ялої Кори" }, -- Witherbark Skull
[9321] = { "пляшка з отрутою" }, -- Venom Bottle
[9322] = { "неушкоджена отруйна залоза" }, -- Undamaged Venom Sac
[9323] = { "пергамент Ґадріна", use="Прочитати на вівтарі Шадра'Алор для виклику павучої богині." }, -- Gadrin's Parchment, @use Use at the Shadra'Alor Altar to summon the spider god.
[9324] = { "отрута Шадри" }, -- Shadra's Venom
[9326] = { "вкритий брудом перстень" }, -- Grime-Encrusted Ring
[9328] = { "Суперзахоплювач ФХ", use="Наведіть на ціль і клацніть, щоб зробити знімок.", flavor="Новий та покращений!" }, -- Super Snapper FX, @use Target and click to take a snapshot., @flavor New & Improved!
[9329] = { "коротка записка", flavor="Перев'язана бантиком." }, -- A Short Note, @flavor Tied with a bow.
[9330] = { "знімок Ґаммеріти", flavor="Вона така фотогенічна..." }, -- Snapshot of Gammerita, @flavor She's so photogenic...
[9331] = { "Історія Фераласа" }, -- Feralas: A History
[9355] = { "сережка-кільце" }, -- Hoop Earring
[9356] = { "дерев'яна нога" }, -- A Wooden Leg
[9357] = { "скелет папуги" }, -- A Parrot Skeleton
[9358] = { "головна пов'язка" }, -- A Head Rag
[9359] = { "ліхтар Південних морів" }, -- Southsea Lamp
[9360] = { "Золото Куерґо", use="Міцний алкогольний напій." }, -- Cuergo's Gold, @use A strong alcoholic beverage.
[9361] = { "Золото Куерґо з хробаком", use="Надзвичайно міцний алкогольний напій." }, -- Cuergo's Gold with Worm, @use An extremely potent alcoholic beverage.
[9362] = { "блискучий золотий перстень" }, -- Brilliant Gold Ring
[9363] = { "запакована Блискочистом коробочка" }, -- Sparklematic-Wrapped Box
[9364] = { "важкий свинцевий фіал для зразків", use="Зібрати радіоактивний осад.", flavor="Поводитися з обережністю" }, -- Heavy Leaden Collection Phial, @use Captures radioactive fallout., @flavor Handle With Care
[9365] = { "високорадіоактивний осад", flavor="НЕБЕЗПЕЧНО! НЕ КОВТАТИ!" }, -- High Potency Radioactive Fallout, @flavor DANGER! DO NOT INGEST!
[9366] = { "золоті лускаті рукавиці" }, -- Golden Scale Gauntlets
[9367] = { "креслення: Золоті лускаті рукавиці", use="Навчає вас створювати золоті лускаті рукавиці." }, -- Plans: Golden Scale Gauntlets, @use Teaches you how to make Golden Scale Gauntlets.
[9368] = { "перстень-печатка Джер'кай" }, -- Jer'kai's Signet Ring
[9369] = { "переливчасте крило райдужного хамелеона" }, -- Iridescent Sprite Darter Wing
[9370] = { "сувій Ґордунні" }, -- Gordunni Scroll
[9371] = { "сфера Ґордунні" }, -- Gordunni Orb
[9387] = { "чоботи Ревелоша" }, -- Revelosh's Boots
[9388] = { "нарукавники Ревелоша" }, -- Revelosh's Armguards
[9389] = { "наплічники Ревелоша" }, -- Revelosh's Spaulders
[9390] = { "рукавиці Ревелоша" }, -- Revelosh's Gloves
[9407] = { "поножі камнеплета" }, -- Stoneweaver Leggings
[9408] = { "залізний кийок" }, -- Ironshod Bludgeon
[9421] = { "величезний камінь здоров'я", use="Миттєво відновлює 1200 здоров'я. (Відновлення 2 хв)" }, -- Major Healthstone, @use Instantly restores 1200 life. (2 Min Cooldown)
[9436] = { "пакунок Фаранелла" }, -- Faranell's Parcel
[9437] = { "неперевірений зразок василіска", use="Перевірити якість цього зразка за допомогою набору для польових досліджень." }, -- Untested Basilisk Sample, @use Test this sample for quality.  Requires Field Testing Kit.
[9438] = { "прийнятний зразок скорпіда" }, -- Acceptable Scorpid Sample
[9439] = { "неперевірений зразок гієни", use="Перевірити якість цього зразка за допомогою набору для польових досліджень." }, -- Untested Hyena Sample, @use Test this sample for quality.  Requires Field Testing Kit.
[9440] = { "прийнятний зразок василіска" }, -- Acceptable Basilisk Sample
[9441] = { "прийнятний зразок гієни" }, -- Acceptable Hyena Sample
[9442] = { "неперевірений зразок скорпіда", use="Перевірити якість цього зразка за допомогою набору для польових досліджень." }, -- Untested Scorpid Sample, @use Test this sample for quality.  Requires Field Testing Kit.
[9449] = { "ручний пробійник натовпу", use="Збільшує вашу швидкість атаки на 50% протягом 30 секунд." }, -- Manual Crowd Pummeler, @use Increases your attack speed by 50% for 30 sec.
[9460] = { "ріг Зловісного Тотема" }, -- Grimtotem Horn
[9462] = { "ящик з рогами Зловісного Тотема" }, -- Crate of Grimtotem Horns
[9463] = { "кобальт Ґордунні" }, -- Gordunni Cobalt
[9466] = { "лопата Орвіна", use="Почати розкопки кобальту Ґордунні." }, -- Orwin's Shovel, @use Right-click to dig for Gordunni Cobalt.
[9468] = { "перо Гостродзьоба" }, -- Sharpbeak's Feather
[9471] = { "медальйон Некрума" }, -- Nekrum's Medallion
[9472] = { "ключ Гекс" }, -- Hexx's Key
[9507] = { "дбайливо запакований ящик" }, -- A Carefully-packed Crate
[9513] = { "посох лей-енергії" }, -- Ley Staff
[9514] = { "арканічний посох" }, -- Arcane Staff
[9515] = { "мундир підсвітнього плетіння" }, -- Nether-lace Tunic
[9516] = { "сорочка астрального плетіння" }, -- Astral Knot Blouse
[9517] = { "небесний посох", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 22." }, -- Celestial Stave, @equip Increases damage and healing done by magical spells and effects by up to 22.
[9518] = { "мулоляпи" }, -- Mud's Crushers
[9519] = { "чоботи Брудноступа" }, -- Durtfeet Stompers
[9520] = { "мовчазний мисливець" }, -- Silent Hunter
[9521] = { "черепоруб" }, -- Skullsplitter
[9522] = { "заряджений кам'яний круг" }, -- Energized Stone Circle
[9523] = { "трольське місиво" }, -- Troll Temper
[9527] = { "жезл чароклята" }, -- Spellshifter Rod
[9528] = { "темне серце Едани" }, -- Edana's Dark Heart
[9530] = { "ріг Злопазура", use="Викликати Едану Злопазур." }, -- Horn of Hatetalon, @use Summons Edana Hatetalon.
[9531] = { "напліччя самоцвітів" }, -- Gemshale Pauldrons
[9533] = { "перстень братства каменярів" }, -- Masons Fraternity Ring
[9534] = { "капелюх гільдії інженерів" }, -- Engineer's Guild Headpiece
[9535] = { "вогнезварні наручі" }, -- Fire-welded Bracers
[9536] = { "чарокрилий наплічник" }, -- Fairywing Mantle
[9538] = { "золотий перстень Талваша" }, -- Talvash's Gold Ring
[9539] = { "коробка з пайками" }, -- Box of Rations
[9540] = { "коробка з заклинаннями" }, -- Box of Spells
[9541] = { "коробка з приємностями" }, -- Box of Goodies
[9542] = { "простий лист" }, -- Simple Letter
[9543] = { "проста руна" }, -- Simple Rune
[9544] = { "проста директива" }, -- Simple Memorandum
[9545] = { "проста сигіла" }, -- Simple Sigil
[9546] = { "простий сувій" }, -- Simple Scroll
[9547] = { "проста записка" }, -- Simple Note
[9548] = { "священний лист" }, -- Hallowed Letter
[9550] = { "зашифрована руна" }, -- Encrypted Rune
[9551] = { "зашифрована сигіла" }, -- Encrypted Sigil
[9552] = { "рунічна записка" }, -- Rune-Inscribed Note
[9553] = { "гравійований пергамент" }, -- Etched Parchment
[9554] = { "зашифрована скрижаль" }, -- Encrypted Tablet
[9555] = { "зашифрований лист" }, -- Encrypted Letter
[9556] = { "священна руна" }, -- Hallowed Rune
[9557] = { "священна сигіла" }, -- Hallowed Sigil
[9558] = { "зашифрована директива" }, -- Encrypted Memorandum
[9559] = { "зашифрований сувій" }, -- Encrypted Scroll
[9560] = { "зашифрований пергамент" }, -- Encrypted Parchment
[9561] = { "священна скрижаль" }, -- Hallowed Tablet
[9562] = { "рунічна скрижаль" }, -- Rune-Inscribed Tablet
[9563] = { "освячена руна" }, -- Consecrated Rune
[9564] = { "гравійована скрижаль" }, -- Etched Tablet
[9565] = { "гравійована записка" }, -- Etched Note
[9566] = { "гравійована руна" }, -- Etched Rune
[9567] = { "гравійована сигіла" }, -- Etched Sigil
[9568] = { "рунічний пергамент" }, -- Rune-Inscribed Parchment
[9569] = { "священний сувій" }, -- Hallowed Scroll
[9570] = { "освячений лист" }, -- Consecrated Letter
[9571] = { "гліфічний лист" }, -- Glyphic Letter
[9573] = { "гліфічна директива" }, -- Glyphic Memorandum
[9574] = { "гліфічний сувій" }, -- Glyphic Scroll
[9575] = { "гліфічна скрижаль" }, -- Glyphic Tablet
[9576] = { "заплямований лист" }, -- Tainted Letter
[9577] = { "заплямована директива" }, -- Tainted Memorandum
[9578] = { "заплямований сувій" }, -- Tainted Scroll
[9579] = { "заплямований пергамент" }, -- Tainted Parchment
[9580] = { "вкрита мохом сигіла" }, -- Verdant Sigil
[9581] = { "вкрита мохом записка" }, -- Verdant Note
[9587] = { "сумка з м'якої шкіри" }, -- Thawpelt Sack
[9589] = { "вкритий кіркою мінерал" }, -- Encrusted Minerals
[9590] = { "розколота колода" }, -- Splintered Log
[9591] = { "еластичне сухожилля" }, -- Resilient Sinew
[9592] = { "металеві фрагменти" }, -- Metallic Fragments
[9593] = { "зменшений деревань" }, -- Treant Muisek
[9594] = { "зменшений совозвір" }, -- Wildkin Muisek
[9595] = { "зменшений гіпогриф" }, -- Hippogryph Muisek
[9596] = { "зменшений чарівний дракончик" }, -- Faerie Dragon Muisek
[9597] = { "зменшений гірський велетень" }, -- Mountain Giant Muisek
[9598] = { "мантія сну" }, -- Sleeping Robes
[9599] = { "луб'яні поножі" }, -- Barkmail Leggings
[9600] = { "мереживні штани" }, -- Lace Pants
[9601] = { "пом'якшені чоботи" }, -- Cushioned Boots
[9602] = { "чагарникове лезо" }, -- Brushwood Blade
[9603] = { "посох хватокореня" }, -- Gritroot Staff
[9604] = { "трубомолот механіка" }, -- Mechanic's Pipehammer
[9605] = { "накидка ремонтника" }, -- Repairman's Cape
[9606] = { "посудина зменшення дереванів", use="Зменшити та захопити мертвого дереваня. (Відновлення 30 сек)" }, -- Treant Muisek Vessel, @use Shrink and Capture a Fallen Treant. (30 Sec Cooldown)
[9608] = { "роззброюючий інструмент Шоні", hit="Роззброєння цілі на 5 сек." }, -- Shoni's Disarming Tool, @hit Disarm target's weapon for 5 sec.
[9609] = { "рукавички нерішучості" }, -- Shilly Mitts
[9618] = { "посудина зменшення совозвірів", use="Зменшити та захопити мертвого совозвіра. (Відновлення 30 сек)" }, -- Wildkin Muisek Vessel, @use Shrink and Capture a Fallen Wildkin. (30 Sec Cooldown)
[9619] = { "посудина зменшення гіпогрифів", use="Зменшити та захопити мертвого гіпогрифа. (Відновлення 30 сек)" }, -- Hippogryph Muisek Vessel, @use Shrink and Capture a Fallen Hippogryph. (30 Sec Cooldown)
[9620] = { "посудина зменшення чарівних дракончиків", use="Зменшити та захопити мертвого чарівного дракончика. (Відновлення 30 сек)" }, -- Faerie Dragon Muisek Vessel, @use Shrink and Capture a Fallen Faerie Dragon. (30 Sec Cooldown)
[9621] = { "посудина зменшення гірських велетнів", use="Зменшити та захопити мертвого гірського велетня. (Відновлення 30 сек)" }, -- Mountain Giant Muisek Vessel, @use Shrink and Capture a Fallen Mountain Giant. (30 Sec Cooldown)
[9622] = { "очеретяний перстень" }, -- Reedknot Ring
[9623] = { "мантія Цивінада" }, -- Civinad Robes
[9624] = { "штани бігуна" }, -- Triprunner Dungarees
[9625] = { "двічі підсилені поножі", equip="Збільшує навичку захисту на 5." }, -- Dual Reinforced Leggings, @equip Increased Defense +5.
[9626] = { "натиск дворфів" }, -- Dwarven Charge
[9627] = { "дороговказ Ліги дослідників" }, -- Explorer's League Lodestar
[9628] = { "мішечок трав Нііру" }, -- Neeru's Herb Pouch
[9629] = { "всохла голова" }, -- A Shrunken Head
[9630] = { "чоботи ручної роботи Пратта" }, -- Pratt's Handcrafted Boots
[9631] = { "рукавички ручної роботи Пратта" }, -- Pratt's Handcrafted Gloves
[9632] = { "рукавички ручної роботи Джанґдора" }, -- Jangdor's Handcrafted Gloves
[9633] = { "чоботи ручної роботи Джанґдора" }, -- Jangdor's Handcrafted Boots
[9634] = { "рукавиці вправності" }, -- Skilled Handling Gloves
[9635] = { "плащ майстра-аптекаря" }, -- Master Apothecary Cape
[9636] = { "пояс шибайголови" }, -- Swashbuckler Sash
[9637] = { "чоботи стусанів" }, -- Shinkicker Boots
[9638] = { "манжети морської черепахи" }, -- Chelonian Cuffs
[9642] = { "перстень великої черепахи" }, -- Band of the Great Tortoise
[9643] = { "оптоматичний дефлектор", equip="Збільшує шанс блокування атак щитом на 2%." }, -- Optomatic Deflector, @equip Increases your chance to block attacks with a shield by 2%.
[9644] = { "термостатичний таймер" }, -- Thermotastic Egg Timer
[9645] = { "черевики гнома-винахідника" }, -- Gnomish Inventor Boots
[9646] = { "гномський пристрій для занурювання" }, -- Gnomish Water Sinking Device
[9647] = { "невдалий експеримент з польотами" }, -- Failed Flying Experiment
[9648] = { "кольчужний рушник", flavor="Тепер ще менше поглинання!" }, -- Chainlink Towel, @flavor Now even less absorbant!
[9649] = { "королівське вбрання" }, -- Royal Highmark Vestments
[9650] = { "нагрудник почесної варти" }, -- Honorguard Chestpiece
[9651] = { "буремолот приборкувача грифонів", hit="Підриває ціль, завдаючи їй від 91 до 125 шкоди від природи." }, -- Gryphon Rider's Stormhammer, @hit Blasts a target for 91 to 125 Nature damage.
[9652] = { "поножі приборкувача грифонів" }, -- Gryphon Rider's Leggings
[9654] = { "уламок курганного каменю" }, -- Cairnstone Sliver
[9655] = { "кільце сівби" }, -- Seedtime Hoop
[9656] = { "гранітні рукавиці" }, -- Granite Grips
[9657] = { "пояс виноградної лози" }, -- Vinehedge Cinch
[9658] = { "чоботи Магаріші" }, -- Boots of the Maharishi
[9660] = { "плащ зорегляда" }, -- Stargazer Cloak
[9661] = { "бар'єр земляної хватки" }, -- Earthclasp Barrier
[9662] = { "чоботи натиску" }, -- Rushridge Boots
[9663] = { "нагрудник світанкового вершника" }, -- Dawnrider's Chestpiece
[9664] = { "шолом стража" }, -- Sentinel's Guard
[9665] = { "рукавиці крила ненависті" }, -- Wingcrest Gloves
[9666] = { "пояс Міцнорога" }, -- Stronghorn Girdle
[9678] = { "Ток'Каровий трощитель мурлоків" }, -- Tok'kar's Murloc Basher
[9679] = { "Ток'Каровий рубач мурлоків" }, -- Tok'kar's Murloc Chopper
[9680] = { "Ток'Каровий проштрикувач мурлоків" }, -- Tok'kar's Murloc Shanker
[9681] = { "смажені ніжки королівського повзуна", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Grilled King Crawler Legs, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[9682] = { "шкіряний пояс шеф-кухаря" }, -- Leather Chef's Belt
[9683] = { "сила дереваня" }, -- Strength of the Treant
[9684] = { "сила гіпогрифа" }, -- Force of the Hippogryph
[9686] = { "дух чарівного дракончика" }, -- Spirit of the Faerie Dragon
[9687] = { "пояс борця" }, -- Grappler's Belt
[9698] = { "рукавички прозріння" }, -- Gloves of Insight
[9699] = { "гарнізонний плащ" }, -- Garrison Cloak
[9703] = { "обпалений плащ" }, -- Scorched Cape
[9704] = { "шурхотливі рукавиці" }, -- Rustler Gloves
[9705] = { "шнурок Тарґа" }, -- Tharg's Shoelace
[9706] = { "диск Тарґа" }, -- Tharg's Disk
[9738] = { "самоцвіт Кобрана" }, -- Gem of Cobrahn
[9739] = { "самоцвіт Анакондри" }, -- Gem of Anacondra
[9740] = { "самоцвіт Пітонаса" }, -- Gem of Pythas
[9741] = { "самоцвіт Серпентіса" }, -- Gem of Serpentis
[9978] = { "ґаз'ридіанський детектор", equip="На мінімапі відображаються найближчі предмети з ґаз'ридіану." }, -- Gahz'ridian Detector, @equip Nearby Gahz'ridian appears on the minimap.
[10000] = { "ріг Марґол" }, -- Margol's Horn
[10005] = { "гігантський ріг Марґол" }, -- Margol's Gigantic Horn
[10008] = { "біла бандитська маска" }, -- White Bandit Mask
[10022] = { "доказ правоти" }, -- Proof of Deed
[10024] = { "чорна маготкана пов'язка" }, -- Black Mageweave Headband
[10025] = { "тінеткана маска", equip="Збільшує шкоду від заклинань і ефектів тіні на 24." }, -- Shadoweave Mask, @equip Increases damage done by Shadow spells and effects by up to 24.
[10034] = { "вишукана сорочка" }, -- Tuxedo Shirt
[10043] = { "благочестиві поножі" }, -- Pious Legwraps
[10045] = { "прості лляні поножі" }, -- Simple Linen Pants
[10283] = { "зразки вовчих сердець" }, -- Wolf Heart Samples
[10285] = { "тінешовк" }, -- Shadow Silk
[10290] = { "рожевий барвник" }, -- Pink Dye
[10298] = { "перстень Гномреґану" }, -- Gnomeregan Band
[10299] = { "амулет Гномреґану" }, -- Gnomeregan Amulet
[10305] = { "сувій захисту IV", ref=3013 }, -- Scroll of Protection IV
[10306] = { "сувій духу IV", ref=1181 }, -- Scroll of Spirit IV
[10307] = { "сувій витривалості IV", ref=1180 }, -- Scroll of Stamina IV
[10308] = { "сувій інтелекту IV", ref=955 }, -- Scroll of Intellect IV
[10309] = { "сувій спритності IV", ref=3012 }, -- Scroll of Agility IV
[10310] = { "сувій сили IV", ref=954 }, -- Scroll of Strength IV
[10321] = { "викрійка: Вишукана сорочка", use="Навчає вас пошиттю вишуканої сорочки.", recipe_result_item=10034 }, -- Pattern: Tuxedo Shirt, @use Teaches you how to sew a Tuxedo Shirt.
[10327] = { "сурма Ечеякі", use="Засурмити біля лігва Ечеякі. (Відновлення 30 сек)" }, -- Horn of Echeyakee, @use Blow near Echeyakee's Lair. (30 Sec Cooldown)
[10338] = { "свіжа туша жеври", use="Покласти біля мертвого дерева на північному заході від Брашпиля щоб приманити Ішамугала." }, -- Fresh Zhevra Carcass, @use Place near the Dead Tree northwest of Ratchet, to lure Ishamuhale.
[10358] = { "дюрацинові браслети" }, -- Duracin Bracers
[10359] = { "вічні чоботи" }, -- Everlast Boots
[10394] = { "свисток лугової собачки", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашу лугову собачку." }, -- Prairie Dog Whistle, @use Right Click to summon and dismiss your prairie dog.
[10398] = { "механічне курча", use="Клацніть правою кнопкою миші, щоб викликати і відпустити курча." }, -- Mechanical Chicken, @use Right Click to summon and dismiss your chicken.
[10414] = { "зразок панцира тріскощелепа" }, -- Sample Snapjaw Shell
[10418] = { "блискуча мітрилова печатка", use="Збільшує броню на 50, супротив всім школам магії на 10 та надає імунітет до страху на 30 сек. (Відновлення 10 хв)", flavor="Мужність, честь і, найголовніше, — терпіння " }, -- Glimmering Mithril Insignia, @use Increases armor by 50, all resistances by 10 and grants immunity to Fear for 30 sec. (10 Min Cooldown), @flavor Courage, Honor, and above all, Patience
[10420] = { "череп Стужевія" }, -- Skull of the Coldbringer
[10438] = { "коробка Фелікса" }, -- Felix's Box
[10439] = { "пекуча ранкображка Дарнана" }, -- Durnan's Scalding Mornbrew
[10440] = { "Норів кухоль" }, -- Nori's Mug
[10441] = { "сяючий уламок" }, -- Glowing Shard
[10442] = { "загадковий артефакт", flavor="Камінь випромінює зло" }, -- Mysterious Artifact, @flavor The Stone Emanates Evil
[10443] = { "обпалений лист" }, -- Singed Letter
[10444] = { "звичайний сигнальний пістолет", use="Для використання на імпровізованому вертолітному майданчику в Азшарі. Це викличе пілота Зіґґса Запалювача, який забере замальовки." }, -- Standard Issue Flare Gun, @use To be used at the makeshift helipad in Azshara. It will summon Pilot Xiggs Fuselighter to pick up the tablet rubbings.
[10445] = { "набір для малювання", use="Використовується для створення замальовок рун в Руїнах Ельдарату." }, -- Drawing Kit, @use Used to create rubbings of the runes in the Ruins of Eldarath.
[10446] = { "серце Обсидіона", flavor="Холодне чорне серце все ще б'ється" }, -- Heart of Obsidion, @flavor The cold black heart is still pulsing
[10447] = { "голова Латорика Чорного", flavor="Рештки колись благородного дворфа" }, -- Head of Lathoric the Black, @flavor The remnants of a once honorable dwarf
[10450] = { "неушкоджена пір'їна гіпогрифа" }, -- Undamaged Hippogryph Feather
[10454] = { "сутність Ераніка", flavor="У цьому самоцвіті клубочиться зелений туман." }, -- Essence of Eranikus, @flavor Green mists swirl inside the lattices of this gem.
[10455] = { "скута сутність Ераніка", use="Отруїти всіх ворогів у радіусі 8 м навколо вас. Отрута завдає 50 шкоди від природи кожні 5 сек протягом 45 секунд." }, -- Chained Essence of Eranikus, @use Poisons all enemies in an 8 yard radius around the caster.  Victims of the poison suffer 50 Nature damage every 5 sec for 45 sec. (15 Min Cooldown)
[10456] = { "набитий монетами гаманець" }, -- A Bulging Coin Purse
[10458] = { "молитва Елуні", flavor="На серці стає легко від одного лиш дотику." }, -- Prayer to Elune, @flavor Your heart feels light when you hold this item.
[10459] = { "голова вождя Гостроікла Колючкошкура" }, -- Chief Sharptusk Thornmantle's Head
[10461] = { "тіньові наручі", equip="Збільшує шкоду від заклинань і ефектів тіні на 4." }, -- Shadowy Bracers, @equip Increases damage done by Shadow spells and effects by up to 4.
[10462] = { "тіньовий пояс" }, -- Shadowy Belt
[10463] = { "викрійка: Тінеткана маска", use="Навчає вас пошиттю тінетканої маски." }, -- Pattern: Shadoweave Mask, @use Teaches you how to sew a Shadoweave Mask.
[10465] = { "яйце Гаккара", use="Скористатись у святилищі Занепалого Бога. (Відновлення 5 хв)" }, -- Egg of Hakkar, @use Use within the Sanctum of the Fallen God. (5 Min Cooldown)
[10466] = { "круглий камінь Атал'ай" }, -- Atal'ai Stone Circle
[10467] = { "торба торговця", flavor="Наповнена всілякими товарами." }, -- Trader's Satchel, @flavor Full of trade goods.
[10479] = { "торба торговця Ковіца" }, -- Kovic's Trading Satchel
[10501] = { "ультраокуляри котячого ока", equip="Збільшує вашу здатність виявляти непомітність." }, -- Catseye Ultra Goggles, @equip Increases your stealth detection.
[10505] = { "твердий вибуховий порошок" }, -- Solid Blasting Powder
[10507] = { "твердий динаміт", use="Завдає від 213 до 287 шкоди вогнем в радіусі 5 м. (Відновлення 1 хв)" }, -- Solid Dynamite, @use Inflicts 213 to 287 Fire damage in a 5 yard radius. (1 Min Cooldown)
[10508] = { "мітриловий мушкетон" }, -- Mithril Blunderbuss
[10509] = { "серце полум'я", flavor="Його вогонь палає вічно" }, -- Heart of Flame, @flavor The flame burns eternally
[10511] = { "мастило голема", flavor="The oil is encased in stone" }, -- Golem Oil, @flavor The oil is encased in stone
[10514] = { "мітрилова осколкова бомба", use="Завдає від 149 до 201 шкоди вогнем та оглушує цілі в радіусі 8 м на 2 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- Mithril Frag Bomb, @use Inflicts 149 to 201 Fire damage and stuns targets in a 8 yard radius for 2 sec.  Any damage will break the effect. (1 Min Cooldown)
[10515] = { "смолоскип відплати", use="Підпалити сигнальне вогнище.", flavor="Це полум'я навіть не тремтить" }, -- Torch of Retribution, @use Use on a Sentry Brazier., @flavor The flame never falters
[10538] = { "скрижаль Бет'Амари" }, -- Tablet of Beth'Amara
[10539] = { "скрижаль Джін'яеля" }, -- Tablet of Jin'yael
[10540] = { "скрижаль Маркрі" }, -- Tablet of Markri
[10541] = { "скрижаль Саель'гай" }, -- Tablet of Sael'hai
[10542] = { "гоблінський гірничий шолом", equip="Збільшує навичку гірництва на 5." }, -- Goblin Mining Helmet, @equip Mining +5.
[10543] = { "гоблінська будівельна каска", use="Поглинає від 300 до 500 шкоди від вогню. Триває 1 хв." }, -- Goblin Construction Helmet, @use Absorbs 300 to 500 Fire damage.  Lasts 1 min. (1 Hour Cooldown)
[10544] = { "молот шиподерева" }, -- Thistlewood Maul
[10545] = { "гномські окуляри" }, -- Gnomish Goggles
[10546] = { "смертоносний приціл", use="Оснащення лука або вогнепальної зброї прицілом, що збільшує шкоду на 5." }, -- Deadly Scope, @use Attaches a permanent scope to a bow or gun that increases its damage by 5.
[10548] = { "снайперський приціл", use="Оснащення лука або вогнепальної зброї прицілом, що збільшує шкоду на 7." }, -- Sniper Scope, @use Attaches a permanent scope to a bow or gun that increases its damage by 7.
[10551] = { "вкритий торієм кинджал" }, -- Thorium Plated Dagger
[10552] = { "знак Раґнароса", flavor="Цей знак випромінює давню магію" }, -- Symbol of Ragnaros, @flavor The symbol emanates old magic
[10556] = { "круглий камінь" }, -- Stone Circle
[10559] = { "мітрилова трубка" }, -- Mithril Tube
[10560] = { "нестабільний пусковий пристрій" }, -- Unstable Trigger
[10561] = { "мітрилова обшивка" }, -- Mithril Casing
[10562] = { "фугасна бомба", use="Завдає від 255 до 345 шкоди вогнем та оглушує цілі в радіусі 3 м на 3 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- Hi-Explosive Bomb, @use Inflicts 255 to 345 Fire damage and stuns targets in a 3 yard radius for 3 sec.  Any damage will break the effect. (1 Min Cooldown)
[10563] = { "замальовка: руна Бет'Амара" }, -- Rubbing: Rune of Beth'Amara
[10564] = { "замальовка: руна Джин'яель" }, -- Rubbing: Rune of Jin'yael
[10565] = { "замальовка: руна Маркрі" }, -- Rubbing: Rune of Markri
[10566] = { "замальовка: руна Сель'гай" }, -- Rubbing: Rune of Sael'hai
[10569] = { "скарб чорних драконів", flavor="Відмічено знаком Веларока Ошуканця" }, -- Hoard of the Black Dragonflight, @flavor Bears the mark of Velarok the Deceiver
[10575] = { "скинута шкіра чорного дракона", flavor="Вицвілий клаптик шкіри чорного дракона" }, -- Black Dragonflight Molt, @flavor A dull and gray patch of black dragon skin
[10577] = { "гоблінська мортира", use="Завдає від 383 до 517 шкоди вогнем та приголомшує цілі в радіусі 5 метрів на 3 секунди." }, -- Goblin Mortar, @use Inflicts 383 to 517 Fire damage and stuns the targets in a 5 yard radius for 3 sec. (10 Min Cooldown)
[10586] = { "Великан", use="Завдає від 340 до 460 шкоди вогнем та оглушує цілі в радіусі 10 м на 5 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- The Big One, @use Inflicts 340 to 460 Fire damage and stuns targets for 5 sec in a 10 yard radius.  Any damage will break the effect. (1 Min Cooldown)
[10587] = { "гоблінський бомбокид", use="Створює мобільну бомбу, яка біжить в найближчого супротивника і вибухає, завдаючи від 315 до 385 шкоди вогнем." }, -- Goblin Bomb Dispenser, @use Creates a mobile bomb that charges the nearest enemy and explodes for 315 to 385 fire damage. (30 Min Cooldown)
[10588] = { "гоблінський реактивний шолом", use="Здійснити у ворога ривок, що робить його недієздатним на 30 секунд. Також збиває вас з ніг, приголомшуючи на короткий час. Будь-яка шкода повертає ціль до тями." }, -- Goblin Rocket Helmet, @use Charge an enemy, knocking it silly for 30 seconds. Also knocks you down, stunning you for a short period of time. Any damage caused will revive the target. (20 Min Cooldown)
[10589] = { "клятвокамінь драконів Ізери", flavor="Використання цього каменю зв'язує обов'язком з крилом драконів Ізери." }, -- Oathstone of Ysera's Dragonflight, @flavor Using this stone binds someone to aid Ysera's Dragonflight.
[10592] = { "еліксир котячого ока", use="Злегка збільшує вашу здатність виявляти непомітність на {1} хв. (Відновлення 3 сек)#for {1} min" }, -- Catseye Elixir, @use Slightly increases your stealth detection for 10 min. (3 Sec Cooldown)
[10593] = { "недосконалий фрагмент дренетисту" }, -- Imperfect Draenethyst Fragment
[10597] = { "голова чаклунки Рімторі" }, -- Head of Magus Rimtori
[10598] = { "закривавлена голова Гетаєри" }, -- Hetaera's Bloodied Head
[10599] = { "побита голова Гетаєри" }, -- Hetaera's Beaten Head
[10600] = { "розбита голова Гетаєри" }, -- Hetaera's Bruised Head
[10602] = { "креслення: Смертоносний приціл", use="Навчає вас створювати смертоносний приціл." }, -- Schematic: Deadly Scope, @use Teaches you how to make a Deadly Scope.
[10608] = { "креслення: Снайперський приціл", use="Навчає вас створювати снайперський приціл." }, -- Schematic: Sniper Scope, @use Teaches you how to make a Sniper Scope.
[10610] = { "кров Гетаєри", flavor="Кров володарки морів" }, -- Hetaera's Blood, @flavor Blood of the Sea Queen
[10620] = { "торієва руда" }, -- Thorium Ore
[10621] = { "сувій з рунами" }, -- Runed Scroll
[10622] = { "стяг Кадрака", use="Розмістити в лігві Кігтя." }, -- Kadrak's Flag, @use Place in the Talon Den.
[10629] = { "чоботи серпанкового мандрівника" }, -- Mistwalker Boots
[10635] = { "розфарбовані кольчужні поножі" }, -- Painted Chain Leggings
[10636] = { "рукавиці кочівника" }, -- Nomadic Gloves
[10637] = { "рукавиці варіння" }, -- Brewer's Gloves
[10638] = { "довгий вовняний плащ" }, -- Long Draping Cape
[10639] = { "гіацинтовий гриб" }, -- Hyacinth Mushroom
[10640] = { "сукровиця павутиннолісих" }, -- Webwood Ichor
[10641] = { "місяцепелюсткова лілея" }, -- Moonpetal Lily
[10642] = { "Іверронова протиотрута" }, -- Iverron's Antidote
[10643] = { "запечатаний лист до Аґ'тора" }, -- Sealed Letter to Ag'tor
[10644] = { "рецепт: Гоблінське ракетне паливо", use="Навчає вас створювати гоблінське ракетне паливо." }, -- Recipe: Goblin Rocket Fuel, @use Teaches you how to make Goblin Rocket Fuel.
[10645] = { "гномський промінь смерті", use="Пристрій заряджається вашою життєвою силою протягом певного часу, а потім спрямовує сплеск енергії на вашого супротивника.", flavor="Використання цього пристрою може призвести до смерті або серйозних травм." }, -- Gnomish Death Ray, @use The devices charges over time using your life force and then directs a burst of energy at your opponent. (5 Min Cooldown), @flavor Death or Serious Injury may result from use of this device.
[10646] = { "гоблінський саперний заряд", use="При спрацюванні вибухає, завдаючи від 450 до 750 вогняної шкоди всіх ворогам поблизу та від 375 до 625 шкоди вам. (Відновлення 5 хв)" }, -- Goblin Sapper Charge, @use Explodes when triggered dealing 450 to 750 Fire damage to all enemies nearby and 375 to 625 damage to you. (5 Min Cooldown)
[10649] = { "уламок кошмару" }, -- Nightmare Shard
[10652] = { "воля гірського велетня" }, -- Will of the Mountain Giant
[10653] = { "черевики першопроходця" }, -- Trailblazer Boots
[10654] = { "джутові рукавички" }, -- Jutebraid Gloves
[10655] = { "осокові бриджі" }, -- Sedgeweed Britches
[10656] = { "короплетений жилет" }, -- Barkmail Vest
[10657] = { "наплічник ниви" }, -- Talbar Mantle
[10658] = { "болотяні калоші" }, -- Quagmire Galoshes
[10659] = { "уламок Розщепленого Копита", equip={ "Відновлює 5 мани кожні 5 сек.", "Відновлює 5 здоров'я кожні 5 сек." } }, -- Shard of the Splithooves, @equip Restores 5 mana per 5 sec., @equip Restores 5 health per 5 sec.
[10660] = { "перша скрижаль Мош'ару" }, -- First Mosh'aru Tablet
[10661] = { "друга скрижаль Мош'ару" }, -- Second Mosh'aru Tablet
[10662] = { "наповнене яйце Гаккара" }, -- Filled Egg of Hakkar
[10663] = { "сутність Гаккара", use="Наповнити яйце Гаккара." }, -- Essence of Hakkar, @use Use to fill the Egg of Hakkar.
[10678] = { "записка Маґати" }, -- Magatha's Note
[10679] = { "записка Андрона" }, -- Andron's Note
[10680] = { "записка Джес'рімона" }, -- Jes'rimon's Note
[10681] = { "записка Зілема" }, -- Xylem's Note
[10682] = { "клятвокамінь Белністраза" }, -- Belnistrasz's Oathstone
[10686] = { "егіда битви" }, -- Aegis of Battle
[10687] = { "порожній фіал №1", use="Наповнити фіал з першої припливної калюжі в Азшарі." }, -- Empty Vial Labeled #1, @use This container should be filled with water from the first tide pool in Azshara.
[10688] = { "порожній фіал №2", use="Наповнити фіал з другої припливної калюжі в Азшарі." }, -- Empty Vial Labeled #2, @use This container should be filled with water from the second tide pool in Azshara.
[10689] = { "порожній фіал №3", use="Наповнити фіал з третьої припливної калюжі в Азшарі." }, -- Empty Vial Labeled #3, @use This container should be filled with water from the third tide pool in Azshara.
[10690] = { "порожній фіал №4", use="Наповнити фіал з четвертої припливної калюжі в Азшарі." }, -- Empty Vial Labeled #4, @use This container should be filled with water from the fourth tide pool in Azshara.
[10691] = { "наповнений фіал №1" }, -- Filled Vial Labeled #1
[10692] = { "наповнений фіал №2" }, -- Filled Vial Labeled #2
[10693] = { "наповнений фіал №3" }, -- Filled Vial Labeled #3
[10694] = { "наповнений фіал №4" }, -- Filled Vial Labeled #4
[10695] = { "коробка з порожніми фіалами" }, -- Box of Empty Vials
[10696] = { "зачарований азшаритовий меч скверни", equip="Збільшує силу атаки на 33 в бою з демонами.", use="Послаблення слуг Разеліха-Губителя. Для активації необхідно знаходитися поблизу цілі. (Відновлення 3 хв)", flavor="На лезі витравлено: \"Рах'ліх\"." }, -- Enchanted Azsharite Felbane Sword, @equip +33 Attack Power when fighting Demons., @use Weakens the servants of Razelikh the Defiler. Must be within close proximity of the target to activate., @flavor Etched across the blade: Rakh'likh
[10697] = { "зачарований азшаритовий кинджал скверни", equip="Збільшує силу атаки на 33 в бою з демонами.", use="Послаблення слуг Разеліха-Губителя. Для активації необхідно знаходитися поблизу цілі. (Відновлення 3 хв)", flavor="На лезі витравлено: \"Рах'ліх\"." }, -- Enchanted Azsharite Felbane Dagger, @equip +33 Attack Power when fighting Demons., @use Weakens the servants of Razelikh the Defiler. Must be within close proximity of the target to activate., @flavor Engraved upon the blade: Rakh'likh
[10698] = { "зачарований азшаритовий посох скверни", equip="Збільшує силу атаки на 78 в бою з демонами.", use="Послаблення слуг Разеліха-Губителя. Для активації необхідно знаходитися поблизу цілі. (Відновлення 3 хв)", flavor="На руків'ї витравлено: \"Рах'ліх\"." }, -- Enchanted Azsharite Felbane Staff, @equip +78 Attack Power when fighting Demons., @use Weakens the servants of Razelikh the Defiler. Must be within close proximity of the target to activate. (3 Min Cooldown), @flavor Carved into the shaft: Rakh'likh
[10699] = { "жезл Є'кіньї", use="Викликати дух верескуна з тіла долинного верескуна. (Відновлення 5 сек)" }, -- Yeh'kinya's Bramble, @use Summon a screecher spirit from the corpse of a vale screecher. (5 Sec Cooldown)
[10700] = { "обпалені чоботи" }, -- Encarmine Boots
[10701] = { "чоботи Зуа'тека" }, -- Boots of Zua'tec
[10702] = { "величезні чоботи огра" }, -- Enormous Ogre Boots
[10703] = { "клинок негідника" }, -- Fiendish Skiv
[10704] = { "морозний розщепитель" }, -- Chillnail Splinter
[10705] = { "ялинові браслети" }, -- Firwillow Wristbands
[10706] = { "пояс нічної луски" }, -- Nightscale Girdle
[10707] = { "наголінники сталеплава" }, -- Steelsmith Greaves
[10708] = { "сфера чарочерепа" }, -- Skullspell Orb
[10709] = { "вогнекам'яна сфера" }, -- Pyrestone Orb
[10710] = { "перстень кігтя дракона" }, -- Dragonclaw Ring
[10711] = { "намисто крові дракона" }, -- Dragon's Blood Necklace
[10712] = { "еліксир К'юлі" }, -- Cuely's Elixir
[10714] = { "кристалізований азшарит", flavor="Прямо з печі." }, -- Crystallized Azsharite, @flavor Hot out of the oven.
[10715] = { "приціл Кім'джаєля" }, -- Kim'Jael's Scope
[10716] = { "гномський промінь зменшення", use="Зменшує ціль, знижуючи її силу атаки на 250.  Принаймні, зазвичай він спрацьовує саме так..." }, -- Gnomish Shrink Ray, @use Shrinks the target reducing their attack power by 250.  Thats what it usually does anyway..... (5 Min Cooldown)
[10717] = { "компас Кім'джаєля" }, -- Kim'Jael's Compass
[10718] = { "відцентровий розтягувач Кім'джаєля" }, -- Kim'Jael's Wizzlegoober
[10720] = { "гномський сіткокид", use="Захоплює ціль у сітку на 10 секунд. Сітка має багато гачків й іноді зачіпається за одяг власника під час пострілу..." }, -- Gnomish Net-o-Matic Projector, @use Captures the target in a net for 10 sec.  The net has a lot of hooks however and sometimes gets caught in the user's clothing when fired...... (10 Min Cooldown)
[10721] = { "гномський пояс запобігання шкоді", use="Силовий щит захищає вас від наступних 500 одиниць шкоди протягом наступних 10 хвилин. УВАГА: Силове поле може перевантажитися при ударі, тимчасово запроторюючи власника в інший вимір." }, -- Gnomish Harm Prevention Belt, @use A shield of force protects you from the next 500 damage done over the next 10 min. WARNING:  Force Field may overload when struck temporarily removing the wearer from this dimension. (Proc chance: 5%) (1 Hour Cooldown)
[10722] = { "плюшеве курча Кім'джаєля" }, -- Kim'Jael's Stuffed Chicken
[10724] = { "гномські реактивні черевики", use="Ці черевики значно збільшують швидкість руху на 20 секунд.  УВАГА: Блок живлення та гіроскопи черевиків не завжди функціонують належним чином." }, -- Gnomish Rocket Boots, @use These boots significantly increase your run speed for 20 sec.  WARNING:  Their power supply and gyros do not always function as intended. (30 Min Cooldown)
[10725] = { "гномське бойове курча", use="Створює бойове курча, яке битиметься за вас протягом 1.5 хв або доки його не буде знищено. (Відновлення 30 хв)" }, -- Gnomish Battle Chicken, @use Creates a Battle Chicken that will fight for you for 1.50 min or until it is destroyed. (30 Min Cooldown)
[10726] = { "гномська шапка контролю розуму", use="Вступити в ментальний бій з ціллю-гуманоїдом, щоб спробувати захопити контроль над її розумом. Якщо все пройде вдало, ви контролюватимете розум цілі протягом 20 секунд...." }, -- Gnomish Mind Control Cap, @use Engage in mental combat with a humanoid target to try and control their mind.  If all works well, you will control the mind of the target for 20 sec ..... (30 Min Cooldown)
[10727] = { "гоблінський дракономет", use="Завдає від 61 до 69 шкоди вогнем протягом 10 секунд усім цілям у конусі перед інженером, що використовує зброю... Це якщо вона не вибухне..." }, -- Goblin Dragon Gun, @use Deals 61 to 69 fire damage for 10 sec to all targets in a cone in front of the engineer using the weapon.   That is unless it explodes..... (5 Min Cooldown)
[10738] = { "вантаж для Гальвана", flavor="Масивна коробка напрочуд легка." }, -- Shipment to Galvan, @flavor The massive box is surprisingly light.
[10739] = { "перстень стійкості" }, -- Ring of Fortitude
[10740] = { "поножі сотника" }, -- Centurion Legplates
[10741] = { "шолом Лордрека" }, -- Lordrec Helmet
[10742] = { "поножі дракона" }, -- Dragonflight Leggings
[10743] = { "наголовний полум'я дракона" }, -- Drakefire Headguard
[10744] = { "сокира чорного дракона" }, -- Axe of the Ebon Drake
[10745] = { "наплечі вчення" }, -- Kaylari Shoulders
[10746] = { "поручі з рунічної сталі" }, -- Runesteel Vambraces
[10747] = { "пояс вчителя" }, -- Teacher's Sash
[10748] = { "чоботи мандрівника" }, -- Wanderlust Boots
[10749] = { "шолом авангарду" }, -- Avenguard Helm
[10750] = { "кинджал життєвої сили" }, -- Lifeforce Dirk
[10751] = { "дорогоцінний вінець" }, -- Gemburst Circlet
[10752] = { "інкрустована смарагдами скриня" }, -- Emerald Encrusted Chest
[10753] = { "амулет Ґрола", flavor="Колись його носив Ґрол-Винищувач." }, -- Amulet of Grol, @flavor Once worn by Grol the Destroyer.
[10754] = { "амулет Севіни", flavor="Цей амулет досі випромінює гнилий запах Севіни." }, -- Amulet of Sevine, @flavor The putrid scent of Sevine still radiates from this amulet.
[10755] = { "амулет Аллістаржа", flavor="Єдине, що залишилося від колись могутнього чаклуна." }, -- Amulet of Allistarj, @flavor The only thing that remains from a once powerful sorcerer.
[10757] = { "оберіг Губителя", use="Використати на вівтарі Губителя, щоб викликати Разеліха-Губителя.", flavor="Відновлений амулет Рах'ліха." }, -- Ward of the Defiler, @use Use at the Altar of the Defiler to summon Razelikh the Defiler., @flavor The completed amulet of Rakh'likh.
[10759] = { "відрубаний ріг Губителя", flavor="Відрубаний і закривавлений ріг Разеліха-Губителя." }, -- Severed Horn of the Defiler, @flavor A severed and bloody horn of Razelikh the Defiler.
[10762] = { "мантія ліча" }, -- Robes of the Lich
[10764] = { "броня холоду смерті" }, -- Deathchill Armor
[10769] = { "сяюче око Мордреша" }, -- Glowing Eye of Mordresh
[10770] = { "неживий череп Мордреша" }, -- Mordresh's Lifeless Skull
[10771] = { "пояс смертемага" }, -- Deathmage Sash
[10773] = { "урна Гаккарі" }, -- Hakkari Urn
[10776] = { "накидка з павучого шовку" }, -- Silky Spider Cape
[10778] = { "намисто святині" }, -- Necklace of Sanctuary
[10779] = { "кров демона", equip="Збільшує навичку захисту на 3, супротив тіні — на 10 та регенерацію здоров'я — на 3." }, -- Demon's Blood, @equip Increases Defense by 3, Shadow resistance by 10 and your normal health regeneration by 3.
[10780] = { "знак Гаккара" }, -- Mark of Hakkar
[10781] = { "нагрудник Гаккарі" }, -- Hakkari Breastplate
[10782] = { "капюшон Гаккарі" }, -- Hakkari Shroud
[10789] = { "посібник з інженерних дисциплін" }, -- Manual of Engineering Disciplines
[10790] = { "членська картка гномського інженера", flavor="Повноправний член механо-інженерної гільдії." }, -- Gnome Engineer Membership Card, @flavor A member in good standing of the Mechanical Engineering Guild, Associated.
[10791] = { "членська картка гоблінського інженера", flavor="Член гоблінської експериментально-інженерної корпорації." }, -- Goblin Engineer Membership Card, @flavor A member in good standing of the Goblin Experimental Engineering Korporation.
[10792] = { "угода про нерозголошення Нікса" }, -- Nixx's Pledge of Secrecy, @use Sign the pledge, swearing to Nixx Sprocketspring that you will keep the knowledge of Goblin Engineering in eternal secrecy.
[10793] = { "угода про нерозголошення Надспалаха" }, -- Overspark's Pledge of Secrecy, @use Sign the pledge, swearing to Tinkmaster Overspark that you will keep the knowledge of Gnome Engineering in eternal secrecy.
[10794] = { "угода про нерозголошення Оґлторпа" }, -- Oglethorpe's Pledge of Secrecy, @use Sign the pledge, swearing to Oglethorpe Obnoticus that you will keep the knowledge of Gnome Engineering in eternal secrecy.
[10818] = { "сувій Є'кіньї", use="Використати в святилищі Занепалого Бога. (Відновлення 5 хв)" }, -- Yeh'kinya's Scroll, @use Use within the Sanctum of the Fallen God. (5 Min Cooldown)
[10819] = { "перо дикого совуха" }, -- Wildkin Feather
[10820] = { "рициновий пояс" }, -- Jackseed Belt
[10821] = { "плащ сіяча" }, -- Sower's Cloak
[10823] = { "меч завойовника", equip="Збільшує силу атаки на 28." }, -- Vanquisher's Sword, @equip +28 Attack Power.
[10824] = { "бурштиновий талісман" }, -- Amberglow Talisman
[10826] = { "посох знань" }, -- Staff of Lore
[10827] = { "мундир землеміра" }, -- Surveyor's Tunic
[10830] = { "ручна осколкова граната M73", use="Завдає від 149 до 201 шкоди вогнем та оглушує цілі в радіусі 10 м на 3 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- M73 Frag Grenade, @use Inflicts 149 to 201 Fire damage and stuns targets in a 10 yard radius for 3 sec.  Any damage will break the effect. (1 Min Cooldown)
[10831] = { "сфера скверни", use="Викликає скверношукача. Перед використанням прочитайте інструкцію!", flavor="Використовується для виклику скверношукача." }, -- Fel Orb, @use Summons a Felhound Tracker. Read the manual!, @flavor Use to conjure a Felhound Tracker.
[10832] = { "посібник власника скверношукача", flavor="Інформація про те, як керувати вашим новим скверношукачем." }, -- Fel Tracker Owner's Manual, @flavor Information on how to control your new Felhound Tracker.
[10834] = { "набір скверношукача", flavor="Крихке - поводитися з обережністю" }, -- Felhound Tracker Kit, @flavor FRAGILE - Handle With Care
[10839] = { "кристалічна записка", flavor="Записка в кристалі азшариту." }, -- Crystallized Note, @flavor A note encased in azsharite crystal.
[10840] = { "кристалічна записка", flavor="Записка в кристалі азшариту." }, -- Crystallized Note, @flavor A note encased in azsharite crystal.
[10918] = { "агонічна отрута", use="Вкриває зброю отрутою на {1} хв. Кожен удар має {2}% імовірності отруїти ворога, знижуючи ефективність будь-якого зцілення на {3} на {4} с. Накладається до {5} разів на одній цілі. {6} зарядів.#lasts for {1} min#{2}% chance#them by {3} for {4} sec#{5} times#{6} charges" }, -- Wound Poison, @use Coats a weapon with poison that lasts for 30 minutes.Each strike has a 30% chance of poisoning the enemy, reducing all healing effects used on them by 55 for 15 sec.  Stacks up to 5 times on a single target.  60 charges. (Proc chance: 30%)
[10919] = { "аптекарські рукавички" }, -- Apothecary Gloves
[10920] = { "агонічна отрута II", ref=10918 }, -- Wound Poison II
[10921] = { "агонічна отрута III", ref=10918 }, -- Wound Poison III
[10922] = { "агонічна отрута IV", ref=10918 }, -- Wound Poison IV
[10938] = { "мала магічна субстанція", use="Перетворити три малі магічні субстанції на одну велику." }, -- Lesser Magic Essence, @use Turn three lesser magic essences into a greater one.
[10939] = { "велика магічна субстанція", use="Перетворити велику магічну субстанцію на три малі." }, -- Greater Magic Essence, @use Turn a greater magic essence into three lesser ones.
[10940] = { "дивний пил" }, -- Strange Dust
[10958] = { "намисто Гіларі" }, -- Hilary's Necklace
[10959] = { "мішок зі шкіри демона" }, -- Demon Hide Sack
[10978] = { "малий мерехтливий осколок" }, -- Small Glimmering Shard
[10998] = { "мала астральна субстанція", use="Перетворити три малі астральні субстанції на одну велику." }, -- Lesser Astral Essence, @use Turn three lesser astral essences into a greater one.
[10999] = { "Залізоскверн", flavor="На поверхні молотка викарбувані літери: Ф.Ф.Ф." }, -- Ironfel, @flavor Etched into the face of the hammer are the letters: F.F.F.
[11000] = { "ключ Тінегарта", flavor="Ключ від усіх замків у надрах, подарунок Ф.Ф.Ф." }, -- Shadowforge Key, @flavor Master Key to the Depths, Courtesy of F.F.F.
[11018] = { "ґрунт Ун'Ґоро" }, -- Un'Goro Soil
[11020] = { "торба вічного цвітіння", use="Використати два зразки ґрунту Ун'Ґоро та пакет насіння Тарлендріса, щоб отримати контейнер з травами вічного цвітіння. (Відновлення 10 хв)" }, -- Evergreen Pouch, @use Consume two Un'Goro Soil samples and a Packet of Tharlendris seeds to make an Evergreen Herb Casing. (10 Min Cooldown)
[11022] = { "пакет насіння Тарлендріса" }, -- Packet of Tharlendris Seeds
[11024] = { "контейнер з травами вічного цвітіння", flavor="Вирощенні з ґрунту Ун'Ґоро." }, -- Evergreen Herb Casing, @flavor Using Un'Goro soil, Tharlendris seeds have been cultivated inside.
[11026] = { "коробка з деревною жабою", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашу жабу." }, -- Tree Frog Box, @use Right Click to summon and dismiss your frog.
[11027] = { "коробка з лісовою жабою", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашу жабу." }, -- Wood Frog Box, @use Right Click to summon and dismiss your frog.
[11040] = { "світанка" }, -- Morrowgrain
[11058] = { "обручка Ша'ні" }, -- Sha'ni's Nose-Ring
[11079] = { "відрубана голова Ґор'теша", use="Встромити в КУПУ ПУХКОЇ ЗЕМЛІ.", flavor="Відрубана голова Ґор'теша, настроплена на спис." }, -- Gor'tesh's Lopped Off Head, @use Place on a SOFT DIRT MOUND., @flavor Gor'tesh's severed head, propped up on a pike.
[11080] = { "відрубана голова Ґор'теша", flavor="М'яка, смердюча і слизька" }, -- Gor'tesh's Lopped Off Head, @flavor Squishy, Smelly, Slimy
[11082] = { "велика астральна субстанція", use="Перетворити велику астральну субстанцію на три малі." }, -- Greater Astral Essence, @use Turn a greater astral essence into three lesser ones.
[11083] = { "пил душі" }, -- Soul Dust
[11084] = { "великий мерехтливий осколок" }, -- Large Glimmering Shard
[11099] = { "темнозалізна руда" }, -- Dark Iron Ore
[11102] = { "невилуплене яйце райдужного хамелеона" }, -- Unhatched Sprite Darter Egg
[11103] = { "розписка про видачу насіння", flavor="На двадцять пакетів насінин Тарлендріса." }, -- Seed Voucher, @flavor Good for twenty packs of Tharlendris seeds.
[11104] = { "великий компас", flavor="Він завжди вказує на центр кратера Ун'Ґоро..." }, -- Large Compass, @flavor It always points towards the center of Ungoro Crater...
[11105] = { "скручений пергамент з мапою" }, -- Curled Map Parchment
[11106] = { "ключ з головою лева" }, -- Lion-headed Key
[11107] = { "невелика сумка" }, -- A Small Pack
[11109] = { "спеціальний курячий корм", use="Відновлює 30 здоров'я протягом 15 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Special Chicken Feed, @use Restores 30 health over 15 sec.  Must remain seated while eating.
[11110] = { "куряче яйце", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашу курку." }, -- Chicken Egg, @use Right Click to summon and dismiss your chicken.
[11112] = { "дослідницьке обладнання", flavor="Власність експедиції Маршала." }, -- Research Equipment, @flavor Property of Marshal Expeditions.
[11113] = { "ящик з провізією", flavor="Власність експедиції Маршала." }, -- Crate of Foodstuffs, @flavor Property of Marshal Expeditions.
[11114] = { "кістка динозавра" }, -- Dinosaur Bone
[11116] = { "подертий щоденник", flavor="Власність Віллідена Маршала" }, -- A Mangled Journal, @flavor Property of Williden Marshal
[11119] = { "урожай Міллі" }, -- Milly's Harvest
[11120] = { "молот Белґрома" }, -- Belgrom's Hammer
[11122] = { "морквина на паличці", equip="Збільшує швидкість верхової їзди на 3%." }, -- Carrot on a Stick, @equip Increases mount speed by 3%.
[11123] = { "поножі дощеступа" }, -- Rainstrider Leggings
[11124] = { "шолом вигнанця" }, -- Helm of Exile
[11125] = { "повідомлення про постачання винограду" }, -- Grape Manifest
[11126] = { "скрижаль Курнії", flavor="Руни, наповнені рідким вогнем, пливуть по скрижалі." }, -- Tablet of Kurniya, @flavor Runes filled with liquid fire dance across the tablet.
[11127] = { "віднайдені припаси" }, -- Scavenged Goods
[11128] = { "золотий жезл", flavor="Використовується у накладанні чарів." }, -- Golden Rod, @flavor Needed by Enchanters.
[11129] = { "сутність стихій" }, -- Essence of the Elements
[11131] = { "зразок стіни вулика" }, -- Hive Wall Sample
[11132] = { "невикористаний флакон для зразків", use="Зібрати зразок зі стіни інкубатора Ґоріші." }, -- Unused Scraping Vial, @use Scrape a sample of the hive wall from an area near a Gorishi hatchery.
[11133] = { "тренувальний меч Лінкена" }, -- Linken's Training Sword
[11134] = { "мала містична субстанція", use="Перетворити три малі містичні субстанції на одну велику." }, -- Lesser Mystic Essence, @use Turn three lesser mystic essences into a greater one.
[11135] = { "велика містична субстанція", use="Перетворити велику містичну субстанцію на три малі." }, -- Greater Mystic Essence, @use Turn a greater mystic essence into three lesser ones.
[11136] = { "загартований меч Лінкена" }, -- Linken's Tempered Sword
[11137] = { "пил видіння" }, -- Vision Dust
[11138] = { "малий сяючий осколок" }, -- Small Glowing Shard
[11139] = { "великий сяючий осколок" }, -- Large Glowing Shard
[11141] = { "приманка", use="Покласти поруч з Міблоном Хрипозубом." }, -- Bait, @use Place near Miblon Snarltooth.
[11142] = { "зламаний самофланж" }, -- Broken Samophlange
[11143] = { "заготовка для деталі" }, -- Nugget Slug
[11144] = { "ясносрібний жезл", flavor="Потрібен чародіям." }, -- Truesilver Rod, @flavor Needed by Enchanters.
[11145] = { "рунічний ясносрібний жезл" }, -- Runed Truesilver Rod
[11146] = { "зламаний та пошарпаний самофланж" }, -- Broken and Battered Samophlange
[11147] = { "обкладинка посібника з експлуатації самофланжу", use="З'єднати обкладинку та 5 сторінок, щоб створити посібник з експлуатації самофланжу." }, -- Samophlange Manual Cover, @use Join the cover and 5 pages to create the Samophlange Manual.
[11148] = { "сторінка посібника з експлуатації самофланжу", use="З'єднати обкладинку та 5 сторінок, щоб створити посібник з експлуатації самофланжу." }, -- Samophlange Manual Page, @use Join the cover and 5 pages to create the Samophlange Manual.
[11149] = { "посібник з експлуатації самофланжу" }, -- Samophlange Manual
[11162] = { "покращений меч Лінкена" }, -- Linken's Superior Sword
[11169] = { "книга Аквора", use="Викликати Акваментаса. (Відновлення 5 хв)" }, -- Book of Aquor, @use Summons Aquementas. (5 Min Cooldown)
[11172] = { "сріблясті пазурі" }, -- Silvery Claws
[11173] = { "залізодеревне серце" }, -- Irontree Heart
[11174] = { "мала підсвітня субстанція", use="Перетворити три малі підсвітні субстанції на одну велику." }, -- Lesser Nether Essence, @use Turn three lesser nether essences into a greater one.
[11175] = { "велика підсвітня субстанція", use="Перетворити велику підсвітню субстанцію на три малі." }, -- Greater Nether Essence, @use Turn a greater nether essence into three lesser ones.
[11176] = { "пил мрій" }, -- Dream Dust
[11177] = { "малий променистий осколок" }, -- Small Radiant Shard
[11178] = { "великий променистий осколок" }, -- Large Radiant Shard
[11179] = { "золоте полум'я" }, -- Golden Flame
[11184] = { "синій кристал сили" }, -- Blue Power Crystal
[11185] = { "зелений кристал сили" }, -- Green Power Crystal
[11186] = { "червоний кристал сили" }, -- Red Power Crystal
[11187] = { "наручі стеблолиста" }, -- Stemleaf Bracers
[11188] = { "жовтий кристал сили" }, -- Yellow Power Crystal
[11189] = { "мантія діброви" }, -- Woodland Robes
[11190] = { "лозяні рукавички" }, -- Viny Gloves
[11191] = { "фермерські чоботи" }, -- Farmer's Boots
[11192] = { "рукавиці екіпірувальника" }, -- Outfitter Gloves
[11193] = { "нагрудник вируючого вітру" }, -- Blazewind Breastplate
[11194] = { "гауберк призматичної луски" }, -- Prismscale Hauberk
[11195] = { "загартований боями нагрудник " }, -- Warforged Chestplate
[11196] = { "медальйон палаючого розуму" }, -- Mindburst Medallion
[11227] = { "клаптик стягу Кром'зара" }, -- Piece of Krom'zar's Banner
[11229] = { "пояс блискучої луски" }, -- Brightscale Girdle
[11230] = { "захоплена вогняна сутність", flavor="Вогняна сутність Баєль'Ґара, загорнута в скинуту шкіру чорного дракона." }, -- Encased Fiery Essence, @flavor The fiery essence of Bael'Gar wrapped tightly inside black dragonflight molt.
[11231] = { "змінена шкіра чорного дракона", use="Використати на рештках Баєль'Ґара, щоб захопити його вогняну сутність.", flavor="Вицвілий клаптик шкіри чорного дракона" }, -- Altered Black Dragonflight Molt, @use Use on the remains of Bael'Gar to capture his fiery essence., @flavor A dull and gray patch of black dragon skin
[11242] = { "духокорінь" }, -- Evoroot
[11243] = { "еліксир Відере", use="Випити на кладовищі Танаріса." }, -- Videre Elixir, @use Drink in the Tanaris Graveyard.
[11262] = { "сфера Лоріки" }, -- Orb of Lorica
[11265] = { "кувалда кам'яного дерева" }, -- Cragwood Maul
[11266] = { "тріснутий уламок елементаля" }, -- Fractured Elemental Shard
[11267] = { "зразок уламка елементаля" }, -- Elemental Shard Sample
[11268] = { "голова Арґельмаха", flavor="Темна, бліда шкіра схожа на глину." }, -- Head of Argelmach, @flavor The dark, pale skin feels like clay.
[11269] = { "неушкоджене ядро елементаля" }, -- Intact Elemental Core
[11270] = { "підписана угода Нікса" }, -- Nixx's Signed Pledge
[11282] = { "підписана угода Оґлторпа" }, -- Oglethorpe's Signed Pledge
[11283] = { "підписана угода Надспалаха" }, -- Overspark's Signed Pledge
[11286] = { "торієві кайдани", use="Надягнути на Ґрарка у слушний момент.", flavor="Нерозривні пута." }, -- Thorium Shackles, @use Use on Grark when the time is right!, @flavor Unbreakable bindings.
[11287] = { "мала чарівна паличка" }, -- Lesser Magic Wand
[11288] = { "велика чарівна паличка" }, -- Greater Magic Wand
[11290] = { "великий містичний жезл" }, -- Greater Mystic Wand
[11309] = { "Серце гори" }, -- The Heart of the Mountain
[11312] = { "втрачений рецепт Громоварів" }, -- Lost Thunderbrew Recipe
[11313] = { "голова Рібблі" }, -- Ribbly's Head
[11315] = { "паросток кровоцвіту" }, -- Bloodpetal Sprout
[11316] = { "кровоцвіт" }, -- Bloodpetal
[11318] = { "туман Атал'ай" }, -- Atal'ai Haze
[11319] = { "розряджений знищувач" }, -- Unloaded Zapper
[11320] = { "знищувач кровоцвітів", use="Знищує шкідників." }, -- Bloodpetal Zapper, @use Zaps pests dead.
[11324] = { "рюкзак мандрівника" }, -- Explorer's Knapsack
[11325] = { "кухоль елю Темного Заліза", use="Кинути близ завсідника Похумрого Пияки" }, -- Dark Iron Ale Mug, @use Throw near a patron of the Grim Guzzler
[11366] = { "лист Гелендіса Річкорога", flavor="Запечатано" }, -- Helendis Riverhorn's Letter, @flavor Sealed
[11367] = { "прошення Соломона до Болвара" }, -- Solomon's Plea to Bolvar
[11368] = { "указ Болвара", flavor="Скріплено печаткою Штормовія" }, -- Bolvar's Decree, @flavor Bears the Seal of Stormwind
[11370] = { "темнозалізна руда" }, -- Dark Iron Ore
[11371] = { "злиток темного заліза" }, -- Dark Iron Bar
[11382] = { "кров гори" }, -- Blood of the Mountain
[11404] = { "око злого кажана" }, -- Evil Bat Eye
[11405] = { "величезна срібна жила" }, -- Giant Silver Vein
[11407] = { "рвана ведмежа шкура" }, -- Torn Bear Pelt
[11412] = { "флакон Наґмари", use="Наповнити в джерелах Ґолакка, що в кратері Ун'Ґоро." }, -- Nagmara's Vial, @use Fill at the Golakka crater in Un'Goro.
[11413] = { "наповнений флакон Наґмари" }, -- Nagmara's Filled Vial
[11445] = { "флейта древніх", use="Викликати духи древніх в Залізодревих лісах." }, -- Flute of the Ancients, @use Summons ancient spirits in the Irontree Woods.
[11446] = { "зім'ята записка" }, -- A Crumpled Up Note
[11462] = { "викинутий ніж" }, -- Discarded Knife
[11463] = { "недоставлений пакунок" }, -- Undelivered Parcel
[11464] = { "втрачена інформація маршала Віндзора", flavor="-Генерал Кузня Гніву" }, -- Marshal Windsor's Lost Information, @flavor -General Angerforge
[11465] = { "втрачена інформація маршала Віндзора", flavor="-Повелитель големів Арґельмах" }, -- Marshal Windsor's Lost Information, @flavor -Golem Lord Argelmach
[11466] = { "звіт Раскала" }, -- Raschal's Report
[11467] = { "медальйон Чорнокаменю" }, -- Blackrock Medallion
[11468] = { "поясна сумка Темного Заліза" }, -- Dark Iron Fanny Pack
[11469] = { "криваві браслети" }, -- Bloodband Bracers
[11470] = { "текст зі скрижалі" }, -- Tablet Transcript
[11471] = { "крихке яйце райдужного хамелеона" }, -- Fragile Sprite Darter Egg
[11472] = { "вирізка срібногривого ловця" }, -- Silvermane Stalker Flank
[11474] = { "яйце райдужного хамелеона", use="Клацніть правою кнопкою миші, щоб викликати і відпустити дитинча райдужного хамелеона." }, -- Sprite Darter Egg, @use Right Click to summon and dismiss your sprite darter hatchling.
[11475] = { "плащ з плямами від вина" }, -- Wine-stained Cloak
[11476] = { "шкура У'чі" }, -- U'cha's Pelt
[11477] = { "білий кіготь равазавра" }, -- White Ravasaur Claw
[11478] = { "шкура ун'ґорської горили" }, -- Un'Goro Gorilla Pelt
[11479] = { "шкура ун'ґорського топотуна" }, -- Un'Goro Stomper Pelt
[11480] = { "шкура ун'ґорського рокотуна" }, -- Un'Goro Thunderer Pelt
[11482] = { "посібник з використання пілонів" }, -- Crystal Pylon User's Manual
[11502] = { "наплечі з мудрошкіри" }, -- Loreskin Shoulders
[11503] = { "кривавий бурштин" }, -- Blood Amber
[11504] = { "шматок туші молотодона" }, -- Piece of Threshadon Carcass
[11509] = { "феромонна залоза равазавра" }, -- Ravasaur Pheromone Gland
[11510] = { "голова Лар'корві" }, -- Lar'korwi's Head
[11511] = { "маяк Кенарія", flavor="Цей пристрій допомагає ідентифікувати осквернені породження природи." }, -- Cenarion Beacon, @flavor This device helps identify corrupted elements of nature.
[11512] = { "клапоть ураженої шкіри" }, -- Patch of Tainted Skin
[11513] = { "уражений купорос" }, -- Tainted Vitriol
[11514] = { "залишок скверни" }, -- Fel Creep
[11515] = { "уламок оскверненої душі" }, -- Corrupted Soul Shard
[11516] = { "кенарійський бальзам зцілення рослин", flavor="Це друїдське вариво використовується для очищення осквернених рослин." }, -- Cenarion Plant Salve, @flavor This druidic brew is used to cleanse corrupted plants.
[11522] = { "срібний тотем Акваментаса", use="Розсіює ауру Жаропломеня." }, -- Silver Totem of Aquementas, @use Dispels Blazerunner's Aura.
[11562] = { "кристалічне відновлення", use="Відновлює цілі 670 здоров'я за 15 сек. (Відновлення 2 хв)" }, -- Crystal Restore, @use Heals the target of 670 damage over 15 sec. (2 Min Cooldown)
[11563] = { "кристалічна сила", use="Збільшує дух цілі на 30 протягом 30 хв." }, -- Crystal Force, @use Increases the target's Spirit by 30 for 30 min.
[11564] = { "кристалічний захист", use="Збільшує броню цілі на 20 на 30 хв." }, -- Crystal Ward, @use Increases the target's Armor by 200 for 30 min.
[11565] = { "кристалічне послаблення", use="Зменшує броню цілі на 200 на 2 хв. (Відновлення 1 хв)" }, -- Crystal Yield, @use Decreases an enemy target's Armor by 200 for 2 min. (1 Min Cooldown)
[11566] = { "кристалічний заряд", use="Завдає від 383 до 517 шкоди цілям в радіусі 3 м. (Відновлення 1 хв)" }, -- Crystal Charge, @use Inflicts 383 to 517 fire damage to targets in a 3 yard radius. (1 Min Cooldown)
[11567] = { "кристалічне вістря", use="Дружню ціль огортає кристалічний щит, що завдає 12 шкоди ворогам, що атакують її.  Триває 10 хв. (Відновлення 5 хв)" }, -- Crystal Spire, @use A crystal shield surrounds the friendly target, doing 12 damage to anyone who hits  (5 Min Cooldown)
[11568] = { "торба Торви" }, -- Torwa's Pouch
[11569] = { "м'ясо молотодона", use="Розмістити на пласкій скелі Ун'Ґоро." }, -- Preserved Threshadon Meat, @use Place upon the Flat Un'Goro Rock.
[11570] = { "суміш феромонів", use="Нанести на тушу молотодона." }, -- Preserved Pheromone Mixture, @use Apply to the Preserved Threshadon Carcass.
[11583] = { "кактусове яблуко" }, -- Cactus Apple
[11584] = { "\"Пиріг-сюрприз\" з кактусовими яблуками", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 2 на 15 хв.#Restores {1} health over {2}" }, -- Cactus Apple Surprise, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min.
[11590] = { "механічний ремкомплект", use="Відновлює 700 здоров'я дружній механічній цілі (Відновлення 2 хв)" }, -- Mechanical Repair Kit, @use Restores 700 health to a friendly mechanical target (2 Min Cooldown)
[11617] = { "припаси Ерідани" }, -- Eridan's Supplies
[11622] = { "малий магічний камінь роздумів", use="Додати на поножі або головний убір чари, що збільшують запас мани на 150. Не сумується з іншими чарами на предметі." }, -- Lesser Arcanum of Rumination, @use Permanently adds 150 mana to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[11642] = { "малий магічний камінь статури", use="Додати на поножі або головний убір чари, що збільшують запас здоров'я на 100. Не сумується з іншими чарами на предметі." }, -- Lesser Arcanum of Constitution, @use Permanently adds 100 hit points to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[11643] = { "малий магічний камінь наполегливості", use="Додати на поножі або головний убір чари, що збільшують броню на 125. Не сумується з іншими чарами на предметі." }, -- Lesser Arcanum of Tenacity, @use Permanently adds 125 armor to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[11644] = { "малий магічний камінь стійкості", use="Додати на поножі або головний убір чари, що збільшують супротив вогню на 20. Не сумується з іншими чарами на предметі." }, -- Lesser Arcanum of Resilience, @use Permanently adds 20 fire resistance to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[11645] = { "малий магічний камінь жадібності", use="Додати на поножі або головний убір чари, що збільшують силу на 8. Не сумується з іншими чарами на предметі." }, -- Lesser Arcanum of Voracity, @use Permanently adds 8 strength to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[11646] = { "малий магічний камінь жадібності", use="Додати на поножі або головний убір чари, що збільшують витривалість на 8. Не сумується з іншими чарами на предметі." }, -- Lesser Arcanum of Voracity, @use Permanently adds 8 stamina to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[11647] = { "малий магічний камінь жадібності", use="Додати на поножі або головний убір чари, що збільшують спритність на 8. Не сумується з іншими чарами на предметі." }, -- Lesser Arcanum of Voracity, @use Permanently adds 8 agility to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[11648] = { "малий магічний камінь жадібності", use="Додати на поножі або головний убір чари, що збільшують інтелект на 8. Не сумується з іншими чарами на предметі." }, -- Lesser Arcanum of Voracity, @use Permanently adds 8 intellect to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[11649] = { "малий магічний камінь жадібності", use="Додати на поножі або головний убір чари, що збільшують дух на 8. Не сумується з іншими чарами на предметі." }, -- Lesser Arcanum of Voracity, @use Permanently adds 8 spirit to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[11668] = { "флейта Заваріка" }, -- Flute of Xavaric
[11674] = { "нефритожарі пута скверни" }, -- Jadefire Felbind
[11682] = { "флакон Ерідани", use="Наповнити в храмі Місяця." }, -- Eridan's Vial, @use Fill in the Temple of the Moon.
[11684] = { "Залізогуб", hit="Дає 2 додаткові атаки під час наступного удару." }, -- Ironfoe, @hit Grants 2 extra attacks on your next swing.
[11723] = { "збалансований фламберг Файносталя" }, -- Goodsteel's Balanced Flameberge
[11724] = { "затриманий пакунок", flavor="Одержувач: Крінкл Файносталь, Танаріс" }, -- Overdue Package, @flavor To: Krinkle Goodsteel, Tanaris
[11725] = { "міцна кришталева лапа" }, -- Solid Crystal Leg Shaft
[11727] = { "гросбух Файносталя" }, -- Goodsteel Ledger
[11732] = { "манускрипт роздумів", flavor="Темні руни пливуть поверхнею манускрипту." }, -- Libram of Rumination, @flavor Dark runes skitter across the surface.
[11733] = { "манускрипт статури", flavor="Темні руни пливуть поверхнею манускрипту." }, -- Libram of Constitution, @flavor Dark runes skitter across the surface.
[11734] = { "манускрипт наполегливості", flavor="Темні руни пливуть поверхнею манускрипту." }, -- Libram of Tenacity, @flavor Dark runes skitter across the surface.
[11736] = { "манускрипт стійкості", flavor="Темні руни пливуть поверхнею манускрипту." }, -- Libram of Resilience, @flavor Dark runes skitter across the surface.
[11737] = { "манускрипт жадібності", flavor="Темні руни пливуть поверхнею манускрипту." }, -- Libram of Voracity, @flavor Dark runes skitter across the surface.
[11751] = { "палаюча сутність", flavor="Тліючі залишки чогось..." }, -- Burning Essence, @flavor The smoldering remains of something...
[11752] = { "чорна кров закатованих", flavor="Гнилий запах паленої крові різко б'є в ніс." }, -- Black Blood of the Tormented, @flavor The putrid scent of burned blood assaults your senses.
[11753] = { "око Каджала", flavor="Зіниця відстежує кожен ваш рух." }, -- Eye of Kajal, @flavor The pupil tracks your every move.
[11754] = { "чорний діамант" }, -- Black Diamond
[11804] = { "фляга Сулиці", use="Привести Рінґо до тями. (Відновлення 45 сек)" }, -- Spraggle's Canteen, @use Revive Ringo with water. (45 Sec Cooldown)
[11818] = { "ключ від вбиральні Смердюха" }, -- Grimesilt Outhouse Key
[11829] = { "попіл Ун'Ґоро" }, -- Un'Goro Ash
[11830] = { "перетинчаста луска деметродона" }, -- Webbed Diemetradon Scale
[11831] = { "перетинчаста луска жаходактиля" }, -- Webbed Pterrordax Scale
[11833] = { "приманка для королеви Ґоріші", use="Приманювання королеви вулика Ґоріші при використанні на кристалі силітиду Ґоріші." }, -- Gorishi Queen Lure, @use Lures out the queen of the Gorishi hive when used on a Gorishi Silithid Crystal.
[11834] = { "надлипка смола" }, -- Super Sticky Tar
[11835] = { "мозок королеви Ґоріші" }, -- Gorishi Queen Brain
[11837] = { "пахуча залоза Ґоріші" }, -- Gorishi Scent Gland
[11843] = { "банківська розписка" }, -- Bank Voucher
[11844] = { "звіт Товкачера по ситуації в Ун'Ґоро" }, -- Pestlezugg's Un'Goro Report
[11845] = { "шкіряна сумка ручної роботи" }, -- Handmade Leather Bag
[11846] = { "особливе питво Бацбаха", use="Звичайний алкогольний напій." }, -- Wizbang's Special Brew, @use A typical alcoholic beverage.
[11847] = { "пошарпаний плащ" }, -- Battered Cloak
[11848] = { "волокняний пояс" }, -- Flax Belt
[11849] = { "іржаві наручі" }, -- Rustmetal Bracers
[11850] = { "накидка сутінкового кажана" }, -- Short Duskbat Cape
[11851] = { "мундир падальника" }, -- Scavenger Tunic
[11852] = { "поножі приблуди" }, -- Roamer's Leggings
[11853] = { "чоботи бурлаки" }, -- Rambling Boots
[11854] = { "викрутка самофланжа" }, -- Samophlange Screwdriver
[11855] = { "мутровий ключ" }, -- Tork Wrench
[11856] = { "церемоніальний ельфійський клинок" }, -- Ceremonial Elven Blade
[11857] = { "ритуальна палиця" }, -- Sanctimonial Rod
[11858] = { "плащ битв", equip="Збільшує силу атаки на 10." }, -- Battlehard Cape, @equip +10 Attack Power.
[11859] = { "сфера нефритового місяця" }, -- Jademoon Orb
[11860] = { "заряджений жезл громовиці" }, -- Charged Lightning Rod
[11861] = { "пояс відплати", equip="Шанс завдати ворогу від 75 до 125 шкоди від тіні при отриманні удару в бою. (Імовірність: 1%)" }, -- Girdle of Reprisal, @equip When struck in combat has a 1% chance of inflicting 75 to 125 Shadow damage to the attacker. (Proc chance: 1%)
[11862] = { "кільце з білої кістки", equip="Збільшує силу атаки на 24." }, -- White Bone Band, @equip +24 Attack Power.
[11863] = { "подрібнювач з білої кістки" }, -- White Bone Shredder
[11864] = { "спис з білої кістки" }, -- White Bone Spear
[11865] = { "чоботи злоби" }, -- Rancor Boots
[11866] = { "пояс-батіг Наґмари" }, -- Nagmara's Whipping Belt
[11867] = { "рукавички божевілля" }, -- Maddening Gauntlets
[11868] = { "задушливий перстень" }, -- Choking Band
[11869] = { "обручка Ша'ні" }, -- Sha'ni's Ring
[11870] = { "сфера забуття" }, -- Oblivion Orb
[11871] = { "наплічники чудовиська хащів" }, -- Snarkshaw Spaulders
[11872] = { "наголінники уникнення", equip="Збільшує ваш шанс ухилитися від атаки на 1%." }, -- Eschewal Greaves, @equip Increases your chance to dodge an attack by 1%.
[11873] = { "плащ примарного туману" }, -- Ethereal Mist Cape
[11874] = { "напліччя хмароплину" }, -- Clouddrift Mantle
[11875] = { "браслети хмароплину" }, -- Breezecloud Bracers
[11876] = { "мундир рівнинного ловця" }, -- Plainstalker Tunic
[11882] = { "поножі вершника" }, -- Outrider Leggings
[11883] = { "закіптявіла поясна сумка" }, -- A Dingy Fanny Pack
[11884] = { "місячна риза" }, -- Moonlit Amice
[11886] = { "термінове повідомлення" }, -- Urgent Message
[11887] = { "припаси Кенарійського Кола" }, -- Cenarion Circle Cache
[11888] = { "дослідницькі рукавиці Квінтіса" }, -- Quintis' Research Gloves
[11889] = { "напліччя залізної кори" }, -- Bark Iron Pauldrons
[11902] = { "меч майстерності Лінкена", hit="Підриває ціль, завдаючи їй від 45 до 75 шкоди від природи." }, -- Linken's Sword of Mastery, @hit Blasts a target for 45 to 75 Nature damage.
[11904] = { "дух Акваментаса", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 20." }, -- Spirit of Aquementas, @equip Increases damage and healing done by magical spells and effects by up to 20.
[11905] = { "бумеранг Лінкена", use="Кинути у ціль магічний бумеранг, який завдає від 113 до 187 шкоди і має шанс оглушити чи роззброїти її. (Відновлення 3 хв)" }, -- Linken's Boomerang, @use Flings a magical boomerang towards target enemy dealing 113 to 187 damage and has a chance to stun or disarm them. (3 Min Cooldown)
[11906] = { "винищувач звірів", equip="Збільшує силу атаки на 30 в бою зі звірами." }, -- Beastsmasher, @equip +30 Attack Power when fighting Beasts.
[11907] = { "вбивця звірів", equip="Збільшує силу атаки на 72 в бою зі звірами." }, -- Beastslayer, @equip +72 Attack Power when fighting Beasts.
[11908] = { "робочі чоботи археолога" }, -- Archaeologist's Quarry Boots
[11909] = { "робочий пояс землекопа" }, -- Excavator's Utility Belt
[11910] = { "прикрашені самоцвітами поножі", equip="Збільшує ваш шанс ухилитися від атаки на 1%." }, -- Bejeweled Legguards, @equip Increases your chance to dodge an attack by 1%.
[11911] = { "поножі лісових вершин" }, -- Treetop Leggings
[11912] = { "набір ємностей для слизу" }, -- Package of Empty Ooze Containers
[11913] = { "шолом глинистої гряди" }, -- Clayridge Helm
[11914] = { "порожня банка для проклятого слизу", use="Наповнити порожню банку зразком з проклятого слизня. ОБЕРЕЖНО! Найімовірніше, це знищить тіло створіння." }, -- Empty Cursed Ooze Jar, @use Fills an Empty Cursed Ooze Jar with a sample of Cursed Ooze. WARNING! Will likely destroy the creature's body.
[11915] = { "парасоля Шиззла" }, -- Shizzle's Drizzle Blocker
[11916] = { "намордник Шиззла" }, -- Shizzle's Muzzle
[11917] = { "склоочисник Шиззла" }, -- Shizzle's Nozzle Wiper
[11918] = { "рукавиці печерного каменю" }, -- Grotslab Gloves
[11919] = { "латні скельні наголінники" }, -- Cragplate Greaves
[11936] = { "пояс шукача реліквій" }, -- Relic Hunter Belt
[11947] = { "наповнена проклятим слизом банка" }, -- Filled Cursed Ooze Jar
[11948] = { "порожня банка для забрудненого слизу", use="Наповнити порожню банку зразком з забрудненого слизня. ОБЕРЕЖНО! Найімовірніше, це знищить тіло створіння." }, -- Empty Tainted Ooze Jar, @use Fills an Empty Tainted Ooze Jar with a sample of Tainted Ooze. WARNING! Will likely destroy the creature's body.
[11949] = { "наповнена забрудненим слизом банка" }, -- Filled Tainted Ooze Jar
[11951] = { "плід кнутокореня", use="Відновлює від 700 до 900 здоров'я. (Відновлення 2 хв)" }, -- Whipper Root Tuber, @use Restores 700 to 900 health. (2 Min Cooldown)
[11952] = { "подих нічного дракона", use="Відновлює від 394 до 456 мани та від 394 до 456 мани здоров'я. (Відновлення 2 хв)" }, -- Night Dragon's Breath, @use Restores 394 to 456 mana and 394 to 456 health. (2 Min Cooldown)
[11954] = { "наповнена чистим слизом банка" }, -- Filled Pure Sample Jar
[11955] = { "сумка пустих контейнерів для слизу" }, -- Bag of Empty Ooze Containers
[11962] = { "браслети-кайдани" }, -- Manacle Cuffs
[11963] = { "наплечі покаяння" }, -- Penance Spaulders
[11964] = { "палиця стрімкого удару", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Swiftstrike Cudgel, @equip Improves your chance to hit by 1%.
[12000] = { "четвертувач" }, -- Limb Cleaver
[12003] = { "темне дворфійське пиво", use="Надзвичайно міцний алкогольний напій." }, -- Dark Dwarven Lager, @use An extremely potent alcoholic beverage.
[12018] = { "шолом охоронника" }, -- Conservator Helm
[12021] = { "щитолатні сабатони" }, -- Shieldplate Sabatons
[12038] = { "печатка Лягроб" }, -- Lagrave's Seal
[12041] = { "вітрокосі поножі" }, -- Windshear Leggings
[12049] = { "броня сталелома" }, -- Splintsteel Armor
[12050] = { "серпанкові чоботи" }, -- Hazecover Boots
[12051] = { "латунні рукавиці" }, -- Brazen Gauntlets
[12059] = { "медальйон завойовника" }, -- Conqueror's Medallion
[12060] = { "лист від Шиндрел" }, -- Shindrell's Note
[12061] = { "клинок розплати", equip="Збільшує силу атаки на 22." }, -- Blade of Reckoning, @equip +22 Attack Power.
[12062] = { "майстерний бойовий клинок", equip="Збільшує навичку володіння кинджалами на 4." }, -- Skilled Fighting Blade, @equip Increased Daggers +4.
[12065] = { "оберіг стихій" }, -- Ward of the Elements
[12066] = { "накидна сланцевої шкіри" }, -- Shaleskin Cape
[12082] = { "наплечі зі шкури змія", equip="Збільшує ваш шанс нанесення удару на 2%." }, -- Wyrmhide Spaulders, @equip Improves your chance to hit by 2%.
[12083] = { "валконіанський пояс" }, -- Valconian Sash
[12102] = { "перстень аристократа" }, -- Ring of the Aristocrat
[12108] = { "базальтова луската броня" }, -- Basaltscale Armor
[12109] = { "лазурний місячний амікт" }, -- Azure Moon Amice
[12110] = { "пелерина заклинателя дощу", equip="Збільшує зцілення від заклинань і ефектів на 22." }, -- Raincaster Drape, @equip Increases healing done by spells and effects by up to 22.
[12111] = { "лавові рукавиці" }, -- Lavaplate Gauntlets
[12112] = { "браслети демона склепу" }, -- Crypt Demon Bracers
[12113] = { "сонцеродна накидка", equip="Збільшує шкоду від заклинань і ефектів вогню на 17." }, -- Sunborne Cape, @equip Increases damage done by Fire spells and effects by up to 17.
[12114] = { "сутінкові рукавиці" }, -- Nightfall Gloves
[12115] = { "стійкий пояс", equip="Збільшує навичку захисту на 8." }, -- Stalwart Clutch, @equip Increased Defense +8.
[12122] = { "мотлох Кум'іши", flavor="Мішок набитий всіляким \"мотлохом\"" }, -- Kum'isha's Junk, @flavor A chest full of "junk"
[12144] = { "яйцеморозкоп", use="Заморозити найближче яйце Гніздів'я. (Відновлення 5 сек)" }, -- Eggscilloscope, @use Freeze a nearby Rookery Egg. (5 Sec Cooldown)
[12184] = { "плоть раптора" }, -- Raptor Flesh
[12185] = { "капелюх адмірала Кривавого Вітрила", use="Викликати чи відпустити вашого птаха." }, -- Bloodsail Admiral's Hat, @use Right Click to summon and dismiss your bird.
[12190] = { "зілля сну без сновидінь", use="Занурює у сон без сновидінь на {1} с. Протягом цього часу відновлює {2} здоров'я та {3} мани. (Відновлення 2 хв)#for {1} sec#{2} health and {3} mana" }, -- Dreamless Sleep Potion, @use Puts the imbiber in a dreamless sleep for 12 sec.  During that time the imbiber heals 1200 health and 1200 mana. (2 Min Cooldown)
[12191] = { "скринька \"Сріблястої Зорі\"" }, -- Silver Dawning's Lockbox
[12192] = { "скринька \"Туманного Серпанку\"" }, -- Mist Veil's Lockbox
[12207] = { "гігантське яйце" }, -- Giant Egg
[12209] = { "пісний вовчий стейк", use="Відновлює 552 здоров'я протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв." }, -- Lean Wolf Steak, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[12210] = { "смажений раптор", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 8 на 15 хв." }, -- Roast Raptor, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 8 Stamina and Spirit for 15 min.
[12219] = { "неприкрашена печатка Вознесіння", flavor="На поверхні печатки знаходиться три порожніх гнізда." }, -- Unadorned Seal of Ascension, @flavor Three empty sockets cover the face.
[12220] = { "неушкоджений браслет елементаля" }, -- Intact Elemental Bracer
[12225] = { "сімейна вудка Блампів", equip="Збільшує навичку риболовлі на 3." }, -- Blump Family Fishing Pole, @equip Increased Fishing +3.
[12227] = { "рецепт: Пісний вовчий стейк", use="Навчає вас приготуванню пісного вовчого стейка." }, -- Recipe: Lean Wolf Steak, @use Teaches you how to cook Lean Wolf Steak.
[12228] = { "рецепт: Смажений раптор", use="Навчає вас приготуванню смаженого раптора." }, -- Recipe: Roast Raptor, @use Teaches you how to cook Roast Raptor.
[12230] = { "зразок сквернолісного слизу" }, -- Felwood Slime Sample
[12234] = { "забруднений сквернолісний зразок" }, -- Corrupted Felwood Sample
[12235] = { "зразок ун'ґорського слизу" }, -- Un'Goro Slime Sample
[12236] = { "чистий ун'ґорський зразок" }, -- Pure Un'Goro Sample
[12237] = { "чудове крабове м'ясо" }, -- Fine Crab Chunks
[12238] = { "окунь Темнобережжя", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Darkshore Grouper, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[12241] = { "зібране яйце дракона" }, -- Collected Dragon Egg
[12242] = { "кістки морської істоти" }, -- Sea Creature Bones
[12262] = { "порожня клітка для цуценя ворга", use="Спіймати цуценя ворга Кривавої Сокири. Не хвилюйтесь, це схвалено захисниками тварин." }, -- Empty Worg Pup Cage, @use Use when near a Bloodaxe Worg Pup. Don't worry, it is G.E.T.A. approved.
[12263] = { "клітка з цуценям ворга", flavor="Клітка гримить і трясеться." }, -- Caged Worg Pup, @flavor The cage rattles and shakes.
[12264] = { "переноска з цуценям ворга", use="Клацніть правою кнопкою миші, щоб викликати і відпустити цуценя ворга." }, -- Worg Carrier, @use Right Click to summon and dismiss your worg pup.
[12283] = { "сутність малечі" }, -- Broodling Essence
[12284] = { "драко-в'язник 900", use="Fire at a dragonkin Broodling in the Burning Steppes." }, -- Draco-Incarcinatrix 900, @use Fire at a dragonkin Broodling in the Burning Steppes.
[12286] = { "прототип яйцеморозкопа", use="Використати на яйці Гніздів'я, після чого повернутись до Тінкі. (Відновлення 3 сек)" }, -- Eggscilloscope Prototype, @use Use on a Rookery Egg, then return to Tinkee. (3 Sec Cooldown)
[12287] = { "яйцезбиральний пристрій", use="Зібрати найближче яйце дранона. (Відновлення 6 сек)" }, -- Collectronic Module, @use Collect a nearby dragon egg. (6 Sec Cooldown)
[12288] = { "запакований забруднений слизень", use="Випустити забрудненого сквернолісного слизня, щоб він міг провзаємодіяти з первісним слизнем в кратері Ун'Ґоро. (Відновлення 3 хв)" }, -- Encased Corrupt Ooze, @use Releases a captured Felwood ooze so it can interact with a primal ooze in Un'Goro Crater. (3 Min Cooldown)
[12289] = { "рештки морської черепахи" }, -- Sea Turtle Remains
[12291] = { "об'єднаний зразок слизу" }, -- Merged Ooze Sample
[12293] = { "тонка золота нитка" }, -- Fine Gold Thread
[12295] = { "поножі народного ополчення" }, -- Leggings of the People's Militia
[12296] = { "іскра народного ополчення" }, -- Spark of the People's Militia
[12299] = { "сітчасті рукавички" }, -- Netted Gloves
[12300] = { "сфера драконічної енергії", use="Керування розумом Вуглечвара, коли його сила волі ослабне." }, -- Orb of Draconic Energy, @use Controls Emberstrife's mind when his will falters.
[12301] = { "ключ від бамбукової клітки" }, -- Bamboo Cage Key
[12302] = { "поводи кригозуба", use="Викликає та відпускає верхового кригозуба. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Reins of the Frostsaber, @use Summons and dismisses a rideable Frostsaber.  This is a very fast mount. (3 Sec Cooldown)
[12303] = { "поводи ночезуба", use="Викликає та відпускає верхового ночезуба. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Reins of the Nightsaber, @use Summons and dismisses a rideable Nightsaber.  This is a very fast mount. (3 Sec Cooldown)
[12323] = { "некована печатка Вознесіння", use="Розмістити нековану печатку Вознесіння перед Вуглечваром." }, -- Unforged Seal of Ascension, @use Places the Unforged Seal of Ascension. Use in front of Emberstrife.
[12324] = { "викувана печатка Вознесіння" }, -- Forged Seal of Ascension
[12330] = { "ріг рудого вовка", use="Викликає та відпускає верхового рудого вовка. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Horn of the Red Wolf, @use Summons and dismisses a rideable red wolf.  This is a very fast mount. (3 Sec Cooldown)
[12334] = { "уламки кригобоїв" }, -- Frostmaul Shards
[12335] = { "самоцвіт Зотлілого Терену" }, -- Gemstone of Smolderthorn
[12336] = { "самоцвіт Кам'яного Шпиля" }, -- Gemstone of Spirestone
[12337] = { "самоцвіт Кривавої Сокири" }, -- Gemstone of Bloodaxe
[12339] = { "дарунок Велана" }, -- Vaelan's Gift
[12341] = { "зразок фруктів Чорнолісних" }, -- Blackwood Fruit Sample
[12342] = { "зразок зерна Чорнолісних" }, -- Blackwood Grain Sample
[12343] = { "зразок горіхів Чорнолісних" }, -- Blackwood Nut Sample
[12344] = { "печатка Вознесіння", flavor="Руни драконів то з'являються, то зникають на внутрішній поверхні персня." }, -- Seal of Ascension, @flavor Draconic runes appear and disappear along the inner band.
[12345] = { "речі Блискітки" }, -- Bijou's Belongings
[12346] = { "порожня чаша очищення", use="Наповнити водою з місячного колодязя, щоб підготувати чашу для очищенної їжі." }, -- Empty Cleansing Bowl, @use Fill with moonwell water to prepare the bowl to cleanse food placed in it.
[12347] = { "наповнена чаша очищення", use="Створити чашу з очищенною їжею, що сподобається хутропузам. Потрібні фрукти, горіхи та зерно з табору Чорнолісних." }, -- Filled Cleansing Bowl, @use Creates a bowl of purified food that the furbolg are sure to enjoy.  It requires fruit, grain, and nuts from the Blackwood camp.
[12349] = { "зразок води зі Скельноджерельної річки" }, -- Cliffspring River Sample
[12350] = { "порожня посудина для зразків" }, -- Empty Sampling Tube
[12351] = { "ріг арктичного вовка", use="Викликає та відпускає верхового арктичного вовка. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Horn of the Arctic Wolf, @use Summons and dismisses a rideable arctic wolf.  This is a very fast mount. (3 Sec Cooldown)
[12352] = { "доленосна застібка" }, -- Doomrigger's Clasp
[12353] = { "вузда білого жеребця", use="Викликає та відпускає верхового білого жеребця. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- White Stallion Bridle, @use Summons and dismisses a rideable white stallion.  This is a very fast mount. (3 Sec Cooldown)
[12354] = { "вузда солового коня", use="Викликає та відпускає верхового солового коня. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Palomino Bridle, @use Summons and dismisses a rideable Palomino.  This is a very fast mount. (3 Sec Cooldown)
[12355] = { "талісман порчі" }, -- Talisman of Corruption
[12356] = { "яйце виверни з Високого Сідала" }, -- Highperch Wyvern Egg
[12358] = { "скрижаль Темнокаменя" }, -- Darkstone Tablet
[12359] = { "злиток торію" }, -- Thorium Bar
[12360] = { "злиток арканіту" }, -- Arcanite Bar
[12361] = { "синій сапфір" }, -- Blue Sapphire
[12363] = { "арканічний кристал" }, -- Arcane Crystal
[12364] = { "величезний смарагд" }, -- Huge Emerald
[12365] = { "масивний камінь" }, -- Dense Stone
[12366] = { "густе хутро єті" }, -- Thick Yeti Fur
[12367] = { "бездоганний ріг єті" }, -- Pristine Yeti Horn
[12368] = { "Гамбіт Світанку", use="Розмістити в оглядовій кімнаті Школоманса." }, -- Dawn's Gambit, @use Place within the Viewing Room of the Scholomance.
[12383] = { "осяяне місяцем перо" }, -- Moontouched Feather
[12384] = { "скарб Мав'арі" }, -- Cache of Mau'ari
[12402] = { "древнє яйце" }, -- Ancient Egg
[12404] = { "масивний точильний камінь", use="Збільшує шкоду гострої зброї на 8 на 30 хвилин." }, -- Dense Sharpening Stone, @use Increase sharp weapon damage by 8 for 30 minutes.
[12406] = { "торієвий пояс" }, -- Thorium Belt
[12411] = { "третя скрижаль Мош'ару" }, -- Third Mosh'aru Tablet
[12412] = { "четверта скрижаль Мош'ару" }, -- Fourth Mosh'aru Tablet
[12417] = { "променистий вінець" }, -- Radiant Circlet
[12422] = { "імперська латна кіраса" }, -- Imperial Plate Chest
[12424] = { "імперський латний пояс" }, -- Imperial Plate Belt
[12425] = { "імперські латні браслети" }, -- Imperial Plate Bracers
[12426] = { "імперські латні чоботи" }, -- Imperial Plate Boots
[12427] = { "імперський латний шолом" }, -- Imperial Plate Helm
[12428] = { "імперські латні наплічники" }, -- Imperial Plate Shoulders
[12429] = { "імперські латні поножі" }, -- Imperial Plate Leggings
[12430] = { "е'ко кригозубів" }, -- Frostsaber E'ko
[12431] = { "е'ко зимокрайових" }, -- Winterfall E'ko
[12432] = { "е'ко щербозубів" }, -- Shardtooth E'ko
[12433] = { "е'ко диких совухів" }, -- Wildkin E'ko
[12434] = { "е'ко студовіїв" }, -- Chillwind E'ko
[12435] = { "е'ко льодореп'яхових" }, -- Ice Thistle E'ko
[12436] = { "е'ко кригобоїв" }, -- Frostmaul E'ko
[12437] = { "ящик Скеледужа" }, -- Ridgewell's Crate
[12438] = { "лист Тінкі" }, -- Tinkee's Letter
[12444] = { "неушкоджений ріг студовія" }, -- Uncracked Chillwind Horn
[12445] = { "пакунок Фелнока" }, -- Felnok's Package
[12447] = { "лук шиподерева" }, -- Thistlewood Bow
[12450] = { "джуджу шквалу", use="Збільшує швидкість атаки цілі на 3% протягом 20 сек. (Відновлення 1 хв)" }, -- Juju Flurry, @use Increases the target's attack speed by 3% for 20 sec. (1 Min Cooldown)
[12451] = { "джуджу сили", use="Збільшує силу цілі на 30 протягом 30 хв. (Відновлення 1 хв)" }, -- Juju Power, @use Increases the target's Strength by 30 for 30 min. (1 Min Cooldown)
[12455] = { "джуджу жару", use="Збільшує супротив вогню на 15 протягом 10 хв. (Відновлення 1 хв)" }, -- Juju Ember, @use Increases Fire resistance by 15 for 10 min. (1 Min Cooldown)
[12457] = { "джуджу холоду", use="Збільшує супротив кризі на 15 протягом 10 хв. (Відновлення 1 хв)" }, -- Juju Chill, @use Increase Frost resistance by 15 for 10 min. (1 Min Cooldown)
[12458] = { "джуджу кмітливості", use="Збільшує інтелект цілі на 30 протягом 30 хв. (Відновлення 1 хв)" }, -- Juju Guile, @use Increases the target's Intellect by 30 for 30 min. (1 Min Cooldown)
[12459] = { "джуджу уникання", use="Збільшує шанс ухилитися від атаки на 5% протягом 10 сек. (Відновлення 1 хв)" }, -- Juju Escape, @use Increases your chance to dodge by 5% for 10 sec. (1 Min Cooldown)
[12460] = { "джуджу міці", use="Збільшує силу атаки на 40 протягом 10 хв. (Відновлення 1 хв)" }, -- Juju Might, @use Increases attack power by 40 for 10 min. (1 Min Cooldown)
[12467] = { "чужоземне яйце", flavor="Всередині щось ворушиться" }, -- Alien Egg, @flavor Something seems to shake from within
[12472] = { "термометр Кракла", use="Виміряти температуру гарячої точки. (Відновлення 10 сек)", flavor="Якість гарантована корпорацією Краклгейта" }, -- Krakle's Thermometer, @use Take a reading of the temperature at a hot spot. (10 Sec Cooldown), @flavor Quality Guaranteed by Kraklenheit Industries
[12524] = { "амулет з синього пір'я" }, -- Blue-feathered Amulet
[12525] = { "припаси Жарона" }, -- Jaron's Supplies
[12529] = { "клітка з павучком Жевріючої Павутини", use="Клацніть правою кнопкою миші, щоб викликати і відпустити павучка Жевріючої Павутини." }, -- Smolderweb Carrier, @use Right Click to summon and dismiss your Smolderweb hatchling.
[12530] = { "яйце шпильного павука" }, -- Spire Spider Egg
[12533] = { "грубий спис" }, -- Roughshod Pike
[12534] = { "голова Омокка", use="Настромити голову Омокка на грубий спис і втромити в купу підношень Уроку." }, -- Omokk's Head, @use At Urok's Tribute Pile, combine Omokk's Head with the Roughshod Pike.
[12543] = { "пісенний камінь Залізогарта", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18." }, -- Songstone of Ironforge, @equip Increases damage and healing done by magical spells and effects by up to 18.
[12544] = { "рішучість Тралла" }, -- Thrall's Resolve
[12545] = { "око Орґріммара", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18." }, -- Eye of Orgrimmar, @equip Increases damage and healing done by magical spells and effects by up to 18.
[12548] = { "воля Маґні", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Magni's Will, @equip Improves your chance to get a critical strike by 1%.
[12558] = { "намисто з синього пір'я" }, -- Blue-feathered Necklace
[12562] = { "важливі папери Чорнокаменю" }, -- Important Blackrock Documents
[12564] = { "план вбивства" }, -- Assassination Note
[12565] = { "переноска з кошеням Вінни", use="Випустити кошеня біля оскверненого місячного колодязя нефритожарих сатирів." }, -- Winna's Kitten Carrier, @use Release the kitten near the Jadefire Satyrs' corrupted moonwell.
[12566] = { "загартована колба", use="Наповнити з оскверненого місячного колодязя нефритожарих сатирів." }, -- Hardened Flasket, @use Fill at the Jadefire Satyrs' corrupted moonwell.
[12567] = { "наповнена колба" }, -- Filled Flasket
[12607] = { "блискуча хроматична луска" }, -- Brilliant Chromatic Scale
[12618] = { "зачарована торієва кіраса", equip="Збільшує навичку захисту на 9." }, -- Enchanted Thorium Breastplate, @equip Increased Defense +9.
[12619] = { "зачаровані торієві поножі", equip="Збільшує навичку захисту на 8." }, -- Enchanted Thorium Leggings, @equip Increased Defense +8.
[12620] = { "зачарований торієвий шолом", equip="Збільшує навичку захисту на 9." }, -- Enchanted Thorium Helm, @equip Increased Defense +9.
[12622] = { "м'ясо щербозуба" }, -- Shardtooth Meat
[12623] = { "м'ясо студовія" }, -- Chillwind Meat
[12627] = { "часовий переміщувач", use="Виявити часових паразитів біля елеваторів в Андоралі. (Відновлення 1 хв)" }, -- Temporal Displacer, @use Reveal temporal parasites near grain silos in Andorhal. (1 Min Cooldown)
[12628] = { "демонокована кіраса", equip="Шанс витягти з ворога 120 здоров'я протягом 4 сек при отриманні удару в бою. (Імовірність: 3%)" }, -- Demon Forged Breastplate, @equip When struck has a 3% chance of stealing 120 life from the attacker over 4 sec. (Proc chance: 3%)
[12630] = { "голова Ренда Чорнорука", flavor="Огидна, кривава і брудна." }, -- Head of Rend Blackhand, @flavor Sickening, bloody, foulness.
[12631] = { "вогняні латні рукавиці", equip="Додає 4 шкоди від вогню до ваших атак зброєю." }, -- Fiery Plate Gauntlets, @equip Adds 4 fire damage to your weapon attack.
[12635] = { "простий пергамент" }, -- Simple Parchment
[12638] = { "годинник Андорала", flavor="Стрілки цього годинника завмерли на 3:00." }, -- Andorhal Watch, @flavor The hands of this watch are frozen at 3:00.
[12642] = { "очищена сфера пекельника" }, -- Cleansed Infernal Orb
[12643] = { "масивне грузило", use="Збільшує шкоду дробильної зброї на 8 на 30 хвилин." }, -- Dense Weightstone, @use Increase the damage of a blunt weapon by 8 for 30 minutes.
[12644] = { "масивний шліфувальний камінь" }, -- Dense Grinding Stone
[12646] = { "пекельний смарагд", use="Захоплює дух пекельника для використання у створенні кулі чорнокнижника." }, -- Infus Emerald, @use Captures the spirit of an Infernal to be used in the creation of a warlockian orb.
[12647] = { "рубін сквернолова", use="Захоплює дух сквернопса для використання у створенні кулі чорнокнижника." }, -- Felhas Ruby, @use Captures the spirit of a Felhound to be used in the creation of a warlockian orb.
[12648] = { "ув'язнений дух сквернопса" }, -- Imprisoned Felhound Spirit
[12649] = { "ув'язнений дух пекельника" }, -- Imprisoned Infernal Spirit
[12650] = { "налаштований гаситель", use="Завдає від 525 до 675 арканічної шкоди обраній цілі та зменшує шкоду від неї на 25%. (Відновлення 1 хв)", flavor="Був створений для того, щоб вразити конкретну ціль." }, -- Attuned Dampener, @use Inflict 525 to 675 arcane damage on the attuned target, and lower the damage it deals by 25%. (1 Min Cooldown), @flavor This object has been attuned to work against a specific being.
[12652] = { "розвіддані Блискітки", flavor="АБСОЛЮТНО ТАЄМНО" }, -- Bijou's Reconnaissance Report, @flavor TOP SECRET
[12655] = { "зачарований злиток торію" }, -- Enchanted Thorium Bar
[12663] = { "покрита письменами дубова гілка", flavor="Гілка вкрита письменами друїдів." }, -- Glyphed Oaken Branch, @flavor Glyphs of a druidic nature adorn the branch.
[12683] = { "креслення: Торієвий пояс", use="Навчає вас створювати торієвий пояс.", recipe_result_item=12406 }, -- Plans: Thorium Belt, @use Teaches you how to make a Thorium Belt.
[12687] = { "креслення: Імперські латні наплічники", use="Навчає вас створювати імперські латні наплічники." }, -- Plans: Imperial Plate Shoulders, @use Teaches you how to make Imperial Plate Shoulders.
[12688] = { "креслення: Імперський латний пояс", use="Навчає вас створювати імперський латний пояс." }, -- Plans: Imperial Plate Belt, @use Teaches you how to make Imperial Plate Belt.
[12690] = { "креслення: Імперські латні браслети", use="Навчає вас створювати імперські латні браслети." }, -- Plans: Imperial Plate Bracers, @use Teaches you how to make Imperial Plate Bracers.
[12696] = { "креслення: Демонокована кіраса", use="Навчає вас створювати демоноковану кірасу." }, -- Plans: Demon Forged Breastplate, @use Teaches you how to make a Demon Forged Breastplate.
[12699] = { "креслення: Вогняні латні рукавиці", use="Навчає вас створювати вогняні латні рукавиці." }, -- Plans: Fiery Plate Gauntlets, @use Teaches you how to make Fiery Plate Gaunlets.
[12700] = { "креслення: Імперські латні чоботи", use="Навчає вас створювати імперські латні чоботи." }, -- Plans: Imperial Plate Boots, @use Teaches you how to make Imperial Plate Boots.
[12701] = { "креслення: Імперський латний шолом", use="Навчає вас створювати імперський латний шолом." }, -- Plans: Imperial Plate Helm, @use Teaches you how to make an Imperial Plate Helm.
[12705] = { "креслення: Імперська латна кіраса", use="Навчає вас створювати імперську латну кірасу." }, -- Plans: Imperial Plate Chest, @use Teaches you how to make an Imperial Plate Chest.
[12708] = { "ящики з припасами для Перехрестя" }, -- Crossroads' Supply Crates
[12710] = { "сяючий шматок плоті Звіра", flavor="Він світиться!" }, -- Glowing Hunk of the Beast's Flesh, @flavor It Glows!
[12712] = { "талісман Вароша" }, -- Warosh's Mojo
[12715] = { "креслення: Імперські латні поножі", use="Навчає вас створювати імперські латні поножі." }, -- Plans: Imperial Plate Leggings, @use Teaches you how to make Imperial Plate Leggings.
[12721] = { "половина оберега доброї вдачі" }, -- Good Luck Half-Charm
[12722] = { "інша половина оберега доброї вдачі", use="З'єднати дві половини оберега доброї вдачі." }, -- Good Luck Other-Half-Charm, @use Combine the Good Luck Half-Charm with the Good Luck Other-Half-Charm.
[12723] = { "оберіг доброї вдачі" }, -- Good Luck Charm
[12724] = { "пакунок Дженіс" }, -- Janice's Parcel
[12725] = { "креслення: Зачарований торієвий шолом", use="Навчає вас створювати зачарований торієвий шолом." }, -- Plans: Enchanted Thorium Helm, @use Teaches you how to make Enchanted Thorium Helm.
[12726] = { "креслення: Зачаровані торієві поножі", use="Навчає вас створювати зачаровані торієві поножі." }, -- Plans: Enchanted Thorium Leggings, @use Teaches you how to make Enchanted Thorium Leggings.
[12727] = { "креслення: Зачарована торієва кіраса", use="Навчає вас створювати зачаровану торієву кірасу." }, -- Plans: Enchanted Thorium Breastplate, @use Teaches you how to make an Enchanted Thorium Breastplate.
[12730] = { "сувій Вароша" }, -- Warosh's Scroll
[12731] = { "бездоганна шкура Звіра" }, -- Pristine Hide of the Beast
[12732] = { "вогниста агава" }, -- Incendia Agave
[12733] = { "священне м'ясо кригозуба", use="Розмістити на камені Ши-Ротам." }, -- Sacred Frostsaber Meat, @use Place at the Stone of Shy-Rotam.
[12734] = { "зачарована багряна нитка" }, -- Enchanted Scarlet Thread
[12735] = { "зотлілий стібок потвори" }, -- Frayed Abomination Stitching
[12736] = { "бальзамувальна рідина Кригошепта" }, -- Frostwhisper's Embalming Fluid
[12737] = { "бур'ян мороку" }, -- Gloom Weed
[12738] = { "ключ від вбиральні Дальсона" }, -- Dalson Outhouse Key
[12739] = { "ключ від шафи Дальсона" }, -- Dalson Cabinet Key
[12740] = { "п'ята скрижаль Мош'ару" }, -- Fifth Mosh'aru Tablet
[12741] = { "шоста скрижаль Мош'ару" }, -- Sixth Mosh'aru Tablet
[12752] = { "капелюх багряного вченого", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 2%." }, -- Cap of the Scarlet Savant, @equip Improves your chance to get a critical strike with spells by 2%.
[12753] = { "шкіра тіні" }, -- Skin of Shadow
[12756] = { "поножі Аркани", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18." }, -- Leggings of Arcana, @equip Increases damage and healing done by magical spells and effects by up to 18.
[12757] = { "кіраса кровожерливості", equip={ "Збільшує ваш шанс нанесення критичного удару на 2%.", "Збільшує ваш шанс ухилитися від атаки на 1%." } }, -- Breastplate of Bloodthirst, @equip Improves your chance to get a critical strike by 2%., @equip Increases your chance to dodge an attack by 1%.
[12765] = { "таємна записка №1" }, -- Secret Note #1
[12766] = { "таємна записка №2" }, -- Secret Note #2
[12768] = { "таємна записка №3" }, -- Secret Note #3
[12770] = { "інформація Блискітки" }, -- Bijou's Information
[12771] = { "порожня фляжка з-під огневиці" }, -- Empty Firewater Flask
[12774] = { "Вістря Світанку", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Dawn's Edge, @equip Improves your chance to get a critical strike by 1%.
[12775] = { "величезна торієва бойова сокира", equip="Збільшує навичку володіння дворучними сокирами на 10." }, -- Huge Thorium Battleaxe, @equip Increased Two-handed Axes +10.
[12776] = { "зачарований бойовий молот", equip={ "Збільшує ваш шанс парирування атаки на 1%.", "Збільшує ваш шанс нанесення удару на 2%." } }, -- Enchanted Battlehammer, @equip Increases your chance to parry an attack by 1%., @equip Improves your chance to hit by 2%.
[12777] = { "палаюча рапіра", hit="Шанс підпалити ворога та нанести йому 100 шкоди протягом 30 сек." }, -- Blazing Rapier, @hit Burns the enemy for 100 damage over 30 sec.
[12780] = { "наказ генерала Драккісата" }, -- General Drakkisath's Command
[12781] = { "Безтурботність", hit="Розсіює один магічний ефект з цілі." }, -- Serenity, @hit Dispels a magic effect on the current foe.
[12782] = { "Порча" }, -- Corruption
[12785] = { "вогнистий порошок", use="Підкинути вогнистий порошок у священний вогонь життя." }, -- Incendia Powder, @use Toss the Incendia Powder into the sacred fire of life.
[12792] = { "вулканічний молот", hit="Кидає вогняну кулю, яка завдає від 100 до 128 шкоди від вогню і додатково 18 шкоди за 6 сек." }, -- Volcanic Hammer, @hit Hurls a fiery ball that causes 100 to 128 Fire damage and an additional 18 damage over 6 sec.
[12799] = { "великий опал" }, -- Large Opal
[12800] = { "азеротський діамант" }, -- Azerothian Diamond
[12803] = { "жива сутність" }, -- Living Essence
[12804] = { "потужне моджо" }, -- Powerful Mojo
[12806] = { "прототип рунічного нагрудника", flavor="Вкритий демонічними рунами." }, -- Unforged Rune Covered Breastplate, @flavor Covered in demonic runes.
[12807] = { "стяг Скари", use="Розмістити стяг Скари посеред табору Багряного Походу в Західних Зачумлених землях." }, -- Scourge Banner, @use Plant the Scourge banner at the Scarlet Crusade's forward base camp in the Western Plaguelands.
[12808] = { "сутність невмерлості" }, -- Essence of Undeath
[12809] = { "охоронний камінь" }, -- Guardian Stone
[12810] = { "зачарована шкіра" }, -- Enchanted Leather
[12811] = { "сфера праведності" }, -- Righteous Orb
[12812] = { "неопалені латні рукавиці" }, -- Unfired Plate Gauntlets
[12813] = { "фляжка таємничого слизу" }, -- Flask of Mystery Goo
[12814] = { "пляшка з полум'ям", flavor="Достатньо, щоб підпалити великий намет!" }, -- Flame in a Bottle, @flavor It's got enough juice to set a large tent on fire!
[12815] = { "сигнальний смолоскип", use="Розмістити у дверному отворі вежі Андорала, щоб помітити її. (Відновлення 2 хв)" }, -- Beacon Torch, @use Place in the doorway at one of Andorhal's ruined towers as a magical marker for future troop movement. (2 Min Cooldown)
[12820] = { "огневиця Зимокрайових", use="Збільшує вашу силу атаки ближнього бою на {1} та розмір на {2} хв. (Відновлення 2 хв)#by {1} and size for {2} min" }, -- Winterfall Firewater, @use Increases your melee attack power by 35 and size for 20 min. (1 Min Cooldown)
[12821] = { "креслення: Вістря Світанку", use="Навчає вас створювати Вістря Світанку." }, -- Plans: Dawn's Edge, @use Teaches you how to make Dawn's Edge.
[12822] = { "крапля токсичного страховища" }, -- Toxic Horror Droplet
[12824] = { "креслення: Зачарований бойовий молот", use="Навчає вас створювати зачарований бойовий молот." }, -- Plans: Enchanted Battlehammer, @use Teaches you how to make an Enchanted Battlehammer.
[12825] = { "креслення: Палаюча рапіра", use="Навчає вас створювати палаючу рапіру." }, -- Plans: Blazing Rapier, @use Teaches you how to make a Blazing Rapier.
[12827] = { "креслення: Безтурботність", use="Навчає вас створювати Безтурботність." }, -- Plans: Serenity, @use Teaches you how to make Serenity.
[12829] = { "ящик Зимокрайових" }, -- Winterfall Crate
[12830] = { "креслення: Порча", use="Навчає вас створювати Порчу." }, -- Plans: Corruption, @use Teaches you how to make Corruption.
[12840] = { "камінь посіпаки Скари" }, -- Minion's Scourgestone
[12841] = { "камінь загарбника Скари" }, -- Invader's Scourgestone
[12842] = { "грубо написаний журнал" }, -- Crudely-written Log
[12843] = { "камінь осквернителя Скари" }, -- Corruptor's Scourgestone
[12844] = { "знак доблесті Сріблястого Світанку", use="Збільшення вашої репутації у Срібного Світанку. (Відновлення 2 сек)" }, -- Argent Dawn Valor Token, @use Increase your reputation permanently with the Argent Dawn. (2 Sec Cooldown)
[12845] = { "медальйон віри" }, -- Medallion of Faith
[12846] = { "жетон Сріблястого Світанку", flavor="Носіння цього жетона є свідченням служіння Сріблястому Світанку." }, -- Argent Dawn Commission, @flavor Equipping this badge is an indication of service to the Argent Dawn.
[12847] = { "наповнена душею піка" }, -- Soul Stained Pike
[12848] = { "закривавлена піка", use="Забрати обіцяну душу.", flavor="Піка пульсує енергією скверни." }, -- Blood Stained Pike, @use Claim the promised soul., @flavor Fel energies pulse across the pike.
[12849] = { "поцілована демоном сумка" }, -- Demon Kissed Sack
[12871] = { "хроматичний панцир" }, -- Chromatic Carapace
[12884] = { "копито Арнака" }, -- Arnak's Hoof
[12885] = { "лялька Памели" }, -- Pamela's Doll
[12886] = { "голова ляльки Памели", use="З'єднати частини в одне ціле." }, -- Pamela's Doll's Head, @use Attach the pieces into a whole.
[12887] = { "ліва частина ляльки Памели", use="З'єднати частини в одне ціле." }, -- Pamela's Doll's Left Side, @use Attach the pieces into a whole.
[12888] = { "права частина ляльки Памели", use="З'єднати частини в одне ціле." }, -- Pamela's Doll's Right Side, @use Attach the pieces into a whole.
[12891] = { "кирка Жарона", use="Добути фрагменти реліквії високородних." }, -- Jaron's Pick, @use Recover Highborne Relic Fragments.
[12894] = { "обручка Джозефа" }, -- Joseph's Wedding Ring
[12895] = { "кіраса хроматичного крила" }, -- Breastplate of the Chromatic Flight
[12896] = { "перший фрагмент реліквії" }, -- First Relic Fragment
[12897] = { "другий фрагмент реліквії" }, -- Second Relic Fragment
[12898] = { "третій фрагмент реліквії" }, -- Third Relic Fragment
[12899] = { "четвертий фрагмент реліквії" }, -- Fourth Relic Fragment
[12900] = { "літопис Дарроушира" }, -- Annals of Darrowshire
[12903] = { "поножі хроматичного воїна" }, -- Legguards of the Chromatic Defier
[12906] = { "очищена вода місячного колодязя", use="Загасити полум'я жаровень в Джеденарі та розсіяти їхню захисну магію." }, -- Purified Moonwell Water, @use Douses the flames off the braziers found within Jaedenar and dispels their protective magic.
[12907] = { "заражена вода місячного колодязя" }, -- Corrupt Moonwell Water
[12922] = { "порожня фляга", use="Наповнити водою з місячного колодязя Джеденара." }, -- Empty Canteen, @use This container should be filled with water from the corrupt moon well in Jaedenar.
[12923] = { "луска Авбі" }, -- Awbee's Scale
[12924] = { "ритуальна свічка", flavor="Ритуальна свічка з глибин Джеденара, нового дому Тіньової Ради." }, -- Ritual Candle, @flavor A ritual candle from the depths of Jaedenar, new home of the Shadow Council.
[12925] = { "зміїна шкіра Арікари" }, -- Arikara Serpent Skin
[12928] = { "механічний єті Умі", use="Виберіть друзів Умі та випустіть механічного єті. (Відновлення 30 сек)" }, -- Umi's Mechanical Yeti, @use Select Umi's friend and click to release the Mechanical Yeti. (30 Sec Cooldown)
[12938] = { "кров героїв" }, -- Blood of Heroes
[12942] = { "ключ від клітки пантери", use="Відкрити клітку пантери." }, -- Panther Cage Key, @use Opens Panther Cage
[12945] = { "ножні лати хроматичного воїна" }, -- Legplates of the Chromatic Defier
[12946] = { "гіперконденсатор" }, -- Hypercapacitor Gizmo
[12954] = { "манускрипт Дейвіла" }, -- Davil's Libram
[12955] = { "щит Редпата" }, -- Redpath's Shield
[12956] = { "череп Горґуса" }, -- Skull of Horgus
[12957] = { "розбитий меч Мардука" }, -- Shattered Sword of Marduk
[12958] = { "рецепт: Трансмутація арканіту", use="Навчає вас перетворювати торій та арканічні кристали на арканіт." }, -- Recipe: Transmute Arcanite, @use Teaches you how to transmute Thorium and Arcane Crystals into Arcanite.
[13086] = { "поводи кригозуба Зимоключа", use="Викликає та відпускає верхового кригозуба Зимоключа. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Reins of the Winterspring Frostsaber, @use Summons and dismisses a rideable Winterspring Frostsaber.  This is a very fast mount. (3 Sec Cooldown)
[13140] = { "криваво-червоний ключ", flavor="Схоже, що це ключ від невеликого замка." }, -- Blood Red Key, @flavor The key looks tiny enough to fit a small lock.
[13155] = { "резонівний череп" }, -- Resonating Skull
[13156] = { "загадковий кристал", use="Піднести до сморідного черепа, щоб перевірити його на резонанс." }, -- Mystic Crystal, @use Wave over a Fetid skull to test its resonance.
[13157] = { "сморідний череп" }, -- Fetid Skull
[13158] = { "слова верховного вождя" }, -- Words of the High Chief
[13171] = { "запальничка Димня", use="Завдає 125 шкоди від вогню всім цілям перед вами. (Відновлення 5 хв)" }, -- Smokey's Lighter, @use Deals 125 Fire damage to all targets in a cone in front of the caster. (5 Min Cooldown)
[13172] = { "преміальний тютюн Ґрімма", flavor="Відмічено знаком Езри Ґрімма." }, -- Grimm's Premium Tobacco, @flavor Bears the mark of Ezra Grimm.
[13174] = { "зразок зачумленої плоті" }, -- Plagued Flesh Sample
[13176] = { "дані про Скару" }, -- Scourge Data
[13180] = { "стратгольмська свята вода", use="Завдає від 438 до 562 шкоди невмерлим в радіусі 10 м. (Відновлення 1 хв)", flavor="Всього 1 калорія." }, -- Stratholme Holy Water, @use Inflicts between 438 and 562 damage to Undead in a 10 yard radius. (1 Min Cooldown), @flavor Just 1 calorie.
[13186] = { "порожня пляшка для зразків зі Сквернокам'яного поля" }, -- Empty Felstone Field Bottle
[13187] = { "порожня пляшка для зразків зі Сліз Дальсона" }, -- Empty Dalson's Tears Bottle
[13188] = { "порожня пляшка для зразків з Крученого Привида" }, -- Empty Writhing Haunt Bottle
[13189] = { "порожня пляшка для зразків з Посухи Ґаррона" }, -- Empty Gahrron's Withering Bottle
[13190] = { "пляшка зразків зі Сквернокам'яного поля" }, -- Filled Felstone Field Bottle
[13191] = { "пляшка зразків зі Сліз Дальсона" }, -- Filled Dalson's Tears Bottle
[13192] = { "пляшка зразків з Крученого Привида" }, -- Filled Writhing Haunt Bottle
[13193] = { "пляшка зразків з Посухи Ґаррона" }, -- Filled Gahrron's Withering Bottle
[13194] = { "ключ від котла Сквернокам'яного поля" }, -- Felstone Field Cauldron Key
[13195] = { "ключ від котла Сліз Дальсона" }, -- Dalson's Tears Cauldron Key
[13196] = { "ключ від котла Посухи Ґаррона" }, -- Gahrron's Withering Cauldron Key
[13197] = { "ключ від котла Крученого Привида" }, -- Writhing Haunt Cauldron Key
[13202] = { "доповнений літопис Дарроушира" }, -- Extended Annals of Darrowshire
[13207] = { "голова лорда тіней Фел'дана", flavor="Це голова лідера Тіньової Ради в Скверноліссі." }, -- Shadow Lord Fel'dan's Head, @flavor This is the head of the leader of the Shadow Council in Felwood.
[13209] = { "печатка Світанку", equip="Збільшує силу атаки на 81 в бою з невмерлими. Також дозволяє отримувати камені Скари для Сріблястого Світанку." }, -- Seal of the Dawn, @equip +81 Attack Power when fighting Undead.  It also allows the acquisition of Scourgestones on behalf of the Argent Dawn.
[13213] = { "око Жевріючої Павутини", hit="Отруює ціль, завдаючи 20 шкоди від природи кожні 2 сек протягом 20 сек. (Відновлення 2 хв)" }, -- Smolderweb's Eye, @use Poisons target for 20 Nature damage every 2 sec for 20 sec. (2 Min Cooldown)
[13216] = { "корона розкаяння", equip="Відновлює 6 мани кожні 5 сек." }, -- Crown of the Penitent, @equip Restores 6 mana per 5 sec.
[13217] = { "перстень розкаяння", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Band of the Penitent, @equip Improves your chance to get a critical strike by 1%.
[13243] = { "cріблястий захисник", equip="Імовірнсть збільшити шанс блокування атак щитом на 50% протягом 10 сек при отриманні удару в бою. (Імовірність: 1%)" }, -- Argent Defender, @equip Has a 1% chance when struck in combat of increasing chance to block by 50% for 10 sec. (Proc chance: 1%)
[13246] = { "cріблястий месник", hit="Збільшує силу атаки в бою з невмерлими на 200 протягом 10 сек." }, -- Argent Avenger, @hit Increases Attack Power against Undead by 200 for 10 sec.
[13249] = { "cріблястий лицар" }, -- Argent Crusader
[13250] = { "голова Бальназара" }, -- Head of Balnazzar
[13251] = { "голова барона Рівендера" }, -- Head of Baron Rivendare
[13289] = { "рушниця Іґана", use="Вистрілити в примарних та спектральних жителів, щоб звільнити їхні душі." }, -- Egan's Blaster, @use Use to free Spectral and Ghostly Citizens.
[13310] = { "креслення: Точний приціл", use="Навчає вас створювати точний приціл." }, -- Schematic: Accurate Scope, @use Teaches you how to make an Accurate Scope.
[13313] = { "священні писання високородних", flavor="Сторінки пошарпані та порвані..." }, -- Sacred Highborne Writings, @flavor The pages are tattered and worn...
[13315] = { "заповіт надії", use="Відновлює 500 здоров'я. Можна використати лише при 10% здоров'я. (Відновлення 30 хв)" }, -- Testament of Hope, @use Restores 500 health. Can only be used at 10% health. (30 Min Cooldown)
[13317] = { "свисток кремового раптора", use="Викликає та відпускає верхового раптора. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Whistle of the Ivory Raptor, @use Summons and dismisses a rideable Raptor.  This is a very fast mount. (3 Sec Cooldown)
[13320] = { "арканічний прискорювач", flavor="Використовується як каталізатор для перетворення токсинів в котлах Скари." }, -- Arcane Quickener, @flavor This is used as a catalyst in transforming the toxins of the Scourge's cauldrons.
[13321] = { "зелений механобіг", use="Викликає та відпускає верхового механічного довгобіга. (Відновлення 3 сек)" }, -- Green Mechanostrider, @use Summons and dismisses a rideable mechanical tallstrider. (3 Sec Cooldown)
[13322] = { "нефарбований механобіг", use="Викликає та відпускає верхового механічного довгобіга. (Відновлення 3 сек)" }, -- Unpainted Mechanostrider, @use Summons and dismisses a rideable mechanical tallstrider. (3 Sec Cooldown)
[13323] = { "пурпуровий механобіг", use="Викликає та відпускає верхового механічного довгобіга. (Відновлення 3 сек)" }, -- Purple Mechanostrider, @use Summons and dismisses a rideable mechanical tallstrider. (3 Sec Cooldown)
[13324] = { "червоно-синій механобіг", use="Викликає та відпускає верхового механічного довгобіга. (Відновлення 3 сек)" }, -- Red & Blue Mechanostrider, @use Summons and dismisses a rideable mechanical tallstrider. (3 Sec Cooldown)
[13325] = { "флуоресцентний зелений механобіг", use="Викликає та відпускає верхового механічного довгобіга. (Відновлення 3 сек)" }, -- Fluorescent Green Mechanostrider, @use Summons and dismisses a rideable mechanical tallstrider. (3 Sec Cooldown)
[13326] = { "білий механобіг, модель А", use="Викликає та відпускає верхового механічного довгобіга. Це дуже швидкий засіб пересування. (Відновлення 3 сек)" }, -- White Mechanostrider Mod A, @use Summons and dismisses a rideable mechanical tallstrider.   This is a very fast mount. (3 Sec Cooldown)
[13327] = { "крижано-блакитний механобіг, модель А", use="Викликає та відпускає верхового механічного довгобіга. Це дуже швидкий засіб пересування. (Відновлення 3 сек)" }, -- Icy Blue Mechanostrider Mod A, @use Summons and dismisses a rideable mechanical tallstrider.   This is a very fast mount. (3 Sec Cooldown)
[13328] = { "чорний баран", use="Викликає та відпускає верхового чорного барана. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Black Ram, @use Summons and dismisses a rideable black ram.  This is a very fast mount. (3 Sec Cooldown)
[13329] = { "морозний баран", use="Викликає та відпускає верхового морозного барана. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Frost Ram, @use Summons and dismisses a rideable frost ram.  This is a very fast mount. (3 Sec Cooldown)
[13331] = { "червоний кінь-скелет", use="Викликає та відпускає верхового коня-скелета. (Відновлення 3 сек)" }, -- Red Skeletal Horse, @use Summons and dismisses a rideable skeletal horse. (3 Sec Cooldown)
[13332] = { "блакитний кінь-скелет", use="Викликає та відпускає верхового коня-скелета. (Відновлення 3 сек)" }, -- Blue Skeletal Horse, @use Summons and dismisses a rideable skeletal horse. (3 Sec Cooldown)
[13333] = { "коричневий кінь-скелет", use="Викликає та відпускає верхового коня-скелета. (Відновлення 3 сек)" }, -- Brown Skeletal Horse, @use Summons and dismisses a rideable skeletal horse. (3 Sec Cooldown)
[13334] = { "зелений бойовий кінь-скелет", use="Викликає та відпускає верхового бойового коня-скелета. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Green Skeletal Warhorse, @use Summons and dismisses a rideable skeletal warhorse.  This is a very fast mount. (3 Sec Cooldown)
[13347] = { "кристал Зін-Малора", equip="Завдає шкоди та випалює від 100 до 500 мани, якщо ви не гідні." }, -- Crystal of Zin-Malor, @equip Deals damage and drains 100 to 500 mana every second if you are not worthy.
[13350] = { "знак Чорної Варти" }, -- Insignia of the Black Guard
[13351] = { "фартух багряного коваля молотів" }, -- Crimson Hammersmith's Apron
[13352] = { "змієкамінь Вош'ґаджин" }, -- Vosh'gajin's Snakestone
[13354] = { "ектоплазматичний резонатор" }, -- Ectoplasmic Resonator
[13356] = { "соматичний підсилювач" }, -- Somatic Intensifier
[13357] = { "кістяний каталізатор" }, -- Osseous Agitator
[13422] = { "камнелуский вугор" }, -- Stonescale Eel
[13423] = { "олія камнелуского вугра" }, -- Stonescale Oil
[13442] = { "потужне зілля люті", use="Збільшує лють на {1}-{2} та збільшує силу на {3} на {4} с. (Відновлення 2 хв)#Rage by {1} to {2}#Strength by {3} for {4} sec" }, -- Mighty Rage Potion, @use Increases Rage by 45 to 75 and increases Strength by 60 for 20 sec. (2 Min Cooldown)
[13443] = { "відмінне зілля мани", ref=2455 }, -- Superior Mana Potion
[13444] = { "величезне зілля мани", ref=2455 }, -- Major Mana Potion
[13445] = { "еліксир потужного захисту", ref=5997 }, -- Elixir of Superior Defense
[13446] = { "величезне зілля лікування", ref=118 }, -- Major Healing Potion
[13447] = { "еліксир мудреців", use="Збільшує інтелект і дух на {1} на {2} год. (Відновлення 3 сек)#by {1} for {2} h" }, -- Elixir of the Sages, @use Increases Intellect and Spirit by 18 for 1 hour. (3 Sec Cooldown)
[13448] = { "документи на Тверджу Дарроу", flavor="Відмічено печаткою Барових." }, -- The Deed to Caer Darrow, @flavor Carries the Seal of Barov.
[13450] = { "документи на Південнобережжя", flavor="Відмічено печаткою Барових." }, -- The Deed to Southshore, @flavor Carries the Seal of Barov.
[13451] = { "документи на Тарренський Млин", flavor="Відмічено печаткою Барових." }, -- The Deed to Tarren Mill, @flavor Carries the Seal of Barov.
[13452] = { "еліксир мангусти", use="Збільшує спритність на {1} та ймовірність нанесення критичного удару на {2}% на {3} год. (Відновлення 3 сек)#Agility by {1}#by {2}% for {3} h" }, -- Elixir of the Mongoose, @use Increases Agility by 25 and chance to get a critical hit by 2% for 1 hour. (3 Sec Cooldown)
[13453] = { "еліксир грубої сили", use="Збільшує силу та витривалість на {1} на {2} год. (Відновлення 3 сек)#by {1} for {2} h" }, -- Elixir of Brute Force, @use Increases Strength and Stamina by 18 for 1 hour. (3 Sec Cooldown)
[13454] = { "великий арканічний еліксир", use="Збільшує шкоду від заклинань на {1} на {2} год. (Відновлення 3 сек)#by up to {1} for {2} h" }, -- Greater Arcane Elixir, @use Increases spell damage by up to 35 for 1 hour. (3 Sec Cooldown)
[13455] = { "велике зілля каменещита", use="Збільшує броню на {1} на 2 хв. (Відновлення 2 хв)#armor by {1}" }, -- Greater Stoneshield Potion, @use Increases armor by 2000 for 2 min. (2 Min Cooldown)
[13456] = { "велике зілля крижаного захисту", use="Поглинає від {1} до {2} шкоди від криги. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Frost Protection Potion, @use Absorbs 1950 to 3250 frost damage.  Lasts 1 hour. (2 Min Cooldown)
[13457] = { "велике зілля вогняного захисту", use="Поглинає від {1} до {2} шкоди від вогню. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Fire Protection Potion, @use Absorbs 1950 to 3250 fire damage.  Lasts 1 hour. (2 Min Cooldown)
[13458] = { "велике зілля природного захисту", use="Поглинає від {1} до {2} шкоди від природи. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Nature Protection Potion, @use Absorbs 1950 to 3250 nature damage.  Lasts 1 hour. (2 Min Cooldown)
[13459] = { "велике зілля тіньового захисту", use="Поглинає від {1} до {2} шкоди від тіні. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Shadow Protection Potion, @use Absorbs 1950 to 3250 shadow damage.  Lasts 1 hour. (2 Min Cooldown)
[13460] = { "велике зілля священного захисту", use="Поглинає від {1} до {2} шкоди від священності. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Holy Protection Potion, @use Absorbs 1950 to 3250 holy damage.  Lasts 1 hour. (2 Min Cooldown)
[13461] = { "велике зілля арканічного захисту", use="Поглинає від {1} до {2} шкоди від аркани. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Arcane Protection Potion, @use Absorbs 1950 to 3250 arcane damage.  Lasts 1 hour. (2 Min Cooldown)
[13462] = { "зілля очищення", use="Намагається зняти одне прокляття, одну хворобу та одну отруту." }, -- Purification Potion, @use Attempts to remove one Curse, one Disease and one Poison from the Imbiber. (2 Min Cooldown)
[13463] = { "снолистя" }, -- Dreamfoil
[13464] = { "золотий сансам" }, -- Golden Sansam
[13465] = { "гірська срібномудриця" }, -- Mountain Silversage
[13466] = { "чумоцвіт" }, -- Plaguebloom
[13467] = { "льодошапка" }, -- Icecap
[13468] = { "чорний лотос" }, -- Black Lotus
[13469] = { "голова Велдона Барова" }, -- Head of Weldon Barov
[13470] = { "голова Алексія Барова" }, -- Head of Alexi Barov
[13471] = { "документи на Брілль", flavor="Відмічено печаткою Барових." }, -- The Deed to Brill, @flavor Carries the Seal of Barov.
[13473] = { "оберіг доброї вдачі Сквернокаменів" }, -- Felstone Good Luck Charm
[13474] = { "рушниця фермера Дальсона" }, -- Farmer Dalson's Shotgun
[13475] = { "фамільна обручка Дальсона" }, -- Dalson Family Wedding Ring
[13476] = { "рецепт: Потужне зілля люті", use="Навчає вас створювати потужне зілля люті." }, -- Recipe: Mighty Rage Potion, @use Teaches you how to make a Mighty Rage Potion.
[13477] = { "рецепт: Відмінне зілля мани", use="Навчає вас створювати відмінне зілля мани." }, -- Recipe: Superior Mana Potion, @use Teaches you how to make a Superior Mana Potion.
[13478] = { "рецепт: Еліксир потужного захисту", use="Навчає вас створювати еліксир потужного захисту." }, -- Recipe: Elixir of Superior Defense, @use Teaches you how to make an Elixir of Superior Defense.
[13479] = { "рецепт: Еліксир мудреців", use="Навчає вас створювати еліксир мудреців." }, -- Recipe: Elixir of the Sages, @use Teaches you how to make an Elixir of the Sages.
[13480] = { "рецепт: Величезне зілля лікування", use="Навчає вас створювати величезне зілля лікування." }, -- Recipe: Major Healing Potion, @use Teaches you how to make a Major Healing Potion.
[13481] = { "рецепт: Еліксир грубої сили", use="Навчає вас створювати еліксир грубої сили." }, -- Recipe: Elixir of Brute Force, @use Teaches you how to make an Elixir of Brute Force.
[13482] = { "рецепт: Трансмутація повітря у вогонь", use="Навчає вас перетворювати сутність повітря на сутність вогню." }, -- Recipe: Transmute Air to Fire, @use Teaches you how to transmute Essence of Air into Essence of Fire.
[13483] = { "рецепт: Трансмутація вогню у землю", use="Навчає вас перетворювати сутність вогню на сутність землі." }, -- Recipe: Transmute Fire to Earth, @use Teaches you how to transmute Essence of Fire into Essence of Earth.
[13484] = { "рецепт: Трансмутація землі у воду", use="Навчає вас перетворювати сутність землі на сутність води." }, -- Recipe: Transmute Earth to Water, @use Teaches you how to transmute Essence of Earth into Essence of Water.
[13485] = { "рецепт: Трансмутація води в повітря", use="Навчає вас перетворювати сутність води на сутність повітря." }, -- Recipe: Transmute Water to Air, @use Teaches you how to transmute Essence of Water into Essence of Air.
[13486] = { "рецепт: Трансмутація невмерлості у воду", use="Навчає вас перетворювати сутність невмерлості на сутність води." }, -- Recipe: Transmute Undeath to Water, @use Teaches you how to transmute Essence of Undeath into Essence of Water.
[13487] = { "рецепт: Трансмутація води у невмерлість", use="Навчає вас перетворювати сутність води на сутність невмерлості." }, -- Recipe: Transmute Water to Undeath, @use Teaches you how to transmute Essence of Water into Essence of Undeath.
[13488] = { "рецепт: Трансмутація життя у землю", use="Навчає вас перетворювати живу сутність на сутність землі." }, -- Recipe: Transmute Life to Earth, @use Teaches you how to transmute Living Essence into Essence of Earth.
[13489] = { "рецепт: Трансмутація землі у життя", use="Навчає вас перетворювати сутність землі на живу сутність." }, -- Recipe: Transmute Earth to Life, @use Teaches you how to transmute Essence of Earth into Living Essence.
[13490] = { "рецепт: Велике зілля каменещита", use="Навчає вас створювати велике зілля каменещита." }, -- Recipe: Greater Stoneshield Potion, @use Teaches you how to make a Greater Stoneshield Potion.
[13491] = { "Рецепт: Еліксир мангусти", use="Навчає вас створювати еліксир мангусти." }, -- Recipe: Elixir of the Mongoose, @use Teaches you how to make an Elixir of the Mongoose.
[13493] = { "рецепт: Великий арканічний еліксир", use="Навчає вас створювати великий арканічний еліксир." }, -- Recipe: Greater Arcane Elixir, @use Teaches you how to make a Greater Arcane Elixir.
[13494] = { "рецепт: Велике зілля вогняного захисту", use="Навчає вас створювати велике зілля вогняного захисту." }, -- Recipe: Greater Fire Protection Potion, @use Teaches you how to make a Greater Fire Protection Potion.
[13495] = { "рецепт: Велике зілля крижаного захисту", use="Навчає вас створювати велике зілля крижаного захисту." }, -- Recipe: Greater Frost Protection Potion, @use Teaches you how to make a Greater Frost Protection Potion.
[13496] = { "рецепт: Велике зілля природного захисту", use="Навчає вас створювати велике зілля природного захисту." }, -- Recipe: Greater Nature Protection Potion, @use Teaches you how to make a Greater Nature Protection Potion.
[13497] = { "рецепт: Велике зілля арканічного захисту", use="Навчає вас створювати велике зілля арканічного захисту." }, -- Recipe: Greater Arcane Protection Potion, @use Teaches you how to make a Greater Arcane Protection Potion.
[13499] = { "рецепт: Велике зілля тіньового захисту", use="Навчає вас створювати велике зілля тіньового захисту." }, -- Recipe: Greater Shadow Protection Potion, @use Teaches you how to make a Greater Shadow Protection Potion.
[13501] = { "рецепт: Величезне зілля мани", use="Навчає вас створювати величезне зілля мани." }, -- Recipe: Major Mana Potion, @use Teaches you how to make a Major Mana Potion.
[13506] = { "настій скам'яніння", use="Ви перетворюєтеся на камінь, що захищає вас від усіх фізичних атак і заклинань на 1 хв, але протягом цього часу ви не можете атакувати, рухатися або промовляти заклинання. Одночасно ви можете перебувати під дією лише одного настою." }, -- Flask of Petrification, @use You turn to stone, protecting you from all physical attacks and spells for 1 min, but during that time you cannot attack, move or cast spells.  You can only have the effect of one flask at a time.
[13507] = { "звіт спостерігача скель Довгорогого" }, -- Cliffwatcher Longhorn Report
[13508] = { "око Арахніди", use="Прикликає око Кілроґґа, яке заміняє ваш зір. Око швидко рухається, але є дуже кволим." }, -- Eye of Arachnida, @use Summons an Eye of Kilrogg and binds your vision to it.  The eye moves quickly but is very fragile. (1 Min Cooldown)
[13510] = { "настій титанів", use="Збільшує максимальне здоров'я на 1200 на 2 год. Одночасно ви можете перебувати під дією лише одного настою. Цей ефект зберігається після смерті. (Відновлення 3 сек)" }, -- Flask of the Titans, @use Increases the player's maximum health by 1200 for 2 hrs.  You can only have the effect of one flask at a time.  This effect persists through death. (3 Sec Cooldown)
[13511] = { "настій дистильованої мудрості", use="Збільшує максимальну ману на 2000 на 2 год. Одночасно ви можете перебувати під дією лише одного настою. Цей ефект зберігається після смерті. (Відновлення 3 сек)" }, -- Flask of Distilled Wisdom, @use Increases the player's maximum mana by 2000 for 2 hrs.  You can only have the effect of one flask at a time.  This effect persists through death. (3 Sec Cooldown)
[13512] = { "настій великої сили", use="Збільшує шкоду від магічних заклинань і ефектів на 150 на 2 години. Одночасно ви можете перебувати під дією лише одного настою. Ефект зберігається після смерті. (Відновлення 3 сек)" }, -- Flask of Supreme Power, @use Increases damage done by magical spells and effects by up to 150 for 2 hrs.  You can only have the effect of one flask at a time.  This effect persists through death. (3 Sec Cooldown)
[13513] = { "настій хроматичного супротиву", use="Збільшує ваш супротив всім школам магії на 25 на 2 год. Одночасно ви можете перебувати під дією лише одного настою. Цей ефект зберігається після смерті та додається до всіх інших заклинань і предметів зі супротивом. (Відновлення 3 сек)" }, -- Flask of Chromatic Resistance, @use Increases your resistance to all schools of magic by 25 for 2 hrs.  You can only have the effect of one flask at a time.  This effect persists through death and stacks with all other resistance spells and items. (3 Sec Cooldown)
[13523] = { "кров невинних", flavor="Кров ще свіжа." }, -- Blood of Innocents, @flavor The blood is still fresh.
[13536] = { "ріг пробудження", use="Розбудити сплячого друїда. (Відновлення 30 сек)" }, -- Horn of Awakening, @use Awaken the sleeping druid. (30 Sec Cooldown)
[13542] = { "демонічна скриня" }, -- Demon Box
[13544] = { "примарна сутність", flavor="Дозволяє спілкуватися з мерцями Тверджі Дарроу." }, -- Spectral Essence, @flavor Allows communication with the deceased of Caer Darrow.
[13545] = { "молюск" }, -- Shellfish
[13546] = { "кровочеревка", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Bloodbelly Fish, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[13562] = { "останки Трея Світлогарта" }, -- Remains of Trey Lightforge
[13582] = { "повідець зерглінга", use="Клацніть правою кнопкою миші, щоб викликати і відпустити зерглінга." }, -- Zergling Leash, @use Right Click to summon and dismiss your zergling.
[13583] = { "нашийник панди", use="Клацніть правою кнопкою миші, щоб викликати і відпустити дитинча панди." }, -- Panda Collar, @use Right Click to summon and dismiss your panda cub.
[13584] = { "камінь Діабло", use="Клацніть правою кнопкою миші, щоб викликати і відпустити Діабло." }, -- Diablo Stone, @use Right Click to summon and dismiss Diablo.
[13585] = { "спогад про людяність", flavor="Всі сторінки вирвані." }, -- Keepsake of Remembrance, @flavor All of the pages are torn out.
[13602] = { "великий камінь чарів", ref=5522 }, -- Greater Spellstone
[13603] = { "величезний камінь чарів", ref=5522 }, -- Major Spellstone
[13624] = { "спогад душі" }, -- Soulbound Keepsake
[13626] = { "людська голова Раса Кригошепта" }, -- Human Head of Ras Frostwhisper
[13699] = { "камінь вогню", ref=1254 }, -- Firestone
[13700] = { "великий камінь вогню", ref=1254 }, -- Greater Firestone
[13701] = { "величезний камінь вогню", ref=1254 }, -- Major Firestone
[13702] = { "бур'ян приречення" }, -- Doom Weed
[13703] = { "кістка кодо" }, -- Kodo Bone
[13704] = { "скелетний ключ" }, -- Skeleton Key
[13724] = { "збагачене маною печиво", use="Відновлює {1} здоров'я та {2} мани протягом {3} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health and {2} mana over {3}" }, -- Enriched Manna Biscuit, @use Restores 2148 health and 4410 mana over 30 sec.  Must remain seated while eating.
[13725] = { "мішок жахів Крастінова" }, -- Krastinov's Bag of Horrors
[13752] = { "спогад душі", use="Використати на Расі Кригошепті, лічі, щоб зробити його смертним." }, -- Soulbound Keepsake, @use Use on Ras Frostwhisper, the lich, to make him mortal.
[13754] = { "сира блискуча міць-риба", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Glossy Mightfish, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[13756] = { "сирий літній окунь", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Summer Bass, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[13757] = { "блискавковий вугор" }, -- Lightning Eel
[13758] = { "сира червоноперка", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Redgill, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[13759] = { "сирий темноперий луціан", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Nightfin Snapper, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[13760] = { "сирий сонцелуский лосось", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Sunscale Salmon, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[13761] = { "заморожені яйця" }, -- Frozen Eggs
[13810] = { "благословенний сонцеплід", use="Відновлює 1933.2 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі. Також збільшує вашу силу на 10 протягом 10 хв." }, -- Blessed Sunfruit, @use Restores 1933.2 health over 27 sec.  Must remain seated while eating. Also increases your Strength by 10 for 10 min.
[13813] = { "благословенний сік сонцеплоду", use="Відновлює 4410 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Також збільшує ваш дух на 10 протягом 10 хв." }, -- Blessed Sunfruit Juice, @use Restores 4410 mana over 30 sec.  Must remain seated while drinking. Also increases your Spirit by 10 for 10 min.
[13815] = { "якась руна" }, -- Some Rune
[13850] = { "набої Грімостріла" }, -- Rumbleshot's Ammo
[13852] = { "наказ верховного лицаря", flavor="Скріплено печаткою Багряного Походу." }, -- The Grand Crusader's Command, @flavor Bears the mark of the Grand Crusader.
[13853] = { "шматок м'яса трупного черв'яка" }, -- Slab of Carrion Worm Meat
[13858] = { "вбрання з рунічного полотна" }, -- Runecloth Robe
[13864] = { "чоботи з рунічного полотна" }, -- Runecloth Boots
[13872] = { "зв'язка деревини" }, -- Bundle of Wood
[13889] = { "сирий білолуский лосось", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Whitescale Salmon, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[13890] = { "риба-броненосець" }, -- Plated Armorfish
[13892] = { "комбобулятор кодо", use="Активувати поруч з древнім, старим або вмираючим кодо, щоб він пішов за вами (по одному за раз)." }, -- Kodo Kombobulator, @use Kodo Kombobulator on any Ancient, Aged, or Dying Kodo to lure the Kodo to follow (one at a time).
[13920] = { "здорова луска дракона" }, -- Healthy Dragon Scale
[13926] = { "золота перлина" }, -- Golden Pearl
[13927] = { "смажена блискуча міць-риба", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваша витривалість збільшиться на 10 протягом 10 хв." }, -- Cooked Glossy Mightfish, @use Restores 874.8 health over 27 sec.   Must remain seated while eating.   Also increases your Stamina by 10 for 10 min.
[13929] = { "гострий копчений окунь", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваш дух збільшиться на 10 протягом 10 хв." }, -- Hot Smoked Bass, @use Restores 874.8 health over 27 sec.   Must remain seated while eating.   Also increases your Spirit by 10 for 10 min.
[13930] = { "філе червоноперки", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Filet of Redgill, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[13931] = { "суп з темноперого луціана", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і відновлюватимете 8 мани кожні 5 сек протягом 10 хв." }, -- Nightfin Soup, @use Restores 874.8 health over 27 sec.   Must remain seated while eating.   Also restores 8 Mana every 5 seconds for 10 min.
[13932] = { "томлений сонцелуский лосось", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і відновлюватимете 6 здоров'я кожні 5 сек протягом 10 хв." }, -- Poached Sunscale Salmon, @use Restores 874.8 health over 27 sec.   Must remain seated while eating.   Also restores 6 health every 5 seconds for 10 min.
[13935] = { "запечений лосось", use="Відновлює 2148 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Baked Salmon, @use Restores 2148 health over 30 sec.  Must remain seated while eating.
[13958] = { "кайдани Змійталака" }, -- Wyrmthalak's Shackles
[13959] = { "обхватний ремінь Омокка", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Omokk's Girth Restrainer, @equip Improves your chance to get a critical strike by 1%.
[13961] = { "намордник Галікон" }, -- Halycon's Muzzle
[13962] = { "пасок Вош'ґаджин", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс ухилитися від атаки на 1%." } }, -- Vosh'gajin's Strand, @equip Improves your chance to get a critical strike by 1%., @equip Increases your chance to dodge an attack by 1%.
[13963] = { "порочні захвати Вуна", equip="Збільшує ваш шанс нанесення удару на 2%." }, -- Voone's Vice Grips, @equip Improves your chance to hit by 2%.
[13965] = { "пластина Чорнорука", equip="Збільшує ваш шанс нанесення критичного удару на 2%." }, -- Blackhand's Breadth, @equip Improves your chance to get a critical strike by 2%.
[13966] = { "знак тиранії", equip="Збільшує ваш шанс ухилитися від атаки на 1%." }, -- Mark of Tyranny, @equip Increases your chance to dodge an attack by 1%.
[13968] = { "око Звіра", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 2%." }, -- Eye of the Beast, @equip Improves your chance to get a critical strike with spells by 2%.
[13982] = { "бойовий меч Тверджі Дарроу" }, -- Warblade of Caer Darrow
[13984] = { "вістря Дарроу", hit="Підриває ціль, завдаючи їй 90 шкоди від криги." }, -- Darrowspike, @hit Blasts a target for 90 Frost damage.
[13986] = { "корона Тверджі Дарроу" }, -- Crown of Caer Darrow
[14002] = { "оборонник Дарроушира" }, -- Darrowshire Strongguard
[14022] = { "дзвоник для слуг Барових", use="Прикликає 3 слуг з дому Барових, які битимуться, готуватимуть і прибиратимуть за вас. (Відновлення 10 хв)" }, -- Barov Peasant Caller, @use Calls forth 3 servants of the House Barov that will fight, cook, and clean for you. (10 Min Cooldown)
[14023] = { "дзвоник для слуг Барових", use="Прикликає 3 слуг з дому Барових, які битимуться, готуватимуть і прибиратимуть за вас. (Відновлення 10 хв)" }, -- Barov Peasant Caller, @use Calls forth 3 servants of the House Barov that will fight, cook, and clean for you. (10 Min Cooldown)
[14046] = { "сумка з рунічного полотна" }, -- Runecloth Bag
[14047] = { "рунічне полотно" }, -- Runecloth
[14048] = { "рулон рунічної тканини" }, -- Bolt of Runecloth
[14104] = { "сяйнополотняні штани" }, -- Brightcloth Pants
[14217] = { "пояс геоманта" }, -- Geomancer's Cord
[14218] = { "чоботи геоманта" }, -- Geomancer's Boots
[14219] = { "плащ геоманта" }, -- Geomancer's Cloak
[14220] = { "капелюх геоманта" }, -- Geomancer's Cap
[14221] = { "браслети геоманта" }, -- Geomancer's Bracers
[14222] = { "рукавиці геоманта" }, -- Geomancer's Gloves
[14223] = { "наплічники геоманта" }, -- Geomancer's Spaulders
[14224] = { "штани геоманта" }, -- Geomancer's Trousers
[14225] = { "вбрання геоманта" }, -- Geomancer's Wraps
[14227] = { "залізошовкова павутина" }, -- Ironweb Spider Silk
[14256] = { "сквернотканина" }, -- Felcloth
[14338] = { "порожня посудина для води", use="Наповнити водою з місячного колодязя Аубердіну." }, -- Empty Water Tube, @use Fill with water from the Auberdine moonwell.
[14339] = { "посудина з водою місячного колодязя" }, -- Moonwell Water Tube
[14341] = { "рунічна нитка" }, -- Rune Thread
[14342] = { "місячне полотно" }, -- Mooncloth
[14343] = { "малий блискучий осколок" }, -- Small Brilliant Shard
[14344] = { "великий блискучий осколок" }, -- Large Brilliant Shard
[14381] = { "сумка Зловісного Тотема" }, -- Grimtotem Satchel
[14395] = { "Закляття Темряви", flavor="Краще її не відкривати." }, -- Spells of Shadow, @flavor You know opening this would be a terrible idea.
[14396] = { "Чаклунство з Підсвіття", flavor="Ви раді, що не розумієте рун, викарбуваних на обкладинці." }, -- Incantations from the Nether, @flavor You're glad you don't understand the runes inscribed on the cover.
[14523] = { "демонічна кирка", use="Знищити демонічний кристал." }, -- Demon Pick, @use Demon Pick to Destroy Demon Crystal.
[14529] = { "рунічний бинт", use="Відновлює 1360 здоров'я за 8 сек." }, -- Runecloth Bandage, @use Heals 1360 damage over 8 sec.
[14530] = { "щільний рунічний бинт", use="Відновлює 2000 здоров'я за 8 сек." }, -- Heavy Runecloth Bandage, @use Heals 2000 damage over 8 sec.
[14540] = { "серце Тараґамана Ненажерливого" }, -- Taragaman the Hungerer's Heart
[14542] = { "ящик Крейвела" }, -- Kravel's Crate
[14544] = { "знак розрізнення лейтенанта", flavor="Ця маленька руна означє, що її власник — лейтенант Палаючого Леза." }, -- Lieutenant's Insignia, @flavor This small rune marks the bearer as a lieutenant in the Burning Blade.
[14546] = { "Рууновий ріг кодо" }, -- Roon's Kodo Horn
[14547] = { "рука Ірукзуса", use="Закрити портал демонів." }, -- Hand of Iruxos, @use Close Demon Portals.
[14610] = { "скарабей Аража" }, -- Araj's Scarab
[14613] = { "молот Телана", flavor="Вигравійовано: Моєму дорогому хлопчику, Телану. З любов'ю, батько." }, -- Taelan's Hammer, @flavor Engraved: To my dear boy, Taelan. With Love, Father.
[14619] = { "фрагменти скелетів" }, -- Skeletal Fragments
[14625] = { "символ втраченої честі", flavor="Орден Сріблястої Десниці" }, -- Symbol of Lost Honor, @flavor Order of the Silver Hand
[14628] = { "загартовані фрагменти скелетів" }, -- Imbued Skeletal Fragments
[14634] = { "рецепт: Крижана олія", use="Навчає вас створювати крижану олію." }, -- Recipe: Frost Oil, @use Teaches you how to make Frost Oil.
[14644] = { "форма для скелетного ключа", use="Наповнити двома злитками торію та лавою з вершини Вогнеперої скелі, що в кратері Ун'Ґоро, щоб створити незавершений скелетний ключ." }, -- Skeleton Key Mold, @use Fill with lava from the top of Fire Plume RIdge in Un'Goro and two Thorium Bars to create an Unfinished Skeleton Key.
[14645] = { "незавершений скелетний ключ", flavor="У цього ключа відсутня головка." }, -- Unfinished Skeleton Key, @flavor This key is missing its head.
[14646] = { "подарунковий сертифікат Північнокраю" }, -- Northshire Gift Voucher
[14647] = { "подарунковий сертифікат Морозної долини" }, -- Coldridge Valley Gift Voucher
[14648] = { "подарунковий сертифікат Тінистої долини" }, -- Shadowglen Gift Voucher
[14649] = { "подарунковий сертифікат долини Випробувань" }, -- Valley of Trials Gift Voucher
[14650] = { "подарунковий сертифікат табору Нараче" }, -- Camp Narache Gift Voucher
[14651] = { "подарунковий сертифікат Смертедзвону" }, -- Deathknell Gift Voucher
[14679] = { "Сімейна любов", flavor="Від погляду на цю картину на вашому обличчі виникає посмішка." }, -- Of Love and Family, @flavor The picture brings a smile to your face.
[14872] = { "подарунок Тіріона" }, -- Tirion's Gift
[14894] = { "корінь лілії", use="Відновлює від 525 до 675 мани та здоров'я." }, -- Lily Root, @use Restores 525 to 675 mana and health. (2 Min Cooldown)
[15002] = { "спис Німбої", use="Приєднати 20 черепів тролів Зів'ялої Кори, щоб створити спис Німбої з черепами." }, -- Nimboya's Pike, @use Attach 20 Witherbark Skulls to create Nimboya's Laden Pike.
[15042] = { "порожня банка для термітів", use="Зібрати термітів на термітниках Східних Зачумлених земель." }, -- Empty Termite Jar, @use Helps gather termites from a termite mound in Eastern Plaguelands.
[15043] = { "терміти Зачумлених земель" }, -- Plagueland Termites
[15044] = { "бочка з термітами Зачумлених земель" }, -- Barrel of Plagueland Termites
[15084] = { "лихі шкіряні браслети" }, -- Wicked Leather Bracers
[15086] = { "лиха шкіряна бандана" }, -- Wicked Leather Headband
[15088] = { "лихий шкіряний пояс" }, -- Wicked Leather Belt
[15092] = { "рунічні шкіряні браслети" }, -- Runic Leather Bracers
[15095] = { "рунічні шкіряні штани" }, -- Runic Leather Pants
[15102] = { "перевірений зразок з Ун'Ґоро" }, -- Un'Goro Tested Sample
[15103] = { "перевірений на псування зразок" }, -- Corrupt Tested Sample
[15104] = { "крилоносі чоботи" }, -- Wingborne Boots
[15105] = { "посох Ног'Орагіла", equip="Збільшує шкоду від заклинань і ефектів вогню на 19." }, -- Staff of Noh'Orahil, @equip Increases damage done by Fire spells and effects by up to 19.
[15106] = { "посох Дар'Орагіла", equip="Збільшує шкоду від заклинань і ефектів тіні на 19." }, -- Staff of Dar'Orahil, @equip Increases damage done by Shadow spells and effects by up to 19.
[15107] = { "сфера Ног'Орагіла", equip="Збільшує шкоду від заклинань і ефектів вогню на 14.", use="Відновлює 40 здоров'я кожні 3 сек протягом 30 сек. (Відновлення 30 хв)" }, -- Orb of Noh'Orahil, @equip Increases damage done by Fire spells and effects by up to 14., @use Restores 40 health every 3 sec for 30 sec. (30 Min Cooldown)
[15108] = { "сфера Дар'Орагіла", equip="Збільшує шкоду від заклинань і ефектів тіні на 14.", use="Відновлює 40 здоров'я кожні 3 сек протягом 30 сек. (Відновлення 30 хв)" }, -- Orb of Dar'Orahil, @equip Increases damage done by Shadow spells and effects by up to 14., @use Restores 40 health every 3 sec for 30 sec. (30 Min Cooldown)
[15109] = { "посох Соран'рука", equip={ "Збільшує шкоду від заклинань і ефектів тіні на 9.", "Збільшує шкоду від заклинань і ефектів вогню на 9." } }, -- Staff of Soran'ruk, @equip Increases damage done by Shadow spells and effects by up to 9., @equip Increases damage done by Fire spells and effects by up to 9.
[15138] = { "плащ з луски Оніксії", equip="Захищає носія від нищівної дії тіньового полум'я." }, -- Onyxia Scale Cloak, @equip Protects the wearer from being fully engulfed by Shadow Flame.
[15205] = { "совина гвинтівка" }, -- Owlsight Rifle
[15206] = { "нефритоперстний жезл" }, -- Jadefinger Baton
[15207] = { "сталевий щит" }, -- Steelcap Shield
[15208] = { "кенарійський місячний пил", use="Застосувати біля каменя місячного совуха, щоб викликати його захисника — Місяцекігтя." }, -- Cenarion Moondust, @use Apply near a Moonkin Stone to bring forth the stone's defender, Lunaclaw.
[15209] = { "набір реліквій", use="Розмістити на площі Дарроушира." }, -- Relic Bundle, @use Place in the Darrowshire Town Square.
[15277] = { "сірий кодо", use="Викликає та відпускає верхового сірого кодо. (Відновлення 3 сек)" }, -- Gray Kodo, @use Summons and dismisses a rideable gray kodo. (3 Sec Cooldown)
[15290] = { "бурий кодо", use="Викликає та відпускає верхового бурого кодо. (Відновлення 3 сек)" }, -- Brown Kodo, @use Summons and dismisses a rideable brown kodo. (3 Sec Cooldown)
[15292] = { "зелений кодо", use="Викликає та відпускає верхового зеленого кодо. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Green Kodo, @use Summons and dismisses a rideable green kodo.  This is a very fast mount. (3 Sec Cooldown)
[15293] = { "бірюзовий кодо", use="Викликає та відпускає верхового бірюзового кодо. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Teal Kodo, @use Summons and dismisses a rideable teal kodo.  This is a very fast mount. (3 Sec Cooldown)
[15314] = { "набір реліквій" }, -- Bundle of Relics
[15328] = { "ключ Джозефа" }, -- Joseph's Key
[15335] = { "короткий меч з шипосталі" }, -- Briarsteel Shortsword
[15396] = { "криводеревний кинджал" }, -- Curvewood Dagger
[15397] = { "цвіледубий посох" }, -- Oakthrush Staff
[15398] = { "чоботи піщаника" }, -- Sandcomber Boots
[15399] = { "сухотравний пояс" }, -- Dryweed Belt
[15400] = { "молюскові наручі" }, -- Clamshell Bracers
[15401] = { "рукавички протоки" }, -- Welldrip Gloves
[15402] = { "кнопові рукавиці" }, -- Noosegrip Gauntlets
[15403] = { "браслети кряжеспина" }, -- Ridgeback Bracers
[15404] = { "пояс хвилерізу" }, -- Breakwater Girdle
[15405] = { "рукавиці для чищення" }, -- Shucking Gloves
[15406] = { "панцирні чоботи" }, -- Crustacean Boots
[15407] = { "оброблена міцна шкура" }, -- Cured Rugged Hide
[15408] = { "важка луска скорпіда" }, -- Heavy Scorpid Scale
[15409] = { "очищена глибокоскельна сіль" }, -- Refined Deeprock Salt
[15410] = { "луска Оніксії" }, -- Scale of Onyxia
[15411] = { "знак Фордрінґа", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує силу атаки на 26." } }, -- Mark of Fordring, @equip Improves your chance to get a critical strike by 1%., @equip +26 Attack Power.
[15412] = { "зелена драконяча луска" }, -- Green Dragonscale
[15413] = { "вишукана адамантієва кіраса", equip="Збільшує навичку захисту на 10." }, -- Ornate Adamantium Breastplate, @equip Increased Defense +10.
[15414] = { "червона драконяча луска" }, -- Red Dragonscale
[15415] = { "синя драконяча луска" }, -- Blue Dragonscale
[15416] = { "луска чорного дракона" }, -- Black Dragonscale
[15417] = { "шкіра дияволозавра" }, -- Devilsaur Leather
[15418] = { "мерехтливий платиновий бойовий молот", hit="Підриває ціль, завдаючи їй від 180 до 250 шкоди від природи." }, -- Shimmering Platinum Warhammer, @hit Blasts a target for 180 to 250 Nature damage.
[15419] = { "шкіра бойового ведмедя" }, -- Warbear Leather
[15420] = { "залізне перо" }, -- Ironfeather
[15421] = { "плащ вигнанця" }, -- Shroud of the Exile
[15422] = { "шкіра кригозуба" }, -- Frostsaber Leather
[15423] = { "шкіра химери" }, -- Chimera Leather
[15424] = { "сокира Орґріммара" }, -- Axe of Orgrimmar
[15425] = { "незрівнянні наручі" }, -- Peerless Bracers
[15443] = { "крис Орґріммара" }, -- Kris of Orgrimmar
[15444] = { "посох Орґріммара" }, -- Staff of Orgrimmar
[15445] = { "молот Орґріммара" }, -- Hammer of Orgrimmar
[15447] = { "жива гниль" }, -- Living Rot
[15448] = { "згущена гниль" }, -- Coagulated Rot
[15449] = { "мертвотні штани" }, -- Ghastly Trousers
[15450] = { "поножі землечерпа" }, -- Dredgemire Leggings
[15451] = { "поножі гаргуйлі" }, -- Gargoyle Leggings
[15452] = { "перобусинні наручі" }, -- Featherbead Bracers
[15453] = { "наручі савани" }, -- Savannah Bracers
[15454] = { "ступка та товкач", use="Помістити 7 частин живої гнилі в ступку та подрібнити товкачем. Залиште настоюватись для згущення." }, -- Mortar and Pestle, @use Combine 7 pieces of Living Rot inside the mortar and grind away with the pestle. Leave standing to allow coagulation.
[15455] = { "вкрита пилом мантія" }, -- Dustfall Robes
[15456] = { "поножі легкої ходи" }, -- Lightstep Leggings
[15457] = { "наплечі пустелі" }, -- Desert Shoulders
[15458] = { "тундрові чоботи" }, -- Tundra Boots
[15459] = { "наручі зловісності" }, -- Grimtoll Wristguards
[15464] = { "молот моцака" }, -- Brute Hammer
[15465] = { "жаляча паличка" }, -- Stingshot Wand
[15466] = { "дзвінкий щит" }, -- Clink Shield
[15467] = { "перстень Ліги винахідників" }, -- Inventor's League Ring
[15468] = { "пелерина Пісні Вітру" }, -- Windsong Drape
[15469] = { "пояс Пісні Вітру", equip="Збільшує силу атаки на 12." }, -- Windsong Cinch, @equip +12 Attack Power.
[15470] = { "поножі вартового рівнин" }, -- Plainsguard Leggings
[15471] = { "обладунок з міцної шкіри" }, -- Brawnhide Armor
[15564] = { "накладки з міцної шкіри", use="Укріплення предмета, який носять на тілі, ногах, руках чи ступнях, що назавжди збільшить показник його броні на 40. Можна використовувати лише на предметах 35-го рівня і вище." }, -- Rugged Armor Kit, @use Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 40.  Only usable on items level 35 and above.
[15585] = { "пірнальні рукавиці " }, -- Pardoc Grips
[15587] = { "смугастий пояс", equip="Збільшує силу атаки на 16." }, -- Ringtail Girdle, @equip +16 Attack Power.
[15588] = { "міцний сталевий пояс" }, -- Bracesteel Belt
[15689] = { "перстень торговця" }, -- Trader's Ring
[15690] = { "намисто з кісток кодо" }, -- Kodobone Necklace
[15691] = { "мушкет караванника" }, -- Sidegunner Shottie
[15692] = { "тавро кодо" }, -- Kodo Brander
[15695] = { "клепаний баклер" }, -- Studded Ring Shield
[15697] = { "чоботи загону кодо" }, -- Kodo Rustler Boots
[15698] = { "наплічники спору" }, -- Wrangling Spaulders
[15699] = { "невеликий пакунок у коричневій обгортці" }, -- Small Brown-wrapped Package
[15702] = { "перстень хіміка" }, -- Chemist's Ring
[15703] = { "халат хіміка" }, -- Chemist's Smock
[15704] = { "відзнака мисливця" }, -- Hunter's Insignia Medal
[15705] = { "клинок гребеня" }, -- Tidecrest Blade
[15706] = { "клинок мисливця-слідопита" }, -- Hunt Tracker Blade
[15707] = { "казарковий пояс" }, -- Brantwood Sash
[15708] = { "шкіряні рукавиці порчі" }, -- Blight Leather Gloves
[15709] = { "кований пояс" }, -- Gearforge Girdle
[15710] = { "кенарійський місячний пил", use="Застосувати біля каменя місячного совуха, щоб викликати його захисника — Місяцекігтя." }, -- Cenarion Lunardust, @use Apply near a Moonkin Stone to bring forth the stone's defender, Lunaclaw.
[15722] = { "фляга Сулиці" }, -- Spraggle's Canteen
[15723] = { "чай з цукром", use="Відновлює від 1050 до 1750 здоров'я та мани. (Відновлення 2 хв)" }, -- Tea with Sugar, @use Restores 1050 to 1750 health and mana. (2 Min Cooldown)
[15728] = { "викрійка: Лихі шкіряні браслети", use="Навчає вас створювати лихі шкіряні браслети.", recipe_result_item=15084 }, -- Pattern: Wicked Leather Bracers, @use Teaches you how to craft Wicked Leather Bracers.
[15736] = { "особлива суміш Димня", use="Розмістити особливу суміш Димня на мітці детонації. БАБАХ!", flavor="Тримати подалі від вогню." }, -- Smokey's Special Compound, @use Plants Smokey's Special Compound at a Mark of Detonation. KABOOM!, @flavor Keep Away From Fire.
[15739] = { "викрійка: Рунічні шкіряні браслети", use="Навчає вас створювати рунічні шкіряні браслети.", recipe_result_item=15092 }, -- Pattern: Runic Leather Bracers, @use Teaches you how to craft Runic Leather Bracers.
[15750] = { "скіпетр світла" }, -- Sceptre of Light
[15766] = { "самоцвіт змії", use="Покласти самоцвіт на руку статуї змії." }, -- Gem of the Serpent, @use Places gem in Naga statue
[15767] = { "ключ Гамеї" }, -- Hameya's Key
[15769] = { "викрійка: Плащ з луски Оніксії", use="Навчає вас створювати плащ з луски Оніксії." }, -- Pattern: Onyxia Scale Cloak, @use Teaches you how to craft an Onyxia Scale Cloak.
[15782] = { "клинок мисливця на звірів", equip="Збільшує силу атаки на 33 під час бою зі звірами." }, -- Beaststalker Blade, @equip +33 Attack Power when fighting Beasts.
[15783] = { "кинджал мисливця на звірів", equip="Збільшує силу атаки на 33 під час бою зі звірами." }, -- Beasthunter Dagger, @equip +33 Attack Power when fighting Beasts.
[15784] = { "напліччя кришталевого вітру" }, -- Crystal Breeze Mantle
[15785] = { "голова Зельдарра" }, -- Zaeldarr's Head
[15786] = { "папоротниковий жакет" }, -- Fernpulse Jerkin
[15787] = { "вербовий гауберк" }, -- Willow Band Hauberk
[15789] = { "плащ глибоководдя" }, -- Deep River Cloak
[15790] = { "Дослідження мови духів", flavor="Ця книга написана мовою, яку ви не розумієте." }, -- Studies in Spirit Speaking, @flavor This book is written in a language you cannot understand.
[15791] = { "бірюзовий пояс" }, -- Turquoise Sash
[15792] = { "наплічники плужного дерева" }, -- Plow Wood Spaulders
[15795] = { "рукавиці смарагдового туману" }, -- Emerald Mist Gauntlets
[15799] = { "медаль \"За героїзм\"" }, -- Heroic Commendation Medal
[15800] = { "меч сміливості" }, -- Intrepid Shortsword
[15801] = { "меч доблесті" }, -- Valiant Shortsword
[15802] = { "черевики з місячного полотна" }, -- Mooncloth Boots
[15803] = { "книга Древніх" }, -- Book of the Ancients
[15804] = { "вишнева пелерина" }, -- Cerise Drape
[15805] = { "троянда Пенелопи" }, -- Penelope's Rose
[15806] = { "пісня Міри" }, -- Mirah's Song
[15812] = { "ліловий амікт" }, -- Orchid Amice
[15813] = { "золотий плетений пояс" }, -- Gold Link Belt
[15814] = { "рубило Гамеї", hit="Ранить ціль, спричиняючи 80 шкоди від кровотечі протягом 30 сек." }, -- Hameya's Slayer, @hit Wounds the target causing them to bleed for 80 damage over 30 sec.
[15815] = { "плащ Гамеї" }, -- Hameya's Cloak
[15822] = { "тінешкіряні наплічники" }, -- Shadowskin Spaulders
[15823] = { "рукавиці з камнесталі" }, -- Bricksteel Gauntlets
[15824] = { "асторійська мантія" }, -- Astoria Robes
[15825] = { "жилет звіролова" }, -- Traphook Jerkin
[15826] = { "цілюща мазь для тварин", use="Вилікувати вражену хворобою тварину. (Відновлення 15 сек)" }, -- Curative Animal Salve, @use Cure a sickly animal afflicted by the taint of poisoning. (15 Sec Cooldown)
[15827] = { "кіраса нефритової луски" }, -- Jadescale Breastplate
[15842] = { "пустий флакон вершини Зловісного Туману", use="Взяти пробу води з озера на вершині Зловісного Туману." }, -- Empty Dreadmist Peak Sampler, @use Draw a sample of water from the pool of water at the top of Dreadmist Peak.
[15843] = { "наповнений флакон вершини Зловісного Туману" }, -- Filled Dreadmist Peak Sampler
[15844] = { "пустий флакон Скельноджерельних водоспадів", use="Взяти пробу води біля входу в печеру за Скельноджерельним водоспадом." }, -- Empty Cliffspring Falls Sampler, @use Draw a sample of water from the waterfall at the mouth of the Cliffspring Falls cave .
[15845] = { "наповнений флакон Скельноджерельних водоспадів" }, -- Filled Cliffspring Falls Sampler
[15847] = { "реєстр Квел'Таласа", flavor="Книга випромінює слабке світіння." }, -- Quel'Thalas Registry, @flavor This book emits a faint glow.
[15848] = { "ящик примарних магнітів", use="Розмістити між Мертвими Голіафами в долині Кісток. (Відновлення 30 сек)" }, -- Crate of Ghost Magnets, @use Place between the Dead Goliaths in the Valley of Bones. (30 Sec Cooldown)
[15849] = { "ектоплазма" }, -- Ghost-o-plasm
[15850] = { "жмут хутра Смеркокрила" }, -- Patch of Duskwing's Fur
[15851] = { "місячний гриб" }, -- Lunar Fungus
[15852] = { "ріг кодо" }, -- Kodo Horn
[15853] = { "Вітроріз", hit="Завдання шкоди від природи кожні 2 сек протягом 20 сек." }, -- Windreaper, @hit Inflicts Nature damage every 2 sec for 20 sec.
[15854] = { "танцююча щепка" }, -- Dancing Sliver
[15855] = { "перстень захисту" }, -- Ring of Protection
[15856] = { "світний талісман" }, -- Archlight Talisman
[15857] = { "палиця магоклята" }, -- Magebane Scion
[15858] = { "рукавиці розкутого вітру" }, -- Freewind Gloves
[15859] = { "пояс морської варти" }, -- Seapost Girdle
[15860] = { "нарукавники стрімкого удару", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Blinkstrike Armguards, @equip Improves your chance to get a critical strike by 1%.
[15861] = { "чоботи швидкої ходи" }, -- Swiftfoot Treads
[15862] = { "миттєруб", equip="Збільшує силу атаки на 20." }, -- Blitzcleaver, @equip +20 Attack Power.
[15863] = { "могильний скіпетр" }, -- Grave Scepter
[15864] = { "наручі кондора" }, -- Condor Bracers
[15865] = { "баклер анахорета" }, -- Anchorhold Buckler
[15866] = { "вкрита пилом медична сумка", use="Відновлює 50 мани кожні 3 сек протягом 15 сек. (Відновлення 30 хв)" }, -- Veildust Medicine Bag, @use Restores 50 mana every 3 sec for 15 sec. (30 Min Cooldown)
[15867] = { "призматичний оберіг", use="Збільшує супротив всім школам магії на 20 протягом 30 сек. (Відновлення 30 хв)" }, -- Prismcharm, @use Increases all resistances by 20 for 30 sec. (30 Min Cooldown)
[15868] = { "наказ верховного лицаря", flavor="Скріплено печаткою Багряного Походу." }, -- The Grand Crusader's Command, @flavor Bears the Seal of the Scarlet Crusade
[15869] = { "срібний ключ-відмичка", use="Дозволяє відкривати прості замки. Одноразовий." }, -- Silver Skeleton Key, @use Allows opening of simple locks.  The skeleton key is consumed in the process.
[15873] = { "бездонна кружка Джона Лахмітника", use="Збільшує витривалість на 10 і зменшує вхідну фізичну шкоду на 5 на 10 хв. Натомість знижує силу та спритність на 5 і збільшує вхідну магічну шкоду на 20. (Відновлення 30 хв)" }, -- Ragged John's Neverending Cup, @use Increases Stamina by 10 and reduces physical damage taken by 5 for 10 min. However, lowers Strength and Agility by 5 and increases magical damage taken by up to 20. (30 Min Cooldown)
[15874] = { "м'якопанцирний молюск" }, -- Soft-shelled Clam
[15875] = { "гниле яблуко", use="Використовуйте, щоб замаскуватися під члена Багряного Походу.", flavor="Черв'як — найкраща частина." }, -- Rotten Apple, @use Use to disguise yourself as a member of the Scarlet Crusade., @flavor The Worm is the Best Part.
[15876] = { "скриня Натаноса" }, -- Nathanos' Chest
[15877] = { "прикраса вівтаря", use="Покласти прикрасу на вівтар Ремула, завершивши випробування." }, -- Shrine Bauble, @use Complete the aquatic time trial at the Shrine of Remulos.
[15878] = { "срібний ключ Ракмора" }, -- Rackmore's Silver Key
[15879] = { "кіготь надправителя Рора" }, -- Overlord Ror's Claw
[15880] = { "голова Рамштайна-Ненажери" }, -- Head of Ramstein the Gorger
[15881] = { "золотий ключ Ракмора" }, -- Rackmore's Golden Key
[15882] = { "половинка підвіски водної витривалості", flavor="Цій підвісці не витрачає половинки спритності." }, -- Half Pendant of Aquatic Endurance, @flavor The pendant is missing its aquatic counterpart.
[15883] = { "половинка підвіски водної спритності", use="Об'єднати з половинкою підвіски водної вітривалості, щоб зібрати підвіску морського лева." }, -- Half Pendant of Aquatic Agility, @use Combine with the Half Pendant of Aquatic Endurance to form the Pendant of the Sea Lion.
[15884] = { "чекова книжка Августа" }, -- Augustus' Receipt Book
[15885] = { "підвіска Морського Лева" }, -- Pendant of the Sea Lion
[15908] = { "жезл приборкання", use="Почати приборкання льодолапого ведмедя, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming an Ice Claw Bear to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15911] = { "жезл приборкання", use="Почати приборкання великого скельного кнура, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming a Large Crag Boar to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15913] = { "жезл приборкання", use="Почати приборкання сніжного леопарда, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming a Snow Leopard to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15914] = { "жезл приборкання", use="Почати приборкання дорослого рівнинобіга, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming an Adult Plainstrider to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15915] = { "жезл приборкання", use="Почати приборкання степового ловця, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming a Prairie Stalker to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15916] = { "жезл приборкання", use="Почати приборкання хапуна, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming a Swoop to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15917] = { "жезл приборкання", use="Почати приборкання лютого крапчастого кнура, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming a Dire Mottled Boar to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15919] = { "жезл приборкання", use="Почати приборкання берегового повзуна, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming a Surf Crawler to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15920] = { "жезл приборкання", use="Почати приборкання броньованого скорпіда, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming an Armored Scorpid to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15921] = { "жезл приборкання", use="Почати приборкання павутиннолісого маскуна, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming a Webwood Lurker to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15922] = { "жезл приборкання", use="Почати приборкання ночезуба-ловця, щоб він став вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming a Nightsaber Stalker to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15923] = { "жезл приборкання", use="Почати приборкання сови-верескуна, щоб вона стала вашим супутником на 10 хвилин. Якщо з будь-якої причини ви втратите увагу звіра, процес приборкання не вдасться." }, -- Taming Rod, @use Begins taming a Strigid Screecher to be your companion for 10 minutes.  If you lose the beast's attention for any reason, the taming process will fail.
[15924] = { "м'ясо м'якопанцирного молюска" }, -- Soft-shelled Clam Meat
[15992] = { "масивний вибуховий порошок" }, -- Dense Blasting Powder
[15993] = { "торієва граната", use="Завдає від 300 до 500 шкоди вогнем та оглушує цілі в радіусі 3 м на 3 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- Thorium Grenade, @use Inflicts 300 to 500 Fire damage and stuns targets for 3 sec in a 3 yard radius.  Any damage will break the effect. (1 Min Cooldown)
[15994] = { "торієвий пристрій" }, -- Thorium Widget
[15995] = { "торієва гвинтівка", equip="Збільшує силу атаки дальнього бою на 17." }, -- Thorium Rifle, @equip +17 ranged Attack Power.
[15997] = { "торієві патрони", desc="Додає 17,5 пошкодження за секунду" }, -- Thorium Shells, @desc Adds 17.5 damage per second
[15998] = { "записка Льюїса" }, -- Lewis' Note
[16000] = { "торієва трубка" }, -- Thorium Tube
[16001] = { "жетон ШУР (Фредо)" }, -- SI:7 Insignia (Fredo)
[16002] = { "жетон ШУР (Тур'єн)" }, -- SI:7 Insignia (Turyen)
[16003] = { "жетон ШУР (Рутґер)" }, -- SI:7 Insignia (Rutger)
[16005] = { "бомба з темного заліза", use="Завдає від 225 до 675 шкоди вогнем та оглушує цілі в радіусі 5 м на 4 сек.  Будь-яка шкода припиняє дію. (Відновлення 1 хв)" }, -- Dark Iron Bomb, @use Inflicts 225 to 675 Fire damage and stuns targets in a 5 yard radius for 4 sec.  Any damage will break the effect. (1 Min Cooldown)
[16006] = { "чутливий арканітовий перетворювач" }, -- Delicate Arcanite Converter
[16023] = { "майстерний манекен-мішень", use="Встановлення на землі манекена, який притягуватиме до себе найближчих ворогів.  Існує 15 сек або до знищення. (Відновлення 2 хв)" }, -- Masterwork Target Dummy, @use Drops a target dummy on the ground that attracts nearby monsters to attack it. Lasts for 15 seconds or until killed. (2 Min Cooldown)
[16040] = { "арканічна бомба", use="Випалює від 675 до 1125 мани цілям в радіусі вибуху та завдає шкоду в роозмірі 50% від випаленої мани.  Також знемовлює цілі на 5 сек. (Відновлення 1 хв)" }, -- Arcane Bomb, @use Drains 675 to 1125 mana from those in the blast radius and does 50% of the mana drained in damage to the target.  Also Silences targets in the blast for 5 sec. (1 Min Cooldown)
[16041] = { "креслення: Торієва граната", use="Навчає вас створювати торієву гранату." }, -- Schematic: Thorium Grenade, @use Teaches you how to make a Thorium Grenade.
[16043] = { "креслення: Торієва гвинтівка", use="Навчає вас створювати торієву гвинтівку.", recipe_result_item=15995 }, -- Schematic: Thorium Rifle, @use Teaches you how to make a Thorium Rifle.
[16046] = { "креслення: Майстерний манекен-мішень", use="Навчає вас створювати майстерний манекен-мішень." }, -- Schematic: Masterwork Target Dummy, @use Teaches you how to make a Masterwork Target Dummy.
[16049] = { "креслення: Бомба з темного заліза", use="Навчає вас створювати бомбу з темного заліза." }, -- Schematic: Dark Iron Bomb, @use Teaches you how to make a Dark Iron Bomb.
[16055] = { "креслення: Арканічна бомба", use="Навчає вас створювати арканічну бомбу." }, -- Schematic: Arcane Bomb, @use Teaches you how to make an Arcane Bomb.
[16058] = { "печатка Фордрінґа", equip="Збільшує зцілення від заклинань і ефектів на 37." }, -- Fordring's Seal, @equip Increases healing done by spells and effects by up to 37.
[16083] = { "експерт риболовлі - я і окунь", use="Навчає вас риболовлі на рівні експерта, дозволяючи розвивати навичку до 225 рівня." }, -- Expert Fishing - The Bass and You, @use Teaches you how to be an Expert Fisherman, allowing a maximum of 225 fishing skill.
[16084] = { "експерт першої допомоги - як зав'язати", use="Навчає вас наданню першої допомоги на рівні експерта, дозволяючи розвивати навичку до 225 рівня." }, -- Expert First Aid - Under Wraps, @use Teaches you how to be an expert in first aid, allowing a maximum of 225 first aid skill.
[16112] = { "посібник: Щільний шовковий бинт", use="Навчає вас створювати щільний шовковий бинт." }, -- Manual: Heavy Silk Bandage, @use Teaches you how to make a Heavy Silk Bandage.
[16113] = { "посібник: Маготканий бинт", use="Навчає вас створювати маготканий бинт." }, -- Manual: Mageweave Bandage, @use Teaches you how to make a Mageweave Bandage.
[16114] = { "кийок десятника", use="Будить сплячого наймита. (Відновлення 3 сек)" }, -- Foreman's Blackjack, @use Wakes up a targeted sleeping peon. (5 Sec Cooldown)
[16115] = { "ящик Озріка" }, -- Osric's Crate
[16189] = { "лист Маґґрана" }, -- Maggran's Reserve Letter
[16190] = { "рештки криваволютої різниці" }, -- Bloodfury Ripper's Remains
[16192] = { "ікло Бесселет" }, -- Besseleth's Fang
[16202] = { "мала вічна субстанція", use="Перетворити три малі вічні субстанції на одну велику." }, -- Lesser Eternal Essence, @use Turn three lesser eternal essences into a greater one.
[16203] = { "велика вічна субстанція", use="Перетворити велику вічну субстанцію на три малі." }, -- Greater Eternal Essence, @use Turn a greater eternal essence into three lesser ones.
[16204] = { "пил ілюзій" }, -- Illusion Dust
[16205] = { "насіння Ґеї" }, -- Gaea Seed
[16208] = { "зачароване насіння Ґеї", use="Помістити насіння Ґеї в насип ґрунту Ґеї." }, -- Enchanted Gaea Seeds, @use Place the Gaea seed into the Gaea dirt mound.
[16209] = { "замовлення Подріґа" }, -- Podrig's Order
[16210] = { "ящик Гордона" }, -- Gordon's Crate
[16262] = { "колекція Несси" }, -- Nessa's Collection
[16263] = { "відповідь Лейрда" }, -- Laird's Response
[16282] = { "оберемок шкур" }, -- Bundle of Hides
[16283] = { "шкіргалантерея Агану" }, -- Ahanu's Leather Goods
[16302] = { "гримуар вогняної стріли (Ранг {1})#(Rank {1})", use="Навчає бісеня закляттю \"Вогняна стріла\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Firebolt (Rank 2), @use Teaches Imp Firebolt (Rank 2).
[16303] = { "лапа Урсанґо" }, -- Ursangous's Paw
[16304] = { "голова Шадумбри" }, -- Shadumbra's Head
[16305] = { "кіготь Гостропазура" }, -- Sharptalon's Claw
[16306] = { "м'ясо від Зарґа" }, -- Zargh's Meats
[16307] = { "лист Гришки" }, -- Gryshka's Letter
[16309] = { "амулет полум'я дракона", flavor="Всередині тече кров Драккісата..." }, -- Drakefire Amulet, @flavor The Blood of Drakkisath Flows Within...
[16310] = { "список Брока" }, -- Brock's List
[16311] = { "почесні кирки" }, -- Honorary Picks
[16312] = { "спалахтит" }, -- Incendrites
[16313] = { "скриня Фелікса" }, -- Felix's Chest
[16314] = { "відро з болтами Фелікса" }, -- Felix's Bucket of Bolts
[16316] = { ref=16302 }, -- Grimoire of Firebolt (Rank 3)
[16317] = { ref=16302 }, -- Grimoire of Firebolt (Rank 4)
[16318] = { ref=16302 }, -- Grimoire of Firebolt (Rank 5)
[16319] = { ref=16302 }, -- Grimoire of Firebolt (Rank 6)
[16320] = { ref=16302 }, -- Grimoire of Firebolt (Rank 7)
[16321] = { "гримуар кривавої угоди (Ранг {1})#(Rank {1})", use="Навчає бісеня закляттю \"Кривава угода\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Blood Pact (Rank 1), @use Teaches Imp Blood Pact (Rank 1).
[16322] = { ref=16321 }, -- Grimoire of Blood Pact (Rank 2)
[16323] = { ref=16321 }, -- Grimoire of Blood Pact (Rank 3)
[16324] = { ref=16321 }, -- Grimoire of Blood Pact (Rank 4)
[16325] = { ref=16321 }, -- Grimoire of Blood Pact (Rank 5)
[16326] = { "гримуар вогняного щита (Ранг {1})#(Rank {1})", use="Навчає бісеня закляттю \"Вогняний щит\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Fire Shield (Rank 1), @use Teaches Imp Fire Shield (Rank 1).
[16327] = { ref=16326 }, -- Grimoire of Fire Shield (Rank 2)
[16328] = { ref=16326 }, -- Grimoire of Fire Shield (Rank 3)
[16329] = { ref=16326 }, -- Grimoire of Fire Shield (Rank 4)
[16330] = { ref=16326 }, -- Grimoire of Fire Shield (Rank 5)
[16331] = { "гримуар фазування", use="Навчає бісеня закляттю \"Фазування\"." }, -- Grimoire of Phase Shift, @use Teaches Imp Phase Shift.
[16332] = { "кайло Тазз'ріла" }, -- Thazz'ril's Pick
[16333] = { "рештки Семюеля", use="Захоронити на могилі Марли." }, -- Samuel's Remains, @use Bury at Marla's Grave.
[16346] = { "гримуар муки (Ранг {1})#(Rank {1})", use="Навчає пустотника закляттю \"Мука\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Torment (Rank 2), @use Teaches Voidwalker Torment (Rank 2).
[16347] = { ref=16346 }, -- Grimoire of Torment (Rank 3)
[16348] = { ref=16346 }, -- Grimoire of Torment (Rank 4)
[16349] = { ref=16346 }, -- Grimoire of Torment (Rank 5)
[16350] = { ref=16346 }, -- Grimoire of Torment (Rank 6)
[16351] = { "гримуар жертви (Ранг {1})#(Rank {1})", use="Навчає пустотника закляттю \"Жертва\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Sacrifice (Rank 1), @use Teaches Voidwalker Sacrifice (Rank 1).
[16352] = { ref=16351 }, -- Grimoire of Sacrifice (Rank 2)
[16353] = { ref=16351 }, -- Grimoire of Sacrifice (Rank 3)
[16354] = { ref=16351 }, -- Grimoire of Sacrifice (Rank 4)
[16355] = { ref=16351 }, -- Grimoire of Sacrifice (Rank 5)
[16356] = { ref=16351 }, -- Grimoire of Sacrifice (Rank 6)
[16357] = { "гримуар поглинання тіней (Ранг {1})#(Rank {1})", use="Навчає пустотника закляттю \"Поглинання тіней\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Consume Shadows (Rank 1), @use Teaches Voidwalker Consume Shadows (Rank 1).
[16358] = { ref=16357 }, -- Grimoire of Consume Shadows (Rank 2)
[16359] = { ref=16357 }, -- Grimoire of Consume Shadows (Rank 3)
[16360] = { ref=16357 }, -- Grimoire of Consume Shadows (Rank 4)
[16361] = { ref=16357 }, -- Grimoire of Consume Shadows (Rank 5)
[16362] = { ref=16357 }, -- Grimoire of Consume Shadows (Rank 6)
[16363] = { "гримуар страждання (Ранг {1})#(Rank {1})", use="Навчає пустотника закляттю \"Страждання\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Suffering (Rank 1), @use Teaches Voidwalker Suffering (Rank 1).
[16364] = { ref=16363 }, -- Grimoire of Suffering (Rank 2)
[16365] = { ref=16363 }, -- Grimoire of Suffering (Rank 3)
[16366] = { ref=16363 }, -- Grimoire of Suffering (Rank 4)
[16368] = { "гримуар батога болю (Ранг {1})#(Rank {1})", use="Навчає сукуба чи інкуба закляттю \"Батіг болю\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Lash of Pain (Rank 2), @use Teaches Succubus or Incubus Lash of Pain (Rank 2).
[16371] = { ref=16368 }, -- Grimoire of Lash of Pain (Rank 3)
[16372] = { ref=16368 }, -- Grimoire of Lash of Pain (Rank 4)
[16373] = { ref=16368 }, -- Grimoire of Lash of Pain (Rank 5)
[16374] = { ref=16368 }, -- Grimoire of Lash of Pain (Rank 6)
[16375] = { "гримуар заспокійливого поцілунку (Ранг {1})#(Rank {1})", use="Навчає сукуба чи інкуба закляттю \"Заспокійливий поцілунок\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Soothing Kiss (Rank 1), @use Teaches Succubus or Incubus Soothing Kiss (Rank 1).
[16376] = { ref=16375 }, -- Grimoire of Soothing Kiss (Rank 2)
[16377] = { ref=16375 }, -- Grimoire of Soothing Kiss (Rank 3)
[16378] = { ref=16375 }, -- Grimoire of Soothing Kiss (Rank 4)
[16379] = { "гримуар зваблення", use="Навчає сукуба чи інкуба закляттю \"Зваблення\"." }, -- Grimoire of Seduction, @use Teaches Succubus or Incubus Seduction.
[16380] = { "гримуар малої невидимості", use="Навчає сукуба чи інкуба закляттю \"Мала невидимість\"." }, -- Grimoire of Lesser Invisibility, @use Teaches Succubus or Incubus Lesser Invisibility.
[16381] = { "гримуар пожирання магії (Ранг {1})#(Rank {1})", use="Навчає скверногончу закляттю \"Пожирання магії\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Devour Magic (Rank 2), @use Teaches Felhunter Devour Magic (Rank 2).
[16382] = { ref=16381 }, -- Grimoire of Devour Magic (Rank 3)
[16383] = { ref=16381 }, -- Grimoire of Devour Magic (Rank 4)
[16384] = { "гримуар зараженої крові (Ранг {1})#(Rank {1})", use="Навчає скверногончу закляттю \"Заражена кров\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Tainted Blood (Rank 1), @use Teaches Felhunter Tainted Blood (Rank 1).
[16385] = { ref=16384 }, -- Grimoire of Tainted Blood (Rank 2)
[16386] = { ref=16384 }, -- Grimoire of Tainted Blood (Rank 3)
[16387] = { ref=16384 }, -- Grimoire of Tainted Blood (Rank 4)
[16388] = { "гримуар заборони чар (Ранг {1})#(Rank {1})", use="Навчає скверногончу закляттю \"Заборона чар\" (Ранг {1}).#(Rank {1})" }, -- Grimoire of Spell Lock (Rank 1), @use Teaches Felhunter Spell Lock (Rank 1).
[16389] = { ref=16388 }, -- Grimoire of Spell Lock (Rank 2)
[16390] = { "гримуар параної", use="Навчає скверногончу закляттю \"Параноя\"." }, -- Grimoire of Paranoia, @use Teaches Felhunter Paranoia.
[16408] = { "забруднена водяна куля" }, -- Befouled Water Globe
[16581] = { "кристал резоніту", flavor="Глибоко всередині кристалу вирує магія." }, -- Resonite Crystal, @flavor Magic stirs deep inside.
[16583] = { "демонічна статуетка" }, -- Demonic Figurine
[16602] = { "трольський оберіг" }, -- Troll Charm
[16603] = { "зачарований кристал резоніту", use="Вдарити зачарованим кристалом резоніту по резонітовому контейнеру." }, -- Enchanted Resonite Crystal, @use Smash enchanted Resonite Crystal into Resonite Cask.
[16604] = { "місячне вбрання Елуни" }, -- Moon Robes of Elune
[16605] = { "чернечі вбрання Світла" }, -- Friar's Robes of the Light
[16606] = { "вбрання заклять джуджу" }, -- Juju Hex Robes
[16607] = { "жертовні вбрання послушника" }, -- Acolyte's Sacrificial Robes
[16608] = { "пояс водолія" }, -- Aquarius Belt
[16622] = { "шипостріл" }, -- Thornflinger
[16623] = { "опаліновий медальйон" }, -- Opaline Medallion
[16642] = { "інструкція з експлуатації подрібнювача — розділ 1" }, -- Shredder Operating Manual - Chapter 1
[16643] = { "інструкція з експлуатації подрібнювача — розділ 2" }, -- Shredder Operating Manual - Chapter 2
[16644] = { "інструкція з експлуатації подрібнювача — розділ 3" }, -- Shredder Operating Manual - Chapter 3
[16645] = { "інструкція з експлуатації подрібнювача — сторінка 1", use="Об'єднати сторінки 1-4 в розділ 1 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 1, @use Bind pages 1-4 into Chapter 1 of the Shredder Operating Manual.
[16646] = { "інструкція з експлуатації подрібнювача — сторінка 2", use="Об'єднати сторінки 1-4 в розділ 1 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 2, @use Bind pages 1-4 into Chapter 1 of the Shredder Operating Manual.
[16647] = { "інструкція з експлуатації подрібнювача — сторінка 3", use="Об'єднати сторінки 1-4 в розділ 1 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 3, @use Bind pages 1-4 into Chapter 1 of the Shredder Operating Manual.
[16648] = { "інструкція з експлуатації подрібнювача — сторінка 4", use="Об'єднати сторінки 1-4 в розділ 1 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 4, @use Bind pages 1-4 into Chapter 1 of the Shredder Operating Manual.
[16649] = { "інструкція з експлуатації подрібнювача — сторінка 5", use="Об'єднати сторінки 5-8 в розділ 2 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 5, @use Bind pages 5-8 into Chapter 2 of the Shredder Operating Manual.
[16650] = { "інструкція з експлуатації подрібнювача — сторінка 6", use="Об'єднати сторінки 5-8 в розділ 2 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 6, @use Bind pages 5-8 into Chapter 2 of the Shredder Operating Manual.
[16651] = { "інструкція з експлуатації подрібнювача — сторінка 7", use="Об'єднати сторінки 5-8 в розділ 2 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 7, @use Bind pages 5-8 into Chapter 2 of the Shredder Operating Manual.
[16652] = { "інструкція з експлуатації подрібнювача — сторінка 8", use="Об'єднати сторінки 5-8 в розділ 2 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 8, @use Bind pages 5-8 into Chapter 2 of the Shredder Operating Manual.
[16653] = { "інструкція з експлуатації подрібнювача — сторінка 9", use="Об'єднати сторінки 9-12 в розділ 3 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 9, @use Bind pages 9-12 into Chapter 3 of the Shredder Operating Manual.
[16654] = { "інструкція з експлуатації подрібнювача — сторінка 10", use="Об'єднати сторінки 9-12 в розділ 3 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 10, @use Bind pages 9-12 into Chapter 3 of the Shredder Operating Manual.
[16655] = { "інструкція з експлуатації подрібнювача — сторінка 11", use="Об'єднати сторінки 9-12 в розділ 3 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 11, @use Bind pages 9-12 into Chapter 3 of the Shredder Operating Manual.
[16656] = { "інструкція з експлуатації подрібнювача — сторінка 12", use="Об'єднати сторінки 9-12 в розділ 3 інструкції з експлуатації подрібнювача." }, -- Shredder Operating Manual - Page 12, @use Bind pages 9-12 into Chapter 3 of the Shredder Operating Manual.
[16658] = { "плащ дикого полювання", equip="Збільшує силу атаки на 18 в бою зі звірами." }, -- Wildhunter Cloak, @equip Attack Power increased by 18 when fighting Beasts.
[16659] = { "пояс спритника", equip="Збільшує силу атаки на 12." }, -- Deftkin Belt, @equip +12 Attack Power.
[16660] = { "щит повзучого болота" }, -- Driftmire Shield
[16661] = { "м'яка вербова накидка" }, -- Soft Willow Cape
[16662] = { "фрагмент Ока Дракона" }, -- Fragment of the Dragon's Eye
[16663] = { "кров чемпіона чорних драконів" }, -- Blood of the Black Dragon Champion
[16666] = { "жилет стихій" }, -- Vest of Elements
[16667] = { "койф стихій" }, -- Coif of Elements
[16668] = { "кілт стихій" }, -- Kilt of Elements
[16669] = { "напліччя стихій" }, -- Pauldrons of Elements
[16670] = { "чоботи стихій" }, -- Boots of Elements
[16671] = { "браслети стихій" }, -- Bindings of Elements
[16672] = { "рукавиці стихій" }, -- Gauntlets of Elements
[16673] = { "ремінь стихій" }, -- Cord of Elements
[16674] = { "мундир ловця звірів" }, -- Beaststalker's Tunic
[16675] = { "чоботи ловця звірів" }, -- Beaststalker's Boots
[16676] = { "рукавички ловця звірів" }, -- Beaststalker's Gloves
[16677] = { "шапка ловця звірів" }, -- Beaststalker's Cap
[16678] = { "штани ловця звірів" }, -- Beaststalker's Pants
[16679] = { "нараменники ловця звірів" }, -- Beaststalker's Mantle
[16680] = { "пояс ловця звірів" }, -- Beaststalker's Belt
[16681] = { "браслети ловця звірів" }, -- Beaststalker's Bindings
[16682] = { "чоботи магістра" }, -- Magister's Boots
[16683] = { "браслети магістра" }, -- Magister's Bindings
[16684] = { "рукавички магістра" }, -- Magister's Gloves
[16685] = { "пояс магістра" }, -- Magister's Belt
[16686] = { "корона магістра" }, -- Magister's Crown
[16687] = { "лосини магістра" }, -- Magister's Leggings
[16688] = { "мантія магістра" }, -- Magister's Robes
[16689] = { "нараменники магістра" }, -- Magister's Mantle
[16690] = { "мантія відданості" }, -- Devout Robe
[16691] = { "сандалі відданості" }, -- Devout Sandals
[16692] = { "рукавички відданості" }, -- Devout Gloves
[16693] = { "корона відданості" }, -- Devout Crown
[16694] = { "спідниця відданості" }, -- Devout Skirt
[16695] = { "нараменники відданості" }, -- Devout Mantle
[16696] = { "пояс відданості" }, -- Devout Belt
[16697] = { "поручі відданості" }, -- Devout Bracers
[16698] = { "маска імли жаху" }, -- Dreadmist Mask
[16699] = { "лосини імли жаху" }, -- Dreadmist Leggings
[16700] = { "мантія імли жаху" }, -- Dreadmist Robe
[16701] = { "нараменники імли жаху" }, -- Dreadmist Mantle
[16702] = { "пояс імли жаху" }, -- Dreadmist Belt
[16703] = { "поручі імли жаху" }, -- Dreadmist Bracers
[16704] = { "сандалі імли жаху" }, -- Dreadmist Sandals
[16705] = { "пов'язки імли жаху" }, -- Dreadmist Wraps
[16706] = { "жилет дикого серця" }, -- Wildheart Vest
[16707] = { "шапка тіньового ремесла" }, -- Shadowcraft Cap
[16708] = { "наплічники тіньового ремесла" }, -- Shadowcraft Spaulders
[16709] = { "штани тіньового ремесла" }, -- Shadowcraft Pants
[16710] = { "поручі тіньового ремесла" }, -- Shadowcraft Bracers
[16711] = { "чоботи тіньового ремесла" }, -- Shadowcraft Boots
[16712] = { "рукавички тіньового ремесла" }, -- Shadowcraft Gloves
[16713] = { "пояс тіньового ремесла" }, -- Shadowcraft Belt
[16714] = { "поручі дикого серця" }, -- Wildheart Bracers
[16715] = { "чоботи дикого серця" }, -- Wildheart Boots
[16716] = { "пояс дикого серця" }, -- Wildheart Belt
[16717] = { "рукавички дикого серця" }, -- Wildheart Gloves
[16718] = { "наплічники дикого серця" }, -- Wildheart Spaulders
[16719] = { "кілт дикого серця" }, -- Wildheart Kilt
[16720] = { "капюшон дикого серця" }, -- Wildheart Cowl
[16721] = { "мундир тіньового ремесла" }, -- Shadowcraft Tunic
[16722] = { "світлоковані поручі" }, -- Lightforge Bracers
[16723] = { "світлокований пояс" }, -- Lightforge Belt
[16724] = { "світлоковані рукавиці" }, -- Lightforge Gauntlets
[16725] = { "світлоковані чоботи" }, -- Lightforge Boots
[16726] = { "світлокований нагрудник" }, -- Lightforge Breastplate
[16727] = { "світлокований шолом" }, -- Lightforge Helm
[16728] = { "світлоковані поножі" }, -- Lightforge Legplates
[16729] = { "світлоковані наплічники" }, -- Lightforge Spaulders
[16730] = { "нагрудник доблесті" }, -- Breastplate of Valor
[16731] = { "шолом доблесті" }, -- Helm of Valor
[16732] = { "поножі доблесті" }, -- Legplates of Valor
[16733] = { "наплічники доблесті" }, -- Spaulders of Valor
[16734] = { "чоботи доблесті" }, -- Boots of Valor
[16735] = { "поручі доблесті" }, -- Bracers of Valor
[16736] = { "пояс доблесті" }, -- Belt of Valor
[16737] = { "рукавиці доблесті" }, -- Gauntlets of Valor
[16738] = { "рукавички сухосіву" }, -- Witherseed Gloves
[16739] = { "мантія мохоростей" }, -- Rugwood Mantle
[16740] = { "рукавички пілота подрібнювача" }, -- Shredder Operating Gloves
[16741] = { "маслянисті пов'язки" }, -- Oilrag Handwraps
[16742] = { "пиляльні леза Боєпісні" }, -- Warsong Saw Blades
[16743] = { "лісозаготівельна мотузка" }, -- Logging Rope
[16744] = { "мастило Боєпісні" }, -- Warsong Oil
[16745] = { "вантаж сокир Боєпісні" }, -- Warsong Axe Shipment
[16746] = { "наказ Боєпісні" }, -- Warsong Report
[16762] = { "ядро глибин" }, -- Fathom Core
[16763] = { "звіт гінця Боєпісні" }, -- Warsong Runner Update
[16764] = { "звіт розвідниці Боєпісні" }, -- Warsong Scout Update
[16765] = { "звіт вершниці Боєпісні" }, -- Warsong Outrider Update
[16766] = { "молюсковий суп Підштольні", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Undermine Clam Chowder, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[16767] = { "рецепт: Молюсковий суп Підштольні", use="Навчає вас готувати молюсковий суп Підштольні.", recipe_result_item=16766 }, -- Recipe: Undermine Clam Chowder, @use Teaches you how to cook a hot Undermine Clam Chowder.
[16782] = { "дивна водяна куля" }, -- Strange Water Globe
[16783] = { "зв'язка наказів" }, -- Bundle of Reports
[16784] = { "сапфір Аку'Май" }, -- Sapphire of Aku'Mai
[16785] = { "завіт Рексара" }, -- Rexxar's Testament
[16786] = { "око чорного драконіда" }, -- Black Dragonspawn Eye
[16787] = { "амулет обману драконів", use="Замаскуватися під члена чорного крила драконів." }, -- Amulet of Draconic Subversion, @use Use to disguise yourself as a member of the Black Dragonflight.
[16788] = { "штурвал капітана Ракмора" }, -- Captain Rackmore's Wheel
[16789] = { "румпель капітана Ракмора" }, -- Captain Rackmore's Tiller
[16790] = { "розмокла записка" }, -- Damp Note
[16791] = { "шовкострумні браслети" }, -- Silkstream Cuffs
[16793] = { "пластинчасті наплічники" }, -- Arcmetal Shoulders
[16794] = { "наручі сталевого хвату" }, -- Gripsteel Wristguards
[16869] = { "череп Провидця" }, -- The Skull of Scryer
[16870] = { "череп Сомнуса" }, -- The Skull of Somnus
[16871] = { "череп Хроналіса" }, -- The Skull of Chronalis
[16872] = { "череп Акстроза" }, -- The Skull of Axtroz
[16873] = { "плетені хутряні рукавички" }, -- Braidfur Gloves
[16885] = { "важка скринька" }, -- Heavy Junkbox
[16886] = { "шабля беззаконника", equip="Збільшує силу атаки на 15." }, -- Outlaw Sabre, @equip +15 Attack Power.
[16887] = { "відьомський палець" }, -- Witch's Finger
[16888] = { "згаслий амулет полум'я дракона" }, -- Dull Drakefire Amulet
[16889] = { "полірована палиця" }, -- Polished Walking Staff
[16890] = { "булатна шабля" }, -- Slatemetal Cutlass
[16891] = { "аргілітовий короткий меч" }, -- Claystone Shortsword
[16892] = { "менший камінь душі", ref=5232 }, -- Lesser Soulstone
[16893] = { "камінь душі", ref=5232 }, -- Soulstone
[16894] = { "кришталевий жезл" }, -- Clear Crystal Rod
[16895] = { "великий камінь душі", ref=5232 }, -- Greater Soulstone
[16896] = { "величезний камінь душі", ref=5232 }, -- Major Soulstone
[16967] = { "фераласька ахі" }, -- Feralas Ahi
[16968] = { "сар'теріський мілинник" }, -- Sar'theris Striker
[16969] = { "синій вітрильник Дикого узбережжя" }, -- Savage Coast Blue Sailfin
[16970] = { "махі-махі Туманного Очерету" }, -- Misty Reed Mahi Mahi
[16971] = { "омлюск-сюрприз", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 12 на 15 хв." }, -- Clamlette Surprise, @use Restores 1392 health over 30 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 12 Stamina and Spirit for 15 min.
[16972] = { "хоругва Каранґа", use="Розмістити на тотемному пагорбі Гидколісових." }, -- Karang's Banner, @use Place at the Foulweald Totem Mound.
[16973] = { "флакон зі зловісною водою" }, -- Vial of Dire Water
[16974] = { "порожній флакон для води", use="Наповнити в зловісному ставку." }, -- Empty Water Vial, @use Fill at the Dire Pool.
[16975] = { "пояс Боєпісні" }, -- Warsong Sash
[16976] = { "тотем Мурґута" }, -- Murgut's Totem
[16977] = { "чоботи Боєпісні" }, -- Warsong Boots
[16978] = { "рукавиці Боєпісні" }, -- Warsong Gauntlets
[16981] = { "браслети совоборода" }, -- Owlbeard Bracers
[16985] = { "черевики шукача вітру" }, -- Windseeker Boots
[16986] = { "рукавиці піщаного шпиля" }, -- Sandspire Gloves
[16987] = { "пояс вереску", equip="Збільшує силу атаки на 12." }, -- Screecher Belt, @equip +12 Attack Power.
[16990] = { "плащ фей" }, -- Spritekin Cloak
[16991] = { "перев'язувальні бинти", use="Перев'язати легкопораненого, тяжкопораненого чи смертельно пораненого солдата." }, -- Triage Bandage, @use Use on Injured, Badly Injured, and Critically Injured Soldiers.
[16992] = { "порохостріл Димня" }, -- Smokey's Explosive Launcher
[16993] = { "вогнестріл Димня" }, -- Smokey's Fireshooter
[16994] = { "рукавиці Смеркокрила" }, -- Duskwing Gloves
[16995] = { "плащ Смертокрила" }, -- Duskwing Mantle
[16996] = { "кроволісний лук" }, -- Gorewood Bow
[16997] = { "штормолют" }, -- Stormrager
[16998] = { "священний захисник" }, -- Sacred Protector
[17001] = { "перстень стихій" }, -- Elemental Circle
[17002] = { "лімфобризк", hit="Отруює ціль, завдаючи 8 шкоди від природи кожні 2 сек протягом 20 сек." }, -- Ichor Spitter, @hit Poisons target for 8 Nature damage every 2 sec for 20 sec.
[17003] = { "молот череп'яного каменю" }, -- Skullstone Hammer
[17004] = { "путівник Сари" }, -- Sarah's Guide
[17005] = { "мундир грубіяна" }, -- Boorguard Tunic
[17006] = { "кобальтові поножі" }, -- Cobalt Legguards
[17008] = { "маленький сувій", flavor="На сувої красується печатка з невідомим вам знаком." }, -- Small Scroll, @flavor The scroll bears an insignia foreign to you.
[17009] = { "голова посла Малкіна" }, -- Ambassador Malcin's Head
[17010] = { "вогняне ядро" }, -- Fiery Core
[17011] = { "лавове ядро" }, -- Lava Core
[17012] = { "шкіра надр" }, -- Core Leather
[17020] = { "арканічний пил" }, -- Arcane Powder
[17021] = { "дикі ягоди" }, -- Wild Berries
[17026] = { "дикий колючекорінь" }, -- Wild Thornroot
[17028] = { "свята свічка" }, -- Holy Candle
[17029] = { "священна свічка" }, -- Sacred Candle
[17030] = { "анкх" }, -- Ankh
[17031] = { "руна телепортації" }, -- Rune of Teleportation
[17032] = { "руна порталів" }, -- Rune of Portals
[17033] = { "знак божественності" }, -- Symbol of Divinity
[17034] = { "насіння клена" }, -- Maple Seed
[17035] = { "насіння з Тернистої долини" }, -- Stranglethorn Seed
[17036] = { "насіння ясена" }, -- Ashwood Seed
[17037] = { "насіння граба" }, -- Hornbeam Seed
[17038] = { "насіння залізного дерева" }, -- Ironwood Seed
[17039] = { "череполом" }, -- Skullbreaker
[17042] = { "цвяхостріл" }, -- Nail Spitter
[17043] = { "мантія фанатика" }, -- Zealot's Robe
[17044] = { "воля мученика", equip="Збільшує силу атаки на 30." }, -- Will of the Martyr, @equip +30 Attack Power.
[17045] = { "кров мученика" }, -- Blood of the Martyr
[17046] = { "клинок для патрання" }, -- Gutterblade
[17047] = { "світний амікт" }, -- Luminescent Amice
[17048] = { "ром Ромсі", use="Збільшує витривалість на 10 протягом 15 хвилин та люто п'янить!" }, -- Rumsey Rum, @use Increases Stamina by 10 for 15 min and gets you drunk to boot!
[17057] = { "блискуча риб'яча луска" }, -- Shiny Fish Scales
[17058] = { "риб'ячий жир" }, -- Fish Oil
[17114] = { "уламок філактерії Аража" }, -- Araj's Phylactery Shard
[17117] = { "флейта щуролова", use="Пограти на флейті, щоб зачарувати підземних щурів в депо Глибокобіжного трамвая." }, -- Rat Catcher's Flute, @use Use to lull the vermin infesting the Deeprun Tram into a state of raptured bliss.
[17118] = { "коробка загадкового м'яса", flavor="Не трясти." }, -- Carton of Mystery Meat, @flavor Handle With Care.
[17119] = { "шашлик з підземних щурів", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Deeprun Rat Kabob, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[17124] = { "емблема Синдикату" }, -- Syndicate Emblem
[17125] = { "печатка Рейвенхольдта" }, -- Seal of Ravenholdt
[17182] = { "Сульфурас, рука Раґнароса", equip="Завдає 5 шкоди від вогню всім, хто атакує вас у ближньому бою.", hit="Кидає вогняну кулю, яка завдає від 273 до 333 шкоди від вогню і додатково 75 шкоди за 10 сек." }, -- Sulfuras, Hand of Ragnaros, @equip Deals 5 Fire damage to anyone who strikes you with a melee attack., @hit Hurls a fiery ball that causes 273 to 333 Fire damage and an additional 75 damage over 10 sec.
[17191] = { "скіпетр Келебраса", use="Створити портал, що переносить членів групи, які ним користуються, до водоспаду Земної Пісні у внутрішньому Мародоні. (Відновлення 30 сек)" }, -- Scepter of Celebras, @use Creates a portal, teleporting group members that use it to Earth Song Falls in inner Maraudon. (30 Sec Cooldown)
[17193] = { "сульфуроновий молот", hit="Кидає вогняну кулю, яка завдає від 83 до 101 шкоди від вогню і додатково 16 шкоди за 8 сек." }, -- Sulfuron Hammer, @hit Hurls a fiery ball that causes 83 to 101 Fire damage and an additional 16 damage over 8 sec.
[17194] = { "святкові спеції" }, -- Holiday Spices
[17196] = { "дух свята", use="Досить слабкий алкогольний напій." }, -- Holiday Spirits, @use A fairly weak alcoholic beverage.
[17197] = { "імбирне печиво", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 2 на 15 хв." }, -- Gingerbread Cookie, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min.
[17198] = { "ґоґель-моґель", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 2 на 15 хв. А ще він п'янить..." }, -- Egg Nog, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min.  Also packs quite a kick...
[17200] = { "рецепт: Імбирне печиво", use="Навчає вас приготуванню імбирного печива." }, -- Recipe: Gingerbread Cookie, @use Teaches you how to bake a Gingerbread Cookie.
[17201] = { "рецепт: Ґоґель-моґель", use="Навчає вас приготуванню ґоґель-моґеля." }, -- Recipe: Egg Nog, @use Teaches you how to make Egg Nog.
[17202] = { "сніжка", use="Кинь мене!" }, -- Snowball, @use Throw me!
[17203] = { "злиток сульфурону" }, -- Sulfuron Ingot
[17204] = { "око Сульфураса", use="Око Сульфураса можна поєднати з сульфуроновим молотом, щоб створити Сульфурас, легендарний молот Раґнароса." }, -- Eye of Sulfuras, @use The Eye of Sulfuras can be combined with the Sulfuron Hammer to create Sulfuras, legendary hammer of Ragnaros.
[17222] = { "павуча сосиска", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 12 протягом 15 хв." }, -- Spider Sausage, @use Restores 1392 health over 30 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 12 Stamina and Spirit for 15 min.
[17303] = { "блакитний обгортковий папір зі стрічкою" }, -- Blue Ribboned Wrapping Paper
[17304] = { "зелений обгортковий папір зі стрічкою" }, -- Green Ribboned Wrapping Paper
[17306] = { "кров солдата Бурешпиля" }, -- Stormpike Soldier's Blood
[17307] = { "фіолетовий обгортковий папір зі стрічкою" }, -- Purple Ribboned Wrapping Paper
[17309] = { "браслет збожеволілого сплеска" }, -- Discordant Bracers
[17310] = { "аспект Нептулона", use="Використати на зачумлених елементалях в Східних Зачумлених землях. (Відновлення 30 сек)" }, -- Aspect of Neptulon, @use Used on plagued water elementals in Eastern Plaguelands. (30 Sec Cooldown)
[17322] = { "око Вуглегляда" }, -- Eye of the Emberseer
[17326] = { "плоть солдата Бурешпиля", flavor="Дбайливо зібрана з полів Альтерака." }, -- Stormpike Soldier's Flesh, @flavor Alliance: the other, other, OTHER, white meat.
[17327] = { "плоть лейтенанта Бурешпиля" }, -- Stormpike Lieutenant's Flesh
[17328] = { "плоть командира Бурешпиля" }, -- Stormpike Commander's Flesh
[17329] = { "рука Люцифрона" }, -- Hand of Lucifron
[17330] = { "рука Сульфурона" }, -- Hand of Sulfuron
[17331] = { "рука Геєнаса" }, -- Hand of Gehennas
[17332] = { "рука Шаззраха" }, -- Hand of Shazzrah
[17344] = { "rарамельна тростина", use="Відновлює 61.2 здоров'я протягом 18 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Candy Cane, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[17346] = { "вкрита хітином річ" }, -- Encrusted Silithid Object
[17348] = { "величезний напій лікування", ref=17349 }, -- Major Healing Draught
[17349] = { "відмінний напій лікування", use="Відновлює від {1} до {2} здоров'я. Цей предмет можна використовувати лише на полях боїв (PvP).#Restores {1} to {2}" }, -- Superior Healing Draught, @use Restores 560 to 720 health. This item may only be used in PvP Battlegrounds. (5 Min Cooldown)
[17351] = { "величезний напій мани", ref=17352 }, -- Major Mana Draught
[17352] = { "відмінний напій мани", use="Відновлює від {1} до {2} мани. Цей предмет можна використовувати лише на полях боїв (PvP).#Restores {1} to {2}" }, -- Superior Mana Draught, @use Restores 560 to 720 mana. This item may only be used in PvP Battlegrounds. (5 Min Cooldown)
[17353] = { "наказ Бурешпиля про атаку" }, -- Stormpike Assault Orders
[17354] = { "всевидяче око майстра Райсона" }, -- Master Ryson's All Seeing Eye
[17355] = { "лист Рабіна" }, -- Rabine's Letter
[17384] = { "портативний подрібнювач Зінфіззлекса", use="Створити подрібнювач, яким ви можете керувати! (Відновлення 45 хв)" }, -- Zinfizzlex's Portable Shredder Unit, @use Creates a Shredder Unit that you control! (45 Min Cooldown)
[17403] = { "ігристий напій Паровиманювання", use="Звичайний алкогольний напій." }, -- Steamwheedle Fizzy Spirits, @use A typical alcoholic beverage.
[17404] = { "напій з мелених бобів", use="Відновлює 436.8 мани протягом 21 сек. Потрібно залишатися в сидячому положенні під час пиття." }, -- Blended Bean Brew, @use Restores 436.8 mana over 21 sec.  Must remain seated while drinking.
[17405] = { "зелений чай", use="Відновлює 1344.6 мани протягом 27 сек. Потрібно залишатися в сидячому положенні під час пиття." }, -- Green Garden Tea, @use Restores 1344.6 mana over 27 sec.  Must remain seated while drinking.
[17406] = { "святковий сир", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Holiday Cheesewheel, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[17407] = { "домашній м'ясний пиріг Ґракку", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Graccu's Homemade Meat Pie, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[17408] = { "гостре в'ялене м'ясо", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Spicy Beefstick, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[17410] = { "портативний подрібнювач Зінфіззлекса", use="Створити подрібнювач, яким ви можете керувати! (Відновлення 45 хв)" }, -- Zinfizzlex's Portable Shredder Unit, @use Creates a Shredder Unit that you control! (45 Min Cooldown)
[17411] = { "парова пилка" }, -- Steamsaw
[17422] = { "уламки броні", flavor="Віднесіть до коваля на вашій базі, щоб підсилити військо" }, -- Armor Scraps, @flavor Return to your base blacksmith to help upgrade troops
[17423] = { "кристал шторму" }, -- Storm Crystal
[17442] = { "наказ Морозних Вовків про атаку", flavor="Передати отаману Ґарріку на поле Чвар" }, -- Frostwolf Assault Orders, @flavor Give to Warmaster Garrick in the Field of Strife
[17502] = { "медаль солдата Морозних Вовків" }, -- Frostwolf Soldier's Medal
[17503] = { "медаль лейтенанта Морозних Вовків" }, -- Frostwolf Lieutenant's Medal
[17504] = { "медаль командира Морозних Вовків" }, -- Frostwolf Commander's Medal
[17505] = { "маяк Ічмана", use="Розмістити маяк на кладовищі Снігопаду. Захищайте його! (Відновлення 30 хв)" }, -- Ichman's Beacon, @use Plants the beacon at the Snowfall Graveyard. Protect it from harm! (30 Min Cooldown)
[17508] = { "баклер лютокаменю" }, -- Forcestone Buckler
[17522] = { "припаси Залізодонних" }, -- Irondeep Supplies
[17523] = { "плащ Димня" }, -- Smokey's Drape
[17542] = { "припаси Кригозубих" }, -- Coldtooth Supplies
[17626] = { "намордник Морозних Вовків", use="Приручити морозного вовка. Поверніть приручену тварину доглядачці стайні Морозних Вовків." }, -- Frostwolf Muzzle, @use Use to muzzle a Frostwolf. Return the muzzled animal to the Frostwolf Stable Master.
[17642] = { "шкура альтерацького барана" }, -- Alterac Ram Hide
[17643] = { "шкура морозного вовка" }, -- Frostwolf Hide
[17662] = { "викрадені ласощі", flavor="Отримувач: торгова мережа \"Пасовища Димного Лісу\"" }, -- Stolen Treats, @flavor Deliver to: Smokywood Pastures Retail
[17684] = { "терадричний кришталевий орнамент" }, -- Theradric Crystal Carving
[17685] = { "зразок товарів Пасовищ Димного Лісу" }, -- Smokywood Pastures Sampler
[17686] = { "лук великого мисливця" }, -- Master Hunter's Bow
[17687] = { "рушниця великого мисливця" }, -- Master Hunter's Rifle
[17688] = { "чоботи джунглів" }, -- Jungle Boots
[17689] = { "тренувальний нашийник Бурешпилів", use="Приручити альтерацького барана. Поверніть приручену тварину доглядачці стайні Бурешпилів." }, -- Stormpike Training Collar, @use Use to train an Alterac Ram. Return the tamed animal to the Stormpike Stable Master.
[17690] = { "відзнака Морозних Вовків, ранг 1", use="Повернення в притулок форту Морозних Вовків. (Відновлення 2 хв)" }, -- Frostwolf Insignia Rank 1, @use Returns you to the sanctuary of Frostwolf Keep. (2 Min Cooldown)
[17691] = { "відзнака Бурешпилів, ранг 1", use="Повернення в притулок Дун-Балдара. (Відновлення 2 хв)" }, -- Stormpike Insignia Rank 1, @use Returns you to the sanctuary of Dun Baldar. (2 Min Cooldown)
[17692] = { "роговий перстень" }, -- Horn Ring
[17693] = { "лазуровий флакон з покриттям", use="Наповнити в кришталевому помаранчевому озері Мародона." }, -- Coated Cerulean Vial, @use Fill at the orange crystal pool in Maraudon.
[17696] = { "наповнений лазуровий флакон", use="Полити злолозу, щоб очистити її від прокляття." }, -- Filled Cerulean Vial, @use Pour on Vylestem Vines to purge them of corruption.
[17702] = { "жезл Келебраса" }, -- Celebrian Rod
[17703] = { "діамант Келебраса" }, -- Celebrian Diamond
[17704] = { "лезо Зими", hit="Підриває ціль, завдаючи їй 30 шкоди від криги." }, -- Edge of Winter, @hit Blasts a target for 30 Frost damage.
[17705] = { "клинок-молотник", hit="Дає додаткову атаку під час наступного удару." }, -- Thrash Blade, @hit Grants an extra attack on your next swing.
[17706] = { "креслення: Лезо Зими", use="Навчає вас створювати лезо Зими." }, -- Plans: Edge of Winter, @use Teaches you how to make the Edge of Winter.
[17708] = { "еліксир крижаної міці", use="Збільшує шкоду від заклинань криги на {1} на {2} хв. (Відновлення 3 сек)#to {1} for {2} min" }, -- Elixir of Frost Power, @use Increases spell frost damage by up to 15 for 30 min. (3 Sec Cooldown)
[17709] = { "рецепт: Еліксир крижаної міці", use="Навчає вас створювати еліксир крижаної міці." }, -- Recipe: Elixir of Frost Power, @use Teaches you how to make an Elixir of Frost Power.
[17716] = { "СнігоРоб 9000", use="Дозволяє досвідченим інженерам перетворювати воду на сніжку. Снігоробу потрібен день, щоб накопичити холод для нової сніжки. (Відновлення 1 день)" }, -- SnowMaster 9000, @use Allows an experienced engineer to turn water into a snowball.  The Snowmaster requires a day to build up enough chill to freeze another snowball. (1 Day Cooldown)
[17720] = { "креслення: СнігоРоб 9000", use="Навчає вас створювати СнігоРоб 9000." }, -- Schematic: Snowmaster 9000, @use Teaches you how to make a SnowMaster 9000.
[17721] = { "рукавички Дідуся Зими", equip={ "Збільшує зцілення від заклинань і ефектів на 18.", "Збільшує шкоду від заклинань і ефектів природи на 10." } }, -- Gloves of the Greatfather, @equip Increases healing done by spells and effects by up to 18., @equip Increases damage done by Nature spells and effects by up to 10.
[17722] = { "викрійка: Рукавички Дідуся Зими", use="Навчає вас пошиттю рукавичок Дідуся Зими." }, -- Pattern: Gloves of the Greatfather, @use Teaches you how to craft Gloves of the Greatfather.
[17723] = { "зелена святкова сорочка" }, -- Green Holiday Shirt
[17724] = { "викрійка: Зелена святкова сорочка", use="Навчає вас пошиттю зеленої святкової сорочки." }, -- Pattern: Green Holiday Shirt, @use Teaches you how to sew a Green Holiday Shirt.
[17725] = { "формула: Чари для зброї - сила Зими", use="Навчає вас накладати на зброю чари, що збільшують шкоду від заклинань криги на 7." }, -- Formula: Enchant Weapon - Winter's Might, @use Teaches you how to permanently enchant a weapon to grant up to 7 additional frost damage when casting frost spells.
[17726] = { "особливий подарунок Пасовищ Димного Лісу" }, -- Smokywood Pastures Special Gift
[17727] = { "подарунковий набір Пасовищ Димного Лісу" }, -- Smokywood Pastures Gift Pack
[17735] = { "Свято Зимової Покрови" }, -- The Feast of Winter Veil
[17743] = { "стрижень відродження", equip={ "Відновлює 8 мани кожні 5 сек.", "Відновлює 5 здоров'я кожні 5 сек." } }, -- Resurgence Rod, @equip Restores 8 mana per 5 sec., @equip Restores 5 health every 5 sec.
[17753] = { "лук хранителя гаю", equip="Шанс вразити ціль жалом хранителя та нанести від 15 до 21 шкоди від сил природи." }, -- Verdant Keeper's Aim, @equip Chance to strike your ranged target with Keeper's Sting for 15 to 21 Nature damage.
[17756] = { "фрагмент тінекаменю" }, -- Shadowshard Fragment
[17757] = { "амулет Духів", use="Змушує духів перших ханів кентаврів проявитися у фізичному світі." }, -- Amulet of Spirits, @use Forces the spirits of the first centaur Kahns to manifest in the physical world.
[17758] = { "амулет Єднання", flavor="A great deal of power radiates from the amulet..." }, -- Amulet of Union, @flavor A great deal of power radiates from the amulet...
[17759] = { "знак рішучості", equip="Збільшує ваш шанс протистояти ефектам оглушення та страху на 1%.", use="Поглинає від 350 до 650 фізичної шкоди. Триває 10 сек. (Відновлення 30 хв)" }, -- Mark of Resolution, @equip Increases your chance to resist Stun and Fear effects by 1%., @use Absorbs 350 to 650 physical damage.  Lasts 10 sec. (30 Min Cooldown)
[17760] = { "насіння життя" }, -- Seed of Life
[17761] = { "самоцвіт першого хана", use="Помістити всі п'ять ханських самоцвітів в амулет Духів.", flavor="Знайдено на тілі Колка..." }, -- Gem of the First Khan, @use Places all five of the Khans' gems in the Amulet of Spirits., @flavor Found on the body of Kolk...
[17762] = { "самоцвіт другого хана", use="Помістити всі п'ять ханських самоцвітів в амулет Духів.", flavor="Знайдено на тілі Ґелка..." }, -- Gem of the Second Khan, @use Places all five of the Khans' gems in the Amulet of Spirits., @flavor Found on the body of Gelk...
[17763] = { "самоцвіт третього хана", use="Помістити всі п'ять ханських самоцвітів в амулет Духів.", flavor="Знайдено на тілі Маґри..." }, -- Gem of the Third Khan, @use Places all five of the Khans' gems in the Amulet of Spirits., @flavor Found on the body of Magra...
[17764] = { "самоцвіт четвертого хана", use="Помістити всі п'ять ханських самоцвітів в амулет Духів.", flavor="Знайдено на тілі Маравдуса..." }, -- Gem of the Fourth Khan, @use Places all five of the Khans' gems in the Amulet of Spirits., @flavor Found on the body of Maraudos...
[17765] = { "самоцвіт п'ятого хана", use="Помістити всі п'ять ханських самоцвітів в амулет Духів.", flavor="Знайдено на тілі Венґа..." }, -- Gem of the Fifth Khan, @use Places all five of the Khans' gems in the Amulet of Spirits., @flavor Found on the body of Veng...
[17766] = { "cкіпетр принцеси Терадрас", hit="Ранить ціль, спричиняючи 160 шкоди та знижуючи її броню на 100." }, -- Princess Theradras' Scepter, @hit Wounds the target for 160 damage and lowers their armor by 100.
[17768] = { "перстень насіння лісу" }, -- Woodseed Hoop
[17770] = { "рукавиці пазуристої гілки", equip="Відновлює 2 здоров'я кожні 5 сек." }, -- Branchclaw Gauntlets, @equip Restores 2 health per 5 sec.
[17771] = { "злиток елементію" }, -- Elementium Bar
[17772] = { "ревний кулон тінекаменю", equip="Збільшує силу атаки на 20." }, -- Zealous Shadowshard Pendant, @equip +20 Attack Power.
[17773] = { "дивовижний кулон тінекаменю" }, -- Prodigious Shadowshard Pendant
[17774] = { "знак обраних", equip="Шанс збільшити всі характеристики на 25 протягом 1 хв при отриманні удару в бою. (Імовірність: 2%)" }, -- Mark of the Chosen, @equip Has a 2% chance when struck in combat of increasing all stats by 25 for 1 min. (Proc chance: 2%)
[17775] = { "вбрання проникливості" }, -- Acumen Robes
[17776] = { "шолом жвавості" }, -- Sprightring Helm
[17777] = { "кольчуга безжалісності", equip="Збільшує силу атаки на 20." }, -- Relentless Chain, @equip +20 Attack Power.
[17778] = { "пояс полину" }, -- Sagebrush Girdle
[17779] = { "напліччя брили" }, -- Hulkstone Pauldrons
[17781] = { "вказівки кентавра-парії" }, -- The Pariah's Instructions
[17849] = { "знамено Бурешпилів" }, -- Stormpike Banner
[17850] = { "знамено Морозних Вовків" }, -- Frostwolf Banner
[17900] = { "відзнака Бурешпилів, ранг 2", equip="Відновлює 2 здоров'я кожні 5 сек.", use="Повернення в притулок Дун-Балдара. (Відновлення 2 хв)" }, -- Stormpike Insignia Rank 2, @equip Restores 2 health per 5 sec., @use Returns you to the sanctuary of Dun Baldar. (2 Min Cooldown)
[17901] = { "відзнака Бурешпилів, ранг 3", equip={ "Відновлює 2 здоров'я кожні 5 сек.", "Збільшує ваш шанс ухилитися від атаки на 1%." }, use="Повернення в притулок Дун-Балдара. (Відновлення 2 хв)" }, -- Stormpike Insignia Rank 3, @equip Restores 2 health per 5 sec., @equip Increases your chance to dodge an attack by 1%., @use Returns you to the sanctuary of Dun Baldar. (2 Min Cooldown)
[17902] = { "відзнака Бурешпилів, ранг 4", equip={ "Відновлює 5 здоров'я кожні 5 сек.", "Збільшує ваш шанс ухилитися від атаки на 1%." }, use="Повернення в притулок Дун-Балдара. (Відновлення 2 хв)" }, -- Stormpike Insignia Rank 4, @equip Restores 5 health per 5 sec., @equip Increases your chance to dodge an attack by 1%., @use Returns you to the sanctuary of Dun Baldar. (2 Min Cooldown)
[17903] = { "відзнака Бурешпилів, ранг 5", equip={ "Відновлює 7 здоров'я кожні 5 сек.", "Збільшує ваш шанс ухилитися від атаки на 1%." }, use="Повернення в притулок Дун-Балдара. (Відновлення 2 хв)" }, -- Stormpike Insignia Rank 5, @equip Restores 7 health per 5 sec., @equip Increases your chance to dodge an attack by 1%., @use Returns you to the sanctuary of Dun Baldar. (2 Min Cooldown)
[17904] = { "відзнака Бурешпилів, ранг 6", equip={ "Відновлює 8 здоров'я кожні 5 сек.", "Збільшує ваш шанс ухилитися від атаки на 2%." }, use="Повернення в притулок Дун-Балдара. (Відновлення 2 хв)", flavor="Око Командування" }, -- Stormpike Insignia Rank 6, @equip Restores 8 health per 5 sec., @equip Increases your chance to dodge an attack by 2%., @use Returns you to the sanctuary of Dun Baldar., @flavor The Eye of Command
[17905] = { "відзнака Морозних Вовків, ранг 2", equip="Відновлює 2 здоров'я кожні 5 сек.", use="Повернення в притулок форту Морозних Вовків. (Відновлення 2 хв)" }, -- Frostwolf Insignia Rank 2, @equip Restores 2 health per 5 sec., @use Returns you to the sanctuary of Frostwolf Keep. (2 Min Cooldown)
[17906] = { "відзнака Морозних Вовків, ранг 3", equip={ "Відновлює 2 здоров'я кожні 5 сек.", "Збільшує ваш шанс ухилитися від атаки на 1%." }, use="Повернення в притулок форту Морозних Вовків. (Відновлення 2 хв)" }, -- Frostwolf Insignia Rank 3, @equip Restores 2 health per 5 sec., @equip Increases your chance to dodge an attack by 1%., @use Returns you to the sanctuary of Frostwolf Keep. (2 Min Cooldown)
[17907] = { "відзнака Морозних Вовків, ранг 4", equip={ "Відновлює 5 здоров'я кожні 5 сек.", "Збільшує ваш шанс ухилитися від атаки на 1%." }, use="Повернення в притулок форту Морозних Вовків. (Відновлення 2 хв)" }, -- Frostwolf Insignia Rank 4, @equip Restores 5 health per 5 sec., @equip Increases your chance to dodge an attack by 1%., @use Returns you to the sanctuary of Frostwolf Keep. (2 Min Cooldown)
[17908] = { "відзнака Морозних Вовків, ранг 5", equip={ "Відновлює 7 здоров'я кожні 5 сек.", "Збільшує ваш шанс ухилитися від атаки на 1%." }, use="Повернення в притулок форту Морозних Вовків. (Відновлення 2 хв)" }, -- Frostwolf Insignia Rank 5, @equip Restores 7 health per 5 sec., @equip Increases your chance to dodge an attack by 1%., @use Returns you to the sanctuary of Frostwolf Keep. (2 Min Cooldown)
[17909] = { "відзнака Морозних Вовків, ранг 6", equip={ "Відновлює 8 здоров'я кожні 5 сек.", "Збільшує ваш шанс ухилитися від атаки на 2%." }, use="Повернення в притулок форту Морозних Вовків. (Відновлення 2 хв)", flavor="Око Командування" }, -- Frostwolf Insignia Rank 6, @equip Restores 8 health per 5 sec., @equip Increases your chance to dodge an attack by 2%., @use Returns you to the sanctuary of Frostwolf Keep., @flavor The Eye of Command
[17967] = { "очищена луска Оніксії" }, -- Refined Scale of Onyxia
[18022] = { "королівська печатка Алексіса" }, -- Royal Seal of Alexis
[18042] = { "стріли з торієвим вістрям", desc="Додає 17,5 пошкодження за секунду" }, -- Thorium Headed Arrow, @desc Adds 17.5 damage per second
[18045] = { "ніжний вовчий стейк", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 12 на 15 хв." }, -- Tender Wolf Steak, @use Restores 1392 health over 30 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 12 Stamina and Spirit for 15 min.
[18046] = { "рецепт: Ніжний вовчий стейк", use="Навчає вас готувати ніжний вовчий стейк.", recipe_result_item=18045 }, -- Recipe: Tender Wolf Steak, @use Teaches you how to cook a Tender Wolf Steak.
[18142] = { "відрубана голова нічного ельфа" }, -- Severed Night Elf Head
[18143] = { "пучок волосся гнома" }, -- Tuft of Gnome Hair
[18144] = { "уламок людської кістки" }, -- Human Bone Chip
[18145] = { "копито таурена" }, -- Tauren Hoof
[18146] = { "моджо троля Темного Списа" }, -- Darkspear Troll Mojo
[18147] = { "серце відреченого" }, -- Forsaken Heart
[18148] = { "череп Коррака" }, -- Skull of Korrak
[18149] = { "руна повернення", use="Повернення в притулок форту Морозних Вовків." }, -- Rune of Recall, @use Returns you to the sanctuary of Frostwolf Keep.
[18150] = { "руна повернення", use="Повернення в притулок Дун-Балдара." }, -- Rune of Recall, @use Returns you to the sanctuary of Dun Baldar.
[18151] = { "наповнений аметистовий фіал" }, -- Filled Amethyst Phial
[18152] = { "аметистовий фіал", use="Наповнити аметистовий фіал водами місячного колодязя поляни Оракула." }, -- Amethyst Phial, @use Fill the Amethyst Phial at the Oracle Glade moonwell.
[18160] = { "рецепт: Прудкоп'яховий чай", use="Навчає вас приготуванню прудкоп'яхового чаю." }, -- Recipe: Thistle Tea, @use Teaches you how to brew a Thistle Tea.
[18169] = { "вогняний покрив Світанку", use="Додати на наплічники чари, що збільшують супротив вогню на 5." }, -- Flame Mantle of the Dawn, @use Permanently adds 5 fire resistance to a shoulder slot item.
[18170] = { "крижаний покрив Світанку", use="Додати на наплічники чари, що збільшують супротив кризі на 5." }, -- Frost Mantle of the Dawn, @use Permanently adds 5 frost resistance to a shoulder slot item.
[18171] = { "арканічний покрив Світанку", use="Додати на наплічники чари, що збільшують супротив аркані на 5." }, -- Arcane Mantle of the Dawn, @use Permanently adds 5 arcane resistance to a shoulder slot item.
[18172] = { "природній покрив Світанку", use="Додати на наплічники чари, що збільшують супротив природі на 5." }, -- Nature Mantle of the Dawn, @use Permanently adds 5 nature resistance to a shoulder slot item.
[18173] = { "тіньовий покрив Світанку", use="Додати на наплічники чари, що збільшують супротив тіні на 5." }, -- Shadow Mantle of the Dawn, @use Permanently adds 5 shadow resistance to a shoulder slot item.
[18182] = { "хроматичний покрив Світанку", use="Додати на наплічники чари, що збільшують супротив всім школам магії на 5." }, -- Chromatic Mantle of the Dawn, @use Permanently adds 5 resistance to all magic schools to a shoulder slot item.
[18207] = { "зуб орка" }, -- Orc Tooth
[18229] = { "Посібник Нета Пеґла з екстремальної риболовлі", flavor="У цій книжці відсутні всі сторінки, окрім останньої." }, -- Nat Pagle's Guide to Extreme Anglin', @flavor This book is missing every page but the last.
[18232] = { "польовий ремонтний робот 74A", use="Розгорнути польового ремонтного робота, який може ремонтувати спорядження і купувати непотрібні товари. Через 10 хвилин його двигун виходить з ладу." }, -- Field Repair Bot 74A, @use Unfolds into a Field Repair Bot that can repair damaged items and purchase unwanted goods.  After 10 minutes its internal motor fails.
[18235] = { "креслення: польовий ремонтний робот 74A", use="Навчає вас створювати польового ремонтного робота 74A, який відремонтує будь-яке спорядження за звичайну ціну." }, -- Schematic: Field Repair Bot 74A, @use Teaches you how to make a Field Repair Bot 74A that will repair any player's equipment for the normal cost.
[18240] = { "огрська дубильна рідина" }, -- Ogre Tannin
[18244] = { "чорний бойовий баран", use="Викликає та відпускає верхового чорного бойового барана. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Black War Ram, @use Summons and dismisses a rideable black war ram.  This is a very fast mount. (3 Sec Cooldown)
[18248] = { "червоний бойовий кінь-скелет", use="Викликає та відпускає верхового бойового коня-скелета. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Red Skeletal Warhorse, @use Summons and dismisses a rideable red skeletal warhorse.  This is a very fast mount. (3 Sec Cooldown)
[18250] = { "ключ від кайданів Ґордока", flavor="Використовується з кайданами Ґордока." }, -- Gordok Shackle Key, @flavor Used with Gordok ogre shackles.
[18253] = { "величезне зілля відживлення", use="Відновлює від {1} до {2} мани та здоров'я. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Major Rejuvenation Potion, @use Restores 1440 to 1760 mana and health. (2 Min Cooldown)
[18256] = { "зміцнений фіал" }, -- Imbued Vial
[18257] = { "рецепт: Величезне зілля відживлення", use="Навчає вас створювати величезне зілля відживлення." }, -- Recipe: Major Rejuvenation Potion, @use Teaches you how to make a Major Rejuvenation Potion.
[18258] = { "костюм ґордоцького огра", use="Замаскуватися під одного з огрів Ґордока і, можливо, навіть обдурити якогось капітана!  Костюм триматиметься лише 10 хвилин.", flavor="Повторює кожен вигин тіла!" }, -- Gordok Ogre Suit, @use Disguise yourself as one of the Gordok ogres, and maybe even fool a particular captain in the process!  The suit will only hold together for 10 min., @flavor It lifts AND supports!
[18261] = { "книга замовлянь" }, -- Book of Incantations
[18269] = { "зелений ґордоцький грог", use="Збільшує витривалість на 10 на 15 хвилин і добряче п'янить. Зелений - значить хороший!" }, -- Gordok Green Grog, @use Increases Stamina by 10 for 15 min and gets you drunk to boot.  Green means it's good!
[18283] = { "точноціл Бізніка 247x128", use="Оснащення лука або вогнепальної зброї прицілом, що збільшує шанс нанесення удару на 3%." }, -- Biznicks 247x128 Accurascope, @use Attaches a permanent scope to a bow or gun that increases its chance to hit by 3%.
[18284] = { "вбивче пійло Кріґа", use="Збільшує дух на 25, але зменшує інтелект на 5 протягом 15 хв. До дна!" }, -- Kreeg's Stout Beatdown, @use Increases Spirit by 25, but decreases Intelligence by 5 for 15 min.  Smoooooth.
[18290] = { "креслення: Точноціл Бізніка 247x128", use="Навчає вас створювати точноціл Бізніка 247x128." }, -- Schematic: Biznicks 247x128 Accurascope, @use Teaches you how to make a Biznicks 247x128 Accurascope.
[18294] = { "еліксир глибшого водного дихання", use="Дозволяє дихати водою протягом {1} год. (Відновлення 3 сек)#for {1} h" }, -- Elixir of Greater Water Breathing, @use Allows the Imbiber to breathe water for 1 hour. (3 Sec Cooldown)
[18299] = { "сутність Гідроподоби" }, -- Hydrospawn Essence
[18329] = { "магічний камінь прудкості", use="Додати на поножі або головний убір чари, що збільшують швидкість 1%. Не сумується з іншими чарами на предметі." }, -- Arcanum of Rapidity, @use Permanently adds 1% haste to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[18330] = { "магічний камінь зосередження", use="Додати на поножі або головний убір чари, що збільшують шкоду і зцілення від заклинань на 8. Не сумується з іншими чарами на предметі." }, -- Arcanum of Focus, @use Permanently adds +8 to your Healing and Damage from spells to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[18331] = { "магічний камінь захисту", use="Додати на поножі або головний убір чари, що збільшують шанс ухилитися на 1%. Не сумується з іншими чарами на предметі." }, -- Arcanum of Protection, @use Permanently adds 1% dodge to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[18332] = { "манускрипт прудкості", flavor="Темні руни пливуть поверхнею манускрипту." }, -- Libram of Rapidity, @flavor Dark runes skitter across the surface.
[18333] = { "манускрипт зосередження", flavor="Темні руни пливуть поверхнею манускрипту." }, -- Libram of Focus, @flavor Dark runes skitter across the surface.
[18334] = { "манускрипт захисту", flavor="Темні руни пливуть поверхнею манускрипту." }, -- Libram of Protection, @flavor Dark runes skitter across the surface.
[18335] = { "чистий чорний діамант" }, -- Pristine Black Diamond
[18336] = { "рукавичка могутності Ґордока", flavor="Ця рукавичка виглядає так, ніби колись була наповнена потужною магією." }, -- Gauntlet of Gordok Might, @flavor This gauntlet looks as though it once was imbued with potent magic.
[18348] = { "Квел'Серрар", hit="Збільшує навичку захисту носія на 13, а броню - на 300 протягом 10 сек.", flavor="The High Blade" }, -- Quel'Serrar, @hit When active, grants the wielder 13 defense and 300 armor for 10 sec., @flavor The High Blade
[18356] = { "Ґарона: дослідження непомітності та зради", flavor="Фоліант запечатаний магією." }, -- Garona: A Study on Stealth and Treachery, @flavor The tome is magically sealed.
[18357] = { "Кодекс захисту", flavor="Фоліант запечатаний магією." }, -- Codex of Defense, @flavor The tome is magically sealed.
[18358] = { "Кулінарна книга арканіста", flavor="Фоліант запечатаний магією." }, -- The Arcanist's Cookbook, @flavor The tome is magically sealed.
[18359] = { "Світло і як ним керувати", flavor="Автор: Утер" }, -- The Light and How to Swing It, @flavor -By Uther
[18360] = { "Приборкання тіней", flavor="Казки з Спустошених земель від леді Севіни." }, -- Harnessing Shadows, @flavor Tales from the Blasted Lands as told by Lady Sevine.
[18361] = { "Найвеличніші змагання мисливців", flavor="Казка про трольку та її тигра" }, -- The Greatest Race of Hunters, @flavor A Tale of a Female Troll and Her Tiger
[18362] = { "Святе лицемірство: про що мовчить світло", flavor="Автор: жрець тіні Аллістер" }, -- Holy Bologna: What the Light Won't Tell You, @flavor -By Shadow Priest Allister
[18363] = { "Крижаний шок і ви", flavor="Автор: Дрек'Тар" }, -- Frost Shock and You, @flavor -By Drek'Thar
[18364] = { "Смарагдовий Сон", flavor="Ретельно спланований фарс у виконанні мого брата -автор: Іллідан" }, -- The Emerald Dream, @flavor Fact or Carefully Planned Out Farce Perpetrated By My Brother -By Illidan
[18366] = { "бойові рукавиці Ґордока", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Gordok's Handguards, @equip Improves your chance to get a critical strike by 1%.
[18367] = { "рукавиці Ґордока", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." }, -- Gordok's Gauntlets, @equip Improves your chance to get a critical strike with spells by 1%.
[18368] = { "рукавички Ґордока", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." }, -- Gordok's Gloves, @equip Improves your chance to get a critical strike with spells by 1%.
[18369] = { "ручні пов'язки Ґордока", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." }, -- Gordok's Handwraps, @equip Improves your chance to get a critical strike with spells by 1%.
[18398] = { "перстень припливів" }, -- Tidal Loop
[18399] = { "океанський бриз" }, -- Ocean's Breeze
[18400] = { "перстень живого каменю" }, -- Ring of Living Stone
[18401] = { "Довідник Ностро по винищенню драконів", flavor="Кілька сторінок порожні." }, -- Nostro's Compendium of Dragon Slaying, @flavor Several pages are blank.
[18402] = { "сяючий кришталевий перстень" }, -- Glowing Crystal Ring
[18403] = { "печатка драконоборця", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." }, -- Dragonslayer's Signet, @equip Improves your chance to get a critical strike with spells by 1%.
[18404] = { "підвіска зубу Оніксії", equip={ "Збільшує ваш шанс нанесення удару на 1%. ", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Onyxia Tooth Pendant, @equip Improves your chance to hit by 1%., @equip Improves your chance to get a critical strike by 1%.
[18406] = { "талісман крові Оніксії", equip={ "Збільшує ваш шанс парирування атаки на 1%.", "Збільшує навичку захисту на 8.", "Відновлює 7 здоров'я кожні 5 сек." } }, -- Onyxia Blood Talisman, @equip Increases your chance to parry an attack by 1%., @equip Increased Defense +8., @equip Restores 7 health per 5 sec.
[18410] = { "меч бігуна", hit="Збільшує швидкість бігу на 30% протягом 10 сек." }, -- Sprinter's Sword, @hit Increases run speed by 30% for 10 sec.
[18411] = { "чоботи моторності", equip="Збільшує ваш шанс ухилитися від атаки на 1%." }, -- Spry Boots, @equip Increases your chance to dodge an attack by 1%.
[18412] = { "фрагмент ядра" }, -- Core Fragment
[18420] = { "кістколом", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Bonecrusher, @equip Improves your chance to get a critical strike by 1%.
[18421] = { "шолом таємного лісу", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Backwood Helm, @equip Improves your chance to get a critical strike by 1%.
[18422] = { "голова Оніксії", flavor="Голова матері чорних драконів" }, -- Head of Onyxia, @flavor The head of the Black Dragonflight's Brood Mother
[18423] = { "голова Оніксії", flavor="Голова матері чорних драконів" }, -- Head of Onyxia, @flavor The head of the Black Dragonflight's Brood Mother
[18424] = { "осокові чоботи" }, -- Sedge Boots
[18426] = { "тенета Лестендріс" }, -- Lethtendris's Web
[18465] = { "королівська печатка Ельдре'Таласа", equip="Збільшує ваш шанс нанесення удару на 2%.", flavor="Благословенна старійшинами Шен'дралар." }, -- Royal Seal of Eldre'Thalas, @equip Improves your chance to hit by 2%., @flavor Blessed by the Shen'dralar Ancients.
[18466] = { "королівська печатка Ельдре'Таласа", equip="Збільшує броню на 200.", flavor="Благословенна старійшинами Шен'дралар." }, -- Royal Seal of Eldre'Thalas, @equip +200 Armor., @flavor Blessed by the Shen'dralar Ancients.
[18467] = { "королівська печатка Ельдре'Таласа", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 23.", flavor="Благословенна старійшинами Шен'дралар." }, -- Royal Seal of Eldre'Thalas, @equip Increases damage and healing done by magical spells and effects by up to 23., @flavor Blessed by the Shen'dralar Ancients.
[18468] = { "королівська печатка Ельдре'Таласа", equip="Відновлює 8 мани кожні 5 сек.", flavor="Благословенна старійшинами Шен'дралар." }, -- Royal Seal of Eldre'Thalas, @equip Restores 8 mana per 5 sec., @flavor Blessed by the Shen'dralar Ancients.
[18469] = { "королівська печатка Ельдре'Таласа", equip={ "Збільшує зцілення від заклинань і ефектів на 33.", "Відновлює 4 мани кожні 5 сек." }, flavor="Благословенна старійшинами Шен'дралар." }, -- Royal Seal of Eldre'Thalas, @equip Increases healing done by spells and effects by up to 33., @equip Restores 4 mana per 5 sec., @flavor Blessed by the Shen'dralar Ancients.
[18470] = { "королівська печатка Ельдре'Таласа", equip="Збільшує зцілення від заклинань і ефектів на 44.", flavor="Благословенна старійшинами Шен'дралар." }, -- Royal Seal of Eldre'Thalas, @equip Increases healing done by spells and effects by up to 44., @flavor Blessed by the Shen'dralar Ancients.
[18471] = { "королівська печатка Ельдре'Таласа", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 23.", flavor="Благословенна старійшинами Шен'дралар." }, -- Royal Seal of Eldre'Thalas, @equip Increases damage and healing done by magical spells and effects by up to 23., @flavor Blessed by the Shen'dralar Ancients.
[18472] = { "королівська печатка Ельдре'Таласа", equip={ "Збільшує броню на 150.", "Збільшує зцілення від заклинань і ефектів на 22." }, flavor="Благословенна старійшинами Шен'дралар." }, -- Royal Seal of Eldre'Thalas, @equip +150 Armor., @equip Increases healing done by spells and effects by up to 22., @flavor Blessed by the Shen'dralar Ancients.
[18473] = { "королівська печатка Ельдре'Таласа", equip="Збільшує силу атаки дальнього бою на 48.", flavor="Благословенна старійшинами Шен'дралар." }, -- Royal Seal of Eldre'Thalas, @equip +48 ranged Attack Power., @flavor Blessed by the Shen'dralar Ancients.
[18488] = { "нагрітий древній клинок", use="Встромити в серце матері драконів, щоб загартувати клинок." }, -- Heated Ancient Blade, @use Drive into the heart of the brood mother to temper the heated blade.
[18489] = { "неопалений древній клинок", use="Підставити клинок під вогняний подих Оніксії." }, -- Unfired Ancient Blade, @use Place under the flaming breath of Onyxia.
[18491] = { "прядка знань", equip="Відновлює 3 мани кожні 5 сек." }, -- Lorespinner, @equip Restores 3 mana per 5 sec.
[18492] = { "загартований древній клинок", flavor="Загартований в крові Оніксії." }, -- Treated Ancient Blade, @flavor Tempered in the blood of Onyxia.
[18501] = { "уламок Сквернолози" }, -- Felvine Shard
[18512] = { "личинкова кислота" }, -- Larval Acid
[18513] = { "тупий і плаский ельфійський клинок" }, -- A Dull and Flat Elven Blade
[18535] = { "щит Міллі", equip="Відновлює 4 здоров'я кожні 5 сек." }, -- Milli's Shield, @equip Restores 4 health per 5 sec.
[18536] = { "словник Міллі", equip="Відновлює 6 мани кожні 5 сек." }, -- Milli's Lexicon, @equip Restores 6 mana per 5 sec.
[18539] = { "релікварій чистоти", use="Запечатати уламок Сквернолози в релікварій чистоти." }, -- Reliquary of Purity, @use Seal a Felvine Shard inside the Reliquary of Purity.
[18540] = { "запечатаний релікварій чистоти" }, -- Sealed Reliquary of Purity
[18562] = { "елементієва руда" }, -- Elementium Ore
[18563] = { "кайдани Шукача Вітру", flavor="Ліва половина вічної в'язниці Громаана" }, -- Bindings of the Windseeker, @flavor The Left Half of Thunderaan's Eternal Prison
[18564] = { "кайдани Шукача Вітру", flavor="Права половина вічної в'язниці Громаана" }, -- Bindings of the Windseeker, @flavor The Right Half of Thunderaan's Eternal Prison
[18567] = { "стихійний флюс" }, -- Elemental Flux
[18585] = { "перстень відданості" }, -- Band of Allegiance
[18586] = { "кільце Самітного Дерева" }, -- Lonetree's Circle
[18588] = { "Динаміт \"Простокид II\"", use="Завдає від 213 до 287 шкоди вогнем в радіусі 5 м. (За умови досягнення цілі, можуть накладатись обмеження.) (Відновлення 1 хв)", flavor="Динаміт для неінженерів, який рідко* вибухає у вашій руці з удвічі більшою вибуховою потужністю, ніж стандартний Простокид." }, -- Ez-Thro Dynamite II, @use Inflicts 213 to 287 Fire damage in a 5 yard radius (Assuming that it gets to the target, some restrictions may apply.) (1 Min Cooldown), @flavor The dynamite for Non-Engineers that rarely* blows up in your hand with over twice the blasting power of standard EZ-Thro.
[18590] = { "кров лютого звіра" }, -- Raging Beast's Blood
[18591] = { "скриня з кров'ю" }, -- Case of Blood
[18592] = { "креслення: Сульфуроновий молот", use="Навчає вас створювати сульфуроновий молот." }, -- Plans: Sulfuron Hammer, @use Teaches you how to make a Sulfuron Hammer.
[18594] = { "потужний сифорієвий заряд", use="Підриває майже будь-які замки." }, -- Powerful Seaforium Charge, @use Blasts open nearly any locked door.
[18597] = { "свисток орка-сироти", use="Клацніть правою кнопкою миші, щоб викликати і відпустити сироту, за якою ви погодилися наглядати протягом дитячого тижня." }, -- Orcish Orphan Whistle, @use Right Click to summon and dismiss the orphan you've agreed to look after for Children's Week.
[18598] = { "свисток сироти", use="Клацніть правою кнопкою миші, щоб викликати і відпустити сироту, за якою ви погодилися наглядати протягом дитячого тижня." }, -- Human Orphan Whistle, @use Right Click to summon and dismiss the orphan you've agreed to look after for Children's Week.
[18601] = { "сяючий кристал ув'язнення", use="Ув'язнити командира вартових приречення." }, -- Glowing Crystal Prison, @use Imprisons a Doomguard Commander.
[18602] = { "фоліант жертвоприношення", equip="Відновлює 6 здоров'я кожні 5 сек." }, -- Tome of Sacrifice, @equip Restores 6 health per 5 sec.
[18603] = { "кров сатира" }, -- Satyr Blood
[18604] = { "сльози Гедеріни" }, -- Tears of the Hederine
[18605] = { "ув'язнений вартовий приречення" }, -- Imprisoned Doomguard
[18608] = { "Благословення", equip={ "Збільшує шанс критичного ефекту ваших заклинань світла на 2%.", "Збільшує зцілення від заклинань і ефектів на 106." }, use="Викликає Анафему. (Відновлення 30 хв)" }, -- Benediction, @equip Increases the critical effect chance of your Holy spells by 2%., @equip Increases healing done by spells and effects by up to 106., @use Calls forth Anathema. (30 Min Cooldown)
[18609] = { "Анафема", equip={ "Відновлює 7 мани кожні 5 сек.", "Збільшує шкоду від заклинань і ефектів тіні на 69." }, use="Викликає Благословення. (Відновлення 30 хв)" }, -- Anathema, @equip Restores 7 mana per 5 sec., @equip Increases damage done by Shadow spells and effects by up to 69., @use Calls forth Benediction. (30 Min Cooldown)
[18622] = { "бездоганна есенція скверни (Джеденар)" }, -- Flawless Fel Essence (Jaedenar)
[18623] = { "бездоганна есенція скверни (Темний Портал)" }, -- Flawless Fel Essence (Dark Portal)
[18624] = { "бездоганна есенція скверни (Азшара)" }, -- Flawless Fel Essence (Azshara)
[18625] = { "ядро Крошія" }, -- Kroshius' Infernal Core
[18626] = { "вогонь скверни", use="Підпалити Крошіуса, щоб повернути переможеного пекельника до життя." }, -- Fel Fire, @use Ignites Kroshius, reanimating the fallen infernal.
[18628] = { "договір Торієвого братства", flavor="Обрамлений дротом з темного заліза" }, -- Thorium Brotherhood Contract, @flavor Bound in Dark Iron Wiring
[18629] = { "чорний магнетит", use="Перезапустити атрибут ритуалу великого виклику. Потрібен 1 уламок душі." }, -- Black Lodestone, @use Restart a failing power node during the Ritual of Greater Summoning.  Requires 1 Soul Shard.
[18632] = { "Місяцеграйна іриска", use="Відновлює 874.8 здоров'я протягом 27 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Moonbrook Riot Taffy, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[18633] = { "кислий льодяник Стіліни", use="Відновлює 243.6 здоров'я протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Styleen's Sour Suckerpop, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[18635] = { "горіховий батончик Беллари", use="Відновлює 1392 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Bellara's Nutterbar, @use Restores 1392 health over 30 sec.  Must remain seated while eating.
[18641] = { "масивний динаміт", use="Завдає від 340 до 460 шкоди вогнем в радіусі 5 м. (Відновлення 1 хв)" }, -- Dense Dynamite, @use Inflicts 340 to 460 Fire damage in a 5 yard radius. (1 Min Cooldown)
[18642] = { "автограф Джайни", flavor="Будь сильним, Рандіс, і стань героєм, яким тобі судилося бути.  -- Леді Джейна Праудмур" }, -- Jaina's Autograph, @flavor Be strong Randis, and aspire to be the hero you were meant to be.  -- Lady Jaina Proudmoore
[18643] = { "відбиток копита Керна", flavor="Слухай духів, юний Ґрунт. Саме від них справжні герої чують своє покликання.  -- Керн Криваве Копито" }, -- Cairne's Hoofprint, @flavor Heed the spirits, young Grunth.  It is there that true heroes hear their calling.  -- Cairne Bloodhoof
[18646] = { "Око Божественності", flavor="Ви помічаєте рух, коли вдивляєтеся в Око." }, -- The Eye of Divinity, @flavor You can see movement when you peer into the Eye.
[18650] = { "креслення: Динаміт \"Простокид II\"", use="Навчає вас створювати Динаміт \"Простокид II\"." }, -- Schematic: EZ-Thro Dynamite II, @use Teaches you how to make EZ-Thro Dynamite II.
[18656] = { "креслення: Потужний сифорієвий заряд", use="Навчає вас створювати потужний сифорієвий заряд." }, -- Schematic: Powerful Seaforium Charge, @use Teaches you how to make a Powerful Seaforium Charge.
[18659] = { "уламок Нордрассіля", use="Утворює Благословення в поєднанні з Оком Тіні та Оком Божественності.", flavor="Крихітний фрагмент Світового Дерева" }, -- Splinter of Nordrassil, @use Forms Benediction when combined with the Eye of Shadow and the Eye of Divinity., @flavor A tiny fragment of the World Tree
[18660] = { "збільшувач світу", use="Збільшує весь світ навколо вас на 5 хвилин або поки ви не атакуєте.", flavor="Лише технології гномів можуть впливати на весь світ!" }, -- World Enlarger, @use Enlarges the entire world for 5 min or until you attack. (1 Hour Cooldown), @flavor Only Gnomish Technology could invent a device that affects the entire world!
[18662] = { "м'яч з важкої шкіри", use="Киньте м'яч дружнім гравцям. Якщо у них є вільне місце у сумці, вони його спіймають!" }, -- Heavy Leather Ball, @use Throw the ball to a friendly player.   If they have free room in their pack they will catch it!
[18663] = { "банка з Дж'іві", use="Випустити демона Дж'іві в центрі підніжжя в'язниці Безсмер'тера в Грізному Молоті." }, -- J'eevee's Jar, @use Release the imp J'eevee in the center of the Pedestal of Immol'thar in Dire Maul.
[18664] = { "Трактат про військові звання" }, -- A Treatise on Military Ranks
[18665] = { "Око Тіні", flavor="В Оці кипить темрява." }, -- The Eye of Shadow, @flavor Seething darkness engulfs the eye.
[18670] = { "зоротські письмена", use="Викликати зоротського жахожеребця в зарядженому колі великого виклику." }, -- Xorothian Glyphs, @use Summon a Xorothian Dreadsteed within an empowered Circle of Dark Summoning.
[18675] = { "Військові звання Орди і Альянсу" }, -- Military Ranks of the Horde & Alliance
[18687] = { "зоротський зоряний пил" }, -- Xorothian Stardust
[18688] = { "біс у банці", use="Випустити біса біля алхімічної лабораторії Школоманса." }, -- Imp in a Jar, @use Release the imp near the Scholomance's alchemy lab.
[18703] = { "древній скам'янілий листок", flavor="Дуже великий скам'янілий листок." }, -- Ancient Petrified Leaf, @flavor A very large petrified leaf.
[18704] = { "сухожилля дорослого синього дракона" }, -- Mature Blue Dragon Sinew
[18705] = { "сухожилля дорослого чорного дракона" }, -- Mature Black Dragon Sinew
[18706] = { "знак майстра арени" }, -- Arena Master
[18707] = { "різблене рунами руків'я древніх", use="Створити Рок'Делар, довгий лук древніх хранителів об'єднавши руків'я з зачарованим сухожиллям дорослого чорного дракона.", flavor="Подарунок від древніх." }, -- Ancient Rune Etched Stave, @use Forms Rhok'delar, Longbow of the Ancient Keepers, when combined with Enchanted Black Dragon Sinew., @flavor A Gift from the Ancients.
[18708] = { "скам'яніла кора" }, -- Petrified Bark
[18713] = { "Рок'Делар, довгий лук древніх хранителів", equip={ "Збільшує ваш шанс критичного удару на 1%.", "Збільшує вашу силу атаки дальнього бою на 17." } }, -- Rhok'delar, Longbow of the Ancient Keepers, @equip Improves your chance to get a critical strike by 1%., @equip +17 ranged Attack Power.
[18714] = { "перетягнутий жилою лист древнього", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Ancient Sinew Wrapped Lamina, @equip Increases ranged attack speed by 15%.
[18719] = { "серце зрадника" }, -- The Traitor's Heart
[18724] = { "зачароване сухожилля дорослого чорного дракона", flavor="Практично незруйновна тятива. Ідеально підійде до могутнього руків'я." }, -- Enchanted Black Dragon Sinew, @flavor An almost indestructible string. Perfect for a mighty bow stave.
[18731] = { "викрійка: М'яч з важкої шкіри", use="Навчає вас створенню м'яча з важкої шкіри." }, -- Pattern: Heavy Leather Ball, @use Teaches you how to craft a Heavy Leather Ball.
[18746] = { "кристал провидіння", use="Помістити кристал провидіння в глибинах підземель великого склепу." }, -- Divination Scryer, @use Plant the Divination Scryer in the heart of the Great Ossuary's basement.
[18749] = { "згублена душа коня", use="Дарувати спасіння згубленій душі коня, провівши ритуал спокути." }, -- Charger's Lost Soul, @use Reclaim the lost soul of death knight's charger, judging it redeemed.
[18752] = { "кадильниця екзорцизму", use="Виявлення духів, що населяють руїни Страходолу. (Відновлення 30 сек)" }, -- Exorcism Censer, @use Reveal the spirits that haunt the ruins of Terrordale. (30 Sec Cooldown)
[18753] = { "арканітовий бард" }, -- Arcanite Barding
[18762] = { "уламок зеленого полум'я", equip="Збільшує шкоду від заклинань і ефектів вогню на 16." }, -- Shard of the Green Flame, @equip Increases damage done by Fire spells and effects by up to 16.
[18766] = { "поводи стрімкого кригозуба", use="Викликає та відпускає верхового стрімкого кригозуба. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Reins of the Swift Frostsaber, @use Summons and dismisses a rideable Swift Frostsaber.  This is a very fast mount. (3 Sec Cooldown)
[18767] = { "поводи стрімкого імлозуба", use="Викликає та відпускає верхового стрімкого імлозуба. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Reins of the Swift Mistsaber, @use Summons and dismisses a rideable Swift Mistsaber.  This is a very fast mount. (3 Sec Cooldown)
[18769] = { "Зачаровані торієві обладунки", flavor="Том I" }, -- Enchanted Thorium Platemail, @flavor Volume I
[18770] = { "Зачаровані торієві обладунки", flavor="Том II" }, -- Enchanted Thorium Platemail, @flavor Volume II
[18771] = { "Зачаровані торієві обладунки", flavor="Том III" }, -- Enchanted Thorium Platemail, @flavor Volume III
[18772] = { "стрімкий зелений механобіг", use="Викликає та відпускає стрімкого зеленого механобіга. Це дуже швидкий засіб пересування. (Відновлення 3 сек)" }, -- Swift Green Mechanostrider, @use Summons and dismisses a Swift Green Mechanostrider.   This is a very fast mount. (3 Sec Cooldown)
[18773] = { "стрімкий білий механобіг", use="Викликає та відпускає стрімкого білого механобіга. Це дуже швидкий засіб пересування. (Відновлення 3 сек)" }, -- Swift White Mechanostrider, @use Summons and dismisses a Swift White Mechanostrider.   This is a very fast mount. (3 Sec Cooldown)
[18774] = { "стрімкий жовтий механобіг", use="Викликає та відпускає стрімкого жовтого механобіга. Це дуже швидкий засіб пересування. (Відновлення 3 сек)" }, -- Swift Yellow Mechanostrider, @use Summons and dismisses a Swift Yellow Mechanostrider.   This is a very fast mount. (3 Sec Cooldown)
[18775] = { "збагачений маною корм для коней", flavor="Овес та зерно змішане з наповненим маною печивом Сріблястого Світанку." }, -- Manna-Enriched Horse Feed, @flavor Oats and grains specially mixed with the Argent Dawn's enriched manna biscuits.
[18776] = { "стрімкий соловий кінь", use="Викликає та відпускає верхового стрімкого солового коня. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift Palomino, @use Summons and dismisses a rideable Swift Palomino.  This is a very fast mount. (3 Sec Cooldown)
[18777] = { "стрімкий гнідий кінь", use="Викликає та відпускає верхового стрімкого гнідого коня. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift Brown Steed, @use Summons and dismisses a rideable Swift Brown Steed.  This is a very fast mount. (3 Sec Cooldown)
[18778] = { "стрімкий білий кінь", use="Викликає та відпускає верхового стрімкого білого коня. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift White Steed, @use Summons and dismisses a rideable Swift White Steed.  This is a very fast mount. (3 Sec Cooldown)
[18779] = { "нижня частина книги з кування обладунків: том I", use="Об'єднати дві половини книги з кування обладунків: том I." }, -- Bottom Half of Advanced Armorsmithing: Volume I, @use Combines the Top and Bottom Half of Advanced Armorsmithing: Volume I.
[18780] = { "верхня частина книги з кування обладунків: том I", use="Об'єднати дві половини книги з кування обладунків: том I." }, -- Top Half of Advanced Armorsmithing: Volume I, @use Combines the Top and Bottom Half of Advanced Armorsmithing: Volume I.
[18781] = { "нижня частина книги з кування обладунків: том II", use="Об'єднати дві половини книги з кування обладунків: том II." }, -- Bottom Half of Advanced Armorsmithing: Volume II, @use Combines the Top and Bottom Half of Advanced Armorsmithing: Volume II.
[18782] = { "верхня частина книги з кування обладунків: том II", use="Об'єднати дві половини книги з кування обладунків: том II." }, -- Top Half of Advanced Armorsmithing: Volume II, @use Combines the Top and Bottom Half of Advanced Armorsmithing: Volume II.
[18783] = { "нижня частина книги з кування обладунків: том III", use="Об'єднати дві половини книги з кування обладунків: том III." }, -- Bottom Half of Advanced Armorsmithing: Volume III, @use Combines the Top and Bottom Half of Advanced Armorsmithing: Volume III.
[18784] = { "верхня частина книги з кування обладунків: том III", use="Об'єднати дві половини книги з кування обладунків: том III." }, -- Top Half of Advanced Armorsmithing: Volume III, @use Combines the Top and Bottom Half of Advanced Armorsmithing: Volume III.
[18785] = { "стрімкий білий баран", use="Викликає та відпускає верхового стрімкого білого барана. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift White Ram, @use Summons and dismisses a rideable swift white ram.  This is a very fast mount. (3 Sec Cooldown)
[18786] = { "стрімкий коричневий баран", use="Викликає та відпускає верхового стрімкого коричневого барана. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift Brown Ram, @use Summons and dismisses a rideable swift brown ram.  This is a very fast mount. (3 Sec Cooldown)
[18787] = { "стрімкий сірий баран", use="Викликає та відпускає верхового стрімкого сірого барана. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift Gray Ram, @use Summons and dismisses a rideable swift gray ram.  This is a very fast mount. (3 Sec Cooldown)
[18788] = { "стрімкий блакитний раптор", use="Викликає та відпускає верхового раптора. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift Blue Raptor, @use Summons and dismisses a rideable Raptor.  This is a very fast mount. (3 Sec Cooldown)
[18789] = { "стрімкий оливковий раптор", use="Викликає та відпускає верхового раптора. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift Olive Raptor, @use Summons and dismisses a rideable Raptor.  This is a very fast mount. (3 Sec Cooldown)
[18790] = { "стрімкий помаранчевий раптор", use="Викликає та відпускає верхового раптора. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift Orange Raptor, @use Summons and dismisses a rideable Raptor.  This is a very fast mount. (3 Sec Cooldown)
[18791] = { "ліловий бойовий кінь-скелет", use="Викликає та відпускає верхового бойового коня-скелета. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Purple Skeletal Warhorse, @use Summons and dismisses a rideable skeletal warhorse.  This is a very fast mount. (3 Sec Cooldown)
[18792] = { "благословенний арканітовий бард" }, -- Blessed Arcanite Barding
[18793] = { "великий білий кодо", use="Викликає та відпускає верхового кодо. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Great White Kodo, @use Summons and dismisses a rideable kodo.  This is a very fast mount. (3 Sec Cooldown)
[18794] = { "великий бурий кодо", use="Викликає та відпускає верхового кодо. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Great Brown Kodo, @use Summons and dismisses a rideable kodo.  This is a very fast mount. (3 Sec Cooldown)
[18795] = { "великий сірий кодо", use="Викликає та відпускає верхового кодо. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Great Gray Kodo, @use Summons and dismisses a rideable kodo.  This is a very fast mount. (3 Sec Cooldown)
[18796] = { "ріг стрімкого бурого вовка", use="Викликає та відпускає верхового вовка. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Horn of the Swift Brown Wolf, @use Summons and dismisses a rideable wolf.  This is a very fast mount. (3 Sec Cooldown)
[18797] = { "ріг стрімкого лісового вовка", use="Викликає та відпускає верхового вовка. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Horn of the Swift Timber Wolf, @use Summons and dismisses a rideable wolf.  This is a very fast mount. (3 Sec Cooldown)
[18798] = { "ріг стрімкого сірого вовка", use="Викликає та відпускає верхового вовка. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Horn of the Swift Gray Wolf, @use Summons and dismisses a rideable wolf.  This is a very fast mount. (3 Sec Cooldown)
[18799] = { "спасенна душа коня" }, -- Charger's Redeemed Soul
[18802] = { "тіньове зілля", use="Наділяє вас духом тіні, унаслідок чого жителі Джеденара ставляться до вас дружелюбно. Діє 20 хвилин." }, -- Shadowy Potion, @use Infuses imbiber with a taint of shadow, making him/her friendly to the denizens of Jaedenar.  Lasts 20 minutes.
[18804] = { "сумка лорда Тінелома", flavor="В сумці знаходиться кристал провидіння та благословенний арканітовий бард." }, -- Lord Grayson's Satchel, @flavor Your finished Divination Scryer and Blessed Arcanite Barding are inside the satchel.
[18807] = { "шолом прихованої сили", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14." } }, -- Helm of Latent Power, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 14.
[18818] = { "вказівки Мор'зула" }, -- Mor'zul's Instructions
[18819] = { "кадильниця екзорцизму Рогана" }, -- Rohan's Exorcism Censer
[18839] = { "бойове зілля лікування", use="Відновлює від {1} до {2} здоров'я. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Combat Healing Potion, @use Restores 700 to 900 health. (2 Min Cooldown)
[18841] = { "бойове зілля мани", use="Відновлює від {1} до {2} мани. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Combat Mana Potion, @use Restores 900 to 1500 mana. (2 Min Cooldown)
[18880] = { "голова Тінегубителя" }, -- Darkreaver's Head
[18902] = { "поводи стрімкого штормозуба", use="Викликає та відпускає верхового стрімкого штормозуба. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Reins of the Swift Stormsaber, @use Summons and dismisses a rideable Swift Stormsaber.  This is a very fast mount. (3 Sec Cooldown)
[18904] = { "ультразменшувач Зорбіна", use="Зменшити велетня Фераласа до менш небезпечної форми. (Відновлення 30 сек)" }, -- Zorbin's Ultra-Shrinker, @use Zap a Feralas giant into a more manageable form. (30 Sec Cooldown)
[18922] = { "секретний рецепт: вогненний флюс", flavor="Тримати подалі від Торієвого братства." }, -- Secret Plans: Fiery Flux, @flavor Keep away from Thorium Brotherhood.
[18942] = { "вогненний флюс" }, -- Fiery Flux
[18943] = { "подушка Темного Заліза" }, -- Dark Iron Pillow
[18944] = { "луска вогнезавра" }, -- Incendosaur Scale
[18945] = { "ожарина темного заліза" }, -- Dark Iron Residue
[18946] = { "голова розпорядника Мальторія" }, -- Head of Overseer Maltorius
[18947] = { "шкура лютошрамного єті" }, -- Rage Scar Yeti Hide
[18950] = { "подушка покоївки Ніжностиск", flavor="Одна велика подушка." }, -- Chambermaid Pillaclencher's Pillow, @flavor This is one big pillow.
[18951] = { "м'яка подушка Евоніс", equip="Зменшує шкоду від падіння." }, -- Evonice's Landin' Pilla, @equip While equipped, the wearer suffers less damage from falls.
[18952] = { "голова Симони" }, -- Simone's Head
[18953] = { "голова Клінфрана" }, -- Klinfran's Head
[18954] = { "голова Соленора" }, -- Solenor's Head
[18955] = { "голова Арторія" }, -- Artorius's Head
[18956] = { "залишок мініатюризації" }, -- Miniaturization Residue
[18957] = { "клинок чагарників" }, -- Brushwood Blade
[18958] = { "ядро водяного елементаля" }, -- Water Elemental Core
[18959] = { "ковальська фурма" }, -- Smithing Tuyere
[18960] = { "підзорна труба спостерігача" }, -- Lookout's Spyglass
[18961] = { "панцир Зукк'аш" }, -- Zukk'ash Carapace
[18962] = { "залоза Жалохвоста" }, -- Stinglasher's Glands
[18969] = { "бездоганна шкура єті" }, -- Pristine Yeti Hide
[18972] = { "ідеальна шкура єті" }, -- Perfect Yeti Hide
[18987] = { "наказ Чорнорука", flavor="Лист з наказом Ренда Чорнорука." }, -- Blackhand's Command, @flavor A letter of command from Rend Blackhand.
[19002] = { "голова Нефаріана", flavor="Голова Нефаріана, сина Смертекрила." }, -- Head of Nefarian, @flavor The head of Nefarian: Brood of Deathwing.
[19003] = { "голова Нефаріана", flavor="Голова Нефаріана, сина Смертекрила." }, -- Head of Nefarian, @flavor The head of Nefarian: Brood of Deathwing.
[19004] = { "крихітний камінь здоров'я", use="Миттєво відновлює 110 здоров'я. (Відновлення 2 хв)" }, -- Minor Healthstone, @use Instantly restores 110 life. (2 Min Cooldown)
[19005] = { "крихітний камінь здоров'я", use="Миттєво відновлює 120 здоров'я. (Відновлення 2 хв)" }, -- Minor Healthstone, @use Instantly restores 120 life. (2 Min Cooldown)
[19006] = { "малий камінь здоров'я", use="Миттєво відновлює 275 здоров'я. (Відновлення 2 хв)" }, -- Lesser Healthstone, @use Instantly restores 275 life. (2 Min Cooldown)
[19007] = { "малий камінь здоров'я", use="Миттєво відновлює 300 здоров'я. (Відновлення 2 хв)" }, -- Lesser Healthstone, @use Instantly restores 300 life. (2 Min Cooldown)
[19008] = { "камінь здоров'я", use="Миттєво відновлює 550 здоров'я. (Відновлення 2 хв)" }, -- Healthstone, @use Instantly restores 550 life. (2 Min Cooldown)
[19009] = { "камінь здоров'я", use="Миттєво відновлює 600 здоров'я. (Відновлення 2 хв)" }, -- Healthstone, @use Instantly restores 600 life. (2 Min Cooldown)
[19010] = { "великий камінь здоров'я", use="Миттєво відновлює 880 здоров'я. (Відновлення 2 хв)" }, -- Greater Healthstone, @use Instantly restores 880 life. (2 Min Cooldown)
[19011] = { "великий камінь здоров'я", use="Миттєво відновлює 960 здоров'я. (Відновлення 2 хв)" }, -- Greater Healthstone, @use Instantly restores 960 life. (2 Min Cooldown)
[19012] = { "величезний камінь здоров'я", use="Миттєво відновлює 1320 здоров'я. (Відновлення 2 хв)" }, -- Major Healthstone, @use Instantly restores 1320 life. (2 Min Cooldown)
[19013] = { "величезний камінь здоров'я", use="Миттєво відновлює 1440 здоров'я. (Відновлення 2 хв)" }, -- Major Healthstone, @use Instantly restores 1440 life. (2 Min Cooldown)
[19016] = { "посудина відродження" }, -- Vessel of Rebirth
[19017] = { "сутність Повелителя Вогню" }, -- Essence of the Firelord
[19018] = { "сплячий поцілований вітром клинок" }, -- Dormant Wind Kissed Blade
[19019] = { "Громолють, благословенний клинок Шукача Вітру", hit="Вражає ворога блискавкою, що завдає 300 одиниць шкоди від природи, а потім стрибає на інших ворогів, що знаходяться поруч. Кожен стрибок зменшує супротив силам природи жертви на 25. Вражає 5 цілей. Ваша основна ціль також поглинається циклоном, що сповільнюює швидкість її атаки на 20% на 12 сек." }, -- Thunderfury, Blessed Blade of the Windseeker, @hit Blasts your enemy with lightning, dealing 300 Nature damage and then jumping to additional nearby enemies.  Each jump reduces that victim's Nature resistance by 25. Affects 5 targets. Your primary target is also consumed by a cyclone, slowing its attack speed by 20% for 12 sec.
[19020] = { "звіт про комах Зукк'аш з табору Мохаче" }, -- Camp Mojache Zukk'ash Report
[19022] = { "вудка екстремальної риболовлі Нета Пеґла FC-5000", equip="Збільшує навичку риболовлі на 25.", flavor="Обмежена серія" }, -- Nat Pagle's Extreme Angler FC-5000, @equip Increased Fishing +25., @flavor Limited Edition
[19023] = { "найкраща приманка Катума" }, -- Katoom's Best Lure
[19024] = { "знак гросмейстера арени", equip="Збільшує ваш шанс ухилитися від атаки на 1%.", use="Поглинає від 750 до 1250 шкоди.  Триває 20 сек. (Відновлення 30 хв)" }, -- Arena Grand Master, @equip Increases your chance to dodge an attack by 1%., @use Absorbs 750 to 1250 damage.  Lasts 20 sec. (30 Min Cooldown)
[19025] = { "перо володаря неба" }, -- Skylord Plume
[19033] = { "загублені інструменти Вуглепала" }, -- Slagtree's Lost Tools
[19034] = { "обід Ларда" }, -- Lard's Lunch
[19035] = { "спеціальний кошик для пікніка Ларда" }, -- Lard's Special Picnic Basket
[19036] = { "останнє послання Дикому Молоту", use="Розмістити біля колодязя в серці Орлиного піку. Покажіть цим брудним дворфам свою рішучість! А потім тікайте..." }, -- Final Message to the Wildhammer, @use Place near the well at the center of Aerie Peak. Show those filthy dwarven dogs your resolve! Then run away...
[19037] = { "смарагдові наплічники" }, -- Emerald Peak Spaulders
[19038] = { "перстень хитрощів", equip="Відновлює 4 мани кожні 5 сек." }, -- Ring of Subtlety, @equip Restores 4 mana per 5 sec.
[19039] = { "водонепроникний капелюх Зорбіна" }, -- Zorbin's Water Resistant Hat
[19040] = { "меганарізач Зорбіна" }, -- Zorbin's Mega-Slicer
[19041] = { "мундир ручної роботи Пратта" }, -- Pratt's Handcrafted Tunic
[19042] = { "мундир ручної роботи Джанґдора" }, -- Jangdor's Handcrafted Tunic
[19060] = { "покращений пайок з тіснини Боєпісні", use="Відновлює 2148 здоров'я та 4410 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в тіснині Боєпісні." }, -- Warsong Gulch Enriched Ration, @use Restores 2148 health and 4410 mana over 30 sec.  Must remain seated while eating.  Usable only inside Warsong Gulch.
[19061] = { "пайок з тіснини Боєпісні", use="Відновлює 1608 здоров'я та 3306 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в тіснині Боєпісні." }, -- Warsong Gulch Iron Ration, @use Restores 1608 health and 3306 mana over 30 sec.  Must remain seated while eating.  Usable only inside Warsong Gulch.
[19062] = { "польовий пайок з тіснини Боєпісні", use="Відновлює 1074 здоров'я та 2202 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в тіснині Боєпісні." }, -- Warsong Gulch Field Ration, @use Restores 1074 health and 2202 mana over 30 sec.  Must remain seated while eating.  Usable only inside Warsong Gulch.
[19064] = { "ключ від кайданів" }, -- Shackle Key
[19066] = { "рунічний бинт з тіснини Боєпісні", use="Відновлює 2000 здоров'я за 8 сек. Можна використовувати лише в тіснині Боєпісні." }, -- Warsong Gulch Runecloth Bandage, @use Heals 2000 damage over 8 sec.  Usable only inside Warsong Gulch.
[19067] = { "маготканий бинт з тіснини Боєпісні", use="Відновлює 1104 здоров'я за 8 сек. Можна використовувати лише в тіснині Боєпісні." }, -- Warsong Gulch Mageweave Bandage, @use Heals 1104 damage over 8 sec.  Usable only inside Warsong Gulch.
[19068] = { "шовковий бинт з тіснини Боєпісні", use="Відновлює 640 здоров'я за 8 сек. Можна використовувати лише в тіснині Боєпісні." }, -- Warsong Gulch Silk Bandage, @use Heals 640 damage over 8 sec.  Usable only inside Warsong Gulch.
[19069] = { "череп мисливця Малкгора" }, -- Huntsman Malkhor's Skull
[19070] = { "кістки мисливця Малкгора" }, -- Huntsman Malkhor's Bones
[19071] = { "посудина із забрудненою кров'ю" }, -- Vessel of Tainted Blood
[19099] = { "льодовиковий клинок", hit="Завдає цілі 45 шкоди від криги." }, -- Glacial Blade, @hit Blasts a target for 45 Frost damage.
[19106] = { "вкритий памороззю спис" }, -- Ice Barbed Spear
[19107] = { "кровопивця" }, -- Bloodseeker
[19108] = { "жезл кусючого холоду", equip="Збільшує шкоду від заклинань і ефектів криги на 16." }, -- Wand of Biting Cold, @equip Increases damage done by Frost spells and effects by up to 16.
[19114] = { "гірський лук" }, -- Highland Bow
[19115] = { "фляга лісового чаклунства", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 9." }, -- Flask of Forest Mojo, @equip Increases damage and healing done by magical spells and effects by up to 9.
[19116] = { "зеленолистяні пов'язки", equip="Збільшує зцілення від заклинань і ефектів на 22." }, -- Greenleaf Handwraps, @equip Increases healing done by spells and effects by up to 22.
[19117] = { "прикрашені деревом ножні лати" }, -- Laquered Wooden Plate Legplates
[19118] = { "подих природи" }, -- Nature's Breath
[19119] = { "рукавички зі шкіри совозвіра" }, -- Owlbeast Hide Gloves
[19120] = { "руна капітана варти", equip={ "Збільшує силу атаки на 20.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Rune of the Guard Captain, @equip +20 Attack Power., @equip Improves your chance to hit by 1%.
[19121] = { "плащ хащів", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Deep Woodlands Cloak, @equip Increases damage and healing done by magical spells and effects by up to 12.
[19123] = { "вічнотеплі рукавички", equip="Відновлює 4 мани кожні 5 сек." }, -- Everwarm Handwraps, @equip Restores 4 mana per 5 sec.
[19124] = { "шлаколатні поножі", equip="Збільшує навичку захисту на 3." }, -- Slagplate Leggings, @equip Increased Defense +3.
[19125] = { "обпалений кольчужний пояс" }, -- Seared Mail Girdle
[19126] = { "шлаколатні рукавиці" }, -- Slagplate Gauntlets
[19127] = { "обвуглений шкіряний мундир" }, -- Charred Leather Tunic
[19128] = { "обпалений кольчужний жилет" }, -- Seared Mail Vest
[19129] = { "вічносяйне вбрання", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 13." }, -- Everglowing Robe, @equip Increases damage and healing done by magical spells and effects by up to 13.
[19141] = { "припарка", use="Знімає один ефект кровотечі. (Відновлення 3 хв)" }, -- Luffa, @use Removes one Bleed effect. (3 Min Cooldown)
[19150] = { "базовий набір припасів стражів" }, -- Sentinel Basic Care Package
[19151] = { "стандартний набір припасів стражів" }, -- Sentinel Standard Care Package
[19152] = { "покращений набір припасів стражів" }, -- Sentinel Advanced Care Package
[19153] = { "покращений набір припасів авангарду" }, -- Outrider Advanced Care Package
[19154] = { "базовий набір припасів авангарду" }, -- Outrider Basic Care Package
[19155] = { "стандартний набір припасів авангарду" }, -- Outrider Standard Care Package
[19159] = { "намисто плетеного плюща" }, -- Woven Ivy Necklace
[19182] = { "призовий купон ярмарку Темного місяця" }, -- Darkmoon Faire Prize Ticket
[19213] = { "талісман заслуги Срібнокрилих", flavor="Доказ перемоги в тіснині Боєпісні" }, -- Silverwing Talisman of Merit, @flavor Proof of winning a battle in Warsong Gulch
[19221] = { "особливий запас Темного місяця", use="Надзвичайно міцний алкогольний напій." }, -- Darkmoon Special Reserve, @use An extremely potent alcoholic beverage.
[19227] = { "туз звірів", use="Об'єднати карти від туза до вісімки звірів, щоб зібрати колоду." }, -- Ace of Beasts, @use Combine the Ace through Eight of Beasts to complete the set.
[19228] = { "колода звірів", flavor="Власність ярмарку Темного місяця." }, -- Beasts Deck, @flavor Property of the Darkmoon Faire.
[19229] = { "пророцтво Вщуна #1", flavor="Не пригощайте таурена яловичиною." }, -- Sayge's Fortune #1, @flavor Never eat beef with a tauren.
[19230] = { "двійка звірів", use="Об'єднати карти від туза до вісімки звірів, щоб зібрати колоду." }, -- Two of Beasts, @use Combine the Ace through Eight of Beasts to complete the set.
[19231] = { "трійка звірів", use="Об'єднати карти від туза до вісімки звірів, щоб зібрати колоду." }, -- Three of Beasts, @use Combine the Ace through Eight of Beasts to complete the set.
[19232] = { "четвірка звірів", use="Об'єднати карти від туза до вісімки звірів, щоб зібрати колоду." }, -- Four of Beasts, @use Combine the Ace through Eight of Beasts to complete the set.
[19233] = { "п'ятірка звірів", use="Об'єднати карти від туза до вісімки звірів, щоб зібрати колоду." }, -- Five of Beasts, @use Combine the Ace through Eight of Beasts to complete the set.
[19234] = { "шістка звірів", use="Об'єднати карти від туза до вісімки звірів, щоб зібрати колоду." }, -- Six of Beasts, @use Combine the Ace through Eight of Beasts to complete the set.
[19235] = { "сімка звірів", use="Об'єднати карти від туза до вісімки звірів, щоб зібрати колоду." }, -- Seven of Beasts, @use Combine the Ace through Eight of Beasts to complete the set.
[19236] = { "вісімка звірів", use="Об'єднати карти від туза до вісімки звірів, щоб зібрати колоду." }, -- Eight of Beasts, @use Combine the Ace through Eight of Beasts to complete the set.
[19237] = { "пророцтво Вщуна #19", flavor="Відречені щось замислили." }, -- Sayge's Fortune #19, @flavor The Forsaken are up to something.
[19238] = { "пророцтво Вщуна #3", flavor="Колишній ворог скоро стане вашим союзником." }, -- Sayge's Fortune #3, @flavor An enemy from your past will soon become an ally.
[19239] = { "пророцтво Вщуна #4", flavor="Вам пощастить у всьому, за що ви візьметеся." }, -- Sayge's Fortune #4, @flavor You will be fortunate in everything you put your hands to.
[19240] = { "пророцтво Вщуна #5", flavor="Хтось згадує вас добрим словом." }, -- Sayge's Fortune #5, @flavor Someone is speaking well of you.
[19241] = { "пророцтво Вщуна #6", flavor="Будьте обережні при приземленні на незнайомій території." }, -- Sayge's Fortune #6, @flavor Be cautious when landing in unfamiliar territory.
[19242] = { "пророцтво Вщуна #7", flavor="Уникайте надмірного азарту." }, -- Sayge's Fortune #7, @flavor Avoid taking unnecessary gambles.
[19243] = { "пророцтво Вщуна #8", flavor="Ви отримаєте пророцтво." }, -- Sayge's Fortune #8, @flavor You will receive a fortune.
[19244] = { "пророцтво Вщуна #9", flavor="Ваша перша й остання любов - це ви." }, -- Sayge's Fortune #9, @flavor Your first love and last love is self-love.
[19245] = { "пророцтво Вщуна #10", flavor="Від відпочинку до нудьги - один крок." }, -- Sayge's Fortune #10, @flavor Rest is a good thing, but boredom is its brother.
[19246] = { "пророцтво Вщуна #11", flavor="Ті, у кого невибагливий смак, задовольняються найкращим." }, -- Sayge's Fortune #11, @flavor Those with simple tastes are always satisfied with the best.
[19247] = { "пророцтво Вщуна #12", flavor="Не дайте хвилям війни змити вас." }, -- Sayge's Fortune #12, @flavor Let not the tides of war wash you away.
[19248] = { "пророцтво Вщуна #13", flavor="Ваші супротивники замовкнуть." }, -- Sayge's Fortune #13, @flavor You leave your adversaries speechless.
[19249] = { "пророцтво Вщуна #14", flavor="Ви добре помічаєте лицемірство." }, -- Sayge's Fortune #14, @flavor You have a good eye for spotting hypocrisy.
[19250] = { "пророцтво Вщуна #15", flavor="Той найбільше вчиться, хто навчає інших." }, -- Sayge's Fortune #15, @flavor One learns most when teaching others.
[19251] = { "пророцтво Вщуна #16", flavor="Незабаром прийде час, коли вам доведеться зробити важкий вибір." }, -- Sayge's Fortune #16, @flavor The time will soon come for you to make a choice in a pressing matter.
[19252] = { "пророцтво Вщуна #18", flavor="Прийміть наступну пропозицію." }, -- Sayge's Fortune #18, @flavor Accept the next proposition you hear.
[19253] = { "пророцтво Вщуна #17", flavor="Не робіть ставку гномом без належної причини." }, -- Sayge's Fortune #17, @flavor Never punt a gnome without due cause.
[19254] = { "пророцтво Вщуна #21", flavor="Божествений щит та камінь повернення не роблять вас героєм." }, -- Sayge's Fortune #21, @flavor Divine Shields and Hearthstones do not make a hero heroic.
[19255] = { "пророцтво Вщуна #22", flavor="Синя відповідь - правильна." }, -- Sayge's Fortune #22, @flavor An answer in blue is always true.
[19256] = { "пророцтво Вщуна #2", flavor="Завтра ви знайдете щось дивовижне." }, -- Sayge's Fortune #2, @flavor You will find something wonderful tomorrow.
[19257] = { "колода воєвод", flavor="Власність ярмарку Темного місяця." }, -- Warlords Deck, @flavor Property of the Darkmoon Faire.
[19258] = { "туз воєвод", use="Об'єднати карти від туза до вісімки воєвод, щоб зібрати колоду." }, -- Ace of Warlords, @use Combine the Ace through Eight of Warlords to complete the set.
[19259] = { "двійка воєвод", use="Об'єднати карти від туза до вісімки воєвод, щоб зібрати колоду." }, -- Two of Warlords, @use Combine the Ace through Eight of Warlords to complete the set.
[19260] = { "трійка воєвод", use="Об'єднати карти від туза до вісімки воєвод, щоб зібрати колоду." }, -- Three of Warlords, @use Combine the Ace through Eight of Warlords to complete the set.
[19261] = { "четвірка воєвод", use="Об'єднати карти від туза до вісімки воєвод, щоб зібрати колоду." }, -- Four of Warlords, @use Combine the Ace through Eight of Warlords to complete the set.
[19262] = { "п'ятірка воєвод", use="Об'єднати карти від туза до вісімки воєвод, щоб зібрати колоду." }, -- Five of Warlords, @use Combine the Ace through Eight of Warlords to complete the set.
[19263] = { "шістка воєвод", use="Об'єднати карти від туза до вісімки воєвод, щоб зібрати колоду." }, -- Six of Warlords, @use Combine the Ace through Eight of Warlords to complete the set.
[19264] = { "сімка воєвод", use="Об'єднати карти від туза до вісімки воєвод, щоб зібрати колоду." }, -- Seven of Warlords, @use Combine the Ace through Eight of Warlords to complete the set.
[19265] = { "вісімка воєвод", use="Об'єднати карти від туза до вісімки воєвод, щоб зібрати колоду." }, -- Eight of Warlords, @use Combine the Ace through Eight of Warlords to complete the set.
[19266] = { "пророцтво Вщуна #20", flavor="Найбільше помиляється той, хто нічого не робить." }, -- Sayge's Fortune #20, @flavor Many a false step is made by standing still.
[19267] = { "колода елементалів", flavor="Власність ярмарку Темного місяця." }, -- Elementals Deck, @flavor Property of the Darkmoon Faire.
[19268] = { "туз елементалів", use="Об'єднати карти від туза до вісімки елементалів, щоб зібрати колоду." }, -- Ace of Elementals, @use Combine the Ace through Eight of Elementals to complete the set.
[19269] = { "двійка елементалів", use="Об'єднати карти від туза до вісімки елементалів, щоб зібрати колоду." }, -- Two of Elementals, @use Combine the Ace through Eight of Elementals to complete the set.
[19270] = { "трійка елементалів", use="Об'єднати карти від туза до вісімки елементалів, щоб зібрати колоду." }, -- Three of Elementals, @use Combine the Ace through Eight of Elementals to complete the set.
[19271] = { "четвірка елементалів", use="Об'єднати карти від туза до вісімки елементалів, щоб зібрати колоду." }, -- Four of Elementals, @use Combine the Ace through Eight of Elementals to complete the set.
[19272] = { "п'ятірка елементалів", use="Об'єднати карти від туза до вісімки елементалів, щоб зібрати колоду." }, -- Five of Elementals, @use Combine the Ace through Eight of Elementals to complete the set.
[19273] = { "шістка елементалів", use="Об'єднати карти від туза до вісімки елементалів, щоб зібрати колоду." }, -- Six of Elementals, @use Combine the Ace through Eight of Elementals to complete the set.
[19274] = { "сімка елементалів", use="Об'єднати карти від туза до вісімки елементалів, щоб зібрати колоду." }, -- Seven of Elementals, @use Combine the Ace through Eight of Elementals to complete the set.
[19275] = { "вісімка елементалів", use="Об'єднати карти від туза до вісімки елементалів, щоб зібрати колоду." }, -- Eight of Elementals, @use Combine the Ace through Eight of Elementals to complete the set.
[19276] = { "туз порталів", use="Об'єднати карти від туза до вісімки порталів, щоб зібрати колоду." }, -- Ace of Portals, @use Combine the Ace through Eight of Portals to complete the set.
[19277] = { "колода порталів", flavor="Власність ярмарку Темного місяця." }, -- Portals Deck, @flavor Property of the Darkmoon Faire.
[19278] = { "двійка порталів", use="Об'єднати карти від туза до вісімки порталів, щоб зібрати колоду." }, -- Two of Portals, @use Combine the Ace through Eight of Portals to complete the set.
[19279] = { "трійка порталів", use="Об'єднати карти від туза до вісімки порталів, щоб зібрати колоду." }, -- Three of Portals, @use Combine the Ace through Eight of Portals to complete the set.
[19280] = { "четвірка порталів", use="Об'єднати карти від туза до вісімки порталів, щоб зібрати колоду." }, -- Four of Portals, @use Combine the Ace through Eight of Portals to complete the set.
[19281] = { "п'ятірка порталів", use="Об'єднати карти від туза до вісімки порталів, щоб зібрати колоду." }, -- Five of Portals, @use Combine the Ace through Eight of Portals to complete the set.
[19282] = { "шістка порталів", use="Об'єднати карти від туза до вісімки порталів, щоб зібрати колоду." }, -- Six of Portals, @use Combine the Ace through Eight of Portals to complete the set.
[19283] = { "сімка порталів", use="Об'єднати карти від туза до вісімки порталів, щоб зібрати колоду." }, -- Seven of Portals, @use Combine the Ace through Eight of Portals to complete the set.
[19284] = { "вісімка порталів", use="Об'єднати карти від туза до вісімки порталів, щоб зібрати колоду." }, -- Eight of Portals, @use Combine the Ace through Eight of Portals to complete the set.
[19287] = { "карта Темного місяця: героїзм", equip="Іноді зцілює носія на від 120 до 180 здоров'я при нанесенні шкоди ворогу в ближньому бою." }, -- Darkmoon Card: Heroism, @equip Sometimes heals bearer of 120 to 180 damage when damaging an enemy in melee.
[19288] = { "карта Темного місяця: синій дракон", equip="Шанс при успішному вимовлянні закляття продовжити відновлення мани зі 100% швидкістю під час вимовляння заклять протягом 15 сек. (Імовірність: 2%)" }, -- Darkmoon Card: Blue Dragon, @equip 2% chance on successful spellcast to allow 100% of your Mana regeneration to continue while casting for 15 sec. (Proc chance: 2%)
[19289] = { "карта Темного місяця: Водоверть", equip="Шанс вразити вашу ціль в ближньому бою блискавкою, завдавши від 200 до 300 шкоди від природи." }, -- Darkmoon Card: Maelstrom, @equip Chance to strike your melee target with lightning for 200 to 300 Nature damage.
[19290] = { "карта Темного місяця: Підсвітня Крутоверть", equip="Дає власнику 10% шанс воскреснути з 20% здоров'я та мани." }, -- Darkmoon Card: Twisting Nether, @equip Gives the wearer a 10% chance of being able to resurrect with 20% health and mana.
[19291] = { "скринька Темного місяця" }, -- Darkmoon Storage Box
[19292] = { "баранина місячної витримки" }, -- Last Month's Mutton
[19293] = { "баранина річної витримки" }, -- Last Year's Mutton
[19295] = { "квітка Темного місяця" }, -- Darkmoon Flower
[19296] = { "великий приз Темного місяця", flavor="Гарантовано містить цінну річ!" }, -- Greater Darkmoon Prize, @flavor Guaranteed to contain an item of value!
[19297] = { "малий приз Темного місяця", flavor="Гарантовано містить цінну річ!" }, -- Lesser Darkmoon Prize, @flavor Guaranteed to contain an item of value!
[19298] = { "заохочувальний приз Темного місяця", flavor="Гарантовано містить цінну річ!" }, -- Minor Darkmoon Prize, @flavor Guaranteed to contain an item of value!
[19307] = { "щільний рунічний бинт з Альтерака", use="Відновлює 2000 здоров'я за 8 сек.", flavor="Можна використовувати лише в Альтерацькій долині." }, -- Alterac Heavy Runecloth Bandage, @use Heals 2000 damage over 8 sec., @flavor May only be used in Alterac Valley.
[19322] = { "відзнака честі Боєпісні", flavor="Доказ перемоги в тіснині Боєпісні" }, -- Warsong Mark of Honor, @flavor Proof of winning a battle in Warsong Gulch
[19338] = { "ваучер на призовий купон" }, -- Free Ticket Voucher
[19366] = { "сфера великого драконоборця", use="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28." }, -- Master Dragonslayer's Orb, @equip Increases damage and healing done by magical spells and effects by up to 28.
[19383] = { "медальйон великого драконоборця", equip="Збільшує навичку захисту на 7." }, -- Master Dragonslayer's Medallion, @equip Increased Defense +7.
[19384] = { "перстень великого драконоборця", equip={ "Збільшує силу атаки на 48.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Master Dragonslayer's Ring, @equip +48 Attack Power., @equip Improves your chance to hit by 1%.
[19422] = { "пророцтво ярмарку Темного місяця" }, -- Darkmoon Faire Fortune
[19423] = { "пророцтво Вщуна #23", flavor="Ваша доля чекає на вас в Східнодолі." }, -- Sayge's Fortune #23, @flavor Your fortune awaits you in Eastvale.
[19424] = { "пророцтво Вщуна #24", flavor="Ваша доля чекає на вас всередині Мертвих копалень." }, -- Sayge's Fortune #24, @flavor Your fortune awaits you inside the Deadmines.
[19425] = { "загадкова скринька" }, -- Mysterious Lockbox
[19426] = { "сфера Темного місяця", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 22." }, -- Orb of the Darkmoon, @equip Increases damage and healing done by magical spells and effects by up to 22.
[19440] = { "потужна протиотрута", use="Зцілення цілі від отрут до 60 рівня. (Відновлення 1 хв)" }, -- Powerful Anti-Venom, @use Target is cured of poisons up to level 60. (1 Min Cooldown)
[19441] = { "величезна отруйна залоза" }, -- Huge Venom Sac
[19443] = { "пророцтво Вщуна #25", flavor="Ваша доля чекає на вас всередині Плачучих печер." }, -- Sayge's Fortune #25, @flavor Your fortune awaits you inside Wailing Caverns.
[19450] = { "крихітна домівка жаблінга", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашого жаблінга." }, -- A Jubling's Tiny Home, @use Right Click to summon and dismiss your Jubling.
[19451] = { "пророцтво Вщуна #26", flavor="Час - ніщо, вчасність - все." }, -- Sayge's Fortune #26, @flavor Time is nothing; timing is everything.
[19452] = { "пророцтво Вщуна #27", flavor="Ваша доля чекає на вас біля скелі Бляклогривів." }, -- Sayge's Fortune #27, @flavor Your fortune awaits you outside Palemane Rock.
[19453] = { "пророцтво Вщуна #28", flavor="Мисливці, що спеціалізуються на виживанні, не завжди виживають." }, -- Sayge's Fortune #28, @flavor Hunters who specialize in survival are not guaranteed to survive.
[19454] = { "пророцтво Вщуна #29", flavor="Стережіться!" }, -- Sayge's Fortune #29, @flavor Look out!
[19462] = { "невилуплене яйце жаблінга", use="Вилупити жаблінга з яйця. Мине деякий час, перш ніж яйце буде готове до вилуплення." }, -- Unhatched Jubling Egg, @use Hatch a Jubling from the Egg.   It will take a while before the egg is ready to hatch.
[19483] = { "Очищення цибулини", flavor="Довідник з боротьби з кланом Бурешпилів. Автор: Дрек'Тар" }, -- Peeling the Onion, @flavor The How to Guide On Dismantling the Stormpike - By Drek'Thar
[19484] = { "Артишок Морозних Вовків", flavor="Історії слави Бурешпилів. Автор: Ванндар Бурешпиль" }, -- The Frostwolf Artichoke, @flavor Tales of Stormpike Glory - By Vanndar Stormpike
[19491] = { "амулет Темного місяця" }, -- Amulet of the Darkmoon
[19574] = { "сила Муґамби", equip="Збільшує навичку захисту на 4." }, -- Strength of Mugamba, @equip Increased Defense +4.
[19575] = { "сила Муґамби", equip="Збільшує навичку захисту на 4." }, -- Strength of Mugamba, @equip Increased Defense +4.
[19576] = { "сила Муґамби", equip="Збільшує навичку захисту на 5." }, -- Strength of Mugamba, @equip Increased Defense +5.
[19577] = { "лють Муґамби", equip={ "Збільшує навичку захисту на 6.", "Збільшує шанс блокування атак щитом на 2%.", "Зменшує витрати люті на здібність \"Нівечення\" на 2." } }, -- Rage of Mugamba, @equip Increased Defense +6., @equip Increases your chance to block attacks with a shield by 2%., @equip Reduces the cost of your Hamstring ability by 2 rage points.
[19579] = { "тавро язичника" }, -- Heathen's Brand
[19585] = { "тавро язичника" }, -- Heathen's Brand
[19586] = { "тавро язичника" }, -- Heathen's Brand
[19588] = { "тавро героя", equip="Збільшує тривалість здібності \"Молот правосуддя\" на 0.5 сек." }, -- Hero's Brand, @equip Increases the duration of Hammer of Justice by 0.5 sec.
[19591] = { "око Зулдазара" }, -- The Eye of Zuldazar
[19592] = { "око Зулдазара", equip="Збільшує зцілення від заклинань і ефектів на 13." }, -- The Eye of Zuldazar, @equip Increases healing done by spells and effects by up to 13.
[19593] = { "око Зулдазара", equip="Збільшує зцілення від заклинань і ефектів на 18." }, -- The Eye of Zuldazar, @equip Increases healing done by spells and effects by up to 18.
[19594] = { "Всевидюще око Зулдазара", equip={ "Збільшує зцілення від заклинань і ефектів на 18.", "Збільшує кількість шкоди, яку може поглинути \"Слово сили: Щит\" на 35." } }, -- The All-Seeing Eye of Zuldazar, @equip Increases healing done by spells and effects by up to 18., @equip Increases the amount of damage absorbed by Power Word: Shield by 35.
[19598] = { "камінчик Каджаро", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 7." }, -- Pebble of Kajaro, @equip Increases damage and healing done by magical spells and effects by up to 7.
[19599] = { "камінчик Каджаро", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 7." }, -- Pebble of Kajaro, @equip Increases damage and healing done by magical spells and effects by up to 7.
[19600] = { "камінчик Каджаро", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 9." }, -- Pebble of Kajaro, @equip Increases damage and healing done by magical spells and effects by up to 9.
[19601] = { "самоцвіт Каджаро", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 9.", "Зменшує час відновлення \"Протизакляття\" на 2 сек." } }, -- Jewel of Kajaro, @equip Increases damage and healing done by magical spells and effects by up to 9., @equip Reduces the cooldown of Counterspell by 2 sec.
[19602] = { "пошесть Кезана", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Kezan's Taint, @equip Increases damage and healing done by magical spells and effects by up to 12.
[19603] = { "пошесть Кезана", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Kezan's Taint, @equip Increases damage and healing done by magical spells and effects by up to 12.
[19604] = { "пошесть Кезана", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14." }, -- Kezan's Taint, @equip Increases damage and healing done by magical spells and effects by up to 14.
[19605] = { "нестримна пошесть Кезана", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14.", "Збільшує радіус дії заклять \"Вогняний дощ\" та \"Пекельний вогонь\" на 1 м." } }, -- Kezan's Unstoppable Taint, @equip Increases damage and healing done by magical spells and effects by up to 14., @equip Increases the radius of Rain of Fire and Hellfire by 1 yard.
[19606] = { "видіння Вудрії" }, -- Vision of Voodress
[19607] = { "видіння Вудрії" }, -- Vision of Voodress
[19608] = { "видіння Вудрії" }, -- Vision of Voodress
[19609] = { "ясне видіння Вудрії", equip="Зменшує витрати мани на \"Тотем цілющого потоку\" та \"Тотем джерела мани\" на 20." }, -- Unmarred Vision of Voodress, @equip Decreases the mana cost of your Healing Stream and Mana Spring totems by 20.
[19610] = { "зачаровані водорості Південних морів" }, -- Enchanted South Seas Kelp
[19611] = { "зачаровані водорості Південних морів" }, -- Enchanted South Seas Kelp
[19612] = { "зачаровані водорості Південних морів" }, -- Enchanted South Seas Kelp
[19613] = { "бездоганні зачаровані водорості Південних морів", equip="Збільшує ймовірність нанесення критичного удару вашими закляттями \"Гнів\" та \"Зоряний вогонь\" на 2%." }, -- Pristine Enchanted South Seas Kelp, @equip Increases the critical hit chance of Wrath and Starfire by 2%.
[19614] = { "зандаларський талісман тіні" }, -- Zandalarian Shadow Talisman
[19615] = { "зандаларський талісман тіні" }, -- Zandalarian Shadow Talisman
[19616] = { "зандаларський талісман тіні" }, -- Zandalarian Shadow Talisman
[19617] = { "зандаларський талісман майстра тіні", equip="Зменшує час відновлення здіюності \"Підніжка\" на 0.5 сек." }, -- Zandalarian Shadow Mastery Talisman, @equip Decreases the cooldown of Kick by 0.5 sec.
[19618] = { "вус Водоверті" }, -- Maelstrom's Tendril
[19619] = { "вус Водоверті" }, -- Maelstrom's Tendril
[19620] = { "вус Водоверті" }, -- Maelstrom's Tendril
[19621] = { "гнів Водоверті", equip="Зменшує час відновлення здібності 'Удавана смерть\" на 2 секунди." }, -- Maelstrom's Wrath, @equip Decreases the cooldown of Feign Death by 2 sec.
[19698] = { "монета Зуліан", flavor="Один з менших взірців могутності імперії Ґурубаші." }, -- Zulian Coin, @flavor One of the lesser Paragons of Power from the Gurubashi Empire.
[19699] = { "монета Раззаші", flavor="Один з менших взірців могутності імперії Ґурубаші." }, -- Razzashi Coin, @flavor One of the lesser Paragons of Power from the Gurubashi Empire.
[19700] = { "монета Гаккарі", flavor="Один з менших взірців могутності імперії Ґурубаші." }, -- Hakkari Coin, @flavor One of the lesser Paragons of Power from the Gurubashi Empire.
[19701] = { "монета Ґурубаші", flavor="Один з менших взірців могутності імперії Ґурубаші." }, -- Gurubashi Coin, @flavor One of the lesser Paragons of Power from the Gurubashi Empire.
[19702] = { "монета Миршавого Гілля", flavor="Один з менших взірців могутності імперії Ґурубаші." }, -- Vilebranch Coin, @flavor One of the lesser Paragons of Power from the Gurubashi Empire.
[19703] = { "монета Зів'ялої Кори", flavor="Один з менших взірців могутності імперії Ґурубаші." }, -- Witherbark Coin, @flavor One of the lesser Paragons of Power from the Gurubashi Empire.
[19704] = { "монета Піщанолютих", flavor="Один з менших взірців могутності імперії Ґурубаші." }, -- Sandfury Coin, @flavor One of the lesser Paragons of Power from the Gurubashi Empire.
[19705] = { "монета Черепотрощителів", flavor="Один з менших взірців могутності імперії Ґурубаші." }, -- Skullsplitter Coin, @flavor One of the lesser Paragons of Power from the Gurubashi Empire.
[19706] = { "монета Кровоскальпих", flavor="Один з менших взірців могутності імперії Ґурубаші." }, -- Bloodscalp Coin, @flavor One of the lesser Paragons of Power from the Gurubashi Empire.
[19707] = { "червона прикраса Гаккарі", flavor="Значний взірець могутності імперії Ґурубаші." }, -- Red Hakkari Bijou, @flavor A significant Paragon of Power from the Gurubashi Empire.
[19708] = { "синя прикраса Гаккарі", flavor="Значний взірець могутності імперії Ґурубаші." }, -- Blue Hakkari Bijou, @flavor A significant Paragon of Power from the Gurubashi Empire.
[19709] = { "жовта прикраса Гаккарі", flavor="Значний взірець могутності імперії Ґурубаші." }, -- Yellow Hakkari Bijou, @flavor A significant Paragon of Power from the Gurubashi Empire.
[19710] = { "помаранчева прикраса Гаккарі", flavor="Значний взірець могутності імперії Ґурубаші." }, -- Orange Hakkari Bijou, @flavor A significant Paragon of Power from the Gurubashi Empire.
[19711] = { "зелена прикраса Гаккарі", flavor="Значний взірець могутності імперії Ґурубаші." }, -- Green Hakkari Bijou, @flavor A significant Paragon of Power from the Gurubashi Empire.
[19712] = { "фіолетова прикраса Гаккарі", flavor="Значний взірець могутності імперії Ґурубаші." }, -- Purple Hakkari Bijou, @flavor A significant Paragon of Power from the Gurubashi Empire.
[19713] = { "бронзова прикраса Гаккарі", flavor="Значний взірець могутності імперії Ґурубаші." }, -- Bronze Hakkari Bijou, @flavor A significant Paragon of Power from the Gurubashi Empire.
[19714] = { "срібна прикраса Гаккарі", flavor="Значний взірець могутності імперії Ґурубаші." }, -- Silver Hakkari Bijou, @flavor A significant Paragon of Power from the Gurubashi Empire.
[19715] = { "золота прикраса Гаккарі", flavor="Значний взірець могутності імперії Ґурубаші." }, -- Gold Hakkari Bijou, @flavor A significant Paragon of Power from the Gurubashi Empire.
[19716] = { "первісні браслети Гаккарі", flavor="Легендарний взірець могутності старої імперії Ґурубаші." }, -- Primal Hakkari Bindings, @flavor A legendary Paragon of Power from the old Gurubashi Empire.
[19717] = { "первісний наруч Гаккарі", flavor="Легендарний взірець могутності старої імперії Ґурубаші." }, -- Primal Hakkari Armsplint, @flavor A legendary Paragon of Power from the old Gurubashi Empire.
[19718] = { "первісний поруч Гаккарі", flavor="Легендарний взірець могутності старої імперії Ґурубаші." }, -- Primal Hakkari Stanchion, @flavor A legendary Paragon of Power from the old Gurubashi Empire.
[19719] = { "первісний пасок Гаккарі", flavor="Легендарний взірець могутності старої імперії Ґурубаші." }, -- Primal Hakkari Girdle, @flavor A legendary Paragon of Power from the old Gurubashi Empire.
[19720] = { "первісний пояс Гаккарі", flavor="Легендарний взірець могутності старої імперії Ґурубаші." }, -- Primal Hakkari Sash, @flavor A legendary Paragon of Power from the old Gurubashi Empire.
[19721] = { "первісна шаль Гаккарі", flavor="Легендарний взірець могутності старої імперії Ґурубаші." }, -- Primal Hakkari Shawl, @flavor A legendary Paragon of Power from the old Gurubashi Empire.
[19722] = { "первісна накидка Гаккарі", flavor="Легендарний взірець могутності старої імперії Ґурубаші." }, -- Primal Hakkari Tabard, @flavor A legendary Paragon of Power from the old Gurubashi Empire.
[19723] = { "первісний каптан Гаккарі", flavor="Легендарний взірець могутності старої імперії Ґурубаші." }, -- Primal Hakkari Kossack, @flavor A legendary Paragon of Power from the old Gurubashi Empire.
[19724] = { "первісна егіда Гаккарі", flavor="Легендарний взірець могутності старої імперії Ґурубаші." }, -- Primal Hakkari Aegis, @flavor A legendary Paragon of Power from the old Gurubashi Empire.
[19725] = { "ящик з ресурсами Араті", flavor="Доказ перемоги в низині Араті" }, -- Arathi Resource Crate, @flavor Proof of victory in Arathi Basin
[19726] = { "кровопарость" }, -- Bloodvine
[19727] = { "кривава коса", flavor="При наявності дозволяє травникові збирати кровопарость із флори Зул'Ґурубу." }, -- Blood Scythe, @flavor Allows an Herbalist to collect Bloodvine from Zul'Gurub Flora when carried.
[19767] = { "шкіра первісного кажана" }, -- Primal Bat Leather
[19768] = { "шкіра первісного тигра" }, -- Primal Tiger Leather
[19774] = { "душарит" }, -- Souldarite
[19775] = { "запечатана лазурна сумка", flavor="Міцно запечатано." }, -- Sealed Azure Bag, @flavor Sealed tight.
[19782] = { "явлення могутності", use="Додати на поножі або головний убір чари, що збільшують витривалість на 10, навичку захисту на 7 та блокування щитом на 15. Не сумується з іншими чарами на предметі." }, -- Presence of Might, @use Permanently adds 10 Stamina, 7 Defense, and 15 Shield Block value to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[19783] = { "сигіла синкретиста", use="Додати на поножі або головний убір чари, що збільшують витривалість на 10, навичку захисту на 7 та зцілення на 24. Не сумується з іншими чарами на предметі." }, -- Syncretist's Sigil, @use Permanently adds 10 Stamina, 7 Defense, and increases healing by up to 24 to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[19784] = { "обійми смерті", use="Додати на поножі або головний убір чари, що збільшують силу атаки на 28 та ймовірність ухилення на 1%. Не сумується з іншими чарами на предметі." }, -- Death's Embrace, @use Permanently adds 28 Attack Power and 1% Dodge to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[19785] = { "поклик сокола", use="Додати на поножі або головний убір чари, що збільшують силу атаки дальнього бою на 24, витривалість на 10 та ймовірність нанесення удару на 1%. Не сумується з іншими чарами на предметі." }, -- Falcon's Call, @use Permanently adds 24 Ranged Attack Power, 10 Stamina, and 1% Chance to Hit to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[19786] = { "палкі обійми вуду", use="Додати на поножі або головний убір чари, що збільшують шкоду та зцілення від заклинань на 13 та інтелект на 15. Не сумується з іншими чарами на предметі." }, -- Vodouisant's Vigilant Embrace, @use Permanently adds 15 Intellect and increases all healing and spell damage by up to 13 to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[19787] = { "явлення прозріння", use="Додати на поножі або головний убір чари, що збільшують шкоду та зцілення від заклинань на 18 та ймовірність нанесення удару заклинаннями на 1%. Не сумується з іншими чарами на предметі." }, -- Presence of Sight, @use Permanently adds 18 to all healing and damage spells and 1% chance to hit with spells to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[19788] = { "чари худу", use="Додати на поножі або головний убір чари, що збільшують шкоду та зцілення від заклинань на 18 та витривалість на 10. Не сумується з іншими чарами на предметі." }, -- Hoodoo Hex, @use Permanently adds 10 Stamina and increases spell damage and healing by up to 18 to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[19789] = { "віщунська аура", use="Додати на поножі або головний убір чари, що збільшують витривалість на 10, відновлення мани на 4 кожні 5 сек та зцілення на 24. Не сумується з іншими чарами на предметі." }, -- Prophetic Aura, @use Permanently adds 10 Stamina, 4 mana per 5 sec., and increases healing by up to 24 to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[19790] = { "ласка аніміста", use="Додати на поножі або головний убір чари, що збільшують витривалість на 10, інтелект на 10 та зцілення на 24. Не сумується з іншими чарами на предметі." }, -- Animist's Caress, @use Permanently adds 10 Stamina, 10 Intellect, and increases healing by up to 24 to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[19802] = { "серце Гаккара" }, -- Heart of Hakkar
[19803] = { "синій смугастик Браунелла", flavor="Когось в Грабіжній Бухті це має зацікавити." }, -- Brownell's Blue Striped Racer, @flavor Someone in Booty Bay might be interested.
[19805] = { "риба-ангел Кіфера", flavor="Когось в Грабіжній Бухті це має зацікавити." }, -- Keefer's Angelfish, @flavor Someone in Booty Bay might be interested.
[19806] = { "дезійська ставрида", flavor="Когось в Грабіжній Бухті це має зацікавити." }, -- Dezian Queenfish, @flavor Someone in Booty Bay might be interested.
[19807] = { "плямиста смачнориба" }, -- Speckled Tastyfish
[19812] = { "руна Світанку", equip="Збільшує шкоду від магічних заклинань і ефектів на 48 під час бою з невмерлими. Також дозволяє отримувати камені Скари для Сріблястого Світанку." }, -- Rune of the Dawn, @equip Increases damage done to Undead by magical spells and effects by up to 48.  It also allows the acquisition of Scourgestones on behalf of the Argent Dawn.
[19813] = { "проколота лялька вуду", use="Поєднати з кров'ю Ґрі'лека, зубом Ренатакі, гривою Вушулая та ниткою мрій Газза'ри, щоб сформувати потужний оберіг.", flavor="Лялька нагадує воїна." }, -- Punctured Voodoo Doll, @use Combines with Gri'lek's Blood, Renataki's Tooth, Wushoolay's Mane, and Hazza'rah's Dream Thread to form a powerful charm., @flavor The doll resembles a warrior.
[19814] = { "проколота лялька вуду", use="Поєднати з кров'ю Ґрі'лека, зубом Ренатакі, гривою Вушулая та ниткою мрій Газза'ри, щоб сформувати потужний оберіг.", flavor="Лялька нагадує пройдисвіта." }, -- Punctured Voodoo Doll, @use Combines with Gri'lek's Blood, Renataki's Tooth, Wushoolay's Mane, and Hazza'rah's Dream Thread to form a powerful charm., @flavor The doll resembles a rogue.
[19815] = { "проколота лялька вуду", use="Поєднати з кров'ю Ґрі'лека, зубом Ренатакі, гривою Вушулая та ниткою мрій Газза'ри, щоб сформувати потужний оберіг.", flavor="Лялька нагадує паладина." }, -- Punctured Voodoo Doll, @use Combines with Gri'lek's Blood, Renataki's Tooth, Wushoolay's Mane, and Hazza'rah's Dream Thread to form a powerful charm., @flavor The doll resembles a paladin.
[19816] = { "проколота лялька вуду", use="Поєднати з кров'ю Ґрі'лека, зубом Ренатакі, гривою Вушулая та ниткою мрій Газза'ри, щоб сформувати потужний оберіг.", flavor="Лялька нагадує мисливця." }, -- Punctured Voodoo Doll, @use Combines with Gri'lek's Blood, Renataki's Tooth, Wushoolay's Mane, and Hazza'rah's Dream Thread to form a powerful charm., @flavor The doll resembles a hunter.
[19817] = { "проколота лялька вуду", use="Поєднати з кров'ю Ґрі'лека, зубом Ренатакі, гривою Вушулая та ниткою мрій Газза'ри, щоб сформувати потужний оберіг.", flavor="Лялька нагадує шамана." }, -- Punctured Voodoo Doll, @use Combines with Gri'lek's Blood, Renataki's Tooth, Wushoolay's Mane, and Hazza'rah's Dream Thread to form a powerful charm., @flavor The doll resembles a shaman.
[19818] = { "проколота лялька вуду", use="Поєднати з кров'ю Ґрі'лека, зубом Ренатакі, гривою Вушулая та ниткою мрій Газза'ри, щоб сформувати потужний оберіг.", flavor="Лялька нагадує мага." }, -- Punctured Voodoo Doll, @use Combines with Gri'lek's Blood, Renataki's Tooth, Wushoolay's Mane, and Hazza'rah's Dream Thread to form a powerful charm., @flavor The doll resembles a mage.
[19819] = { "проколота лялька вуду", use="Поєднати з кров'ю Ґрі'лека, зубом Ренатакі, гривою Вушулая та ниткою мрій Газза'ри, щоб сформувати потужний оберіг.", flavor="Лялька нагадує чорнокнижника." }, -- Punctured Voodoo Doll, @use Combines with Gri'lek's Blood, Renataki's Tooth, Wushoolay's Mane, and Hazza'rah's Dream Thread to form a powerful charm., @flavor The doll resembles a warlock.
[19820] = { "проколота лялька вуду", use="Поєднати з кров'ю Ґрі'лека, зубом Ренатакі, гривою Вушулая та ниткою мрій Газза'ри, щоб сформувати потужний оберіг.", flavor="Лялька нагадує жерця." }, -- Punctured Voodoo Doll, @use Combines with Gri'lek's Blood, Renataki's Tooth, Wushoolay's Mane, and Hazza'rah's Dream Thread to form a powerful charm., @flavor The doll resembles a priest.
[19821] = { "проколота лялька вуду", use="Поєднати з кров'ю Ґрі'лека, зубом Ренатакі, гривою Вушулая та ниткою мрій Газза'ри, щоб сформувати потужний оберіг.", flavor="Лялька нагадує друїда." }, -- Punctured Voodoo Doll, @use Combines with Gri'lek's Blood, Renataki's Tooth, Wushoolay's Mane, and Hazza'rah's Dream Thread to form a powerful charm., @flavor The doll resembles a druid.
[19822] = { "кіраса зандаларського поборника", equip="Збільшує навичку захисту на 4." }, -- Zandalar Vindicator's Breastplate, @equip Increased Defense +4.
[19823] = { "пояс зандаларського поборника", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Zandalar Vindicator's Belt, @equip Improves your chance to get a critical strike by 1%.
[19824] = { "нарукавники зандаларського поборника" }, -- Zandalar Vindicator's Armguards
[19825] = { "кіраса зандаларського вільнодумця", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Zandalar Freethinker's Breastplate, @equip Improves your chance to get a critical strike by 1%.
[19826] = { "пояс зандаларського вільнодумця", equip="Збільшує зцілення від заклинань і ефектів на 26." }, -- Zandalar Freethinker's Belt, @equip Increases healing done by spells and effects by up to 26.
[19827] = { "нарукавники зандаларського вільнодумця", equip="Збільшує зцілення від заклинань і ефектів на 11." }, -- Zandalar Freethinker's Armguards, @equip Increases healing done by spells and effects by up to 11.
[19828] = { "гауберк зандаларського авгура", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 34.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Zandalar Augur's Hauberk, @equip Increases damage and healing done by magical spells and effects by up to 34., @equip Improves your chance to get a critical strike with spells by 1%.
[19829] = { "пояс зандаларського авгура", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Відновлює 4 мани кожні 5 сек." } }, -- Zandalar Augur's Belt, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Restores 4 mana per 5 sec.
[19830] = { "браслети зандаларського авгура", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 13.", "Відновлює 4 мани кожні 5 сек." } }, -- Zandalar Augur's Bracers, @equip Increases damage and healing done by magical spells and effects by up to 13., @equip Restores 4 mana per 5 sec.
[19831] = { "наплічники зандаларського хижака", equip="Відновлює 4 мани кожні 5 сек." }, -- Zandalar Predator's Mantle, @equip Restores 4 mana per 5 sec.
[19832] = { "пояс зандаларського хижака", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Zandalar Predator's Belt, @equip Improves your chance to hit by 1%.
[19833] = { "браслети зандаларського хижака", equip={ "Збільшує вашу силу атаки дальнього бою на 34.", "Відновлює 4 мани кожні 5 сек." } }, -- Zandalar Predator's Bracers, @equip +34 ranged Attack Power., @equip Restores 4 mana per 5 sec.
[19834] = { "мундир зандаларського зірвиголови", equip={ "Збільшує ваш шанс нанесення критичного удару на 2%.", "Збільшує силу атаки на 44." } }, -- Zandalar Madcap's Tunic, @equip Improves your chance to get a critical strike by 2%., @equip +44 Attack Power.
[19835] = { "наплічники зандаларського зірвиголови", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Zandalar Madcap's Mantle, @equip Improves your chance to hit by 1%.
[19836] = { "браслети зандаларського зірвиголови" }, -- Zandalar Madcap's Bracers
[19838] = { "мундир зандаларського гаруспіка", equip="Збільшує зцілення від заклинань і ефектів на 33." }, -- Zandalar Haruspex's Tunic, @equip Increases healing done by spells and effects by up to 33.
[19839] = { "пояс зандаларського гаруспіка", equip="Збільшує зцілення від заклинань і ефектів на 15." }, -- Zandalar Haruspex's Belt, @equip Increases healing done by spells and effects by up to 15.
[19840] = { "браслети зандаларського гаруспіка", equip="Збільшує зцілення від заклинань і ефектів на 24." }, -- Zandalar Haruspex's Bracers, @equip Increases healing done by spells and effects by up to 24.
[19841] = { "наплічники зандаларського сповідника", equip="Збільшує зцілення від заклинань і ефектів на 22." }, -- Zandalar Confessor's Mantle, @equip Increases healing done by spells and effects by up to 22.
[19842] = { "пояс зандаларського сповідника", equip="Збільшує зцілення від заклинань і ефектів на 26." }, -- Zandalar Confessor's Bindings, @equip Increases healing done by spells and effects by up to 26.
[19843] = { "пов'язки зандаларського сповідника", equip="Збільшує зцілення від заклинань і ефектів на 24." }, -- Zandalar Confessor's Wraps, @equip Increases healing done by spells and effects by up to 24.
[19845] = { "наплічники зандаларського ілюзіоніста", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Zandalar Illusionist's Mantle, @equip Increases damage and healing done by magical spells and effects by up to 12.
[19846] = { "пов'язки зандаларського ілюзіоніста", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14." }, -- Zandalar Illusionist's Wraps, @equip Increases damage and healing done by magical spells and effects by up to 14.
[19848] = { "пов'язки зандаларського одержимого", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16." }, -- Zandalar Demoniac's Wraps, @equip Increases damage and healing done by magical spells and effects by up to 16.
[19849] = { "наплічники зандаларського одержимого", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Zandalar Demoniac's Mantle, @equip Increases damage and healing done by magical spells and effects by up to 12.
[19850] = { "підношення Утеру", use="Покласти підношення на могилі Утера Світлоносця в Західних Зачумлених землях." }, -- Uther's Tribute, @use Offer a tribute at Uther Lightbringer's tomb in Western Plaguelands.
[19851] = { "підношення Ґрому", use="Покласти підношення до пам'ятника Ґроммашу Пеклокрику в Ясенедолі." }, -- Grom's Tribute, @use Offer a tribute at Grom Hellscream's monument in Ashenvale.
[19852] = { "древній вбивця Гаккарі", hit="Викрадає від 48 до 54 здоров'я у цілі." }, -- Ancient Hakkari Manslayer, @hit Steals 48 to 54 life from target enemy.
[19853] = { "нищитель дворфів Ґурубаші", equip="Збільшує силу атаки на 30." }, -- Gurubashi Dwarf Destroyer, @equip +30 Attack Power.
[19854] = { "Зін'рох, Руйнівник світів", equip="Збільшує силу атаки на 72." }, -- Zin'rokh, Destroyer of Worlds, @equip +72 Attack Power.
[19855] = { "просякнуті кров'ю ножні лати", equip="Збільшує навичку захисту на 10." }, -- Bloodsoaked Legplates, @equip Increased Defense +10.
[19856] = { "око Гаккара", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує силу атаки на 40." } }, -- The Eye of Hakkar, @equip Improves your chance to get a critical strike by 1%., @equip +40 Attack Power.
[19857] = { "плащ вичерпування", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 23.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Cloak of Consumption, @equip Increases damage and healing done by magical spells and effects by up to 23., @equip Improves your chance to hit with spells by 1%.
[19858] = { "знак пошани Зандаларів", use="Збільшення вашої репутації в племені Зандалар. (Відновлення 2 сек)" }, -- Zandalar Honor Token, @use Increase your reputation permanently with the Zandalar Tribe. (2 Sec Cooldown)
[19859] = { "ікло безликого", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує силу атаки на 28." } }, -- Fang of the Faceless, @equip Improves your chance to get a critical strike by 1%., @equip +28 Attack Power.
[19861] = { "дотик хаосу", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18." }, -- Touch of Chaos, @equip Increases damage and healing done by magical spells and effects by up to 18.
[19862] = { "егіда Кривавого бога", equip={ "Збільшує показник блокування щитом на 30.", "Збільшує навичку захисту на 7.", "Збільшує шанс блокування атак щитом на 2%." } }, -- Aegis of the Blood God, @equip Increases the block value of your shield by 30., @equip Increased Defense +7., @equip Increases your chance to block attacks with a shield by 2%.
[19863] = { "печатка прималіста", equip="Збільшує зцілення від заклинань і ефектів на 29." }, -- Primalist's Seal, @equip Increases healing done by spells and effects by up to 29.
[19864] = { "Кровозов", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 33." }, -- Bloodcaller, @equip Increases damage and healing done by magical spells and effects by up to 33.
[19865] = { "бойовий клинок Гаккарі", equip={ "Збільшує силу атаки на 28.", "Збільшує ваш шанс нанесення критичного удару на 1%." }, flavor="Викуваний у..." }, -- Warblade of the Hakkari, @equip +28 Attack Power., @equip Improves your chance to get a critical strike by 1%., @flavor Forged in...
[19866] = { "бойовий клинок Гаккарі", equip="Збільшує силу атаки на 40.", flavor="...киплячому полум'ї ненависті." }, -- Warblade of the Hakkari, @equip +40 Attack Power., @flavor The seething flames of hatred.
[19867] = { "захисник повелителя крові", equip="Збільшує навичку захисту на 4." }, -- Bloodlord's Defender, @equip Increased Defense +4.
[19869] = { "залиті кров'ю захвати", equip={ "Збільшує силу атаки на 34.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Blooddrenched Grips, @equip +34 Attack Power., @equip Improves your chance to get a critical strike by 1%.
[19870] = { "плащ лоа Гаккарі", equip="Збільшує зцілення від заклинань і ефектів на 33." }, -- Hakkari Loa Cloak, @equip Increases healing done by spells and effects by up to 33.
[19871] = { "талісман захисту", equip={ "Збільшує навичку захисту на 9.", "Збільшує ваш шанс ухилитися від атаки на 1%." } }, -- Talisman of Protection, @equip Increased Defense +9., @equip Increases your chance to dodge an attack by 1%.
[19872] = { "стрімкий раптор Раззаші", use="Викликає та відпускає верхового раптора. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift Razzashi Raptor, @use Summons and dismisses a rideable Raptor.  This is a very fast mount. (3 Sec Cooldown)
[19873] = { "багряний перстень надправителя", equip="Збільшує навичку захисту на 7." }, -- Overlord's Crimson Band, @equip Increased Defense +7.
[19874] = { "нищівна алебарда", equip="Шанс відрубати цілі кінцівку при атаці в ближньому бою, завдаючи від 452 до 676 шкоди." }, -- Halberd of Smiting, @equip Chance to decapitate the target on a melee swing, causing 452 to 676 damage.
[19875] = { "закривавлений койф", equip={ "Збільшує ваш шанс нанесення критичного удару на 2%.", "Збільшує силу атаки на 28." } }, -- Bloodstained Coif, @equip Improves your chance to get a critical strike by 2%., @equip +28 Attack Power.
[19876] = { "намисто осквернителя душ", equip="Збільшує ваш шанс нанесення удару заклинаннями на 1%." }, -- Soul Corrupter's Necklace, @equip Improves your chance to hit with spells by 1%.
[19877] = { "поножі аніміста", equip="Збільшує зцілення від заклинань і ефектів на 35." }, -- Animist's Leggings, @equip Increases healing done by spells and effects by up to 35.
[19878] = { "просякнуте кров'ю напліччя", equip="Збільшує навичку захисту на 3." }, -- Bloodsoaked Pauldrons, @equip Increased Defense +3.
[19880] = { "колекція голів Ґурубаші" }, -- Gurubashi Head Collection
[19881] = { "голова верховного жерця" }, -- Channeler's Head
[19883] = { "священна мотузка", use="Об'єднати з п'ятьма головами верховних жерців в колекцію голів Ґурубаші." }, -- Sacred Cord, @use Combine with 5 Channeler's Heads into a Gurubashi Head Collection.
[19884] = { "правосуддя Джин'до", equip={ "Збільшує ваш шанс нанесення удару заклинаннями на 2%.", "Відновлює 14 мани кожні 5 сек.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 27." } }, -- Jin'do's Judgement, @equip Improves your chance to hit with spells by 2%., @equip Restores 14 mana per 5 sec., @equip Increases damage and healing done by magical spells and effects by up to 27.
[19885] = { "лихе око Джин'до", equip="Збільшує зцілення від заклинань і ефектів на 44." }, -- Jin'do's Evil Eye, @equip Increases healing done by spells and effects by up to 44.
[19886] = { "маска Проклинателя", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 41." }, -- The Hexxer's Cover, @equip Increases damage and healing done by magical spells and effects by up to 41.
[19887] = { "закривавлені ножні лати", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Bloodstained Legplates, @equip Improves your chance to get a critical strike by 1%.
[19888] = { "обійми надправителя", equip={ "Збільшує навичку захисту на 7.", "Збільшує шанс блокування атак щитом на 1%." } }, -- Overlord's Embrace, @equip Increased Defense +7., @equip Increases your chance to block attacks with a shield by 1%.
[19889] = { "залиті кров'ю поножі" }, -- Blooddrenched Leggings
[19890] = { "проклинатель Джин'до", equip={ "Збільшує зцілення від заклинань і ефектів на 51.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Jin'do's Hexxer, @equip Increases healing done by spells and effects by up to 51., @equip Improves your chance to get a critical strike with spells by 1%.
[19891] = { "мішок пристрітів Джин'до", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Jin'do's Bag of Whammies, @equip Increases damage and healing done by magical spells and effects by up to 18., @equip Improves your chance to hit with spells by 1%.
[19892] = { "чоботи аніміста", equip="Збільшує зцілення від заклинань і ефектів на 29." }, -- Animist's Boots, @equip Increases healing done by spells and effects by up to 29.
[19893] = { "печатка Занзіла", equip={ "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11." } }, -- Zanzil's Seal, @equip Improves your chance to hit with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 11.
[19894] = { "просякнуті кров'ю рукавиці", equip={ "Збільшує навичку захисту на 5.", "Збільшує ваш шанс ухилитися від атаки на 1%." } }, -- Bloodsoaked Gauntlets, @equip Increased Defense +5., @equip Increases your chance to dodge an attack by 1%.
[19895] = { "закривавлений кілт", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28." }, -- Bloodtinged Kilt, @equip Increases damage and healing done by magical spells and effects by up to 28.
[19896] = { "хват Текала", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Thekal's Grasp, @equip Improves your chance to get a critical strike by 1%.
[19897] = { "чоботи зрадника", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 30." }, -- Betrayer's Boots, @equip Increases damage and healing done by magical spells and effects by up to 30.
[19898] = { "печатка Джин", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує силу атаки на 20." } }, -- Seal of Jin, @equip Improves your chance to get a critical strike by 1%., @equip +20 Attack Power.
[19899] = { "ритуальні поножі", equip="Збільшує зцілення від заклинань і ефектів на 37." }, -- Ritualistic Legguards, @equip Increases healing done by spells and effects by up to 37.
[19900] = { "зуліанська кам'яна сокира", equip={ "Збільшує силу атаки на 44.", "Збільшує ваш шанс нанесення критичного удару на 1%." }, flavor="Відмічено знаком Джин." }, -- Zulian Stone Axe, @equip +44 Attack Power., @equip Improves your chance to get a critical strike by 1%., @flavor Bears the mark of Jin.
[19901] = { "зуліанський тесак", equip={ "Збільшує силу атаки на 12.", "Збільшує навичку шкуродерства на 10." }, hit="Розрізає ворога, завдаючи йому від 72 до 96 шкоди від природи." }, -- Zulian Slicer, @equip +12 Attack Power., @equip Skinning +10., @hit Slices the enemy for 72 to 96 Nature damage.
[19902] = { "стрімкий зуліанський тигр", use="Викликає та відпускає верхового тигра. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Swift Zulian Tiger, @use Summons and dismisses a rideable Tiger.  This is a very fast mount. (3 Sec Cooldown)
[19903] = { "ікло Веноксіса", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 24.", "Відновлює 6 мани кожні 5 сек." } }, -- Fang of Venoxis, @equip Increases damage and healing done by magical spells and effects by up to 24., @equip Restores 6 mana per 5 sec.
[19904] = { "рунічний закривавлений гауберк", equip={ "Збільшує силу атаки на 58.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Runed Bloodstained Hauberk, @equip +58 Attack Power., @equip Improves your chance to get a critical strike by 1%.
[19905] = { "перстень Занзіла", equip={ "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Відновлює 4 мани кожні 5 сек." } }, -- Zanzil's Band, @equip Improves your chance to hit with spells by 1%., @equip Restores 4 mana per 5 sec.
[19906] = { "залиті кров'ю чоботи", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Blooddrenched Footpads, @equip Improves your chance to hit by 1%.
[19907] = { "зуліанський плащ з тигрової шкури", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Zulian Tigerhide Cloak, @equip Improves your chance to hit by 1%.
[19908] = { "скіпетр нищення", equip="Збільшує навичку володіння булавами на 2.", hit="Отруює ціль, завдаючи від 63 до 93 шкоди від природи." }, -- Sceptre of Smiting, @equip Increased Maces +2., @hit Blasts the enemy with poison for 63 to 93 Nature damage.
[19909] = { "воля Арлокк", equip="Збільшує зцілення від заклинань і ефектів на 46." }, -- Will of Arlokk, @equip Increases healing done by spells and effects by up to 46.
[19910] = { "хват Арлокк", hit="Запускає у ворога заряд тіні, що завдає від 55 до 85 шкоди від тіні." }, -- Arlokk's Grasp, @hit Sends a shadowy bolt at the enemy causing 55 to 85 Shadow damage.
[19912] = { "оніксовий перстень надправителя", equip={ "Збільшує шанс блокування атак щитом на 2%.", "Збільшує ваш шанс ухилитися від атаки на 1%." } }, -- Overlord's Onyx Band, @equip Increases your chance to block attacks with a shield by 2%., @equip Increases your chance to dodge an attack by 1%.
[19913] = { "просякнуті кров'ю наголінники", equip="Збільшує навичку захисту на 5." }, -- Bloodsoaked Greaves, @equip Increased Defense +5.
[19914] = { "мішок зі шкури пантери" }, -- Panther Hide Sack
[19915] = { "зуліанський захисник" }, -- Zulian Defender
[19918] = { "дробарка Жеклік", hit="Ранить ціль, спричиняючи від 200 до 220 шкоди." }, -- Jeklik's Crusher, @hit Wounds the target for 200 to 220 damage.
[19919] = { "закривавлені наголінники" }, -- Bloodstained Greaves
[19920] = { "перстень прималіста", equip="Відновлює 6 мани кожні 5 сек." }, -- Primalist's Band, @equip Restores 6 mana per 5 sec.
[19921] = { "зуліанський крушитель", equip="Збільшує навичку володіння сокирами на 2." }, -- Zulian Hacker, @equip Increased Axes +2.
[19922] = { "Арлоккова палиця худу", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує зцілення від заклинань і ефектів на 22." } }, -- Arlokk's Hoodoo Stick, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases healing done by spells and effects by up to 22.
[19923] = { "опаліновий талісман Жеклік", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 22.", "Відновлює 3 мани кожні 5 сек." } }, -- Jeklik's Opaline Talisman, @equip Increases damage and healing done by magical spells and effects by up to 22., @equip Restores 3 mana per 5 sec.
[19925] = { "перстень Джин", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Band of Jin, @equip Improves your chance to hit by 1%.
[19927] = { "дотик Мар'лі" }, -- Mar'li's Touch
[19928] = { "наплічники аніміста", equip="Збільшує зцілення від заклинань і ефектів на 37." }, -- Animist's Spaulders, @equip Increases healing done by spells and effects by up to 37.
[19929] = { "закривавлені рукавички", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 19.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Bloodtinged Gloves, @equip Increases damage and healing done by magical spells and effects by up to 19., @equip Improves your chance to hit with spells by 1%.
[19930] = { "око Мар'лі", use="Відновлює 60 мани кожні 5 сек протяягом 30 сек. (Відновлення 3 хв)" }, -- Mar'li's Eye, @use Restores 60 mana every 5 sec for 30 sec. (3 Min Cooldown)
[19931] = { "моджо божевілля Ґурубаші", use="Загасити жаровню божевілля." }, -- Gurubashi Mojo Madness, @use Extinguishes the Brazier of Madness.
[19933] = { "сяюча кров скорпіда" }, -- Glowing Scorpid Blood
[19939] = { "кров Ґрі'лека", flavor="Залізна кров Ґрі'лека." }, -- Gri'lek's Blood, @flavor The Iron Blood of Gri'lek.
[19940] = { "зуб Ренатакі", flavor="Гострий як бритва зуб Ренатакі." }, -- Renataki's Tooth, @flavor The Razor Sharp Tooth of Renataki.
[19941] = { "грива Вушулая", flavor="Неохайна грива Вушулая." }, -- Wushoolay's Mane, @flavor Wushoolay's Unkempt Mane.
[19942] = { "нитка мрій Газза'ри" }, -- Hazza'rah's Dream Thread
[19943] = { "масивне моджо", flavor="Більше моджо, ніж може бути у будь-якого троля." }, -- Massive Mojo, @flavor More Mojo than any one troll should have.
[19944] = { "винищувач риби Нета Пеґла", flavor="Напис свідчить: Риболовля для слабаків -Нет Пеґл" }, -- Nat Pagle's Fish Terminator, @flavor The inscription reads: Fishin's fer sissies -Nat Pagle
[19945] = { "пов'зка на око з луски ящірки", equip={ "Збільшує ваш шанс нанесення критичного удару на 2%.", "Збільшує силу атаки на 44." } }, -- Lizardscale Eyepatch, @equip Improves your chance to get a critical strike by 2%., @equip +44 Attack Power.
[19946] = { "гарпун Тіґуля", equip={ "Збільшує ваш шанс нанесення удару на 2%.", "Збільшує силу атаки на 60 під час бою зі звірами." } }, -- Tigule's Harpoon, @equip Improves your chance to hit by 2%., @equip +60 Attack Power when fighting Beasts.
[19947] = { "зламана котушка Нета Пеґла", use="Збільшує ваш шанс нанесення удару заклинаннями на 10% протягом 15 сек. (Відновлення 1 хв 15 сек)", flavor="Напис свідчить: Для дійсно далеких кидків." }, -- Nat Pagle's Broken Reel, @use Increases the chance to hit with spells by 10% for 15 sec. (1 Min, 15 Sec Cooldown), @flavor The inscription reads: Fer really long castin'.
[19948] = { "геройський значок Зандаларів", use="Збільшує вашу броню на 2000 та навичку захисту на 30 протягом 20 сек. Щоразу, коли ви отримуєте шкоду в ближньому чи дальньому бою, цей бонус зменшується на 200 броні та 3 навички захисту. (Відновлення 2 хв)" }, -- Zandalarian Hero Badge, @use Increases your armor by 2000 and defense skill by 30 for 20 sec. Every time you take melee or ranged damage, this bonus is reduced by 200 armor and 3 defense. (2 Min Cooldown)
[19949] = { "геройський медальйон Зандаларів", use="Збільшує вашу шкоду в ближньому та дальньому бою на 40 протягом 20 сек. Щоразу, коли ви влучаєте в ціль, цей бонус зменшується на 2. (Відновлення 2 хв)" }, -- Zandalarian Hero Medallion, @use Increases your melee and ranged damage by 40 for 20 sec. Every time you hit a target, this bonus is reduced by 2. (2 Min Cooldown)
[19950] = { "геройський оберіг Зандаларів", use="Збільшує вашу шкоду від заклять на 204, а зцілення — на 408 протягом 20 сек. Щоразу, коли ви вимовляєте закляття, цей бонус зменшується на 17 для шкоди та 34 для зцілення. (Відновлення 2 хв)" }, -- Zandalarian Hero Charm, @use Increases your spell damage by up to 204 and your healing by up to 408 for 20 sec. Every time you cast a spell, the bonus is reduced by 17 spell damage and 34 healing. (2 Min Cooldown)
[19951] = { "оберіг могутності Ґрі'лека", use="Збільшує вашу лють на 30. (Відновлення 3 хв)" }, -- Gri'lek's Charm of Might, @use Instantly increases your rage by 30. (3 Min Cooldown)
[19952] = { "оберіг доблесті Ґрі'лека", use="Збільшує ймовірність нанесення критичного удару вашими закляттями світла на 10% протягом 15 сек. (Відновлення 3 хв)" }, -- Gri'lek's Charm of Valor, @use Increases the critical hit chance of Holy spells by 10% for 15 sec. (3 Min Cooldown)
[19953] = { "оберіг звірів Ренатакі", use="Миттєво завершує відновлення ваших заклять \"Прицільний постріл\", \"Багатозарядний постріл\", \"Залп\" та \"Арканічний постріл\". (Відновлення 3 хв)" }, -- Renataki's Charm of Beasts, @use Instantly clears the cooldowns of Aimed Shot, Multishot, Volley, and Arcane Shot. (3 Min Cooldown)
[19954] = { "оберіг хитрощів Ренатакі", use="Збільшує вашу енергію на 60. (Відновлення 3 хв)" }, -- Renataki's Charm of Trickery, @use Instantly increases your energy by 60. (3 Min Cooldown)
[19955] = { "оберіг природи Вушулая", use="Зменшує час вимови вашого закляття \"Цілющий дотик\" на 40% та витрати мани на ваші закляття зцілення на 5% протягом 15 сек. (Відновлення 3 хв)" }, -- Wushoolay's Charm of Nature, @use Reduces the casting time of your Healing Touch spells by 40%, and reduces the mana cost of your healing spells by 5% for 15 sec. (3 Min Cooldown)
[19956] = { "оберіг духів Вушулая", use="Збільшує шкоду від вашого закляття \"Щит блискавки\" на 100% протягом 20 сек. (Відновлення 3 хв)" }, -- Wushoolay's Charm of Spirits, @use Increases the damage dealt by your Lightning Shield spell by 100% for 20 sec. (3 Min Cooldown)
[19957] = { "оберіг руйнування Газза'ри", use="Збільшує ймовірність нанесення критичного удару вашими закляттями Руйнування на 10% протягом 20 сек. (Відновлення 3 хв)" }, -- Hazza'rah's Charm of Destruction, @use Increases the critical hit chance of your Destruction spells by 10% for 20 sec. (3 Min Cooldown)
[19958] = { "оберіг зцілення Газза'ри", use="Зменшує час вимови вашого закляття \"Велике зцілення\" на 40% та витрати мани на ваші закляття зцілення на 5% протягом 15 сек. (Відновлення 3 хв)" }, -- Hazza'rah's Charm of Healing, @use Reduces the casting time of your Greater Heal spells by 40%, and reduces the mana cost of your healing spells by 5% for 15 sec. (3 Min Cooldown)
[19959] = { "оберіг магії Газза'ри", use="Збільшує ймовірність нанесення критичного удару вашими закляттями Аркани на 5% та збільшує критичну шкоду ваших заклять Аркани на 50% протягом 20 сек. (Відновлення 3 хв)" }, -- Hazza'rah's Charm of Magic, @use Increases the critical hit chance of your Arcane spells by 5%, and increases the critical hit damage of your Arcane spells by 50% for 20 sec. (3 Min Cooldown)
[19961] = { "крушитель Ґрі'лека", equip="Збільшує силу атаки на 48 під час бою з драконами." }, -- Gri'lek's Grinder, @equip +48 Attack Power when fighting Dragonkin.
[19962] = { "сікач Ґрі'лека", equip="Збільшує силу атаки на 117 під час бою з драконами." }, -- Gri'lek's Carver, @equip +117 Attack Power when fighting Dragonkin.
[19963] = { "вила божевілля", equip="Збільшує силу атаки на 117 під час бою з демонами." }, -- Pitchfork of Madness, @equip +117 Attack Power when fighting Demons.
[19964] = { "провідник душі Ренатакі", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16.", "Відновлює 6 мани кожні 5 сек." } }, -- Renataki's Soul Conduit, @equip Increases damage and healing done by magical spells and effects by up to 16., @equip Restores 6 mana per 5 sec.
[19965] = { "штрикач Вушулая", equip={ "Збільшує зцілення від заклинань і ефектів на 31.", "Відновлює 6 мани кожні 5 сек." } }, -- Wushoolay's Poker, @equip Increases healing done by spells and effects by up to 31., @equip Restores 6 mana per 5 sec.
[19967] = { "згубник дум", equip="Відновлює 5 мани кожні 5 сек." }, -- Thoughtblighter, @equip Restores 5 mana per 5 sec.
[19968] = { "полум'яна розплата", equip={ "Збільшує навичку захисту на 5.", "Додає 2 шкоди від вогню до ваших атак в ближньому бою." } }, -- Fiery Retributer, @equip Increased Defense +5., @equip Adds 2 fire damage to your melee attacks.
[19969] = { "чоботи екстремальної риболовлі Нета Пеґла", equip="Збільшує навичку риболовлі на 5." }, -- Nat Pagle's Extreme Anglin' Boots, @equip Increased Fishing +5.
[19970] = { "арканітова вудка", equip="Збільшує навичку риболовлі на 35.", flavor="Схоже, що її використовував сам Нет Пеґл." }, -- Arcanite Fishing Pole, @equip Increased Fishing +35., @flavor It looks like Nat Pagle himself used this.
[19971] = { "надміцна етернієва волосінь", use="Замінити волосінь на вашій вудці надміцною етернієвою волосінню." }, -- High Test Eternium Fishing Line, @use Replaces the fishing line on your fishing pole with a high test eternium line.
[19972] = { "щасливий рибальський капелюх", equip="Збільшує навичку риболовлі на 5." }, -- Lucky Fishing Hat, @equip Increased Fishing +5.
[19973] = { "вимірювальна стрічка Нета" }, -- Nat's Measuring Tape
[19975] = { "зуліанський мульник" }, -- Zulian Mudskunk
[19978] = { "Риболовний турнір!" }, -- Fishing Tournament!
[19979] = { "гачок рибалки-майстра", use="Перетворює вас на рибу, що дозволяє дихати під водою та збільшує швидкість руху. Ефект знімається під час атаки чи промовляння заклять. Не працює поза водою або на поверхні води. (Відновлення 5 сек)" }, -- Hook of the Master Angler, @use Turns you into a fish giving water breath and increasing your movement speed, but attacking or casting while in this form breaks the effect.  Does not work out of water or at the water's surface. (5 Sec Cooldown)
[19982] = { "пелерина сутінкового кажана", equip="Зменшує шкоду від падіння." }, -- Duskbat Drape, @equip Reduces damage from falling.
[19984] = { "чорна маска", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує силу атаки на 36." } }, -- Ebon Mask, @equip Improves your chance to get a critical strike by 1%., @equip +36 Attack Power.
[19990] = { "благословенні молитовні намистини", use="Збільшує зцілення від заклинань і ефектів на 190 на 20 сек. (Відновлення 2 хв)", flavor="Пізнаються в біді." }, -- Blessed Prayer Beads, @use Increases healing done by spells and effects by up to 190 for 20 sec. (2 Min Cooldown), @flavor A friend in need is a friend without beads.
[19991] = { "око дияволозавра", use="Збільшує вашу силу атаки на 150 і ваш шанс поцілити на 2%. Ефект триває 20 сек. (Відновлення 2 хв)" }, -- Devilsaur Eye, @use Increases your attack power by 150 and your chance to hit by 2%.  Effect lasts for 20 sec. (2 Min Cooldown)
[19992] = { "зуб дияволозавра", use="Наступна атака вашого супутника завдасть критичного удару, якщо ця атака має таку можливість. (Відновлення 2 хв)" }, -- Devilsaur Tooth, @use Your pet's next attack is guaranteed to critically strike if that attack is capable of striking critically. (2 Min Cooldown)
[19993] = { "мисливський лук худу" }, -- Hoodoo Hunting Bow
[19998] = { "кровопаростні лінзи", equip={ "Збільшує ваш шанс нанесення критичного удару на 2%.", "Злегка збільшує вашу здатність виявляти непомітність." } }, -- Bloodvine Lens, @equip Improves your chance to get a critical strike by 2%., @equip Slightly increases your stealth detection.
[20002] = { "велике зілля сну без сновидінь", use="Занурює у сон без сновидінь на {1} с. Протягом цього часу відновлює {2} здоров'я та {3} мани. (Відновлення 2 хв)#for {1} sec#{2} health and {3} mana" }, -- Greater Dreamless Sleep Potion, @use Puts the imbiber in a dreamless sleep for 12 sec.  During that time the imbiber heals 2100 health and 2100 mana. (2 Min Cooldown)
[20004] = { "величезне зілля крові троля", ref=3382 }, -- Major Troll's Blood Potion
[20006] = { "перстень надії", equip="Збільшує шанс критичного ефекту ваших заклинань світла на 1%.", flavor="Викуваний з чистого світла." }, -- Circle of Hope, @equip Increases the critical effect chance of your Holy spells by 1%., @flavor Forged from pure light.
[20007] = { "зілля магокрові", use="Відновлює {1} мани кожні {2} с протягом {3} год. (Відновлення 3 сек)#{1} mana per {2} sec for {3} h" }, -- Mageblood Potion, @use Regenerate 12 mana per 5 sec for 1 hour. (3 Sec Cooldown)
[20008] = { "зілля живої дії", use="Надає невразливість до приголомшення та ефектів ускладнення руху на наступні {1} с. Також знімає вже наявні ефекти. (Відновлення 2 хв)#next {1} sec" }, -- Living Action Potion, @use Makes you immune to Stun and Movement Impairing effects for the next 5 sec.  Also removes existing Stun and Movement Impairing effects. (2 Min Cooldown)
[20009] = { "Заради Світла!", flavor="За авторством Хенре Мудроспіва... присвячується Утеру Світлоносцю" }, -- For the Light!, @flavor by Jennre Loresinger... dedicated to Uther Lightbringer
[20010] = { "Пеклокрик Орди", flavor="За авторством Толвена Боєпісні... присвячується Ґрому Пеклокрику" }, -- The Horde's Hellscream, @flavor by Tolven Warsong... dedicated to Grom Hellscream
[20011] = { "рецепт: Зілля магокрові", use="Навчає вас створювати зілля магокрові." }, -- Recipe: Mageblood Potion, @use Teaches you how to make a Mageblood Potion.
[20012] = { "рецепт: Велике зілля сну без сновидінь", use="Навчає вас створювати велике зілля сну без сновидінь." }, -- Recipe: Greater Dreamless Sleep, @use Teaches you how to make a Greater Dreamless Sleep Potion.
[20013] = { "рецепт: Зілля живої дії", use="Навчає вас створювати зілля живої дії." }, -- Recipe: Living Action Potion, @use Teaches you how to make a Living Action Potion.
[20014] = { "рецепт: Величезне зілля крові троля", use="Навчає вас створювати величезне зілля крові троля." }, -- Recipe: Major Troll's Blood Potion, @use Teaches you how to make a Major Troll's Blood Potion.
[20017] = { "ідеальні роги самця оленя" }, -- Perfect Courser Antler
[20019] = { "зуб Морфаза" }, -- Tooth of Morphaz
[20022] = { "лазурний ключ" }, -- Azure Key
[20023] = { "зашифрований фрагмент", flavor="Текст написаний невідомою мовою." }, -- Encoded Fragment, @flavor The text is written in an arcane language.
[20025] = { "кров Морфаза" }, -- Blood of Morphaz
[20027] = { "залоза здорового оленя" }, -- Healthy Courser Gland
[20028] = { "блискучий пил" }, -- Glittering Dust
[20029] = { "зачарований корал" }, -- Enchanted Coral
[20031] = { "сутнє манго", use="Відновлює 2550 здоров'я та 4410 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Essence Mango, @use Restores 2550 health and 4410 mana over 30 sec.  Must remain seated while eating.
[20032] = { "струмлива ритуальна мантія", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 22." }, -- Flowing Ritual Robes, @equip Increases damage and healing done by magical spells and effects by up to 22.
[20033] = { "мантія зандаларського одержимого", equip={ "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 27." } }, -- Zandalar Demoniac's Robe, @equip Improves your chance to hit with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 27.
[20034] = { "мантія зандаларського ілюзіоніста", equip={ "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 27." } }, -- Zandalar Illusionist's Robe, @equip Improves your chance to hit with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 27.
[20035] = { "льодовиковий шип", equip="Ваше заклинання \"Крижана стріла\" має 6% шанс відновити 50 мани при використанні.", flavor="Лезо прикрашають демонічні руни." }, -- Glacial Spike, @equip Your Frostbolt spells have a 6% chance to restore 50 mana when cast., @flavor Diabolical runes adorn the blade.
[20036] = { "вогняний рубін", use="Відновлює від 1 до 500 мани та збільшує шкоду від наступного вогняного заклинання на 100. Ефект триває 1 хв. (Відновлення 3 хв)", flavor="Може принести як перемогу, так і загибель." }, -- Fire Ruby, @use Restores 1 to 500 mana and increases the damage of your next Fire spell by up to 100.  Effect lasts for 1 min. (3 Min Cooldown), @flavor Unpredictability leads to both victory and death.
[20037] = { "кулон з арканічним кристалом", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16.", flavor="Арканічні кристали зазвичай використовуються магами." }, -- Arcane Crystal Pendant, @equip Increases damage and healing done by magical spells and effects by up to 16., @flavor Arcane crystals are best utilized for the purposes of a mage.
[20038] = { "жало Мандокіра" }, -- Mandokir's Sting
[20062] = { "покращений пайок з низини Араті", use="Відновлює 2148 здоров'я та 4410 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в низині Араті." }, -- Arathi Basin Enriched Ration, @use Restores 2148 health and 4410 mana over 30 sec.  Must remain seated while eating.  Usable only inside Arathi Basin.
[20063] = { "польовий пайок з низини Араті", use="Відновлює 1074 здоров'я та 2202 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в низині Араті." }, -- Arathi Basin Field Ration, @use Restores 1074 health and 2202 mana over 30 sec.  Must remain seated while eating.  Usable only inside Arathi Basin.
[20064] = { "пайок з низини Араті", use="Відновлює 1608 здоров'я та 3306 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в низині Араті." }, -- Arathi Basin Iron Ration, @use Restores 1608 health and 3306 mana over 30 sec.  Must remain seated while eating.  Usable only inside Arathi Basin.
[20065] = { "маготканий бинт з низини Араті", use="Відновлює 1104 здоров'я за 8 сек. Можна використовувати лише в низині Араті." }, -- Arathi Basin Mageweave Bandage, @use Heals 1104 damage over 8 sec.  Usable only inside Arathi Basin.
[20066] = { "рунічний бинт з низини Араті", use="Відновлює 2000 здоров'я за 8 сек. Можна використовувати лише в низині Араті." }, -- Arathi Basin Runecloth Bandage, @use Heals 2000 damage over 8 sec.  Usable only inside Arathi Basin.
[20067] = { "шовковий бинт з низини Араті", use="Відновлює 640 здоров'я за 8 сек. Можна використовувати лише в низині Араті." }, -- Arathi Basin Silk Bandage, @use Heals 640 damage over 8 sec.  Usable only inside Arathi Basin.
[20076] = { "печатка моджо Зандаларів", use="Додати на наплічники чари, що збільшують шкоду і зцілення від магічних заклинань і ефектів на 18." }, -- Zandalar Signet of Mojo, @use Permanently adds to a shoulder slot item increased damage and healing done by magical spells and effects up to 18.
[20077] = { "печатка могутності Зандаларів", use="Додати на наплічники чари, що збільшують силу атаки на 30." }, -- Zandalar Signet of Might, @use Permanently adds 30 attack power to a shoulder slot item.
[20078] = { "печатка спокою Зандаларів", use="Додати на наплічники чари, що збільшують зцілення від заклинань і ефектів на 33." }, -- Zandalar Signet of Serenity, @use Permanently adds to a shoulder slot item increased healing done by spells and effects up to 33.
[20079] = { "дух Занзи", use="Збільшує дух та витривалість на 50 протягом 2 год. Одночасно ви можете перебувати під дією лише одного напою Занзи. (Відновлення 3 сек)", flavor="Благословенно силою Занзи!" }, -- Spirit of Zanza, @use Increases the player's Spirit by 50 and Stamina by 50 for 2 hrs.  You can only have the effect of one Zanza potion at a time. (3 Sec Cooldown), @flavor Blessed with the mojo of Zanza!
[20080] = { "лиск Занзи", use="Збільшує ймовірність відбити ворожі закляття на 3% протягом 2 год. Гарантовано відбиває перше вороже закляття. Одночасно ви можете перебувати під дією лише одного напою Занзи. (Відновлення 3 сек)", flavor="Благословенно силою Занзи!" }, -- Sheen of Zanza, @use Increases the chance that the player will reflect hostile spells cast on them by 3% for 2 hrs. Will automatically reflect the first offensive spell cast against the user. Only one type of Zanza potion may be active at any given time. (2 Min Cooldown), @flavor Blessed with the mojo of Zanza!
[20081] = { "прудкість Занзи", use="Збільшує швидкість бігу на 20% протягом 2 год. Одночасно ви можете перебувати під дією лише одного напою Занзи. (Відновлення 3 сек)", flavor="Благословенно силою Занзи!" }, -- Swiftness of Zanza, @use Increases the player's run speed by 20% for 2 hrs.  You can only have the effect of one Zanza potion at a time. (3 Sec Cooldown), @flavor Blessed with the mojo of Zanza!
[20082] = { "лихопосох", equip="Збільшує шкоду від заклинань і ефектів тіні на 11.", flavor="Лихо тим, хто противиться." }, -- Woestave, @equip Increases damage done by Shadow spells and effects by up to 11., @flavor Woe to those who oppose.
[20083] = { "мисливський спис", equip={ "Збільшує ваш шанс критичного удару на 1%.", "Відновлює 5 мани кожні 5 сек." } }, -- Hunting Spear, @equip Improves your chance to get a critical strike by 1%., @equip Restores 5 mana per 5 sec.
[20085] = { "арканічний уламок" }, -- Arcane Shard
[20086] = { "метальний ніж зі смеркосталі" }, -- Dusksteel Throwing Knife
[20087] = { "луска хвилешльопа" }, -- Wavethrasher Scales
[20130] = { "діамантова фляжка", use="Відновлює 9 здоров'я кожні 5 секунд і збільшує вашу силу на 75. Триває 1 хв. (Відновлення 6 хв)", flavor="Подається з льодом." }, -- Diamond Flask, @use Restores 9 health every 5 sec and increases your Strength by 75.  Lasts 1 min. (6 Min Cooldown), @flavor Served on the rocks.
[20131] = { "бойова гербова накидка Труїтелів" }, -- Battle Tabard of the Defilers
[20132] = { "бойова гербова накидка Ліги Аратора" }, -- Arathor Battle Tabard
[20134] = { "шолом небесної люті", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 2%.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Skyfury Helm, @equip Improves your chance to get a critical strike with spells by 2%., @equip Improves your chance to get a critical strike by 1%.
[20213] = { "пояс всохлих голів" }, -- Belt of Shrunken Heads
[20215] = { "пояс зморщених голів" }, -- Belt of Shriveled Heads
[20216] = { "пояс збережених голів", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Belt of Preserved Heads, @equip Improves your chance to hit by 1%.
[20217] = { "пояс крихітних голів", equip="Відновлює 7 мани кожні 5 сек." }, -- Belt of Tiny Heads, @equip Restores 7 mana per 5 sec.
[20218] = { "вицвілий плащ Гаккарі", equip="Відновлює 6 мани кожні 5 сек." }, -- Faded Hakkari Cloak, @equip Restores 6 mana per 5 sec.
[20219] = { "пошарпана накидка Гаккарі", equip="Відновлює 6 здоров'я кожні 5 сек." }, -- Tattered Hakkari Cape, @equip Restores 6 health per 5 sec.
[20222] = { "покращений пайок Труїтелів", use="Відновлює 2148 здоров'я та 4410 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в низині Араті." }, -- Defiler's Enriched Ration, @use Restores 2148 health and 4410 mana over 30 sec.  Must remain seated while eating.  Usable only inside Arathi Basin.
[20223] = { "польовий пайок Труїтелів", use="Відновлює 1074 здоров'я та 2202 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в низині Араті." }, -- Defiler's Field Ration, @use Restores 1074 health and 2202 mana over 30 sec.  Must remain seated while eating.  Usable only inside Arathi Basin.
[20224] = { "пайок Труїтелів", use="Відновлює 1608 здоров'я та 3306 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в низині Араті." }, -- Defiler's Iron Ration, @use Restores 1608 health and 3306 mana over 30 sec.  Must remain seated while eating.  Usable only inside Arathi Basin.
[20225] = { "покращений пайок горця", use="Відновлює 2148 здоров'я та 4410 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в низині Араті." }, -- Highlander's Enriched Ration, @use Restores 2148 health and 4410 mana over 30 sec.  Must remain seated while eating.  Usable only inside Arathi Basin.
[20226] = { "польовий пайок горця", use="Відновлює 1074 здоров'я та 2202 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в низині Араті." }, -- Highlander's Field Ration, @use Restores 1074 health and 2202 mana over 30 sec.  Must remain seated while eating.  Usable only inside Arathi Basin.
[20227] = { "пайок горця", use="Відновлює 1608 здоров'я та 3306 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Можна використовувати лише в низині Араті." }, -- Highlander's Iron Ration, @use Restores 1608 health and 3306 mana over 30 sec.  Must remain seated while eating.  Usable only inside Arathi Basin.
[20228] = { "покращений набір припасів Труїтелів" }, -- Defiler's Advanced Care Package
[20229] = { "базовий набір припасів Труїтелів" }, -- Defiler's Basic Care Package
[20230] = { "стандартний набір припасів Труїтелів" }, -- Defiler's Standard Care Package
[20231] = { "покращений набір припасів Ліги Аратора" }, -- Arathor Advanced Care Package
[20232] = { "маготканий бинт Труїтелів", use="Відновлює 1104 здоров'я за 8 сек. Можна використовувати лише в низині Араті." }, -- Defiler's Mageweave Bandage, @use Heals 1104 damage over 8 sec.  Usable only inside Arathi Basin.
[20233] = { "базовий набір припасів Ліги Аратора" }, -- Arathor Basic Care Package
[20234] = { "рунічний бинт Труїтелів", use="Відновлює 2000 здоров'я за 8 сек. Можна використовувати лише в низині Араті." }, -- Defiler's Runecloth Bandage, @use Heals 2000 damage over 8 sec.  Usable only inside Arathi Basin.
[20235] = { "шовковий бинт Труїтелів", use="Відновлює 640 здоров'я за 8 сек. Можна використовувати лише в низині Араті." }, -- Defiler's Silk Bandage, @use Heals 640 damage over 8 sec.  Usable only inside Arathi Basin.
[20236] = { "стандартний набір припасів Ліги Аратора" }, -- Arathor Standard Care Package
[20237] = { "маготканий бинт горця", use="Відновлює 1104 здоров'я за 8 сек. Можна використовувати лише в низині Араті." }, -- Highlander's Mageweave Bandage, @use Heals 1104 damage over 8 sec.  Usable only inside Arathi Basin.
[20243] = { "рунічний бинт горця", use="Відновлює 2000 здоров'я за 8 сек. Можна використовувати лише в низині Араті." }, -- Highlander's Runecloth Bandage, @use Heals 2000 damage over 8 sec.  Usable only inside Arathi Basin.
[20244] = { "шовковий бинт горця", use="Відновлює 640 здоров'я за 8 сек. Можна використовувати лише в низині Араті." }, -- Highlander's Silk Bandage, @use Heals 640 damage over 8 sec.  Usable only inside Arathi Basin.
[20255] = { "черевики шереху", equip="Збільшує ефективність непомітності на 1 рівень." }, -- Whisperwalk Boots, @equip Increases your effective stealth level by 1.
[20256] = { "жертовна стрічка Боєпісні", flavor="Друге місце" }, -- Warsong Gulch Ribbon of Sacrifice, @flavor Second Place
[20257] = { "рукавиці морської люті", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Відновлює 7 мани кожні 5 сек." } }, -- Seafury Gauntlets, @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to get a critical strike with spells by 1%., @equip Restores 7 mana per 5 sec.
[20258] = { "зуліанський церемоніальний посох", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 32." }, -- Zulian Ceremonial Staff, @equip Increases damage and healing done by magical spells and effects by up to 32.
[20259] = { "рукавички зі шкури тіньової пантери", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Shadow Panther Hide Gloves, @equip Improves your chance to get a critical strike by 1%.
[20260] = { "поножі морської люті", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16." }, -- Seafury Leggings, @equip Increases damage and healing done by magical spells and effects by up to 16.
[20261] = { "пояс зі шкури тіньової пантери", equip="Збільшує ваш шанс ухилитися від атаки на 1%." }, -- Shadow Panther Hide Belt, @equip Increases your chance to dodge an attack by 1%.
[20262] = { "чоботи морської люті", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Відновлює 5 мани кожні 5 сек." } }, -- Seafury Boots, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Restores 5 mana per 5 sec.
[20263] = { "шолом Ґурубаші" }, -- Gurubashi Helm
[20264] = { "рукавиці миротворця", equip={ "Збільшує зцілення від заклинань і ефектів на 59.", "Відновлює 4 мани кожні 5 сек." } }, -- Peacekeeper Gauntlets, @equip Increases healing done by spells and effects by up to 59., @equip Restores 4 mana per 5 sec.
[20265] = { "чоботи миротворця", equip={ "Відновлює 6 мани кожні 5 сек.", "Збільшує зцілення від заклинань і ефектів на 22." } }, -- Peacekeeper Boots, @equip Restores 6 mana per 5 sec., @equip Increases healing done by spells and effects by up to 22.
[20266] = { "поножі миротворця", equip={ "Збільшує зцілення від заклинань і ефектів на 37.", "Відновлює 7 мани кожні 5 сек." } }, -- Peacekeeper Leggings, @equip Increases healing done by spells and effects by up to 37., @equip Restores 7 mana per 5 sec.
[20310] = { "обдерта шкіра демона" }, -- Flayed Demon Skin
[20369] = { "азуритові бойові рукавиці", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." }, -- Azurite Fists, @equip Improves your chance to get a critical strike with spells by 1%.
[20371] = { "яйце синього мурлока", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашого Муррлика." }, -- Blue Murloc Egg, @use Right Click to summon and dismiss your Murky.
[20373] = { "жало камнехвостого скорпіда" }, -- Stonelash Scorpid Stinger
[20374] = { "жало камнехвостого щипача" }, -- Stonelash Pincer Stinger
[20375] = { "жало камнехвостого потрошителя" }, -- Stonelash Flayer Stinger
[20376] = { "ікло піщаного швидколапа" }, -- Sand Skitterer Fang
[20377] = { "ікло скельного ловця" }, -- Rock Stalker Fang
[20378] = { "фрагмент сутінкової скрижалі" }, -- Twilight Tablet Fragment
[20379] = { "рюкзак Ноґґла" }, -- Noggle's Satchel
[20381] = { "снолуска" }, -- Dreamscale
[20383] = { "голова володаря роду Хлиста Бича", flavor="Лиш ОДНОГО буде обрано... (і, відповідно, лиш ОДНОМУ дістанеться ця голова)" }, -- Head of the Broodlord Lashlayer, @flavor Only ONE May Rise... (and consequently, only ONE may loot this head)
[20384] = { "фрагмент панцира силітида" }, -- Silithid Carapace Fragment
[20385] = { "клешня Смертехвата" }, -- Deathclasp's Pincer
[20387] = { "смердюча бомба Відречених", use="Кинути бомбу на Південнобережжя. (Відновлення 10 сек)", flavor="Наповнена першокласним смородом!" }, -- Forsaken Stink Bomb Cluster, @use Toss a stink bomb on Southshore.  P-U! (10 Sec Cooldown), @flavor Filled with a potent funk!
[20388] = { "льодяник", use="Відновлює 3% здоров'я та мани кожну секунду протягом 25 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Lollipop, @use Restores 3% of your health and mana per second for 25 sec.  Must remain seated while eating.
[20389] = { "святкова цукерка", use="Відновлює 3% здоров'я та мани кожну секунду протягом 25 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Candy Corn, @use Restores 3% of your health and mana per second for 25 sec.  Must remain seated while eating.
[20390] = { "шоколадний батончик", use="Відновлює 3% здоров'я та мани кожну секунду протягом 25 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Candy Bar, @use Restores 3% of your health and mana per second for 25 sec.  Must remain seated while eating.
[20391] = { "проста маска гнома" }, -- Flimsy Male Gnome Mask
[20392] = { "проста маска гномки" }, -- Flimsy Female Gnome Mask
[20393] = { "торбинка з ласощами", flavor="Швидко відкривайте сумку, оскільки вона зникає при виході з гри." }, -- Treat Bag, @flavor Open your bag quickly as it will fade on logout.
[20394] = { "Сутінковий словник - розділ 1" }, -- Twilight Lexicon - Chapter 1
[20395] = { "Сутінковий словник - розділ 2" }, -- Twilight Lexicon - Chapter 2
[20396] = { "Сутінковий словник - розділ 3" }, -- Twilight Lexicon - Chapter 3
[20397] = { "священна паличка — пірат", use="Одягає обраного члена групи в костюм пірата." }, -- Hallowed Wand - Pirate, @use Puts a pirate costume on targeted party member.
[20398] = { "священна паличка — ніндзя", use="Одягає обраного члена групи в костюм ніндзі." }, -- Hallowed Wand - Ninja, @use Puts a ninja costume on targeted party member.
[20399] = { "священна паличка — лепрогном", use="Одягає обраного члена групи в костюм лепрогнома." }, -- Hallowed Wand - Leper Gnome, @use Puts a leper gnome costume on targeted party member.
[20400] = { "гарбузова сумка" }, -- Pumpkin Bag
[20402] = { "агент Ноздорму", flavor="Як агент Ноздорму, тільки ви можете збирати фрагменти панцирів з трупів силітидів. Завжди носіть з собою цей жетон." }, -- Agent of Nozdormu, @flavor As an Agent of Nozdormu, only you may take the Silithid Carapace Fragments from the corpses of the silithid. Keep your badge in your pack at all times.
[20403] = { "заступник Ноздорму", use="Націльтеся на дружнього гравця, щоб призначити його агентом Ноздорму. Як агент Ноздорму, тільки ви та ваші заступники можете забирати фрагменти панцирів з трупів силітидів. Завжди носіть з собою цей жетон.", flavor="Відмічено знаком бронзових драконів" }, -- Proxy of Nozdormu, @use Target a friendly player to deputize them as an Agent of Nozdormu. As an Agent of Nozdormu, only you and your deputies may take the Silithid Carapace Fragments from the corpses of the silithid. Keep your badge in your pack at all times., @flavor Bears the Seal of the Bronze Flight
[20404] = { "зашифрований текст Молота Сутінків", flavor="Ці слова не мають жодного сенсу" }, -- Encrypted Twilight Text, @flavor These words are unintelligible
[20405] = { "розшифрований текст скрижалі" }, -- Decoded Tablet Transcription
[20406] = { "сутінкове напліччя культиста" }, -- Twilight Cultist Mantle
[20407] = { "сутінкова мантія культиста" }, -- Twilight Cultist Robe
[20408] = { "сутінковий капюшон культиста" }, -- Twilight Cultist Cowl
[20409] = { "священна паличка — привид", use="Одягає обраного члена групи в костюм привида." }, -- Hallowed Wand - Ghost, @use Puts a ghost costume on targeted party member.
[20410] = { "священна паличка — кажан", use="Одягає обраного члена групи в костюм кажана." }, -- Hallowed Wand - Bat, @use Puts a Bat costume on targeted party member.
[20411] = { "священна паличка — скелет", use="Одягає обраного члена групи в костюм скелета." }, -- Hallowed Wand - Skeleton, @use Puts a Skeleton costume on targeted party member.
[20413] = { "священна паличка — випадковий костюм", use="Одягає обраного члена групи в випадковий костюм." }, -- Hallowed Wand - Random, @use Puts a random costume on targeted party member.
[20414] = { "священна паличка — світлик", use="Одягає обраного члена групи в костюм світлика." }, -- Hallowed Wand - Wisp, @use Puts a Wisp costume on targeted party member.
[20415] = { "Війна Мінливих Пісків", flavor="Чорнила на цьому фоліанті виглядають свіжими." }, -- The War of the Shifting Sands, @flavor This tome appears freshly inked.
[20422] = { "сутінковий медальйон служіння", equip="При носінні з набором сутінкових атрибутів дозволяє взаємодіяти з вітровими каменями в Силітусі." }, -- Twilight Cultist Medallion of Station, @equip When worn with the Twilight Trappings Set, allows access to a Wind Stone in Silithus.
[20424] = { "м'ясо піщаного черв'яка" }, -- Sandworm Meat
[20451] = { "сутінковий перстень влади", equip="При носінні з набором сутінкових атрибутів та медальйоном служіння дозволяє взаємодіяти з великими вітровими каменями." }, -- Twilight Cultist Ring of Lordship, @equip When worn with the Twilight Trappings Set and the Medallion of Station, allows access to a Greater Wind Stone.
[20452] = { "копчені пустельні пельмені", use="Відновлює 2148 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваша сила збільшиться на 20 на 15 хв." }, -- Smoked Desert Dumplings, @use Restores 2148 health over 30 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 20 Strength for 15 min.
[20453] = { "копіювальний набір геолога", flavor="Для використання на вкритих гліфами кристалах." }, -- Geologist's Transcription Kit, @flavor For use with Glyphed Crystals.
[20454] = { "відтиск кристала Вул'Зори" }, -- Hive'Zora Rubbing
[20455] = { "відтиск кристала Вул'Аші" }, -- Hive'Ashi Rubbing
[20456] = { "відтиск кристала Вул'Регаля" }, -- Hive'Regal Rubbing
[20457] = { "мозок силітида Вул'Аші" }, -- Hive'Ashi Silithid Brain
[20458] = { "мозок силітида Вул'Зори" }, -- Hive'Zora Silithid Brain
[20459] = { "мозок силітида Вул'Регаля" }, -- Hive'Regal Silithid Brain
[20461] = { "загублений лист Бранна Бронзобородого" }, -- Brann Bronzebeard's Lost Letter
[20463] = { "вкрита гліфами кристалічна призма" }, -- Glyphed Crystal Prism
[20464] = { "гліфи поклику", use="Намалювати древні гліфи на піску біля кісток Ґраккаронда." }, -- Glyphs of Calling, @use Required to draw ancient glyphs into the sand at the Bones of Grakkarond.
[20465] = { "механізм відкривання кристалів" }, -- Crystal Unlocking Mechanism
[20466] = { "перстень-печатка Вірала" }, -- Vyral's Signet Ring
[20467] = { "вирвана сторінка з рецептом" }, -- Torn Recipe Page
[20469] = { "розшифровані вирізки з \"Правовірного\"" }, -- Decoded True Believer Clippings
[20490] = { "м'ятна цукерка Залізогарта", flavor="Традиційні ласощі дворфів на Повечір'я святих." }, -- Ironforge Mint, @flavor A classic Hallow's End treat of the Dwarves.
[20491] = { "м'ятна цукерка Підмістя", flavor="Традиційні ласощі відречених на Повечір'я святих." }, -- Undercity Mint, @flavor A classic Hallow's End treat of the Forsaken.
[20492] = { "нуга Штормовію", flavor="Традиційні ласощі людей на Повечір'я святих." }, -- Stormwind Nougat, @flavor A classic Hallow's End treat of the Humans.
[20493] = { "нуга Орґріммара", flavor="Традиційні ласощі Орґріммара на Повечір'я святих." }, -- Orgrimmar Nougat, @flavor An Orgrimmar classic Hallow's End treat.
[20494] = { "мармелад Гномреґана", flavor="Традиційні ласощі гномів на Повечір'я святих." }, -- Gnomeregan Gumdrop, @flavor A classic Hallow's End treat of the Gnomes.
[20495] = { "мармелад Темного Списа", flavor="Традиційні ласощі тролів Темного Списа на Повечір'я святих." }, -- Darkspear Gumdrop, @flavor A classic Hallow's End treat of the Darkspear tribe.
[20496] = { "марципан Дарнасу", flavor="Традиційні ласощі нічних ельфів на Повечір'я святих." }, -- Darnassus Marzipan, @flavor A classic Hallow's End treat of the Night Elves.
[20497] = { "марципан Громового Бескиду", flavor="Традиційні ласощі тауренів на Повечір'я святих." }, -- Thunder Bluff Marzipan, @flavor A classic Hallow's End treat of the Tauren.
[20503] = { "закоханий водяний дух", use="Викликає тотем джерела мани з {1} здоров'я біля заклинача на {2} с, який відновлює {3} мани кожні {4} с членам групи у радіусі {5} м. (Відновлення 3 хв)#with {1} health#for {2} sec#{3} mana every {4} sec#within {5} y" }, -- Enamored Water Spirit, @use Summons a Mana Spring Totem with 5 health at the feet of the caster for 24 sec that restores 27 mana every 2 seconds to group members within 20 yards. (3 Min Cooldown)
[20504] = { "клинок зі світлосталі", equip="Збільшує шкоду від заклинань і ефектів світла на 16." }, -- Lightforged Blade, @equip Increases damage done by Holy spells and effects by up to 16.
[20505] = { "лицарська печатка", equip="Збільшує зцілення від заклинань і ефектів на 15." }, -- Chivalrous Signet, @equip Increases healing done by spells and effects by up to 15.
[20512] = { "освячена сфера", use="Збільшує шанс нанесення критичного удару заклинаннями та атаками ближнього бою на 3%.  Триває 25 сек. (Відновлення 3 хв)" }, -- Sanctified Orb, @use Increases your critical strike chance with spells and melee attacks by 3%.  Lasts 25 sec. (3 Min Cooldown)
[20513] = { "талісман безодні" }, -- Abyssal Crest
[20514] = { "перстень безодні" }, -- Abyssal Signet
[20515] = { "скіпетр безодні" }, -- Abyssal Scepter
[20516] = { "яблуко з басейна", use="Відновлює 2% здоров'я кожну секунду протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 15 хв.", flavor="Хрусткі, смачні та, можливо, без черв'яків" }, -- Bobbing Apple, @use Restores 2% of your health per second for 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain Stamina and Spirit for 15 min., @flavor Crisp, delicious and hopefully worm-free
[20517] = { "наплічники бритвосталі", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Razorsteel Shoulders, @equip Improves your chance to hit by 1%.
[20519] = { "капелюх пірата Південних морів" }, -- Southsea Pirate Hat
[20520] = { "темна руна", use="Відновлює від 900 до 1500 мани в обмін на від 600 до 1000 здоров'я. (Відновлення 2 хв)" }, -- Dark Rune, @use Restores 900 to 1500 mana at the cost of 600 to 1000 life. (2 Min Cooldown)
[20521] = { "козирок люті", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Fury Visor, @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to hit by 1%.
[20530] = { "мантія служіння", equip={ "Збільшує шкоду від заклинань і ефектів вогню на 23.", "Збільшує шкоду від заклинань і ефектів тіні на 23." } }, -- Robes of Servitude, @equip Increases damage done by Fire spells and effects by up to 23., @equip Increases damage done by Shadow spells and effects by up to 23.
[20534] = { "уламок безодні", use="Виклик пустотника без вимог до мани та уламків душ. (Відновлення 30 хв)", flavor="Темні ритуали ув'язнені в темних самоцвітах." }, -- Abyss Shard, @use Casts your Summon Voidwalker spell with no mana or Soul Shard requirements. (30 Min Cooldown), @flavor Dark rituals are trapped in dark gems.
[20536] = { "жнець душ", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує шкоду від заклинань і ефектів тіні на 24." } }, -- Soul Harvester, @equip Improves your chance to hit with spells by 1%., @equip Increases damage done by Shadow spells and effects by up to 24.
[20541] = { "розшифрований текст Молота Сутінків", flavor="Розшифрована стаття з \"Правовірного\"" }, -- Decoded Twilight Text, @flavor A decoded True Believer article
[20545] = { "розшифрований текст Молота Сутінків", flavor="Розшифрована стаття з \"Правовірного\"" }, -- Decoded Twilight Text, @flavor A decoded True Believer article
[20552] = { "розшифрований текст Молота Сутінків", flavor="Розшифрована стаття з \"Правовірного\"" }, -- Decoded Twilight Text, @flavor A decoded True Believer article
[20556] = { "дикий посох", equip={ "Збільшує ваш шанс нанесення удару на 1%. ", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Wildstaff, @equip Improves your chance to hit by 1%., @equip Improves your chance to get a critical strike by 1%.
[20557] = { "гарбузові ласощі Повечір'я святих", use="Насолоджуйтесь цукерками Повечір'я святих! Краще з'їсти їх до того, як вони зіпсуються... (Відновлення 1 хв)" }, -- Hallow's End Pumpkin Treat, @use Enjoy a tasty Hallow's End treat!  Better eat it quick before they go bad... (1 Min Cooldown)
[20558] = { "відзнака честі тіснини Боєпісні", flavor="Медаль за битву в тіснині Боєпісні" }, -- Warsong Gulch Mark of Honor, @flavor Medal awarded for fighting in Warsong Gulch
[20559] = { "відзнака честі низини Араті", flavor="Медаль за битву в низині Араті" }, -- Arathi Basin Mark of Honor, @flavor Medal awarded for fighting in Arathi Basin
[20560] = { "відзнака честі Альтерацької долини", flavor="Медаль за битву в Альтерацькій долині" }, -- Alterac Valley Mark of Honor, @flavor Medal awarded for fighting in Alterac Valley
[20561] = { "проста маска дворфа" }, -- Flimsy Male Dwarf Mask
[20562] = { "проста маска дворфи" }, -- Flimsy Female Dwarf Mask
[20563] = { "проста маска нічної ельфи" }, -- Flimsy Female Nightelf Mask
[20564] = { "проста маска нічного ельфа" }, -- Flimsy Male Nightelf Mask
[20565] = { "проста маска жінки" }, -- Flimsy Female Human Mask
[20566] = { "проста маска чоловіка" }, -- Flimsy Male Human Mask
[20567] = { "проста маска трольки" }, -- Flimsy Female Troll Mask
[20568] = { "проста маска троля" }, -- Flimsy Male Troll Mask
[20569] = { "проста маска орчині" }, -- Flimsy Female Orc Mask
[20570] = { "проста маска орка" }, -- Flimsy Male Orc Mask
[20571] = { "проста маска тауренки" }, -- Flimsy Female Tauren Mask
[20572] = { "проста маска таурена" }, -- Flimsy Male Tauren Mask
[20573] = { "проста маска невмерлого" }, -- Flimsy Male Undead Mask
[20574] = { "проста маска невмерлої" }, -- Flimsy Female Undead Mask
[20599] = { "відшліфований арбалет із залізного дерева", equip="Збільшує силу атаки на 24." }, -- Polished Ironwood Crossbow, @equip +24 Attack Power.
[20600] = { "перстень-печатка Малфуріона" }, -- Malfurion's Signet Ring
[20601] = { "мішок трофеїв" }, -- Sack of Spoils
[20602] = { "скриня трофеїв" }, -- Chest of Spoils
[20603] = { "сумка трофеїв" }, -- Bag of Spoils
[20604] = { "очищувач смердючих бомб", use="Очистити Південнобережжя від смердючої бомби. (Відновлення 1 хв)", flavor="Бореться зі смородом відречених силою сосни!" }, -- Stink Bomb Cleaner, @use Clean up a stink bomb found in Southshore. (1 Min Cooldown), @flavor Fights the funk of the Forsaken with the power of pine!
[20605] = { "зіпсовані яйця", flavor="Підходять для того, щоб зіпсувати вміст якоїсь бочки..." }, -- Rotten Eggs, @flavor Suitable for ruining the contents of a keg...
[20606] = { "бурштинове пір'я вуду" }, -- Amber Voodoo Feather
[20607] = { "блакитне пір'я вуду" }, -- Blue Voodoo Feather
[20608] = { "зелене пір'я вуду" }, -- Green Voodoo Feather
[20610] = { "налите кров'ю павуче око" }, -- Bloodshot Spider Eye
[20611] = { "товстий чорний кіготь" }, -- Thick Black Claw
[20613] = { "гнила деревина" }, -- Rotting Wood
[20614] = { "кровотруйна есенція" }, -- Bloodvenom Essence
[20620] = { "священний камінь сили", use="Розбити священний камінь сили, щоб отримати 300 сили атаки і збільшити шкоду від заклинань і ефектів світла на 400 в бою з невмерлими. Триває 10 хв." }, -- Holy Mightstone, @use Shatters the Holy Mightstone, granting 300 Attack Power and increasing Holy damage from spells and effects by up to 400 when fighting undead.  Lasts 10 min.
[20640] = { "головне відро Південних морів", equip="Збільшує навичку захисту на 4." }, -- Southsea Head Bucket, @equip Increased Defense +4.
[20641] = { "чоботи-оберіг Південних морів", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 8." }, -- Southsea Mojo Boots, @equip Increases damage and healing done by magical spells and effects by up to 8.
[20642] = { "антикварний мундир дворянина", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 13." }, -- Antiquated Nobleman's Tunic, @equip Increases damage and healing done by magical spells and effects by up to 13.
[20643] = { "кашкет резервіста Підмістя" }, -- Undercity Reservist's Cap
[20644] = { "поглинений кошмаром предмет", flavor="Невідомий об'єкт, оповитий кошмарами." }, -- Nightmare Engulfed Object, @flavor An unknown object shrouded in nightmares.
[20646] = { "лук піскоступа" }, -- Sandstrider's Mark
[20647] = { "чорний кришталевий кинджал", equip="Відновлює 4 мани кожні 5 сек." }, -- Black Crystal Dagger, @equip Restores 4 mana per 5 sec.
[20648] = { "молоток холодної ковки", equip="Відновлює 3 мани кожні 5 сек." }, -- Cold Forged Hammer, @equip Restores 3 mana per 5 sec.
[20649] = { "кулон сонячної призми" }, -- Sunprism Pendant
[20650] = { "рукавиці пустельного вітру", equip="Збільшує навичку захисту на 6." }, -- Desert Wind Gauntlets, @equip Increased Defense +6.
[20676] = { "розшифрований текст Молота Сутінків", flavor="Розшифрована стаття з \"Правовірного\"" }, -- Decoded Twilight Text, @flavor A decoded True Believer article
[20677] = { "розшифрований текст Молота Сутінків", flavor="Розшифрована стаття з \"Правовірного\"" }, -- Decoded Twilight Text, @flavor A decoded True Believer article
[20678] = { "розшифрований текст Молота Сутінків", flavor="Розшифрована стаття з \"Правовірного\"" }, -- Decoded Twilight Text, @flavor A decoded True Believer article
[20679] = { "розшифрований текст Молота Сутінків", flavor="Розшифрована стаття з \"Правовірного\"" }, -- Decoded Twilight Text, @flavor A decoded True Believer article
[20699] = { "ножні лати кенарійського резервіста", equip="Збільшує навичку захисту на 9." }, -- Cenarion Reservist's Legplates, @equip Increased Defense +9.
[20700] = { "ножні лати кенарійського резервіста" }, -- Cenarion Reservist's Legplates
[20701] = { "поножі кенарійського резервіста" }, -- Cenarion Reservist's Legguards
[20702] = { "поножі кенарійського резервіста" }, -- Cenarion Reservist's Legguards
[20703] = { "поножі кенарійського резервіста", equip="Збільшує силу атаки на 26." }, -- Cenarion Reservist's Leggings, @equip +26 Attack Power.
[20704] = { "поножі кенарійського резервіста", equip="Збільшує зцілення від заклинань і ефектів на 29." }, -- Cenarion Reservist's Leggings, @equip Increases healing done by spells and effects by up to 29.
[20705] = { "штани кенарійського резервіста", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 15." }, -- Cenarion Reservist's Pants, @equip Increases damage and healing done by magical spells and effects by up to 15.
[20707] = { "штани кенарійського резервіста", equip="Збільшує зцілення від заклинань і ефектів на 29." }, -- Cenarion Reservist's Pants, @equip Increases healing done by spells and effects by up to 29.
[20710] = { "інкрустовані кристалами наголінники", equip="Збільшує навичку захисту на 5." }, -- Crystal Encrusted Greaves, @equip Increased Defense +5.
[20711] = { "прикрашені кристалами наголінники", equip="Збільшує зцілення від заклинань і ефектів на 15." }, -- Crystal Lined Greaves, @equip Increases healing done by spells and effects by up to 15.
[20712] = { "рукавиці пусткохода" }, -- Wastewalker's Gauntlets
[20713] = { "рукавиці пустельного ловця" }, -- Desertstalkers's Gauntlets
[20714] = { "черевики піщаних бурь", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14.", "Відновлює 4 мани кожні 5 сек." } }, -- Sandstorm Boots, @equip Increases damage and healing done by magical spells and effects by up to 14., @equip Restores 4 mana per 5 sec.
[20715] = { "чоботи дюнного ловця" }, -- Dunestalker's Boots
[20716] = { "рукавиці зі шкіри піщаного черв'яка", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 27." }, -- Sandworm Skin Gloves, @equip Increases damage and healing done by magical spells and effects by up to 27.
[20717] = { "рукавиці пустельного цвітіння", equip="Збільшує зцілення від заклинань і ефектів на 51." }, -- Desert Bloom Gloves, @equip Increases healing done by spells and effects by up to 51.
[20723] = { "вірна кирка Бранна" }, -- Brann's Trusty Pick
[20724] = { "осквернений чорнолісний посох", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 26." }, -- Corrupted Blackwood Staff, @equip Increases damage and healing done by magical spells and effects by up to 26.
[20725] = { "кристал сплетіння" }, -- Nexus Crystal
[20737] = { "обпалений вулканічний камінь" }, -- Singed Corestone
[20741] = { "ритуальний тотем Мертволісих", flavor="Тотем глибоко просякнутий скверною." }, -- Deadwood Ritual Totem, @flavor The totem is thick with the taint of corruption.
[20742] = { "ритуальний тотем Зимокрайових", flavor="Тотем глибоко просякнутий скверною." }, -- Winterfall Ritual Totem, @flavor The totem is thick with the taint of corruption.
[20744] = { "слабка чарівня олія", use="При нанесенні на зброю збільшує шкоду від магічних заклинань на 8. Триває 30 хвилин." }, -- Minor Wizard Oil, @use While applied to target weapon it increases spell damage by up to 8.  Lasts for 30 minutes.
[20745] = { "слабка олія мани", use="При нанесенні на зброю відновлює 4 мани кожні 5 сек. Триває 30 хвилин." }, -- Minor Mana Oil, @use While applied to target weapon it restores 4 mana to the caster every 5 seconds.  Lasts for 30 minutes.
[20746] = { "проста чарівна олія", use="При нанесенні на зброю збільшує шкоду від магічних заклинань на 16. Триває 30 хвилин." }, -- Lesser Wizard Oil, @use While applied to target weapon it increases spell damage by up to 16.  Lasts for 30 minutes.
[20747] = { "проста олія мани", use="При нанесенні на зброю відновлює 8 мани кожні 5 сек. Триває 30 хвилин." }, -- Lesser Mana Oil, @use While applied to target weapon it restores 8 mana to the caster every 5 seconds.  Lasts for 30 minutes.
[20748] = { "блискуча олія мани", use="При нанесенні на зброю відновлює 12 мани кожні 5 сек та збільшує зцілення від заклять на 25. Триває 30 хвилин." }, -- Brilliant Mana Oil, @use While applied to target weapon it restores 12 mana to the caster every 5 seconds and increases the effect of healing spells by up to 25.  Lasts for 30 minutes.
[20749] = { "блискуча чарівна олія", use="При нанесенні на зброю збільшує шкоду від магічних заклинань на 36 та шанс нанесення критичного удару заклинаннями на 1%. Триває 30 хвилин." }, -- Brilliant Wizard Oil, @use While applied to target weapon it increases spell damage by up to 36 and increases Spell Critical chance by 1% .  Lasts for 30 minutes.
[20750] = { "чарівна олія", use="При нанесенні на зброю збільшує шкоду від магічних заклинань на 24. Триває 30 хвилин." }, -- Wizard Oil, @use While applied to target weapon it increases spell damage by up to 24.  Lasts for 30 minutes.
[20761] = { "рецепт: Трансмутація первородного вогню", use="Навчає вас перетворювати серце вогню на три первородні вогні." }, -- Recipe: Transmute Elemental Fire, @use Teaches you how to transmute a Heart of Fire into three Elemental Fires.
[20800] = { "кенарійська логістична відзнака" }, -- Cenarion Logistics Badge
[20801] = { "кенарійська тактична відзнака" }, -- Cenarion Tactical Badge
[20802] = { "кенарійська бойова відзнака" }, -- Cenarion Combat Badge
[20803] = { "бойові накази Молота Сутінків" }, -- Twilight Battle Orders
[20805] = { "додаткове логістичне завдання" }, -- Followup Logistics Assignment
[20806] = { "план логістичного завдання X" }, -- Logistics Task Briefing X
[20807] = { "план логістичного завдання I" }, -- Logistics Task Briefing I
[20808] = { "бойове завдання" }, -- Combat Assignment
[20809] = { "тактичне завдання" }, -- Tactical Assignment
[20810] = { "підписані документи про польову службу" }, -- Signed Field Duty Papers
[20844] = { "смертельна отрута V", ref=2892 }, -- Deadly Poison V
[20858] = { "кам'яний скарабей" }, -- Stone Scarab
[20859] = { "золотий скарабей" }, -- Gold Scarab
[20860] = { "срібний скарабей" }, -- Silver Scarab
[20861] = { "бронзовий скарабей" }, -- Bronze Scarab
[20862] = { "кришталевий скарабей" }, -- Crystal Scarab
[20863] = { "глиняний скарабей" }, -- Clay Scarab
[20864] = { "кістяний скарабей" }, -- Bone Scarab
[20865] = { "скарабей зі слонової кістки" }, -- Ivory Scarab
[20866] = { "лазуровий ідол" }, -- Azure Idol
[20867] = { "оніксовий ідол" }, -- Onyx Idol
[20868] = { "сяйнистий ідол" }, -- Lambent Idol
[20869] = { "бурштиновий ідол" }, -- Amber Idol
[20870] = { "яшмовий ідол" }, -- Jasper Idol
[20871] = { "обсидіановий ідол" }, -- Obsidian Idol
[20872] = { "багряний ідол" }, -- Vermillion Idol
[20873] = { "алебастровий ідол" }, -- Alabaster Idol
[20874] = { "ідол сонця" }, -- Idol of the Sun
[20875] = { "ідол ночі" }, -- Idol of Night
[20876] = { "ідол смерті" }, -- Idol of Death
[20877] = { "ідол мудреця" }, -- Idol of the Sage
[20878] = { "ідол відродження" }, -- Idol of Rebirth
[20879] = { "ідол життя" }, -- Idol of Life
[20881] = { "ідол боротьби" }, -- Idol of Strife
[20882] = { "ідол війни" }, -- Idol of War
[20884] = { "кіразький магістерський перстень" }, -- Qiraji Magisterial Ring
[20885] = { "кіразька бойова пелерина" }, -- Qiraji Martial Drape
[20886] = { "кіразьке шиповане руків'я" }, -- Qiraji Spiked Hilt
[20888] = { "кіразький церемоніальний перстень" }, -- Qiraji Ceremonial Ring
[20889] = { "кіразька королівська пелерина" }, -- Qiraji Regal Drape
[20890] = { "кіразьке вишукане руків'я" }, -- Qiraji Ornate Hilt
[20926] = { "вінець Век'нілаша" }, -- Vek'nilash's Circlet
[20927] = { "цілісна шкура Оуро" }, -- Ouro's Intact Hide
[20928] = { "кіразькі наручі командування" }, -- Qiraji Bindings of Command
[20929] = { "панцир Старого Бога" }, -- Carapace of the Old God
[20930] = { "діадема Век'лора" }, -- Vek'lor's Diadem
[20931] = { "шкіра гігантського піщаного черв'яка" }, -- Skin of the Great Sandworm
[20932] = { "кіразькі наручі домінування" }, -- Qiraji Bindings of Dominance
[20933] = { "оболонка Старого Бога" }, -- Husk of the Old God
[20939] = { "план логістичного завдання II" }, -- Logistics Task Briefing II
[20940] = { "план логістичного завдання III" }, -- Logistics Task Briefing III
[20941] = { "план бойового завдання XII" }, -- Combat Task Briefing XII
[20942] = { "план бойового завдання III" }, -- Combat Task Briefing III
[20943] = { "план тактичного завдання X" }, -- Tactical Task Briefing X
[20944] = { "план тактичного завдання IX" }, -- Tactical Task Briefing IX
[20945] = { "план тактичного завдання II" }, -- Tactical Task Briefing II
[20946] = { "план тактичного завдання III" }, -- Tactical Task Briefing III
[20947] = { "план тактичного завдання IV" }, -- Tactical Task Briefing IV
[20948] = { "план тактичного завдання V" }, -- Tactical Task Briefing V
[20949] = { "магічне писання" }, -- Magical Ledger
[20951] = { "окуляри провидіння Нараіна" }, -- Narain's Scrying Goggles
[21023] = { "кайфові відбивні Могиля з химерин", use="Відновлює 2550 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваша витривалість збільшиться на 25 на 15 хв." }, -- Dirge's Kickin' Chimaerok Chops, @use Restores 2550 health over 30 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 25 Stamina for 15 min.
[21024] = { "вирізка химерини" }, -- Chimaerok Tenderloin
[21025] = { "рецепт: Кайфові відбивні Могиля з химерин", use="Навчає вас приготуванню кайфових відбивних Могиля з химерин." }, -- Recipe: Dirge's Kickin' Chimaerok Chops, @use Teaches you how to cook Dirge's Kickin' Chimaerok Chops.
[21027] = { "туша Лакмеран", flavor="Дійсно схоже на велику курку." }, -- Lakmaeran's Carcass, @flavor It really does look like a big chicken.
[21028] = { "500-фунтова курка" }, -- 500 Pound Chicken
[21029] = { "лист з вимогою викупу" }, -- Ransom Letter
[21032] = { "любовний лист Меридіт" }, -- Meridith's Love Letter
[21037] = { "грубо намальована мапа", flavor="Мапа, на якій вказано, де шахраї очікують на обмін." }, -- Crude Map, @flavor A map indicating where the crooks expect the drop-off to be made.
[21038] = { "тверда сніжка", use="Кинь мене, поки я не розтанула! (Відновлення 30 сек)" }, -- Hardpacked Snowball, @use Throw me before I melt! (30 Sec Cooldown)
[21039] = { "тюрбан Нараіна", use="Змінює ваш зовнішній вигляд так, щоб ви були схожі на Нараіна Тихомрія.", flavor="Використовується з мантією Нараіна!" }, -- Narain's Turban, @use Transforms the appearance of the recipient to resemble Narain Soothfancy., @flavor Use with Narain's Robe to disguise yourself as Narain!
[21040] = { "мантія Нараіна" }, -- Narain's Robe
[21041] = { "мішок золота", use="Розмістити мішок золота в обумовленій точці обміну." }, -- Bag of Gold, @use Places the Bag of Gold at the designated Drop-Off Point.
[21042] = { "спеціальний набір Нараіна" }, -- Narain's Special Kit
[21071] = { "сира мудрориба", use="Відновлює 155.4 здоров'я та 315 мани протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Sagefish, @use Restores 155.4 health and 315 mana over 21 sec.  Must remain seated while eating.
[21072] = { "копчена мудрориба", use="Відновлює 378.0 здоров'я та 567 мани протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і відновлюватимете 3 мани кожні 5 сек протягом 15 хв." }, -- Smoked Sagefish, @use Restores 378.0 health and 567 mana over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 3 Mana every 5 seconds for 15 min.
[21100] = { "монета предків", flavor="Символ честі та поваги до предків." }, -- Coin of Ancestry, @flavor A symbol of honor and respect for one's ancestry.
[21103] = { "Мова драконів для початківців", flavor="Розділ I" }, -- Draconic for Dummies, @flavor Chapter I
[21104] = { "Мова драконів для початківців", flavor="Розділ II" }, -- Draconic for Dummies, @flavor Chapter II
[21105] = { "Мова драконів для початківців", flavor="Розділ III" }, -- Draconic for Dummies, @flavor Chapter III
[21106] = { "Мова драконів для початківців", flavor="Розділ IV" }, -- Draconic for Dummies, @flavor Chapter IV
[21107] = { "Мова драконів для початківців", flavor="Розділ V" }, -- Draconic for Dummies, @flavor Chapter V
[21108] = { "Мова драконів для початківців", flavor="Розділ VI" }, -- Draconic for Dummies, @flavor Chapter VI
[21109] = { "Мова драконів для початківців", flavor="Розділ VII" }, -- Draconic for Dummies, @flavor Chapter VII
[21110] = { "Мова драконів для початківців", flavor="Розділ VIII" }, -- Draconic for Dummies, @flavor Chapter VIII
[21111] = { "Мова драконів для початківців: Том ІІ" }, -- Draconic For Dummies: Volume II
[21112] = { "чарівна палітурка", use="Об'єднати з розділами 1-8 \"Мови драконів для початківців\", щоб створити \"Мову драконів для початківців: Том ІІ\"." }, -- Magical Book Binding, @use Combine with Draconic For Dummies Chapters 1 - 8 to create Draconic for Dummies: Volume II.
[21130] = { "щоденник Жла" }, -- Diary of Weavil
[21131] = { "додаткове бойове завдання" }, -- Followup Combat Assignment
[21132] = { "логістичне завдання" }, -- Logistics Assignment
[21133] = { "додаткове тактичне завдання" }, -- Followup Tactical Assignment
[21136] = { "арканітовий буй", use="Розмістити арканітовий буй у закрученому вирі в затоці Штормів. Це повинно змусити Пащі скинути риб'яче маскування. Сподіваємося, ви захопили з собою друзів!" }, -- Arcanite Buoy, @use Places Arcanite Buoy at the Swirling Maelstrom in the Bay of Storms. This should coax Maws out of his minnow disguise. Hopefully, you brought some friends!
[21137] = { "синій уламок скіпетра" }, -- Blue Scepter Shard
[21138] = { "червоний уламок скіпетра" }, -- Red Scepter Shard
[21139] = { "зелений уламок скіпетра" }, -- Green Scepter Shard
[21142] = { "зі стола лорда Віктора Нефарія" }, -- From the Desk of Lord Victor Nefarius
[21143] = { "непідписані документи про польову службу", use="Заповнити службові відомості добровольця. (Відновлення 3 хв)" }, -- Unsigned Field Duty Papers, @use Fills out the recruit's field duty information. (3 Min Cooldown)
[21144] = { "факел виклику демона", use="Розмістити факел біля входу до печери верховного вождя Зимокрая, щоб викликати демона, що оскверняє плем'я Зимокрайових хутропузів. Захопіть з собою кількох союзників... (Відновлення 10 хв)", flavor="Шаманський пристрій, розроблений Деревопузими для виклику демонів." }, -- Demon Summoning Torch, @use Place the torch in the mouth of High Chief Winterfall's cave to summon the demon that is corrupting the Winterfall furbolgs.  Bring some friends before planting it... (10 Min Cooldown), @flavor A shamanistic device fashioned by the Timbermaw to summon forth corrupting demons.
[21145] = { "сутність Зандівія" }, -- Essence of Xandivious
[21146] = { "фрагмент зараження Жаху", flavor="-Внутрішні землі" }, -- Fragment of the Nightmare's Corruption, @flavor -Hinterlands
[21147] = { "фрагмент зараження Жаху", flavor="-Ясенеділ" }, -- Fragment of the Nightmare's Corruption, @flavor -Ashenvale
[21148] = { "фрагмент зараження Жаху", flavor="-Фералас" }, -- Fragment of the Nightmare's Corruption, @flavor -Feralas
[21149] = { "фрагмент зараження Жаху", flavor="-Смерколісся" }, -- Fragment of the Nightmare's Corruption, @flavor -Duskwood
[21153] = { "сира велика мудрориба", use="Відновлює 567 здоров'я та 882.0 мани протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Raw Greater Sagefish, @use Restores 567 health and 882.0 mana over 21 sec.  Must remain seated while eating.
[21154] = { "святкова сукня" }, -- Festival Dress
[21155] = { "дар Деревопузих", flavor="Цей виріб з ясносрібла є символом миру хутропузів. До нього прикріплено запечатане повідомлення." }, -- Timbermaw Offering of Peace, @flavor This truesilver-wrought item is a furbolg symbol of peace.  A sealed message is attached to it.
[21156] = { "сумка скарабеїв" }, -- Scarab Bag
[21157] = { "зелена святкова сукня" }, -- Festive Green Dress
[21158] = { "звіт розвідниці Вул'Зори" }, -- Hive'Zora Scout Report
[21160] = { "звіт розвідника Вул'Регаля" }, -- Hive'Regal Scout Report
[21161] = { "звіт розвідниці Вул'Аші" }, -- Hive'Ashi Scout Report
[21165] = { "план тактичного завдання VI" }, -- Tactical Task Briefing VI
[21166] = { "план тактичного завдання VII" }, -- Tactical Task Briefing VII
[21167] = { "план тактичного завдання VIII" }, -- Tactical Task Briefing VIII
[21175] = { "скіпетр Мінливих Пісків" }, -- The Scepter of the Shifting Sands
[21176] = { "чорний кіразький резонуючий кристал", use="Викликає та відпускає кіразького бойового танка, на якому можна їздити верхи. Це дуже швидке створіння. (Відновлення 3 сек)" }, -- Black Qiraji Resonating Crystal, @use Summons and dismisses a rideable Qiraji battle tank. This is a very fast mount. (3 Sec Cooldown)
[21177] = { "знак королів" }, -- Symbol of Kings
[21178] = { "рукавички сили землі", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 27." }, -- Gloves of Earthen Power, @equip Increases damage and healing done by magical spells and effects by up to 27.
[21179] = { "рукавички гніву землі", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Відновлює 4 мани кожні 5 сек." } }, -- Band of Earthen Wrath, @equip Improves your chance to get a critical strike with spells by 1%., @equip Restores 3 mana per 5 sec.
[21180] = { "удар землі", use="Збільшує силу атаки ближнього та дального бою на 280.  Ефект триває 20 сек. (Відновлення 2 хв)" }, -- Earthstrike, @use Increases your melee and ranged attack power by 280.  Effect lasts for 20 sec. (2 Min Cooldown)
[21181] = { "благодать землі", use="Зменшує вашу загрозу для ворожих цілей у радіусі 30 м, знижуючи ймовірність їхнього нападу на вас. (Відновлення 5 хв)" }, -- Grace of Earth, @use Reduces your threat to enemy targets within 30 yards, making them less likely to attack you. (5 Min Cooldown)
[21182] = { "перстень міці землі", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Band of Earthen Might, @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to hit by 1%.
[21183] = { "жилет сили землі", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 25." } }, -- Earthpower Vest, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 25.
[21184] = { "глибокоскельні браслети" }, -- Deeprock Bracers
[21185] = { "сфера спокою землі", equip={ "Відновлює 8 мани кожні 5 сек.", "Збільшує зцілення від заклинань і ефектів на 18." } }, -- Earthcalm Orb, @equip Restores 8 mana per 5 sec., @equip Increases healing done by spells and effects by up to 18.
[21186] = { "браслети люті скель", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 27.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Rockfury Bracers, @equip Increases damage and healing done by magical spells and effects by up to 27., @equip Improves your chance to hit with spells by 1%.
[21187] = { "землетканий плащ", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Earthweave Cloak, @equip Improves your chance to hit by 1%.
[21188] = { "кулак Кенарія", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 40.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 2%." } }, -- Fist of Cenarius, @equip Increases damage and healing done by magical spells and effects by up to 40., @equip Improves your chance to get a critical strike with spells by 2%.
[21189] = { "міць Кенарія", equip={ "Збільшує шкоду зброї на 4.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Might of Cenarius, @equip +4 Weapon Damage., @equip Improves your chance to hit by 1%.
[21190] = { "гнів Кенарія", equip="При успішній атаці вашим бойовим заклинанням ви отримуєте шанс збільшити шкоду від ваших заклинань і ефектів на 132 протягом 10 сек. (Імовірність: 5%)" }, -- Wrath of Cenarius, @equip Gives a chance when your harmful spells land to increase the damage of your spells and effects by 132 for 10 sec. (Proc chance: 5%)
[21191] = { "дбайливо упакований подарунок" }, -- Carefully Wrapped Present
[21196] = { "перстень-печатка бронзових драконів", equip="Збільшує навичку захисту на 5.", flavor="Шлях захисника" }, -- Signet Ring of the Bronze Dragonflight, @equip Increased Defense +5., @flavor The Path of the Protector
[21197] = { "перстень-печатка бронзових драконів", equip="Збільшує навичку захисту на 5.", flavor="Шлях захисника" }, -- Signet Ring of the Bronze Dragonflight, @equip Increased Defense +5., @flavor The Path of the Protector
[21198] = { "перстень-печатка бронзових драконів", equip="Збільшує навичку захисту на 6.", flavor="Шлях захисника" }, -- Signet Ring of the Bronze Dragonflight, @equip Increased Defense +6., @flavor The Path of the Protector
[21199] = { "перстень-печатка бронзових драконів", equip="Збільшує навичку захисту на 6.", flavor="Шлях захисника" }, -- Signet Ring of the Bronze Dragonflight, @equip Increased Defense +6., @flavor The Path of the Protector
[21200] = { "перстень-печатка бронзових драконів", equip="Збільшує навичку захисту на 7.", flavor="Шлях захисника" }, -- Signet Ring of the Bronze Dragonflight, @equip Increased Defense +7., @flavor The Path of the Protector
[21201] = { "перстень-печатка бронзових драконів", equip="Збільшує ваш шанс нанесення удару на 1%.", flavor="Шлях завойовника" }, -- Signet Ring of the Bronze Dragonflight, @equip Improves your chance to hit by 1%., @flavor The Path of the Conqueror
[21202] = { "перстень-печатка бронзових драконів", equip="Збільшує ваш шанс нанесення удару на 1%.", flavor="Шлях завойовника" }, -- Signet Ring of the Bronze Dragonflight, @equip Improves your chance to hit by 1%., @flavor The Path of the Conqueror
[21203] = { "перстень-печатка бронзових драконів", equip="Збільшує ваш шанс нанесення удару на 1%.", flavor="Шлях завойовника" }, -- Signet Ring of the Bronze Dragonflight, @equip Improves your chance to hit by 1%., @flavor The Path of the Conqueror
[21204] = { "перстень-печатка бронзових драконів", equip="Збільшує ваш шанс нанесення удару на 1%.", flavor="Шлях завойовника" }, -- Signet Ring of the Bronze Dragonflight, @equip Improves your chance to hit by 1%., @flavor The Path of the Conqueror
[21205] = { "перстень-печатка бронзових драконів", equip="Збільшує ваш шанс нанесення удару на 1%.", flavor="Шлях завойовника" }, -- Signet Ring of the Bronze Dragonflight, @equip Improves your chance to hit by 1%., @flavor The Path of the Conqueror
[21206] = { "перстень-печатка бронзових драконів", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 21.", "Відновлює 3 мани кожні 5 сек." }, flavor="Шлях заклинателя" }, -- Signet Ring of the Bronze Dragonflight, @equip Increases damage and healing done by magical spells and effects by up to 21., @equip Restores 3 mana per 5 sec., @flavor The Path of the Invoker
[21207] = { "перстень-печатка бронзових драконів", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 22.", "Відновлює 3 мани кожні 5 сек." }, flavor="Шлях заклинателя" }, -- Signet Ring of the Bronze Dragonflight, @equip Increases damage and healing done by magical spells and effects by up to 22., @equip Restores 3 mana per 5 sec., @flavor The Path of the Invoker
[21208] = { "перстень-печатка бронзових драконів", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 25.", "Відновлює 4 мани кожні 5 сек." }, flavor="Шлях заклинателя" }, -- Signet Ring of the Bronze Dragonflight, @equip Increases damage and healing done by magical spells and effects by up to 25., @equip Restores 4 mana per 5 sec., @flavor The Path of the Invoker
[21209] = { "перстень-печатка бронзових драконів", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 26.", "Відновлює 4 мани кожні 5 сек." }, flavor="Шлях заклинателя" }, -- Signet Ring of the Bronze Dragonflight, @equip Increases damage and healing done by magical spells and effects by up to 26., @equip Restores 4 mana per 5 sec., @flavor The Path of the Invoker
[21210] = { "перстень-печатка бронзових драконів", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28.", "Відновлює 5 мани кожні 5 сек." }, flavor="Шлях заклинателя" }, -- Signet Ring of the Bronze Dragonflight, @equip Increases damage and healing done by magical spells and effects by up to 28., @equip Restores 5 mana per 5 sec., @flavor The Path of the Invoker
[21211] = { "мішечок з оленячим пилом", flavor="Цей дивний пил має дозволити Метцену звільнитися від будь-яких пут." }, -- Pouch of Reindeer Dust, @flavor This strange dust should allow Metzen to be freed when sprinkled on him.
[21212] = { "свіжий падуб", use="Перетворює ваш транспортний засіб на щось більш святкове. (Відновлення 1 хв)" }, -- Fresh Holly, @use Transforms your mount into something more festive. (1 Min Cooldown)
[21213] = { "сушений падуб", use="Перетворює ваш транспортний засіб на щось більш святкове. (Відновлення 1 хв)" }, -- Preserved Holly, @use Transforms your mount into something more festive. (1 Min Cooldown)
[21215] = { "фруктовий пиріг Ґракку з фаршем", use="Відновлює 5% здоров'я та мани кожну секунду протягом 20 сек. Потрібно залишатися в сидячому положенні під час їжі. Смак фруктового кексу вам, мабуть, також сподобається. ", flavor="Зберігається довше завдяки спеціальним спеціям Ґракку! Пройде чимало часу, перш ніж цей кекс зіпсується." }, -- Graccu's Mince Meat Fruitcake, @use Restores 5% of your health and mana per second for 20 sec.  Must remain seated while eating.  You should also probably like the taste of fruitcake., @flavor Preserved with Graccu's special spices!  It'll be a very long time before these turn bad...
[21216] = { "ексклюзивний подарунок Пасовищ Димного Лісу" }, -- Smokywood Pastures Extra-Special Gift
[21217] = { "делікатес з мудрориби", use="Відновлює 840.0 здоров'я та 1260 мани протягом 21 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і відновлюватимете 6 мани кожні 5 сек протягом 15 хв." }, -- Sagefish Delight, @use Restores 840.0 health and 1260 mana over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Mana every 5 seconds for 15 min.
[21220] = { "голова Оссіріана Невразливого" }, -- Head of Ossirian the Unscarred
[21221] = { "око К'Туна" }, -- Eye of C'Thun
[21229] = { "відзнака кіразького володаря" }, -- Qiraji Lord's Insignia
[21230] = { "древній кіразький артефакт" }, -- Ancient Qiraji Artifact
[21232] = { "кіразька імператорська зброя", flavor="Церемоніальна зброя кіразьких володарів. Використовує піхотою кіраджі." }, -- Imperial Qiraji Armaments, @flavor Ceremonial Armaments of the Qiraji Lords. Used by Qiraji infantry.
[21235] = { "печеня Зимової Покрови", use="Відновлює 2% здоров'я кожну секунду протягом 25 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Winter Veil Roast, @use Restores 2% of your health per second for 25 sec.  Must remain seated while eating.
[21237] = { "кіразькі імператорські регалії", flavor="Регалії кіразьких вельмож. Використовуються заклинателями кіраджі." }, -- Imperial Qiraji Regalia, @flavor Regalia of Qiraji Nobility. Used by Qiraji spell casters.
[21241] = { "ґоґель-моґель Зимової Покрови", use="Відновлює 2% мани кожну секунду протягом 30 сек. Потрібно залишатися в сидячому положенні під час пиття." }, -- Winter Veil Eggnog, @use Restores 2% of your mana per second for 30 sec.  Must remain seated while drinking.
[21242] = { "благословенна кіразька бойова сокира", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує силу атаки на 14." }, flavor="Зброя, наповнена та укріплена елементієм." }, -- Blessed Qiraji War Axe, @equip Improves your chance to get a critical strike by 1%., @equip +14 Attack Power., @flavor The weapon is infused and reinforced with Elementium.
[21244] = { "благословенний кіразький пугіо", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс нанесення удару на 1%.", "Збільшує силу атаки на 18." }, flavor="Зброя, наповнена та укріплена елементієм." }, -- Blessed Qiraji Pugio, @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to hit by 1%., @equip +18 Attack Power., @flavor The weapon is infused and reinforced with Elementium.
[21245] = { "план тактичного завдання I" }, -- Tactical Task Briefing I
[21246] = { "план бойового завдання I" }, -- Combat Task Briefing I
[21247] = { "план бойового завдання II" }, -- Combat Task Briefing II
[21248] = { "план бойового завдання IV" }, -- Combat Task Briefing IV
[21249] = { "план бойового завдання V" }, -- Combat Task Briefing V
[21250] = { "план бойового завдання VI" }, -- Combat Task Briefing VI
[21251] = { "план бойового завдання VII" }, -- Combat Task Briefing VII
[21252] = { "план бойового завдання VIII" }, -- Combat Task Briefing VIII
[21253] = { "план бойового завдання IX" }, -- Combat Task Briefing IX
[21254] = { "печиво Зимової Покрови", use="Відновлює 2% здоров'я кожну секунду протягом 24 сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 15 хв.", flavor="Прямо з печі" }, -- Winter Veil Cookie, @use Restores 2% of your health per second for 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain Stamina and Spirit for 15 min., @flavor Fresh from the oven
[21255] = { "план бойового завдання X" }, -- Combat Task Briefing X
[21256] = { "план бойового завдання XI" }, -- Combat Task Briefing XI
[21257] = { "план логістичного завдання IV" }, -- Logistics Task Briefing IV
[21258] = { "план логістичного завдання IV" }, -- Logistics Task Briefing IV
[21259] = { "план логістичного завдання V" }, -- Logistics Task Briefing V
[21260] = { "план логістичного завдання VI" }, -- Logistics Task Briefing VI
[21261] = { "план логістичного завдання VI" }, -- Logistics Task Briefing VI
[21262] = { "план логістичного завдання VIII" }, -- Logistics Task Briefing VIII
[21263] = { "план логістичного завдання VII" }, -- Logistics Task Briefing VII
[21264] = { "план логістичного завдання VII" }, -- Logistics Task Briefing VII
[21265] = { "план логістичного завдання IX" }, -- Logistics Task Briefing IX
[21266] = { "логістичне завдання" }, -- Logistics Assignment
[21268] = { "благословенний кіразький бойовий молот", equip={ "Збільшує силу атаки на 280 в подобі кота, ведмедя та лютого ведмедя.", "Збільшує навичку захисту на 8." }, flavor="Зброя, наповнена та укріплена елементієм." }, -- Blessed Qiraji War Hammer, @equip +280 Attack Power in Cat, Bear, and Dire Bear forms only., @equip Increased Defense +8., @flavor The weapon is infused and reinforced with Elementium.
[21269] = { "благословенний кіразький щит", equip={ "Збільшує шанс блокування атак щитом на 3%.", "Збільшує показник блокування щитом на 15.", "Збільшує навичку захисту на 8." }, flavor="Щит, наповнений та укріплений елементієм." }, -- Blessed Qiraji Bulwark, @equip Increases your chance to block attacks with a shield by 3%., @equip Increases the block value of your shield by 15., @equip Increased Defense +8., @flavor The shield is infused and reinforced with Elementium.
[21270] = { "злегка розтрушений подарунок" }, -- Gently Shaken Gift
[21271] = { "злегка розтрушений подарунок" }, -- Gently Shaken Gift
[21272] = { "благословенний кіразький мушкет", equip="Збільшує силу атаки на 31.", flavor="Зброя, наповнена та укріплена елементієм." }, -- Blessed Qiraji Musket, @equip +31 ranged Attack Power., @flavor The weapon is infused and reinforced with Elementium.
[21273] = { "благословенний посох кіразького послушника", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 76.", "Збільшує ваш шанс нанесення удару заклинаннями на 2%.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." }, flavor="Зброя, наповнена та укріплена елементієм." }, -- Blessed Qiraji Acolyte Staff, @equip Increases damage and healing done by magical spells and effects by up to 76., @equip Improves your chance to hit with spells by 2%., @equip Improves your chance to get a critical strike with spells by 1%., @flavor The weapon is infused and reinforced with Elementium.
[21275] = { "благословенний посох кіразького авгура", equip={ "Збільшує зцілення від заклинань і ефектів на 143.", "Відновлює 15 мани кожні 5 сек." }, flavor="Зброя, наповнена та укріплена елементієм." }, -- Blessed Qiraji Augur Staff, @equip Increases healing done by spells and effects by up to 143., @equip Restores 15 mana per 5 sec., @flavor The weapon is infused and reinforced with Elementium.
[21281] = { "гримуар тіньової стріли X", use="Навчає закляттю \"Тіньова стріла\" (Ранг 10)." }, -- Grimoire of Shadow Bolt X, @use Teaches Shadow Bolt (Rank 10).
[21282] = { "гримуар жертвоприношення VIII", use="Навчає закляттю \"Жертвоприношення\" (Ранг 8)." }, -- Grimoire of Immolate VIII, @use Teaches Immolate (Rank 8).
[21283] = { "гримуар зараження VII", use="Навчає закляттю \"Зараження\" (Ранг 7)." }, -- Grimoire of Corruption VII, @use Teaches Corruption (Rank 7).
[21301] = { "коробка зеленого помічника", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашого помічника. Для виклику потрібна сніжка." }, -- Green Helper Box, @use Right Click to summon and dismiss your helper. Requires a Snowball to summon.
[21305] = { "коробка червоного помічника", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашого помічника. Для виклику потрібна сніжка." }, -- Red Helper Box, @use Right Click to summon and dismiss your helper. Requires a Snowball to summon.
[21308] = { "святковий дзвіночок", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашого північного оленя. Для виклику потрібна сніжка." }, -- Jingling Bell, @use Right Click to summon and dismiss your reindeer. Requires a Snowball to summon.
[21309] = { "набір для створення сніговика", use="Клацніть правою кнопкою миші, щоб викликати і відпустити вашого сніговика. Для виклику потрібна сніжка." }, -- Snowman Kit, @use Right Click to summon and dismiss your snowman. Requires a Snowball to summon.
[21310] = { "подарунок в яскравій обгортці" }, -- Gaily Wrapped Present
[21311] = { "жилет стража землі", equip="Відновлює 6 мани кожні 5 сек." }, -- Earth Warder's Vest, @equip Restores 6 mana per 5 sec.
[21312] = { "пояс наглядача лігва", equip="Збільшує силу атаки на 24." }, -- Belt of the Den Watcher, @equip +24 Attack Power.
[21314] = { "листи та записки про Метцена", flavor="Колекція відомостей про місцеперебування Метцена-північного оленя, включаючи обидві записки з вимогою викупу." }, -- Metzen's Letters and Notes, @flavor A collection of information related to the whereabouts of Metzen the reindeer, including both ransom notes.
[21315] = { "сумка Димного Лісу", flavor="Усередині знаходяться речі, які знадобляться вам для порятунку Метцена-північного оленя!" }, -- Smokywood Satchel, @flavor Inside are the things you will need to rescue Metzen the Reindeer!
[21316] = { "поножі урси", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Leggings of the Ursa, @equip Improves your chance to get a critical strike by 1%.
[21317] = { "шолом слідопита", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Helm of the Pathfinder, @equip Improves your chance to get a critical strike by 1%.
[21318] = { "рукавиці стража землі", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 22." }, -- Earth Warder's Gloves, @equip Increases damage and healing done by magical spells and effects by up to 22.
[21319] = { "рукавиці слідопита" }, -- Gloves of the Pathfinder
[21320] = { "жилет наглядача лігва" }, -- Vest of the Den Watcher
[21322] = { "обійми урси", equip="Збільшує навичку захисту на 10." }, -- Ursa's Embrace, @equip Increased Defense +10.
[21325] = { "механічний Ґрінч", use="Викликати механічного Ґрінча, що захищатиме вас протягом 10 хв. (Відновлення 10 хв)" }, -- Mechanical Greench, @use Summons a mechanical Greench that will protect you for 10 min. (10 Min Cooldown)
[21326] = { "захисник Деревопузих", use="Викликати предка Деревопузих, що битиметься на вашому боці та зцілюватиме вас. (Відновлення 10 хв)" }, -- Defender of the Timbermaw, @use Calls forth a Timbermaw Ancestor to fight at your side and heal you. (10 Min Cooldown)
[21327] = { "подарунок, що цокає" }, -- Ticking Present
[21328] = { "паличка святкового настрою", use="Наповнює ціль святковим настроєм. (Відновлення 2 хв)" }, -- Wand of Holiday Cheer, @use Fills targets with holiday cheer. (2 Min Cooldown)
[21329] = { "корона завойовника", equip="Збільшує навичку захисту на 6." }, -- Conqueror's Crown, @equip Increased Defense +6.
[21330] = { "наплічники завойовника", equip={ "Збільшує навичку захисту на 4.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Conqueror's Spaulders, @equip Increased Defense +4., @equip Improves your chance to hit by 1%.
[21331] = { "кіраса завойовника", equip="Збільшує навичку захисту на 6." }, -- Conqueror's Breastplate, @equip Increased Defense +6.
[21332] = { "поножі завойовника", equip={ "Збільшує навичку захисту на 6.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Conqueror's Legguards, @equip Increased Defense +6., @equip Improves your chance to hit by 1%.
[21333] = { "наголінники завойовника", equip="Збільшує навичку захисту на 4." }, -- Conqueror's Greaves, @equip Increased Defense +4.
[21334] = { "мантія згубоклича", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 41.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Зменшує супротив магії цілей ваших заклинань на 20." } }, -- Doomcaller's Robes, @equip Increases damage and healing done by magical spells and effects by up to 41., @equip Improves your chance to get a critical strike with spells by 1%., @equip Decreases the magical resistances of your spell targets by 20.
[21335] = { "наплічники згубоклича", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28.", "Зменшує супротив магії цілей ваших заклинань на 10.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Doomcaller's Mantle, @equip Increases damage and healing done by magical spells and effects by up to 28., @equip Decreases the magical resistances of your spell targets by 10., @equip Improves your chance to hit with spells by 1%.
[21336] = { "штани згубоклича", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 34.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Doomcaller's Trousers, @equip Increases damage and healing done by magical spells and effects by up to 34., @equip Improves your chance to get a critical strike with spells by 1%.
[21337] = { "вінець згубоклича", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 33.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Doomcaller's Circlet, @equip Increases damage and healing done by magical spells and effects by up to 33., @equip Improves your chance to get a critical strike with spells by 1%., @equip Improves your chance to hit with spells by 1%.
[21338] = { "ножні пов'язки згубоклича", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28.", "Зменшує супротив магії цілей ваших заклинань на 10." } }, -- Doomcaller's Footwraps, @equip Increases damage and healing done by magical spells and effects by up to 28., @equip Decreases the magical resistances of your spell targets by 10.
[21343] = { "мантія таїнства", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 39.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Зменшує супротив магії цілей ваших заклинань на 20." } }, -- Enigma Robes, @equip Increases damage and healing done by magical spells and effects by up to 39., @equip Improves your chance to get a critical strike with spells by 1%., @equip Decreases the magical resistances of your spell targets by 20.
[21344] = { "чоботи таїнства", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Відновлює 4 мани кожні 5 сек." } }, -- Enigma Boots, @equip Increases damage and healing done by magical spells and effects by up to 28., @equip Improves your chance to hit with spells by 1%., @equip Restores 4 mana per 5 sec.
[21345] = { "наплічники таїнства", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 30.", "Зменшує супротив магії цілей ваших заклинань на 10.", "Відновлює 4 мани кожні 5 сек." } }, -- Enigma Shoulderpads, @equip Increases damage and healing done by magical spells and effects by up to 30., @equip Decreases the magical resistances of your spell targets by 10., @equip Restores 4 mana per 5 sec.
[21346] = { "поножі таїнства", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 34.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Відновлює 5 мани кожні 5 сек." } }, -- Enigma Leggings, @equip Increases damage and healing done by magical spells and effects by up to 34., @equip Improves your chance to get a critical strike with spells by 1%., @equip Restores 5 mana per 5 sec.
[21347] = { "вінець таїнства", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 33.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Enigma Circlet, @equip Increases damage and healing done by magical spells and effects by up to 33., @equip Improves your chance to get a critical strike with spells by 1%., @equip Improves your chance to hit with spells by 1%.
[21348] = { "тіара оракула", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28.", "Відновлює 7 мани кожні 5 сек.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Tiara of the Oracle, @equip Increases damage and healing done by magical spells and effects by up to 28., @equip Restores 7 mana per 5 sec., @equip Improves your chance to hit with spells by 1%.
[21349] = { "ножні пов'язки оракула", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 21.", "Відновлює 3 мани кожні 5 сек." } }, -- Footwraps of the Oracle, @equip Increases damage and healing done by magical spells and effects by up to 21., @equip Restores 3 mana per 5 sec.
[21350] = { "наплічники оракула", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 20.", "Відновлює 3 мани кожні 5 сек.", "Зменшує супротив магії цілей ваших заклинань на 10." } }, -- Mantle of the Oracle, @equip Increases damage and healing done by magical spells and effects by up to 20., @equip Restores 3 mana per 5 sec., @equip Decreases the magical resistances of your spell targets by 10.
[21351] = { "вбрання оракула", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 36.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Зменшує супротив магії цілей ваших заклинань на 10." } }, -- Vestments of the Oracle, @equip Increases damage and healing done by magical spells and effects by up to 36., @equip Improves your chance to get a critical strike with spells by 1%., @equip Decreases the magical resistances of your spell targets by 10.
[21352] = { "штани оракула", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 33.", "Відновлює 6 мани кожні 5 сек." } }, -- Trousers of the Oracle, @equip Increases damage and healing done by magical spells and effects by up to 33., @equip Restores 6 mana per 5 sec.
[21353] = { "шолом буття", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 27.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Genesis Helm, @equip Increases damage and healing done by magical spells and effects by up to 27., @equip Improves your chance to get a critical strike by 1%.
[21354] = { "наплічники буття", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 20.", "Відновлює 3 мани кожні 5 сек." } }, -- Genesis Shoulderpads, @equip Increases damage and healing done by magical spells and effects by up to 20., @equip Restores 3 mana per 5 sec.
[21355] = { "чоботи буття", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 20.", "Відновлює 4 мани кожні 5 сек.", "Зменшує супротив магії цілей ваших заклинань на 10." } }, -- Genesis Boots, @equip Increases damage and healing done by magical spells and effects by up to 20., @equip Restores 4 mana per 5 sec., @equip Decreases the magical resistances of your spell targets by 10.
[21356] = { "штани буття", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 27.", "Збільшує ваш шанс нанесення критичного удару на 1%.", "Відновлює 4 мани кожні 5 сек." } }, -- Genesis Trousers, @equip Increases damage and healing done by magical spells and effects by up to 27., @equip Improves your chance to get a critical strike by 1%., @equip Restores 4 mana per 5 sec.
[21357] = { "жилет буття", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Genesis Vest, @equip Increases damage and healing done by magical spells and effects by up to 28., @equip Improves your chance to get a critical strike with spells by 1%., @equip Improves your chance to get a critical strike by 1%.
[21359] = { "чоботи смертоносця", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Deathdealer's Boots, @equip Improves your chance to hit by 1%.
[21360] = { "шолом смертоносця", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Deathdealer's Helm, @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to hit by 1%.
[21361] = { "наплічники смертоносця", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Deathdealer's Spaulders, @equip Improves your chance to hit by 1%.
[21362] = { "поножі смертоносця", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Deathdealer's Leggings, @equip Improves your chance to get a critical strike by 1%.
[21363] = { "святковий подарунок" }, -- Festive Gift
[21364] = { "жилет смертоносця", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Deathdealer's Vest, @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to hit by 1%.
[21365] = { "чоботи нападника", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 6." }, -- Striker's Footguards, @equip Increases damage and healing done by magical spells and effects by up to 6.
[21366] = { "діадема нападника", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." } }, -- Striker's Diadem, @equip Improves your chance to get a critical strike by 1%., @equip Increases damage and healing done by magical spells and effects by up to 12.
[21367] = { "напліччя нападника", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 6." }, -- Striker's Pauldrons, @equip Increases damage and healing done by magical spells and effects by up to 6.
[21368] = { "поножі нападника", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 9." } }, -- Striker's Leggings, @equip Improves your chance to get a critical strike by 1%., @equip Increases damage and healing done by magical spells and effects by up to 9.
[21370] = { "гауберк нападника", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 9." } }, -- Striker's Hauberk, @equip Improves your chance to get a critical strike by 1%., @equip Increases damage and healing done by magical spells and effects by up to 9.
[21372] = { "діадема бурезова", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 32.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Stormcaller's Diadem, @equip Increases damage and healing done by magical spells and effects by up to 32., @equip Improves your chance to get a critical strike with spells by 1%.
[21373] = { "чоботи бурезова", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 22.", "Зменшує супротив магії цілей ваших заклинань на 10.", "Відновлює 4 мани кожні 5 сек." } }, -- Stormcaller's Footguards, @equip Increases damage and healing done by magical spells and effects by up to 22., @equip Decreases the magical resistances of your spell targets by 10., @equip Restores 4 mana per 5 sec.
[21374] = { "гауберк бурезова", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 32.", "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Stormcaller's Hauberk, @equip Increases damage and healing done by magical spells and effects by up to 32., @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to get a critical strike with spells by 1%.
[21375] = { "поножі бурезова", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 29.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Відновлює 4 мани кожні 5 сек." } }, -- Stormcaller's Leggings, @equip Increases damage and healing done by magical spells and effects by up to 29., @equip Improves your chance to get a critical strike with spells by 1%., @equip Restores 4 mana per 5 sec.
[21376] = { "напліччя бурезова", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28.", "Відновлює 3 мани кожні 5 сек." } }, -- Stormcaller's Pauldrons, @equip Increases damage and healing done by magical spells and effects by up to 28., @equip Restores 3 mana per 5 sec.
[21377] = { "перо з головного убору Мертволісих", flavor="Їх можна збирати, щоб заслужити довіру Деревопузих фурболгів." }, -- Deadwood Headdress Feather, @flavor These may be gathered for the Timbermaw furbolgs to earn their trust.
[21378] = { "план логістичного завдання I" }, -- Logistics Task Briefing I
[21379] = { "план логістичного завдання II" }, -- Logistics Task Briefing II
[21380] = { "план логістичного завдання III" }, -- Logistics Task Briefing III
[21381] = { "план логістичного завдання IX" }, -- Logistics Task Briefing IX
[21382] = { "план логістичного завдання V" }, -- Logistics Task Briefing V
[21383] = { "духовне намисто Зимокрайових", flavor="Їх можна збирати, щоб заслужити довіру Деревопузих фурболгів." }, -- Winterfall Spirit Beads, @flavor These may be gathered for the Timbermaw furbolgs to earn their trust.
[21384] = { "план логістичного завдання VIII" }, -- Logistics Task Briefing VIII
[21385] = { "план логістичного завдання X" }, -- Logistics Task Briefing X
[21386] = { "додаткове логістичне завдання" }, -- Followup Logistics Assignment
[21387] = { "корона месника", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 23.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Avenger's Crown, @equip Increases damage and healing done by magical spells and effects by up to 23., @equip Improves your chance to get a critical strike by 1%.
[21388] = { "наголінники месника", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14.", "Відновлює 4 мани кожні 5 сек." } }, -- Avenger's Greaves, @equip Increases damage and healing done by magical spells and effects by up to 14., @equip Restores 4 mana per 5 sec.
[21389] = { "кіраса месника", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Avenger's Breastplate, @equip Increases damage and healing done by magical spells and effects by up to 18., @equip Improves your chance to get a critical strike with spells by 1%., @equip Improves your chance to get a critical strike by 1%.
[21390] = { "поножі месника", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Відновлює 4 мани кожні 5 сек." } }, -- Avenger's Legguards, @equip Increases damage and healing done by magical spells and effects by up to 16., @equip Improves your chance to get a critical strike by 1%., @equip Restores 4 mana per 5 sec.
[21391] = { "напліччя месника", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14.", "Відновлює 3 мани кожні 5 сек." } }, -- Avenger's Pauldrons, @equip Increases damage and healing done by magical spells and effects by up to 14., @equip Restores 3 mana per 5 sec.
[21392] = { "серп непохитної сили", equip="Збільшує навичку захисту на 4." }, -- Sickle of Unyielding Strength, @equip Increased Defense +4.
[21393] = { "перстень-печатка непохитної сили", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Signet of Unyielding Strength, @equip Improves your chance to get a critical strike by 1%.
[21394] = { "пелерина непохитної сили", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Drape of Unyielding Strength, @equip Improves your chance to hit by 1%.
[21395] = { "клинок вічної справедливості", equip="Відновлює 4 мани кожні 5 сек." }, -- Blade of Eternal Justice, @equip Restores 4 mana per 5 sec.
[21396] = { "перстень вічної справедливості", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 13." }, -- Ring of Eternal Justice, @equip Increases damage and healing done by magical spells and effects by up to 13.
[21397] = { "накидка вічної справедливості", equip="Відновлює 5 мани кожні 5 сек." }, -- Cape of Eternal Justice, @equip Restores 5 mana per 5 sec.
[21398] = { "молот прийдешньої бурі", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 53." }, -- Hammer of the Gathering Storm, @equip Increases damage and healing done by magical spells and effects by up to 53.
[21399] = { "перстень прийдешньої бурі", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Ring of the Gathering Storm, @equip Increases damage and healing done by magical spells and effects by up to 12.
[21400] = { "плащ прийдешньої бурі", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14." }, -- Cloak of the Gathering Storm, @equip Increases damage and healing done by magical spells and effects by up to 14.
[21401] = { "коса Невидимого Шляху", equip="Відновлює 3 мани кожні 5 сек." }, -- Scythe of the Unseen Path, @equip Restores 3 mana per 5 sec.
[21402] = { "перстень-печатка Невидимого Шляху" }, -- Signet of the Unseen Path
[21403] = { "плащ Невидимого Шляху", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Cloak of the Unseen Path, @equip Improves your chance to hit by 1%.
[21404] = { "кинджал прихованих тіней", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Dagger of Veiled Shadows, @equip Improves your chance to hit by 1%.
[21405] = { "перстень прихованих тіней" }, -- Band of Veiled Shadows
[21406] = { "плащ прихованих тіней", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Cloak of Veiled Shadows, @equip Improves your chance to hit by 1%.
[21407] = { "булава нескінченного життя", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 40.", "Збільшує силу атаки на 140 в подобі кота, ведмедя та лютого ведмедя." } }, -- Mace of Unending Life, @equip Increases damage and healing done by magical spells and effects by up to 40., @equip +140 Attack Power in Cat, Bear, and Dire Bear forms only.
[21408] = { "перстень нескінченного життя", equip="Відновлює 5 мани кожні 5 сек." }, -- Band of Unending Life, @equip Restores 5 mana per 5 sec.
[21409] = { "плащ нескінченного життя", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11." }, -- Cloak of Unending Life, @equip Increases damage and healing done by magical spells and effects by up to 11.
[21410] = { "молоток нескінченної мудрості", equip={ "Відновлює 4 мани кожні 5 сек.", "Збільшує зцілення від заклинань і ефектів на 90." } }, -- Gavel of Infinite Wisdom, @equip Restores 4 mana per 5 sec., @equip Increases healing done by spells and effects by up to 90.
[21411] = { "перстень нескінченної мудрості", equip="Відновлює 5 мани кожні 5 сек." }, -- Ring of Infinite Wisdom, @equip Restores 5 mana per 5 sec.
[21412] = { "накидка нескінченної мудрості", equip="Збільшує зцілення від заклинань і ефектів на 24." }, -- Shroud of Infinite Wisdom, @equip Increases healing done by spells and effects by up to 24.
[21413] = { "клинок похованих таємниць", equip={ "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 34." } }, -- Blade of Vaulted Secrets, @equip Improves your chance to hit with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 40.
[21414] = { "перстень похованих таємниць", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Band of Vaulted Secrets, @equip Increases damage and healing done by magical spells and effects by up to 18., @equip Improves your chance to get a critical strike with spells by 1%.
[21415] = { "пелерина похованих таємниць", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18." }, -- Drape of Vaulted Secrets, @equip Increases damage and healing done by magical spells and effects by up to 18.
[21416] = { "кріс невимовних імен", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 59." }, -- Kris of Unspoken Names, @equip Increases damage and healing done by magical spells and effects by up to 59.
[21417] = { "перстень невимовних імен", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Ring of Unspoken Names, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 14., @equip Improves your chance to hit with spells by 1%.
[21418] = { "накидка невимовних імен", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18." }, -- Shroud of Unspoken Names, @equip Increases damage and healing done by magical spells and effects by up to 18.
[21436] = { "відзнака подяки Альянсу", flavor="Знайдіть офіцера відзнак подяки Альянсу, щоб обміняти відзнаки подяки." }, -- Alliance Commendation Signet, @flavor Seek out an Alliance Commendation Officer to exchange signets for recognition.
[21438] = { "відзнака подяки Орди", flavor="Знайдіть офіцера відзнак подяки Орди, щоб обміняти відзнаки подяки." }, -- Horde Commendation Signet, @flavor Seek out an Horde Commendation Officer to exchange signets for recognition.
[21504] = { "оберіг Мінливих Пісків", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 25." }, -- Charm of the Shifting Sands, @equip Increases damage and healing done by magical spells and effects by up to 25.
[21505] = { "намисто Мінливих Пісків", equip="Збільшує силу атаки на 46." }, -- Choker of the Shifting Sands, @equip +42 Attack Power.
[21506] = { "підвіска Мінливих Пісків", equip="Збільшує навичку захисту на 4." }, -- Pendant of the Shifting Sands, @equip Increased Defense +4.
[21507] = { "амулет Мінливих Пісків", equip={ "Збільшує зцілення від заклинань і ефектів на 46.", "Відновлює 6 мани кожні 5 сек." } }, -- Amulet of the Shifting Sands, @equip Increases healing done by spells and effects by up to 46., @equip Restores 6 mana per 5 sec.
[21508] = { "знак Кенарія" }, -- Mark of Cenarius
[21512] = { "припаси війни в Ан'Кіражі" }, -- Ahn'Qiraj War Effort Supplies
[21514] = { "план логістичного завдання XI" }, -- Logistics Task Briefing XI
[21515] = { "знак Ремула" }, -- Mark of Remulos
[21517] = { "гномський тюрбан екстрасенсорної сили", equip={ "Відновлює 9 мани кожні 5 сек.", "Збільшує супротив до ефектів знемовлення на 10%." } }, -- Gnomish Turban of Psychic Might, @equip Restores 9 mana per 5 sec., @equip Increases your resistance to silence effects by 10%.
[21519] = { "омела", use="Подарувати друзям святкові вітання!" }, -- Mistletoe, @use Wish a friend some Season's Greetings!
[21520] = { "спадок Кронворона" }, -- Ravencrest's Legacy
[21521] = { "рунічний меч червоних драконів", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 64." }, -- Runesword of the Red, @equip Increases damage and healing done by magical spells and effects by up to 64.
[21522] = { "печаль Пісні Тіней" }, -- Shadowsong's Sorrow
[21523] = { "ікло Коріалстраза", equip="Збільшує зцілення від заклинань і ефектів на 121." }, -- Fang of Korialstrasz, @equip Increases healing done by spells and effects by up to 121.
[21524] = { "червона зимова шапка" }, -- Red Winter Hat
[21525] = { "зелена зимова шапка" }, -- Green Winter Hat
[21526] = { "перстень крижаних глибин", equip="Дозволяє дихати під водою." }, -- Band of Icy Depths, @equip Allows underwater breathing.
[21527] = { "мантія темної води", equip="Збільшує шкоду від заклинань і ефектів криги на 39." }, -- Darkwater Robes, @equip Increases damage done by Frost spells and effects by up to 39.
[21528] = { "колосальний мішок здобичі" }, -- Colossal Bag of Loot
[21529] = { "амулет тіньового бар'єра" }, -- Amulet of Shadow Shielding
[21530] = { "поножі з оніксовою інкрустацією" }, -- Onyx Embedded Leggings
[21531] = { "намисто із зубів дракона", equip="Збільшує зцілення від заклинань і ефектів на 26." }, -- Drake Tooth Necklace, @equip Increases healing done by spells and effects by up to 26.
[21532] = { "чоботи роботяги" }, -- Drudge Boots
[21533] = { "зразок панцира колоса Зори", flavor="Крихітний фрагмент дуже великої комахи." }, -- Colossus of Zora's Husk, @flavor A tiny fragment of a very large insect.
[21534] = { "зразок панцира колоса Аші", flavor="Крихітний фрагмент дуже великої комахи." }, -- Colossus of Ashi's Husk, @flavor A tiny fragment of a very large insect.
[21535] = { "зразок панцира колоса Регаля", flavor="Крихітний фрагмент дуже великої комахи." }, -- Colossus of Regal's Husk, @flavor A tiny fragment of a very large insect.
[21536] = { "камінь Елуни", use="Викликати промінь світла, що сяятиме в обраному місці протягом 3 хв. (Відновлення 1 хв)" }, -- Elune Stone, @use Summon a ring of light on a specific location that lasts for 3 min. (1 Min Cooldown)
[21537] = { "фестивальні вареники", use="Відновлює 4% здоров'я та мани кожну секунду протягом 25 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Festival Dumplings, @use Restores 4% of your health and mana per second for 25 sec.  Must remain seated while eating.
[21538] = { "рожева святкова сукня" }, -- Festive Pink Dress
[21539] = { "фіолетова святкова сукня" }, -- Festive Purple Dress
[21540] = { "ліхтар Елуни", use="Створити камінь Елуни. Для цього потрібен твердий камінь. (Відновлення 1 день)", flavor="Вловлює світло, що випромінює сама Елуна." }, -- Elune's Lantern, @use Create an Elune Stone.  Requires a Solid Stone. (1 Day Cooldown), @flavor A device said to capture the light shed by Elune herself.
[21541] = { "чорний святковий костюм" }, -- Festive Black Pant Suit
[21542] = { "святковий костюм" }, -- Festival Suit
[21543] = { "бірюзовий святковий костюм" }, -- Festive Teal Pant Suit
[21544] = { "синій святковий костюм" }, -- Festive Blue Pant Suit
[21545] = { "припаси Димного Лісу", flavor="Використати до 2010" }, -- Smokywood Supplies, @flavor Use before 2010
[21546] = { "еліксир більшої вогнеміці", ref=6373 }, -- Elixir of Greater Firepower
[21547] = { "рецепт: Еліксир більшої вогнеміці", use="Навчає вас створювати еліксир більшої вогнеміці." }, -- Recipe: Elixir of Greater Firepower, @use Teaches you how to make an Elixir of Greater Firepower.
[21557] = { "маленька червона ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Small Red Rocket, @use Throw into a firework launcher!
[21558] = { "маленька синя ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Small Blue Rocket, @use Throw into a firework launcher!
[21559] = { "маленька зелена ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Small Green Rocket, @use Throw into a firework launcher!
[21560] = { "маленька фіолетова ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Small Purple Rocket, @use Throw into a firework launcher!
[21561] = { "маленька біла ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Small White Rocket, @use Throw into a firework launcher!
[21562] = { "маленька жовта ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Small Yellow Rocket, @use Throw into a firework launcher!
[21569] = { "пускова установка для феєрверків", use="Розмістити на землі, щоб запускати феєрверки. Триває 30 хвилин." }, -- Firework Launcher, @use Place on the ground to launch firework rockets.  Lasts 30 minutes.
[21570] = { "пускова установка для залпів феєрверків", use="Розмістити на землі, щоб запускати залпи феєрверків. Триває 30 хвилин." }, -- Cluster Launcher, @use Place on the ground to launch cluster rockets.  Lasts 30 minutes.
[21571] = { "залп синіх ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Blue Rocket Cluster, @use Throw into a cluster launcher!
[21574] = { "залп зелених ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Green Rocket Cluster, @use Throw into a cluster launcher!
[21575] = { "залп фіолетових ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Purple Rocket Cluster, @use Throw into a cluster launcher!
[21576] = { "залп червоних ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Red Rocket Cluster, @use Throw into a cluster launcher!
[21577] = { "залп білих ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- White Rocket Cluster, @use Throw into a cluster launcher!
[21578] = { "залп жовтих ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Yellow Rocket Cluster, @use Throw into a cluster launcher!
[21589] = { "велика синя ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Large Blue Rocket, @use Throw into a firework launcher!
[21590] = { "велика зелена ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Large Green Rocket, @use Throw into a firework launcher!
[21591] = { "велика фіолетова ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Large Purple Rocket, @use Throw into a firework launcher!
[21592] = { "велика червона ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Large Red Rocket, @use Throw into a firework launcher!
[21593] = { "велика біла ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Large White Rocket, @use Throw into a firework launcher!
[21595] = { "велика жовта ракета", use="Зарядіть пускову установку для феєрверків!" }, -- Large Yellow Rocket, @use Throw into a firework launcher!
[21640] = { "набір феєрверків Місячного фестивалю", flavor="Наповнений феєрверками для стильного святкування Місячного фестивалю!" }, -- Lunar Festival Fireworks Pack, @flavor Filled with fireworks to celebrate the Lunar Festival in style!
[21709] = { "перстень полеглого бога", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 37.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Ring of the Fallen God, @equip Increases damage and healing done by magical spells and effects by up to 37., @equip Improves your chance to hit with spells by 1%.
[21710] = { "плащ полеглого бога" }, -- Cloak of the Fallen God
[21711] = { "запрошення на Місячний фестиваль", use="Телепортує заклинача з великого місячного сяйва. (Відновлення 10 хв)" }, -- Lunar Festival Invitation, @use Teleports the caster from within Greater Moonlight. (10 Min Cooldown)
[21712] = { "амулет полеглого бога", equip={ "Збільшує зцілення від заклинань і ефектів на 57.", "Відновлює 6 мани кожні 5 сек." } }, -- Amulet of the Fallen God, @equip Increases healing done by spells and effects by up to 57., @equip Restores 6 mana per 5 sec.
[21713] = { "свічка Елуни", use="Вистрілити в ціль феєрверком. (Відновлення 3 сек)" }, -- Elune's Candle, @use Shoots a firework at target. (3 Sec Cooldown)
[21714] = { "залп великих синіх ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Large Blue Rocket Cluster, @use Throw into a cluster launcher!
[21716] = { "залп великих зелених ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Large Green Rocket Cluster, @use Throw into a cluster launcher!
[21717] = { "залп великих фіолетових ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Large Purple Rocket Cluster, @use Throw into a cluster launcher!
[21718] = { "залп великих червоних ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Large Red Rocket Cluster, @use Throw into a cluster launcher!
[21719] = { "залп великих білих ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Large White Rocket Cluster, @use Throw into a cluster launcher!
[21720] = { "залп великих жовтих ракет", use="Зарядіть пускову установку для залпів феєрверків!" }, -- Large Yellow Rocket Cluster, @use Throw into a cluster launcher!
[21721] = { "місячне сяйво", use="Алкогольний напій, що дивно світиться." }, -- Moonglow, @use A strangely glowing alcoholic beverage.
[21722] = { "викрійка: Святкова сукня", use="Навчає вас пошиттю святкової сукні." }, -- Pattern: Festival Dress, @use Teaches you how to sew a Festive Red Dress.
[21723] = { "викрійка: Святковий костюм", use="Навчає вас пошиттю святкового костюма." }, -- Pattern: Festival Suit, @use Teaches you how to sew a Festival Suit.
[21724] = { "креслення: Маленька синя ракета", use="Навчає вас створювати маленьку синю ракету." }, -- Schematic: Small Blue Rocket, @use Teaches you how to make a Small Blue Rocket.
[21725] = { "креслення: Маленька зелена ракета", use="Навчає вас створювати маленьку зелену ракету." }, -- Schematic: Small Green Rocket, @use Teaches you how to make a Small Green Rocket.
[21726] = { "креслення: Маленька червона ракета", use="Навчає вас створювати маленьку червону ракету." }, -- Schematic: Small Red Rocket, @use Teaches you how to make a Small Red Rocket.
[21727] = { "креслення: Велика синя ракета", use="Навчає вас створювати велику синю ракету." }, -- Schematic: Large Blue Rocket, @use Teaches you how to make a Large Blue Rocket.
[21728] = { "креслення: Велика зелена ракета", use="Навчає вас створювати велику зелену ракету." }, -- Schematic: Large Green Rocket, @use Teaches you how to make a Large Green Rocket.
[21729] = { "креслення: Велика червона ракета", use="Навчає вас створювати велику червону ракету." }, -- Schematic: Large Red Rocket, @use Teaches you how to make a Large Red Rocket.
[21730] = { "креслення: Залп синіх ракет", use="Навчає вас створювати залп синіх ракет." }, -- Schematic: Blue Rocket Cluster, @use Teaches you how to make a Blue Rocket Cluster.
[21731] = { "креслення: Залп зелених ракет", use="Навчає вас створювати залп зелених ракет." }, -- Schematic: Green Rocket Cluster, @use Teaches you how to make a Green Rocket Cluster.
[21732] = { "креслення: Залп червоних ракет", use="Навчає вас створювати залп червоних ракет." }, -- Schematic: Red Rocket Cluster, @use Teaches you how to make a Red Rocket Cluster.
[21733] = { "креслення: Залп великих синіх ракет", use="Навчає вас створювати великий залп синіх ракет." }, -- Schematic: Large Blue Rocket Cluster, @use Teaches you how to make a Large Blue Rocket Cluster.
[21734] = { "креслення: Залп великих зелених ракет", use="Навчає вас створювати великий залп зелених ракет." }, -- Schematic: Large Green Rocket Cluster, @use Teaches you how to make a Large Green Rocket Cluster.
[21735] = { "креслення: Залп великих червоних ракет", use="Навчає вас створювати великий залп червоних ракет." }, -- Schematic: Large Red Rocket Cluster, @use Teaches you how to make a Large Red Rocket Cluster.
[21737] = { "креслення: Пускова установка для залпів феєрверків", use="Навчає вас створювати пускову установку для залпів феєрверків." }, -- Schematic: Cluster Launcher, @use Teaches you how to make a Firework Cluster Launcher.
[21738] = { "креслення: Пускова установка для феєрверків", use="Навчає вас створювати пускову установку для феєрверків." }, -- Schematic: Firework Launcher, @use Teaches you how to make a Firework Launcher.
[21740] = { "креслення маленьких ракет" }, -- Small Rocket Recipes
[21741] = { "креслення залпів ракет" }, -- Cluster Rocket Recipes
[21742] = { "креслення великих ракет" }, -- Large Rocket Recipes
[21743] = { "креслення залпів великих ракет" }, -- Large Cluster Rocket Recipes
[21744] = { "залп щасливих ракет", use="Вам пощастило! Зарядіть пускову установку для залпів феєрверків!" }, -- Lucky Rocket Cluster, @use You're in luck!  Throw into a cluster launcher!
[21747] = { "святкова петарда", use="Кидайте на землю! (Відновлення 2 сек)" }, -- Festival Firecracker, @use Throw on the ground! (2 Sec Cooldown)
[21749] = { "план бойового завдання I" }, -- Combat Task Briefing I
[21750] = { "план бойового завдання II" }, -- Combat Task Briefing II
[21751] = { "план тактичного завдання III" }, -- Tactical Task Briefing III
[21812] = { "коробка шоколадних цукерок" }, -- Box of Chocolates
[21813] = { "торбинка цукерок", use="Дістати з торбинки цукерку. (Відновлення 1 хв)" }, -- Bag of Candies, @use Pick a piece of candy from the bag. (1 Min Cooldown)
[21815] = { "знак кохання", flavor="Невеличке послання закоханості..." }, -- Love Token, @flavor A small message of affection...
[21816] = { "цукерка-серце", flavor="Будь зі мною!" }, -- Heart Candy, @flavor Be mine!
[21817] = { "цукерка-серце", flavor="Я КОХАЮ ТЕБЕ" }, -- Heart Candy, @flavor I LOVE YOU
[21818] = { "цукерка-серце", flavor="Я піду з тобою на край Азероту." }, -- Heart Candy, @flavor I'll follow you all around Azeroth.
[21819] = { "цукерка-серце", flavor="Все для тебе" }, -- Heart Candy, @flavor All yours.
[21820] = { "цукерка-серце", flavor="Ти - краще всіх!" }, -- Heart Candy, @flavor You're the best!
[21821] = { "цукерка-серце", flavor="Я - твоя половинка" }, -- Heart Candy, @flavor I'm all yours!
[21822] = { "цукерка-серце", flavor="Ти - моя половинка" }, -- Heart Candy, @flavor You're mine!
[21823] = { "цукерка-серце", flavor="Маєш гарні губки." }, -- Heart Candy, @flavor Hot lips.
[21829] = { "флакон парфуму", use="Надає вам спокусливого аромату. (Відновлення 2 хв)" }, -- Perfume Bottle, @use Give yourself an alluring scent. (2 Min Cooldown)
[21833] = { "флакон одеколону", use="Надає вам приємного аромату. (Відновлення 2 хв)" }, -- Cologne Bottle, @use Give yourself a pleasing scent. (2 Min Cooldown)
[21920] = { "пом'ятий лист" }, -- Creased Letter
[21921] = { "ретельно продумана записка" }, -- Carefully Penned Note
[21925] = { "бездоганний лист" }, -- Immaculate Letter
[21926] = { "злегка пом'ята записка" }, -- Slightly Creased Note
[21928] = { "зразок крові із Зимоключа" }, -- Winterspring Blood Sample
[21935] = { "стабільна ектоплазма" }, -- Stable Ectoplasm
[21936] = { "заморожена ектоплазма" }, -- Frozen Ectoplasm
[21937] = { "обпалена ектоплазма" }, -- Scorched Ectoplasm
[21938] = { "магматичне ядро" }, -- Magma Core
[21939] = { "скверно-стихійний стрижень", flavor="Скверна і стихія — два в одному!" }, -- Fel Elemental Rod, @flavor Fel and Elemental, two great tastes...
[21946] = { "ектоплазматичний дистилятор", use="Розмістити ектоплазматичний дистилятор на землі, що дозволить збирати ектоплазму. Працює на гоблінському ракетному паливі. (Відновлення 1 хв)" }, -- Ectoplasmic Distiller, @use Places Ectoplasmic Distiller on the ground, allowing Ectoplasm to be gathered.   Requires Goblin Rocket Fuel. (1 Min Cooldown)
[21960] = { "дерев'яний виріб ручної роботи", use="Об'єднати 5 дерев'яних виробів ручної роботи в коробку дерев'яних виробів." }, -- Handmade Woodcraft, @use Combines 5 Handmade Woodcrafts into a Box of Woodcrafts.
[21975] = { "обітниця обожнювання зі Штормовію" }, -- Pledge of Adoration: Stormwind
[21979] = { "дар обожнювання з Дарнаса" }, -- Gift of Adoration: Darnassus
[21980] = { "дар обожнювання з Залізогарта" }, -- Gift of Adoration: Ironforge
[21981] = { "дар обожнювання зі Штормовію" }, -- Gift of Adoration: Stormwind
[21982] = { "бойове намисто огрів" }, -- Ogre Warbeads
[21983] = { "незавершений стяг виклику" }, -- Incomplete Banner of Provocation
[21984] = { "ліва частина амулета лорда Вальталака", use="Об'єднати ліву, праву та верхню частини амулету лорда Вальталака в одне ціле.", flavor="Зло, ув'язнене в амулеті, здається, стає дедалі сильнішим..." }, -- Left Piece of Lord Valthalak's Amulet, @use Recombines the left, right and top pieces of Lord Valthalak's Amulet into one whole., @flavor The evil trapped within this fragment seems to be growing stronger...
[21985] = { "запечатаний контейнер з кров'ю" }, -- Sealed Blood Container
[21986] = { "стяг виклику", use="Розмістити стяг на арені в Чорноскельних надрах, щоб викликати Телдрена на поєдинок. (Відновлення 10 хв)" }, -- Banner of Provocation, @use Use this banner at the Arena in Blackrock Depths to challenge Theldren. (10 Min Cooldown)
[21987] = { "спалахіт Спалахія", flavor="Цей тліючий шматок лорда Спалахія чудово замінить собою вугілля." }, -- Incendicite of Incendius, @flavor This still-smoldering chunk of Lord Incendius will make for an excellent coal.
[21988] = { "вуглинка Вуглегляда", flavor="Надто палка, щоб тримати в руках... краще загорнути її у щось вогнетривке!" }, -- Ember of Emberseer, @flavor This one's far too hot to touch... better wrap it in something nonflammable!
[21989] = { "попіл герцога попелу", flavor="Рештки герцога горять його ненавистю до вас." }, -- Cinder of Cynders, @flavor This visceral chunk of the Duke burns on, fueled by his hatred for you.
[21994] = { "пояс героїзму", equip="Збільшує навичку захисту на 7." }, -- Belt of Heroism, @equip Increased Defense +7.
[21995] = { "чоботи героїзму", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Boots of Heroism, @equip Improves your chance to hit by 1%.
[21996] = { "поручі героїзму", equip="Збільшує навичку захисту на 3." }, -- Bracers of Heroism, @equip Increased Defense +3.
[21997] = { "нагрудник героїзму", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Breastplate of Heroism, @equip Improves your chance to hit by 1%.
[21998] = { "рукавиці героїзму", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Gauntlets of Heroism, @equip Improves your chance to get a critical strike by 1%.
[21999] = { "шолом героїзму", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Helm of Heroism, @equip Improves your chance to get a critical strike by 1%.
[22000] = { "поножі героїзму", equip="Збільшує навичку захисту на 5." }, -- Legplates of Heroism, @equip Increased Defense +5.
[22001] = { "наплічники героїзму" }, -- Spaulders of Heroism
[22002] = { "пояс покрову темряви" }, -- Darkmantle Belt
[22003] = { "чоботи покрову темряви", equip="Підвищує ваш рівень непомітності." }, -- Darkmantle Boots, @equip Increases your effective stealth level.
[22004] = { "поручі покрову темряви" }, -- Darkmantle Bracers
[22005] = { "шапка покрову темряви", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Darkmantle Cap, @equip Improves your chance to get a critical strike by 1%.
[22006] = { "рукавички покрову темряви" }, -- Darkmantle Gloves
[22007] = { "штани покрову темряви" }, -- Darkmantle Pants
[22008] = { "наплічники покрову темряви" }, -- Darkmantle Spaulders
[22009] = { "мундир покрову темряви", equip="Збільшує ваш шанс нанесення удару на 2%." }, -- Darkmantle Tunic, @equip Improves your chance to hit by 2%.
[22010] = { "пояс володаря звірів" }, -- Beastmaster's Belt
[22011] = { "браслети володаря звірів" }, -- Beastmaster's Bindings
[22013] = { "шапка володаря звірів", equip={ "Збільшує ваш шанс нанесення удару на 1%.", "Збільшує максимальне здоров'я вашого супутника на 3%." } }, -- Beastmaster's Cap, @equip Improves your chance to hit by 1%., @equip Increases your pet's maximum health by 3%.
[22014] = { "освячена жаровня" }, -- Hallowed Brazier
[22015] = { "рукавички володаря звірів", equip="Збільшує шанс нанесення критичного удару вашим супутником на 2%." }, -- Beastmaster's Gloves, @equip Increases your pet's critical strike chance by 2%.
[22016] = { "нараменники володаря звірів" }, -- Beastmaster's Mantle
[22017] = { "штани володаря звірів" }, -- Beastmaster's Pants
[22046] = { "права частина амулета лорда Вальталака", use="Об'єднати ліву, праву та верхню частини амулету лорда Вальталака в одне ціле.", flavor="Ця частина амулета відчутно тремтить, жадаючи возз'єднатися з іншими." }, -- Right Piece of Lord Valthalak's Amulet, @use Recombines the left, right and top pieces of Lord Valthalak's Amulet into one whole., @flavor This section of the amulet vibrates with a palpable fervor to be rejoined with its sibling pieces.
[22047] = { "верхня частина амулету лорда Вальталака", use="Об'єднати ліву, праву та верхню частини амулету лорда Вальталака в одне ціле.", flavor="При дотику до цього предмету виникає неприємне відчуття, ніби ув'язнене в ньому зло прагне вирватися назовні." }, -- Top Piece of Lord Valthalak's Amulet, @use Recombines the left, right and top pieces of Lord Valthalak's Amulet into one whole., @flavor This object feels wrong to the touch, as if an evil within is trying to escape.
[22048] = { "амулет лорда Вальталака", use="Направити на тіло лорда Вальталака, вливши в нього душу з амулету.", flavor="Зібраний воєдино, амулет пульсує від злого духу лорда Вальталака." }, -- Lord Valthalak's Amulet, @use Target Lord Valthalak's corpse to instill his spirit from the amulet., @flavor Reunited into its whole form, the amulet pulses strongly with the evil spirit of Lord Valthalak.
[22049] = { "жаровня поклику", use="Викликати дух Мора Сивого Копита. (Відновлення 10 хв)" }, -- Brazier of Beckoning, @use Summon the spirit of Mor Grayhoof. (10 Min Cooldown)
[22050] = { "жаровня поклику", use="Викликати дух Ізалієн. (Відновлення 10 хв)" }, -- Brazier of Beckoning, @use Summon the spirit of Isalien. (10 Min Cooldown)
[22051] = { "жаровня поклику", use="Викликати духи Ярієн та Сотоса. (Відновлення 10 хв)" }, -- Brazier of Beckoning, @use Summon the remains of Jarien and Sothos. (10 Min Cooldown)
[22052] = { "жаровня поклику", use="Викликати дух Кормока. (Відновлення 10 хв)" }, -- Brazier of Beckoning, @use Summon the spirit of Kormok. (10 Min Cooldown)
[22056] = { "жаровня поклику", use="Викликати дух лорда Вальталака. (Відновлення 10 хв)" }, -- Brazier of Beckoning, @use Summon the spirit of Lord Valthalak. (10 Min Cooldown)
[22057] = { "жаровня виклику", use="Викликати духа в місці з привидами. (Відновлення 10 хв)" }, -- Brazier of Invocation, @use Summon the spirits of the dead at haunted locations. (10 Min Cooldown)
[22060] = { "мундир володаря звірів", equip={ "Збільшує показник броні вашого вихованця на 10%.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Beastmaster's Tunic, @equip Increases your pet's armor by 10%., @equip Improves your chance to get a critical strike by 1%.
[22061] = { "чоботи володаря звірів", equip="Збільшує шкоду, яку завдає ваш супутник на 3%." }, -- Beastmaster's Boots, @equip Increases damage dealt by your pet by 3%.
[22062] = { "пояс чаклуна", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14." }, -- Sorcerer's Belt, @equip Increases damage and healing done by magical spells and effects by up to 14.
[22063] = { "браслети чаклуна", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 8." }, -- Sorcerer's Bindings, @equip Increases damage and healing done by magical spells and effects by up to 8.
[22064] = { "чоботи чаклуна", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 21." }, -- Sorcerer's Boots, @equip Increases damage and healing done by magical spells and effects by up to 21.
[22065] = { "корона чаклуна", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Sorcerer's Crown, @equip Increases damage and healing done by magical spells and effects by up to 11., @equip Improves your chance to get a critical strike with spells by 1%.
[22066] = { "рукавички чаклуна", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Sorcerer's Gloves, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Improves your chance to hit with spells by 1%.
[22067] = { "лосини чаклуна", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16." }, -- Sorcerer's Leggings, @equip Increases damage and healing done by magical spells and effects by up to 16.
[22068] = { "нараменники чаклуна", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 9." }, -- Sorcerer's Mantle, @equip Increases damage and healing done by magical spells and effects by up to 9.
[22069] = { "мантія чаклуна", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16.", "Зменшує супротив магії цілей ваших заклинань на 20." } }, -- Sorcerer's Robes, @equip Increases damage and healing done by magical spells and effects by up to 16., @equip Decreases the magical resistances of your spell targets by 20.
[22070] = { "пояс імли смерті", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Deathmist Belt, @equip Increases damage and healing done by magical spells and effects by up to 12.
[22071] = { "поручі імли смерті", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 8." }, -- Deathmist Bracers, @equip Increases damage and healing done by magical spells and effects by up to 8.
[22072] = { "лосини імли смерті", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16." }, -- Deathmist Leggings, @equip Increases damage and healing done by magical spells and effects by up to 16.
[22073] = { "нараменники імли смерті", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Deathmist Mantle, @equip Increases damage and healing done by magical spells and effects by up to 12.
[22074] = { "маска імли смерті", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Deathmist Mask, @equip Increases damage and healing done by magical spells and effects by up to 16., @equip Improves your chance to hit with spells by 1%.
[22075] = { "мантія імли смерті", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Deathmist Robe, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Improves your chance to get a critical strike with spells by 1%.
[22076] = { "сандалі імли смерті", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Deathmist Sandals, @equip Increases damage and healing done by magical spells and effects by up to 12.
[22077] = { "пов'язки імли смерті", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 13.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Deathmist Wraps, @equip Increases damage and healing done by magical spells and effects by up to 13., @equip Improves your chance to hit with spells by 1%.
[22078] = { "пояс доброчесності", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Virtuous Belt, @equip Increases damage and healing done by magical spells and effects by up to 12.
[22079] = { "поручі доброчесності", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 9.", "Відновлює 2 мани кожні 5 сек." } }, -- Virtuous Bracers, @equip Increases damage and healing done by magical spells and effects by up to 9., @equip Restores 2 mana per 5 sec.
[22080] = { "корона доброчесності", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11.", "Відновлює 6 мани кожні 5 сек.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Virtuous Crown, @equip Increases damage and healing done by magical spells and effects by up to 11., @equip Restores 6 mana per 5 sec., @equip Improves your chance to get a critical strike with spells by 1%.
[22081] = { "рукавички доброчесності", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11." }, -- Virtuous Gloves, @equip Increases damage and healing done by magical spells and effects by up to 11.
[22082] = { "нараменники доброчесності", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Virtuous Mantle, @equip Increases damage and healing done by magical spells and effects by up to 12.
[22083] = { "мантія доброчесності", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14.", "Відновлює 6 мани кожні 5 сек." } }, -- Virtuous Robe, @equip Increases damage and healing done by magical spells and effects by up to 14., @equip Restores 6 mana per 5 sec.
[22084] = { "сандалі доброчесності", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Відновлює 7 мани кожні 5 сек." } }, -- Virtuous Sandals, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Restores 7 mana per 5 sec.
[22085] = { "спідниця доброчесності", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16.", "Відновлює 6 мани кожні 5 сек." } }, -- Virtuous Skirt, @equip Increases damage and healing done by magical spells and effects by up to 16., @equip Restores 6 mana per 5 sec.
[22086] = { "духокований пояс", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Відновлює 4 мани кожні 5 сек." } }, -- Soulforge Belt, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Restores 4 mana per 5 sec.
[22087] = { "духоковані чоботи", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Відновлює 4 мани кожні 5 сек." } }, -- Soulforge Boots, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Restores 4 mana per 5 sec.
[22088] = { "духоковані поручі", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 8." }, -- Soulforge Bracers, @equip Increases damage and healing done by magical spells and effects by up to 8.
[22089] = { "духокований нагрудник", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Soulforge Breastplate, @equip Increases damage and healing done by magical spells and effects by up to 14., @equip Improves your chance to get a critical strike by 1%.
[22090] = { "духоковані рукавиці", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Soulforge Gauntlets, @equip Increases damage and healing done by magical spells and effects by up to 11., @equip Improves your chance to get a critical strike by 1%.
[22091] = { "духокований шолом", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Soulforge Helm, @equip Increases damage and healing done by magical spells and effects by up to 14., @equip Improves your chance to get a critical strike with spells by 1%.
[22092] = { "духоковані поножі", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11." }, -- Soulforge Legplates, @equip Increases damage and healing done by magical spells and effects by up to 11.
[22093] = { "духоковані наплічники", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Відновлює 4 мани кожні 5 сек." } }, -- Soulforge Spaulders, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Restores 4 mana per 5 sec.
[22094] = { "кров'яниця", flavor="Її червоний сік може залишити незмивну пляму на вашому одязі, тому будьте обережні." }, -- Bloodkelp, @flavor Its red juice can leave an indelible stain on your clothing, so be careful.
[22095] = { "браслети п'яти громів", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 8." }, -- Bindings of The Five Thunders, @equip Increases damage and healing done by magical spells and effects by up to 8.
[22096] = { "чоботи п'яти громів", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Відновлює 4 мани кожні 5 сек." } }, -- Boots of The Five Thunders, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Restores 4 mana per 5 sec.
[22097] = { "койф п'яти громів", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Coif of The Five Thunders, @equip Increases damage and healing done by magical spells and effects by up to 14., @equip Improves your chance to get a critical strike with spells by 1%.
[22098] = { "ремінь п'яти громів", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Відновлює 4 мани кожні 5 сек." } }, -- Cord of The Five Thunders, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Restores 4 mana per 5 sec.
[22099] = { "рукавиці п'яти громів", equip={ "Відновлює 4 мани кожні 5 сек.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." } }, -- Gauntlets of The Five Thunders, @equip Restores 4 mana per 5 sec., @equip Increases damage and healing done by magical spells and effects by up to 12.
[22100] = { "кілт п'яти громів", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11." }, -- Kilt of The Five Thunders, @equip Increases damage and healing done by magical spells and effects by up to 11.
[22101] = { "напліччя п'яти громів", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Pauldrons of The Five Thunders, @equip Increases damage and healing done by magical spells and effects by up to 12.
[22102] = { "жилет п'яти громів", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14." } }, -- Vest of The Five Thunders, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 14.
[22106] = { "пояс лютого серця", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 7." }, -- Feralheart Belt, @equip Increases damage and healing done by magical spells and effects by up to 7.
[22107] = { "чоботи лютого серця", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11.", "Відновлює 2 мани кожні 5 сек." } }, -- Feralheart Boots, @equip Increases damage and healing done by magical spells and effects by up to 11., @equip Restores 2 mana per 5 sec.
[22108] = { "поручі лютого серця", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 5." }, -- Feralheart Bracers, @equip Increases damage and healing done by magical spells and effects by up to 5.
[22109] = { "капюшон лютого серця", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16." }, -- Feralheart Cowl, @equip Increases damage and healing done by magical spells and effects by up to 16.
[22110] = { "рукавички лютого серця", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 11." }, -- Feralheart Gloves, @equip Increases damage and healing done by magical spells and effects by up to 11.
[22111] = { "кілт лютого серця", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 9." }, -- Feralheart Kilt, @equip Increases damage and healing done by magical spells and effects by up to 9.
[22112] = { "наплічники лютого серця", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 6.", "Відновлює 2 мани кожні 5 сек." } }, -- Feralheart Spaulders, @equip Increases damage and healing done by magical spells and effects by up to 6., @equip Restores 2 mana per 5 sec.
[22113] = { "жилет лютого серця", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12.", "Відновлює 4 мани кожні 5 сек." } }, -- Feralheart Vest, @equip Increases damage and healing done by magical spells and effects by up to 12., @equip Restores 4 mana per 5 sec.
[22115] = { "міжвимірний шукач привидів", use="Дозволяє носію бачити привидів нещодавно померлих. (Відновлення 1 хв)" }, -- Extra-Dimensional Ghost Revealer, @use Allows wielder to see ghosts of the recently deceased. (1 Min Cooldown)
[22117] = { "обітниця вірності зі Штормовію", use="Об'єднати 5 обітниць вірності зі Штормовію в колекцію обітниць Штормовію." }, -- Pledge of Loyalty: Stormwind, @use Right Click to combine 5 Pledges of Loyalty: Stormwind into a Stormwind Pledge Collection.
[22119] = { "обітниця вірності з Залізогарта", use="Об'єднати 5 обітниць вірності з Залізогарта в колекцію обітниць Залізогарта." }, -- Pledge of Loyalty: Ironforge, @use Combines 5 Pledges of Loyalty: Ironforge into an Ironforge Pledge Collection.
[22120] = { "обітниця вірності з Дарнаса", use="Об'єднати 5 обітниць вірності з Дарнаса в колекцію обітниць Дарнаса." }, -- Pledge of Loyalty: Darnassus, @use Combines 5 Pledges of Loyalty: Darnassus into a Darnassus Pledge Collection.
[22121] = { "обітниця вірності з Підмістя", use="Об'єднати 5 обітниць вірності з Підмістя в колекцію обітниць Підмістя." }, -- Pledge of Loyalty: Undercity, @use Combines 5 Pledges of Loyalty: Undercity into an Undercity Pledge Collection.
[22122] = { "обітниця вірності з Громового Бескиду", use="Об'єднати 5 обітниць вірності з Громового Бескиду в колекцію обітниць Громового Бескиду." }, -- Pledge of Loyalty: Thunder Bluff, @use Combines 5 Pledges of Loyalty: Thunder Bluff into an Thunder Bluff Pledge Collection.
[22123] = { "обітниця вірності з Орґріммара", use="Об'єднати 5 обітниць вірності з Орґріммара в колекцію обітниць Орґріммара." }, -- Pledge of Loyalty: Orgrimmar, @use Combines 5 Pledges of Loyalty: Orgrimmar into an Orgrimmar Pledge Collection.
[22131] = { "колекція дарів Штормовію", use="Об'єднати колекцію дарів Дарнаса, колекцію дарів Залізогарта та колекцію дарів Штормовію в колекцію дарів Альянсу." }, -- Stormwind Gift Collection, @use Combines a Darnassus Gift Collection, Ironforge Gift Collection and Stormwind Gift Collection into an Alliance Gift Collection.
[22132] = { "колекція дарів Залізогарта", use="Об'єднати колекцію дарів Дарнаса, колекцію дарів Залізогарта та колекцію дарів Штормовію в колекцію дарів Альянсу." }, -- Ironforge Gift Collection, @use Combines a Darnassus Gift Collection, Ironforge Gift Collection and Stormwind Gift Collection into an Alliance Gift Collection.
[22133] = { "колекція дарів Дарнаса", use="Об'єднати колекцію дарів Дарнаса, колекцію дарів Залізогарта та колекцію дарів Штормовію в колекцію дарів Альянсу." }, -- Darnassus Gift Collection, @use Combines a Darnassus Gift Collection, Ironforge Gift Collection and Stormwind Gift Collection into an Alliance Gift Collection.
[22134] = { "колекція дарів Підмістя", use="Об'єднати колекцію дарів Орґріммара, колекцію дарів Громового Бескиду та колекцію дарів Підмістя в колекцію дарів Орди." }, -- Undercity Gift Collection, @use Combines an Orgrimmar Gift Collection, Thunder Bluff Gift Collection and Undercity Gift Collection into a Horde Gift Collection.
[22135] = { "колекція дарів Громового Бескиду", use="Об'єднати колекцію дарів Орґріммара, колекцію дарів Громового Бескиду та колекцію дарів Підмістя в колекцію дарів Орди." }, -- Thunder Bluff Gift Collection, @use Combines an Orgrimmar Gift Collection, Thunder Bluff Gift Collection and Undercity Gift Collection into a Horde Gift Collection.
[22136] = { "колекція дарів Орґріммара", use="Об'єднати колекцію дарів Орґріммара, колекцію дарів Громового Бескиду та колекцію дарів Підмістя в колекцію дарів Орди." }, -- Orgrimmar Gift Collection, @use Combines an Orgrimmar Gift Collection, Thunder Bluff Gift Collection and Undercity Gift Collection into a Horde Gift Collection.
[22137] = { "сумка Ісіди" }, -- Ysida's Satchel
[22138] = { "поручі Чорнокаменю", flavor="Ці поручі виготовлені переважно з темного заліза, але подекуди блищить інший метал." }, -- Blackrock Bracer, @flavor Crudely crafted, mostly from dark iron, these bracers exhibit trace amounts of a shiny metal.
[22139] = { "медальйон Ісіди" }, -- Ysida's Locket
[22140] = { "листівка стражниці", use="Об'єднати 5 листівок стражниць в стіс листівок." }, -- Sentinel's Card, @use Combines 5 Sentinel's Cards into a Stack of Cards.
[22141] = { "листівка вартового Залізогарта", use="Об'єднати 5 листівок вартових Залізогарта в пакунок листівок." }, -- Ironforge Guard's Card, @use Combines 5 Ironforge Guard's Cards into a Parcel of Cards.
[22142] = { "листівка бугая", use="Об'єднати 5 листівок бугаїв у пакунок листівок." }, -- Grunt's Card, @use Combines 5 Grunt's Cards into a Package of Cards.
[22143] = { "листівка вартового Штормовію", use="Об'єднати 5 листівок вартових Штормовію у в'язку листівок." }, -- Stormwind Guard's Card, @use Combines 5 Stormwind Guard's Cards into a Bundle of Cards.
[22144] = { "листівка вартового бескиду", use="Об'єднати 5 листівок вартових бескиду в сумку листівок." }, -- Bluffwatcher's Card, @use Combines 5 Bluffwatcher's Cards into a Satchel of Cards.
[22145] = { "запліснявіла листівка вартового", use="Об'єднати 5 запліснявілих листівка вартових у стіс листівок." }, -- Guardian's Moldy Card, @use Combines 5 Guardian's Moldy Cards into a Sheaf of Cards.
[22149] = { "буси огрського чаклунства", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 13." }, -- Beads of Ogre Mojo, @equip Increases damage and healing done by magical spells and effects by up to 13.
[22150] = { "буси огрської могутності", equip={ "Збільшує силу атаки на 24.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Beads of Ogre Might, @equip +24 Attack Power., @equip Improves your chance to hit by 1%.
[22154] = { "обітниця обожнювання з Залізогарта" }, -- Pledge of Adoration: Ironforge
[22155] = { "обітниця обожнювання з Дарнаса" }, -- Pledge of Adoration: Darnassus
[22156] = { "обітниця обожнювання з Орґріммара" }, -- Pledge of Adoration: Orgrimmar
[22157] = { "обітниця обожнювання з Підмістя" }, -- Pledge of Adoration: Undercity
[22158] = { "обітниця обожнювання з Громового Бескиду" }, -- Pledge of Adoration: Thunder Bluff
[22159] = { "обітниця дружби з Дарнаса" }, -- Pledge of Friendship: Darnassus
[22160] = { "обітниця дружби з Залізогарта" }, -- Pledge of Friendship: Ironforge
[22161] = { "обітниця дружби з Орґріммара" }, -- Pledge of Friendship: Orgrimmar
[22162] = { "обітниця дружби з Громового Бескиду" }, -- Pledge of Friendship: Thunder Bluff
[22163] = { "обітниця дружби з Підмістя" }, -- Pledge of Friendship: Undercity
[22164] = { "дар обожнювання з Орґріммара" }, -- Gift of Adoration: Orgrimmar
[22165] = { "дар обожнювання з Громового Бескиду" }, -- Gift of Adoration: Thunder Bluff
[22166] = { "дар обожнювання з Підмістя" }, -- Gift of Adoration: Undercity
[22167] = { "дар дружби з Дарнаса" }, -- Gift of Friendship: Darnassus
[22168] = { "дар дружби з Залізогарта" }, -- Gift of Friendship: Ironforge
[22169] = { "дар дружби з Орґріммара" }, -- Gift of Friendship: Orgrimmar
[22170] = { "дар дружби зі Штормовію" }, -- Gift of Friendship: Stormwind
[22171] = { "дар дружби з Громового Бескиду" }, -- Gift of Friendship: Thunder Bluff
[22172] = { "дар дружби з Підмістя" }, -- Gift of Friendship: Undercity
[22173] = { "дворфійське домашнє пиво", use="Об'єднати 5 пляшок дворфійського домашнього пива в ящик домашнього пива." }, -- Dwarven Homebrew, @use Combines 5 Dwarven Homebrews into a Case of Homebrew.
[22174] = { "романтичний вірш", use="Об'єднати 5 романтичних віршів в збірку романтичної поезії." }, -- Romantic Poem, @use Combines 5 Romantic Poems into a Book of Romantic Poetry.
[22175] = { "свіжовипечений пиріг", use="Об'єднати 5 свіжовипечених пирогів в коробку свіжих пирогів." }, -- Freshly Baked Pie, @use Combines 5 Freshly Baked Pies into a Box of Fresh Pies.
[22176] = { "домашній хліб", use="Об'єднати 5 домашніх хлібин в торбинку домашнього хліба." }, -- Homemade Bread, @use Combines 5 loaves of Homemade Bread into a Sack of Homemade Bread.
[22177] = { "свіжозібрані квіти", use="Об'єднати 5 свіжозібраних квітів в кошик квітів." }, -- Freshly Picked Flowers, @use Combines 5 Freshly Picked Flowers into a Basket of Flowers.
[22178] = { "обітниця дружби зі Штормовію" }, -- Pledge of Friendship: Stormwind
[22192] = { "кров'яничний еліксир ухилення", use="Збільшує шанс ухилитися від атаки на 3% на 30 хв." }, -- Bloodkelp Elixir of Dodging, @use Increases chance to dodge by 3% for 30 min.
[22193] = { "кров'яничний еліксир супротиву", use="Збільшує супротив всім школам магії на 15 на 30 хв." }, -- Bloodkelp Elixir of Resistance, @use Increases all magical resistances by 15 for 30 min.
[22200] = { "стріла зі срібним вістрям", use="Вистрілити в гравця, і Купі С.В. Купайло знайде його! (Спрацює лише на гравцях, що не мають активного небойового вихованця)" }, -- Silver Shafted Arrow, @use Shoot a player, and Kwee Q. Peddlefeet will find them!  (Only works on players with no current critter pets.)
[22201] = { "релікварій чистоти" }, -- Reliquary of Purity
[22202] = { "малий шматок обсидіану" }, -- Small Obsidian Shard
[22203] = { "великий шматок обсидіану" }, -- Large Obsidian Shard
[22216] = { "отруйна залоза Веноксіса" }, -- Venoxis's Venom Sac
[22217] = { "отруйна залоза Куріннакса" }, -- Kurinnaxx's Venom Sac
[22218] = { "жменя трояндових пелюсток", use="Осипати сусідню ціль пелюстками троянд! (Відновлення 30 сек)" }, -- Handful of Rose Petals, @use Shower a nearby target with a cascade of rose petals! (30 Sec Cooldown)
[22224] = { "сутність глузливого привида" }, -- Jeering Spectre's Essence
[22226] = { "друїдські останки", flavor="Силітиди мало що залишили від цього героя Кенарійського Кола." }, -- Druidical Remains, @flavor The silithid have left little to the corpse of this champion of the Cenarion Circle.
[22227] = { "реліквія Зоряного Бризу", flavor="Ця древня реліквія нічних ельфів була заморожена велетнями-кригобоями. Поводитись обережно." }, -- Starbreeze Village Relic, @flavor This night elvic antiquity has been frozen solid by the Frostmaul giants. Handle with care.
[22228] = { "блискучий меч фанатизму", flavor="Найгостріше лезо легко проріже будь-якого ворога, живого чи мертвого." }, -- Brilliant Sword of Zealotry, @flavor The keenest of edges, meant to indiscriminately cleave through any foe, living or dead.
[22229] = { "попіл душі вигнанця", flavor="Ці попелясті залишки душі вигнанця ледь помітно пульсують відлунням минулого життя." }, -- Soul Ashes of the Banished, @flavor These ashen remains of an exiled soul pulse faintly with the echo of a once-promising life.
[22236] = { "молочна насолода", use="Збільшує навичку захисту на 6 протягом 1 години." }, -- Buttermilk Delight, @use Increases Defense by 13 for 1 hour.
[22237] = { "темна жага", use="Збільшує ваш шанс нанесення удару на 2% протягом 1 години." }, -- Dark Desire, @use Improves your chance to hit by 2% for 1 hour.
[22238] = { "дуже ягідний крем", use="Збільшує шкоду від заклинань на 23 протягом 1 години." }, -- Very Berry Cream, @use Increases damage done from spells by up to 23 for 1 hour.
[22239] = { "солодкий сюрприз", use="Збільшує зцілення від магічних заклинань на 44 протягом 1 години." }, -- Sweet Surprise, @use Increases healing done by magical spells by up to 44 for 1 hour.
[22243] = { "маленький мішечок душ" }, -- Small Soul Pouch
[22244] = { "коробка душ" }, -- Box of Souls
[22250] = { "мішечок для трав", desc="Сумка для трав на 12 місць" }, -- Herb Pouch
[22259] = { "браслет дружби", use="Подаруйте гравцям з розбитим серцем, щоб підбадьорити їх." }, -- Unbestowed Friendship Bracelet, @use Give to a Heartbroken player to cheer them up.
[22261] = { "манекен закоханого", use="Встановлення на землі манекена закоханого, який викликає у найближчих монстрів люту заздрість!  Існує 15 сек або до знищення. (Відновлення 2 хв)" }, -- Love Fool, @use Drops a love dummy on the ground that drives nearby monsters into an envious rage!  Lasts for 15 seconds. (2 Min Cooldown)
[22262] = { "колекція дарів Альянсу", flavor="Віддайте ці дари Купі С.В. Купайлу." }, -- Alliance Gift Collection, @flavor Give this collection to Kwee Q. Peddlefeet.
[22263] = { "колекція дарів Орди", flavor="Віддайте ці дари Купі С.В. Купайлу." }, -- Horde Gift Collection, @flavor Give this collection to Kwee Q. Peddlefeet.
[22264] = { "ретельно написаний лист" }, -- Carefully Written Letter
[22265] = { "лист, написаний з любов'ю" }, -- Lovingly Composed Letter
[22272] = { "шати лісу", equip="Збільшує зцілення від заклинань і ефектів на 55." }, -- Forest's Embrace, @equip Increases healing done by spells and effects by up to 55.
[22274] = { "посивіла шкура" }, -- Grizzled Pelt
[22276] = { "прекрасна червона сукня" }, -- Lovely Red Dress
[22277] = { "червоний смокінг" }, -- Red Dinner Suit
[22278] = { "прекрасна блакитна сукня" }, -- Lovely Blue Dress
[22279] = { "прекрасна чорна сукня" }, -- Lovely Black Dress
[22280] = { "прекрасна фіолетова сукня" }, -- Lovely Purple Dress
[22281] = { "блакитний смокінг" }, -- Blue Dinner Suit
[22282] = { "фіолетовий смокінг" }, -- Purple Dinner Suit
[22283] = { "торбинка домашнього хліба", use="Об'єднати в'язку листівок, торбинку домашнього хліба та колекцію обітниць Штормовію в колекцію дарів Штормовію." }, -- Sack of Homemade Bread, @use Combines a Bundle of Cards, a Sack of Homemade Bread and a Stormwind Pledge Collection into a Stormwind Gift Collection.
[22284] = { "в'язка листівок", use="Об'єднати в'язку листівок, торбинку домашнього хліба та колекцію обітниць Штормовію в колекцію дарів Штормовію." }, -- Bundle of Cards, @use Combines a Bundle of Cards, a Sack of Homemade Bread and a Stormwind Pledge Collection into a Stormwind Gift Collection.
[22285] = { "колекція обітниць Штормовію", use="Об'єднати в'язку листівок, торбинку домашнього хліба та колекцію обітниць Штормовію в колекцію дарів Штормовію." }, -- Stormwind Pledge Collection, @use Combines a Bundle of Cards, a Sack of Homemade Bread and a Stormwind Pledge Collection into a Stormwind Gift Collection.
[22286] = { "колекція обітниць Залізогарта", use="Об'єднати ящик домашнього пива, колекцію обітниць Залізогарта та пакунок листівок в колекцію дарів Залізогарта." }, -- Ironforge Pledge Collection, @use Combines a Case of Homebrew, an Ironforge Pledge Collection and a Parcel of Cards into an Ironforge Gift Collection.
[22287] = { "пакунок листівок", use="Об'єднати ящик домашнього пива, колекцію обітниць Залізогарта та пакунок листівок в колекцію дарів Залізогарта." }, -- Parcel of Cards, @use Combines a Case of Homebrew, an Ironforge Pledge Collection and a Parcel of Cards into an Ironforge Gift Collection.
[22288] = { "ящик домашнього пива", use="Об'єднати ящик домашнього пива, колекцію обітниць Залізогарта та пакунок листівок в колекцію дарів Залізогарта." }, -- Case of Homebrew, @use Combines a Case of Homebrew, an Ironforge Pledge Collection and a Parcel of Cards into an Ironforge Gift Collection.
[22289] = { "стіс листівок", use="Об'єднати коробку дерев'яних виробів, колекцію обітниць Дарнаса та стіс листівок в колекцію дарів Дарнаса." }, -- Stack of Cards, @use Combines a Box of Woodcrafts, a Darnassus Pledge Collection and a Stack of Cards into a Darnassus Gift Collection.
[22290] = { "колекція обітниць Дарнаса", use="Об'єднати коробку дерев'яних виробів, колекцію обітниць Дарнаса та стіс листівок в колекцію дарів Дарнаса." }, -- Darnassus Pledge Collection, @use Combines a Box of Woodcrafts, a Darnassus Pledge Collection and a Stack of Cards into a Darnassus Gift Collection.
[22291] = { "коробка дерев'яних виробів", use="Об'єднати коробку дерев'яних виробів, колекцію обітниць Дарнаса та стіс листівок в колекцію дарів Дарнаса." }, -- Box of Woodcrafts, @use Combines a Box of Woodcrafts, a Darnassus Pledge Collection and a Stack of Cards into a Darnassus Gift Collection.
[22292] = { "коробка свіжих пирогів", use="Об'єднати коробку свіжих пирогів, колекцію обітниць Орґріммара та пакунок листівок в колекцію дарів Орґріммара." }, -- Box of Fresh Pies, @use Combines a Box of Fresh Pies, an Orgrimmar Pledge Collection and a Package of Cards into an Orgrimmar Gift Collection.
[22293] = { "пакунок листівок", use="Об'єднати коробку свіжих пирогів, колекцію обітниць Орґріммара та пакунок листівок в колекцію дарів Орґріммара." }, -- Package of Cards, @use Combines a Box of Fresh Pies, an Orgrimmar Pledge Collection and a Package of Cards into an Orgrimmar Gift Collection.
[22294] = { "колекція обітниць Орґріммара", use="Об'єднати коробку свіжих пирогів, колекцію обітниць Орґріммара та пакунок листівок в колекцію дарів Орґріммара." }, -- Orgrimmar Pledge Collection, @use Combines a Box of Fresh Pies, an Orgrimmar Pledge Collection and a Package of Cards into an Orgrimmar Gift Collection.
[22295] = { "сумка листівок", use="Об'єднати кошик квітів, сумку листівок та колекцію обітниць Громового Бескиду в колекцію дарів Громового Бескиду." }, -- Satchel of Cards, @use Combines a Basket of Flowers, a Satchel of Cards and a Thunder Bluff Pledge Collection into a Thunder Bluff Gift Collection.
[22296] = { "кошик квітів", use="Об'єднати кошик квітів, сумку листівок та колекцію обітниць Громового Бескиду в колекцію дарів Громового Бескиду." }, -- Basket of Flowers, @use Combines a Basket of Flowers, a Satchel of Cards and a Thunder Bluff Pledge Collection into a Thunder Bluff Gift Collection.
[22297] = { "колекція обітниць Громового Бескиду", use="Об'єднати кошик квітів, сумку листівок та колекцію обітниць Громового Бескиду в колекцію дарів Громового Бескиду." }, -- Thunder Bluff Pledge Collection, @use Combines a Basket of Flowers, a Satchel of Cards and a Thunder Bluff Pledge Collection into a Thunder Bluff Gift Collection.
[22298] = { "збірка романтичної поезії", use="Об'єднати збірку романтичної поезії, стіс листівок та колекцію обітниць Підмістя в колекцію дарів Підмістя." }, -- Book of Romantic Poems, @use Combines a Book of Romantic Poetry, a Sheaf of Cards and an Undercity Pledge Collection into an Undercity Gift Collection.
[22299] = { "стіс листівок", use="Об'єднати збірку романтичної поезії, стіс листівок та колекцію обітниць Підмістя в колекцію дарів Підмістя." }, -- Sheaf of Cards, @use Combines a Book of Romantic Poetry, a Sheaf of Cards and an Undercity Pledge Collection into an Undercity Gift Collection.
[22300] = { "колекція обітниць Підмістя", use="Об'єднати збірку романтичної поезії, стіс листівок та колекцію обітниць Підмістя в колекцію дарів Підмістя." }, -- Undercity Pledge Collection, @use Combines a Book of Romantic Poetry, a Sheaf of Cards and an Undercity Pledge Collection into an Undercity Gift Collection.
[22320] = { "якісні товари Мукса" }, -- Mux's Quality Goods
[22338] = { "вулканічний попіл" }, -- Volcanic Ash
[22344] = { "жаровня виклику: посібник користувача", flavor="Де знайти місця з привидами" }, -- Brazier of Invocation: User's Manual, @flavor Where to find Haunted Loci
[22347] = { "багатозарядний арбалет Фаграда", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Fahrad's Reloading Repeater, @equip Improves your chance to hit by 1%.
[22348] = { "Згубулус Прайм", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Doomulus Prime, @equip Improves your chance to hit by 1%.
[22349] = { "осквернена кіраса" }, -- Desecrated Breastplate
[22350] = { "осквернений мундир" }, -- Desecrated Tunic
[22351] = { "осквернена мантія" }, -- Desecrated Robe
[22352] = { "осквернені ножні лати" }, -- Desecrated Legplates
[22353] = { "осквернений шолом" }, -- Desecrated Helmet
[22354] = { "осквернене напліччя" }, -- Desecrated Pauldrons
[22355] = { "осквернені поручі" }, -- Desecrated Bracers
[22356] = { "осквернений ремінь" }, -- Desecrated Waistguard
[22357] = { "осквернені рукавиці" }, -- Desecrated Gauntlets
[22358] = { "осквернені сабатони" }, -- Desecrated Sabatons
[22359] = { "осквернені поножі" }, -- Desecrated Legguards
[22360] = { "осквернений головний убір" }, -- Desecrated Headpiece
[22361] = { "осквернені наплечі" }, -- Desecrated Spaulders
[22362] = { "осквернені наручі" }, -- Desecrated Wristguards
[22363] = { "осквернений пасок" }, -- Desecrated Girdle
[22364] = { "осквернені бойові рукавиці" }, -- Desecrated Handguards
[22365] = { "осквернені чоботи" }, -- Desecrated Boots
[22366] = { "осквернені штани" }, -- Desecrated Leggings
[22367] = { "осквернений вінець" }, -- Desecrated Circlet
[22368] = { "осквернені наплічники" }, -- Desecrated Shoulderpads
[22369] = { "осквернені браслети" }, -- Desecrated Bindings
[22370] = { "осквернений пояс" }, -- Desecrated Belt
[22371] = { "осквернені рукавички" }, -- Desecrated Gloves
[22372] = { "осквернені сандалі" }, -- Desecrated Sandals
[22373] = { "понівечений обрізок шкіри" }, -- Wartorn Leather Scrap
[22374] = { "понівечений обрізок кольчуги" }, -- Wartorn Chain Scrap
[22375] = { "понівечений обрізок лат" }, -- Wartorn Plate Scrap
[22376] = { "понівечений обрізок тканини" }, -- Wartorn Cloth Scrap
[22377] = { "громолісний штрикач" }, -- The Thunderwood Poker
[22378] = { "рейвенхольдтський тесак", equip="Збільшує силу атаки на 26." }, -- Ravenholdt Slicer, @equip +26 Attack Power.
[22379] = { "перо Пероверта", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 13." }, -- Shivsprocket's Shiv, @equip Increases damage and healing done by magical spells and effects by up to 13.
[22380] = { "молоток-культиватор Симони", equip="Збільшує зцілення від заклинань і ефектів на 37." }, -- Simone's Cultivating Hammer, @equip Increases healing done by spells and effects by up to 37.
[22381] = { "зразок отрути з Силітуса" }, -- Silithus Venom Sample
[22382] = { "запечатаний контейнер з отрутою" }, -- Sealed Venom Container
[22416] = { "кіраса безстрашності", equip={ "Збільшує навичку захисту на 13.", "Збільшує ваш шанс ухилитися від атаки на 1%.", "Збільшує ваш шанс нанесення удару на 2%." } }, -- Dreadnaught Breastplate, @equip Increased Defense +13., @equip Increases your chance to dodge an attack by 1%., @equip Improves your chance to hit by 2%.
[22417] = { "ножні лати безстрашності", equip={ "Збільшує навичку захисту на 13.", "Збільшує ваш шанс ухилитися від атаки на 1%.", "Збільшує показник блокування щитом на 32." } }, -- Dreadnaught Legplates, @equip Increased Defense +13., @equip Increases your chance to dodge an attack by 1%., @equip Increases the block value of your shield by 32.
[22418] = { "шолом безстрашності", equip={ "Збільшує ваш шанс ухилитися від атаки на 1%.", "Збільшує навичку захисту на 14." } }, -- Dreadnaught Helmet, @equip Increases your chance to dodge an attack by 1%., @equip Increased Defense +14.
[22419] = { "напліччя безстрашності", equip={ "Збільшує ваш шанс нанесення удару на 1%.", "Збільшує показник блокування щитом на 21.", "Збільшує навичку захисту на 9." } }, -- Dreadnaught Pauldrons, @equip Improves your chance to hit by 1%., @equip Increases the block value of your shield by 21., @equip Increased Defense +9.
[22420] = { "сабатони безстрашності", equip={ "Збільшує навичку захисту на 9.", "Збільшує ваш шанс ухилитися від атаки на 1%." } }, -- Dreadnaught Sabatons, @equip Increased Defense +9., @equip Increases your chance to dodge an attack by 1%.
[22421] = { "рукавиці безстрашності", equip={ "Збільшує навичку захисту на 9.", "Збільшує шанс блокування атак щитом на 3%.", "Збільшує показник блокування щитом на 21." } }, -- Dreadnaught Gauntlets, @equip Increased Defense +9., @equip Increases your chance to block attacks with a shield by 3%., @equip Increases the block value of your shield by 21.
[22422] = { "ремінь безстрашності", equip={ "Збільшує показник блокування щитом на 18.", "Збільшує шанс блокування атак щитом на 3%.", "Збільшує навичку захисту на 9." } }, -- Dreadnaught Waistguard, @equip Increases the block value of your shield by 18., @equip Increases your chance to block attacks with a shield by 3%., @equip Increased Defense +9.
[22423] = { "поручі безстрашності", equip="Збільшує навичку захисту на 5." }, -- Dreadnaught Bracers, @equip Increased Defense +5.
[22424] = { "поручі спокути", equip={ "Збільшує зцілення від заклинань і ефектів на 31.", "Відновлює 4 мани кожні 5 сек." } }, -- Redemption Wristguards, @equip Increases healing done by spells and effects by up to 31., @equip Restores 4 mana per 5 sec.
[22425] = { "кіраса спокути", equip={ "Збільшує зцілення від заклинань і ефектів на 59.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Відновлює 10 мани кожні 5 сек." } }, -- Redemption Tunic, @equip Increases healing done by spells and effects by up to 59., @equip Improves your chance to get a critical strike with spells by 1%., @equip Restores 10 mana per 5 sec.
[22426] = { "рукавиці спокути", equip={ "Збільшує зцілення від заклинань і ефектів на 33.", "Відновлює 8 мани кожні 5 сек." } }, -- Redemption Handguards, @equip Restores 8 mana per 5 sec., @equip Increases healing done by spells and effects by up to 33.
[22427] = { "ножні лати спокути", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує зцілення від заклинань і ефектів на 42.", "Відновлює 8 мани кожні 5 сек." } }, -- Redemption Legguards, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases healing done by spells and effects by up to 42., @equip Restores 8 mana per 5 sec.
[22428] = { "шолом спокути", equip={ "Збільшує зцілення від заклинань і ефектів на 64.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Відновлює 8 мани кожні 5 сек." } }, -- Redemption Headpiece, @equip Increases healing done by spells and effects by up to 64., @equip Improves your chance to get a critical strike with spells by 1%., @equip Restores 8 mana per 5 sec.
[22429] = { "напліччя спокути", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує зцілення від заклинань і ефектів на 40.", "Відновлює 4 мани кожні 5 сек." } }, -- Redemption Spaulders, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases healing done by spells and effects by up to 40., @equip Restores 4 mana per 5 sec.
[22430] = { "сабатони спокути", equip={ "Збільшує зцілення від заклинань і ефектів на 42.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Відновлює 5 мани кожні 5 сек." } }, -- Redemption Boots, @equip Increases healing done by spells and effects by up to 42., @equip Improves your chance to get a critical strike with spells by 1%., @equip Restores 5 mana per 5 sec.
[22431] = { "ремінь спокути", equip={ "Збільшує зцілення від заклинань і ефектів на 40.", "Відновлює 5 мани кожні 5 сек." } }, -- Redemption Girdle, @equip Increases healing done by spells and effects by up to 40., @equip Restores 5 mana per 5 sec.
[22432] = { "дияволозаврова колючка", use="Проткнути дияволозавра, щоб ввести велику дозу отрути." }, -- Devilsaur Barb, @use Stabs a devilsaur, inflicting a large dose of poison.
[22434] = { "кровошляп" }, -- Bloodcap
[22435] = { "жало Ґоріші" }, -- Gorishi Sting
[22436] = { "мундир склепного ловця", equip={ "Збільшує ваш шанс нанесення удару на 1%.", "Збільшує ваш шанс нанесення критичного удару на 1%.", "Відновлює 4 мани кожні 5 сек." } }, -- Cryptstalker Tunic, @equip Improves your chance to hit by 1%., @equip Improves your chance to get a critical strike by 1%., @equip Restores 4 mana per 5 sec.
[22437] = { "поножі склепного ловця", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Відновлює 6 мани кожні 5 сек." } }, -- Cryptstalker Legguards, @equip Improves your chance to get a critical strike by 1%., @equip Restores 6 mana per 5 sec.
[22438] = { "головний убір склепного ловця", equip={ "Збільшує ваш шанс нанесення критичного удару на 2%.", "Відновлює 3 мани кожні 5 сек." } }, -- Cryptstalker Headpiece, @equip Improves your chance to get a critical strike by 2%., @equip Restores 3 mana per 5 sec.
[22439] = { "наплечі склепного ловця", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Cryptstalker Spaulders, @equip Improves your chance to get a critical strike by 1%.
[22440] = { "чоботи склепного ловця", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Cryptstalker Boots, @equip Improves your chance to hit by 1%.
[22441] = { "бойові рукавиці склепного ловця", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Відновлює 4 мани кожні 5 сек." } }, -- Cryptstalker Handguards, @equip Improves your chance to get a critical strike by 1%., @equip Restores 4 mana per 5 sec.
[22442] = { "пасок склепного ловця", equip={ "Збільшує ваш шанс нанесення удару на 1%.", "Збільшує ваш шанс нанесення критичного удару на 1%.", "Відновлює 3 мани кожні 5 сек." } }, -- Cryptstalker Girdle, @equip Improves your chance to hit by 1%., @equip Improves your chance to get a critical strike by 1%., @equip Restores 3 mana per 5 sec.
[22443] = { "наручі склепного ловця", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Cryptstalker Wristguards, @equip Improves your chance to hit by 1%.
[22444] = { "гнила лоза" }, -- Putrid Vine
[22458] = { "посох місячної тіні", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18.", "Відновлює 7 мани кожні 5 сек.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Moonshadow Stave, @equip Increases damage and healing done by magical spells and effects by up to 18., @equip Restores 7 mana per 5 sec., @equip Improves your chance to get a critical strike with spells by 1%.
[22464] = { "мундир Землетрощителя", equip={ "Збільшує зцілення від заклинань і ефектів на 59.", "Відновлює 12 мани кожні 5 сек." } }, -- Earthshatter Tunic, @equip Increases healing done by spells and effects by up to 59., @equip Restores 12 mana per 5 sec.
[22465] = { "поножі Землетрощителя", equip={ "Збільшує зцілення від заклинань і ефектів на 59.", "Відновлює 9 мани кожні 5 сек." } }, -- Earthshatter Legguards, @equip Increases healing done by spells and effects by up to 59., @equip Restores 9 mana per 5 sec.
[22466] = { "головний убір Землетрощителя", equip={ "Збільшує зцілення від заклинань і ефектів на 68.", "Відновлює 8 мани кожні 5 сек." } }, -- Earthshatter Headpiece, @equip Increases healing done by spells and effects by up to 68., @equip Restores 8 mana per 5 sec.
[22467] = { "наплечі Землетрощителя", equip={ "Збільшує зцілення від заклинань і ефектів на 42.", "Відновлює 6 мани кожні 5 сек." } }, -- Earthshatter Spaulders, @equip Increases healing done by spells and effects by up to 42., @equip Restores 6 mana per 5 sec.
[22468] = { "чоботи Землетрощителя", equip={ "Збільшує зцілення від заклинань і ефектів на 37.", "Відновлює 6 мани кожні 5 сек." } }, -- Earthshatter Boots, @equip Increases healing done by spells and effects by up to 37., @equip Restores 6 mana per 5 sec.
[22469] = { "бойові рукавиці Землетрощителя", equip={ "Збільшує зцілення від заклинань і ефектів на 35.", "Відновлює 6 мани кожні 5 сек." } }, -- Earthshatter Handguards, @equip Increases healing done by spells and effects by up to 35., @equip Restores 6 mana per 5 sec.
[22470] = { "пасок Землетрощителя", equip={ "Збільшує зцілення від заклинань і ефектів на 42.", "Відновлює 7 мани кожні 5 сек." } }, -- Earthshatter Girdle, @equip Restores 7 mana per 5 sec., @equip Increases healing done by spells and effects by up to 42.
[22471] = { "наручі Землетрощителя", equip={ "Збільшує зцілення від заклинань і ефектів на 33.", "Відновлює 4 мани кожні 5 сек." } }, -- Earthshatter Wristguards, @equip Increases healing done by spells and effects by up to 33., @equip Restores 4 mana per 5 sec.
[22476] = { "мундир кістяної коси", equip={ "Збільшує ваш шанс нанесення критичного удару на 2%.", "Збільшує силу атаки на 80.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Bonescythe Breastplate, @equip Improves your chance to get a critical strike by 2%., @equip +80 Attack Power., @equip Improves your chance to hit by 1%.
[22477] = { "поножі кістяної коси", equip={ "Збільшує ваш шанс нанесення удару на 1%.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Bonescythe Legplates, @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to hit by 1%.
[22478] = { "головний убір кістяної коси", equip={ "Збільшує ваш шанс нанесення удару на 1%.", "Збільшує ваш шанс нанесення критичного удару на 2%." } }, -- Bonescythe Helmet, @equip Improves your chance to hit by 1%., @equip Improves your chance to get a critical strike by 2%.
[22479] = { "наплечі кістяної коси", equip={ "Збільшує ваш шанс нанесення удару на 1%.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Bonescythe Pauldrons, @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to hit by 1%.
[22480] = { "чоботи кістяної коси", equip={ "Збільшує ваш шанс нанесення удару на 1%.", "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує силу атаки на 64." } }, -- Bonescythe Sabatons, @equip Improves your chance to hit by 1%., @equip Improves your chance to get a critical strike by 1%., @equip +64 Attack Power.
[22481] = { "бойові рукавиці кістяної коси", equip={ "Збільшує ваш шанс нанесення удару на 1%.", "Збільшує силу атаки на 66.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Bonescythe Gauntlets, @equip Improves your chance to hit by 1%., @equip +66 Attack Power., @equip Improves your chance to get a critical strike by 1%.
[22482] = { "пасок кістяної коси", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Bonescythe Waistguard, @equip Improves your chance to get a critical strike by 1%.
[22483] = { "наручі кістяної коси", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Bonescythe Bracers, @equip Improves your chance to get a critical strike by 1%.
[22484] = { "некротична руна" }, -- Necrotic Rune
[22488] = { "мундир сноходця", equip={ "Збільшує зцілення від заклинань і ефектів на 66.", "Відновлює 8 мани кожні 5 сек." } }, -- Dreamwalker Tunic, @equip Increases healing done by spells and effects by up to 66., @equip Restores 8 mana per 5 sec.
[22489] = { "поножі сноходця", equip={ "Збільшує зцілення від заклинань і ефектів на 66.", "Відновлює 8 мани кожні 5 сек." } }, -- Dreamwalker Legguards, @equip Increases healing done by spells and effects by up to 66., @equip Restores 8 mana per 5 sec.
[22490] = { "головний убір сноходця", equip="Збільшує зцілення від заклинань і ефектів на 66." }, -- Dreamwalker Headpiece, @equip Increases healing done by spells and effects by up to 66.
[22491] = { "наплечі сноходця", equip={ "Збільшує зцілення від заклинань і ефектів на 48.", "Відновлює 5 мани кожні 5 сек." } }, -- Dreamwalker Spaulders, @equip Restores 5 mana per 5 sec., @equip Increases healing done by spells and effects by up to 48.
[22492] = { "чоботи сноходця", equip={ "Збільшує зцілення від заклинань і ефектів на 46.", "Відновлює 5 мани кожні 5 сек." } }, -- Dreamwalker Boots, @equip Increases healing done by spells and effects by up to 46., @equip Restores 5 mana per 5 sec.
[22493] = { "бойові рукавиці сноходця", equip="Збільшує зцілення від заклинань і ефектів на 53." }, -- Dreamwalker Handguards, @equip Increases healing done by spells and effects by up to 53.
[22494] = { "пасок сновидця", equip={ "Збільшує зцілення від заклинань і ефектів на 51.", "Відновлює 4 мани кожні 5 сек." } }, -- Dreamwalker Girdle, @equip Increases healing done by spells and effects by up to 51., @equip Restores 4 mana per 5 sec.
[22495] = { "наручі сноходця", equip={ "Збільшує зцілення від заклинань і ефектів на 40.", "Відновлює 5 мани кожні 5 сек." } }, -- Dreamwalker Wristguards, @equip Increases healing done by spells and effects by up to 40., @equip Restores 5 mana per 5 sec.
[22496] = { "мантія крижаного вогню", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 47.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Зменшує супротив магії цілей ваших заклинань на 13." } }, -- Frostfire Robe, @equip Increases damage and healing done by magical spells and effects by up to 47., @equip Improves your chance to hit with spells by 1%., @equip Improves your chance to get a critical strike with spells by 1%., @equip Decreases the magical resistances of your spell targets by 13.
[22497] = { "штани крижаного вогню", equip={ "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 46." } }, -- Frostfire Leggings, @equip Improves your chance to hit with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 46.
[22498] = { "вінець крижаного вогню", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 35.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 2%." } }, -- Frostfire Circlet, @equip Increases damage and healing done by magical spells and effects by up to 35., @equip Improves your chance to hit with spells by 1%., @equip Improves your chance to get a critical strike with spells by 2%.
[22499] = { "наплічники крижаного вогню", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 36." }, -- Frostfire Shoulderpads, @equip Increases damage and healing done by magical spells and effects by up to 36.
[22500] = { "сандалі крижаного вогню", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28." } }, -- Frostfire Sandals, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 28.
[22501] = { "рукавички крижаного вогню", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 36." }, -- Frostfire Gloves, @equip Increases damage and healing done by magical spells and effects by up to 36.
[22502] = { "пояс крижаного вогню", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Frostfire Belt, @equip Increases damage and healing done by magical spells and effects by up to 28., @equip Improves your chance to hit with spells by 1%.
[22503] = { "браслети крижаного вогню", equip={ "Зменшує супротив магії цілей ваших заклинань на 10.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 27." } }, -- Frostfire Bindings, @equip Decreases the magical resistances of your spell targets by 10., @equip Increases damage and healing done by magical spells and effects by up to 27.
[22504] = { "мантія чумного серця", equip={ "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 51.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Plagueheart Robe, @equip Improves your chance to hit with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 51., @equip Improves your chance to get a critical strike with spells by 1%.
[22505] = { "штани чумного серця", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 37.", "Зменшує супротив магії цілей ваших заклинань на 10." } }, -- Plagueheart Leggings, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 37., @equip Decreases the magical resistances of your spell targets by 10.
[22506] = { "вінець чумного серця", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 33.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 2%.", "Збільшує ваш шанс нанесення удару заклинаннями на 1%." } }, -- Plagueheart Circlet, @equip Increases damage and healing done by magical spells and effects by up to 33., @equip Improves your chance to get a critical strike with spells by 2%., @equip Improves your chance to hit with spells by 1%.
[22507] = { "наплічники чумного серця", equip={ "Збільшує ваш шанс нанесення удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 36." } }, -- Plagueheart Shoulderpads, @equip Improves your chance to hit with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 36.
[22508] = { "сандалі чумного серця", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 32.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Plagueheart Sandals, @equip Increases damage and healing done by magical spells and effects by up to 32., @equip Improves your chance to get a critical strike with spells by 1%.
[22509] = { "рукавички чумного серця", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 26." } }, -- Plagueheart Gloves, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 26.
[22510] = { "пояс чумного серця", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 34.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Plagueheart Belt, @equip Increases damage and healing done by magical spells and effects by up to 34., @equip Improves your chance to get a critical strike with spells by 1%.
[22511] = { "браслети чумного серця", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 23." }, -- Plagueheart Bindings, @equip Increases damage and healing done by magical spells and effects by up to 23.
[22512] = { "мантія віри", equip={ "Збільшує зцілення від заклинань і ефектів на 64.", "Відновлює 5 мани кожні 5 сек." } }, -- Robe of Faith, @equip Increases healing done by spells and effects by up to 64., @equip Restores 5 mana per 5 sec.
[22513] = { "штани віри", equip="Збільшує зцілення від заклинань і ефектів на 66." }, -- Leggings of Faith, @equip Increases healing done by spells and effects by up to 66.
[22514] = { "вінець віри", equip={ "Збільшує зцілення від заклинань і ефектів на 75.", "Відновлює 5 мани кожні 5 сек." } }, -- Circlet of Faith, @equip Increases healing done by spells and effects by up to 75., @equip Restores 5 mana per 5 sec.
[22515] = { "наплічники віри", equip={ "Збільшує зцілення від заклинань і ефектів на 51.", "Відновлює 3 мани кожні 5 сек." } }, -- Shoulderpads of Faith, @equip Increases healing done by spells and effects by up to 51., @equip Restores 3 mana per 5 sec.
[22516] = { "сандалі віри", equip={ "Відновлює 6 мани кожні 5 сек.", "Збільшує зцілення від заклинань і ефектів на 44." } }, -- Sandals of Faith, @equip Restores 6 mana per 5 sec., @equip Increases healing done by spells and effects by up to 44.
[22517] = { "рукавички віри", equip={ "Збільшує зцілення від заклинань і ефектів на 40.", "Відновлює 4 мани кожні 5 сек." } }, -- Gloves of Faith, @equip Increases healing done by spells and effects by up to 40., @equip Restores 4 mana per 5 sec.
[22518] = { "пояс віри", equip="Збільшує зцілення від заклинань і ефектів на 48." }, -- Belt of Faith, @equip Increases healing done by spells and effects by up to 48.
[22519] = { "браслети віри", equip="Збільшує зцілення від заклинань і ефектів на 40." }, -- Bindings of Faith, @equip Increases healing done by spells and effects by up to 40.
[22520] = { "філактерія Кел'Тузада" }, -- The Phylactery of Kel'Thuzad
[22523] = { "відзнака Світанку" }, -- Insignia of the Dawn
[22524] = { "відзнака Багряного Походу" }, -- Insignia of the Crusade
[22525] = { "частини тіл склепної нечисті" }, -- Crypt Fiend Parts
[22526] = { "фрагменти кісток" }, -- Bone Fragments
[22527] = { "ядро стихій" }, -- Core of Elements
[22528] = { "брухт темного заліза" }, -- Dark Iron Scraps
[22529] = { "дикий пагін" }, -- Savage Frond
[22568] = { "запечатане замовлення майстра" }, -- Sealed Craftsman's Writ
[22589] = { "Атієш, великий посох Вартівника", equip={ "Збільшує ваш шанс нанесення удару заклинаннями на 2%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 150.", "Збільшує шанс нанесення критичного удару заклинаннями всіх членів групи в радіусі 30 м на 2%." }, use="Створити портал, що телепортує членів групи, які ним скористалися, до Каражана. (Відновлення 1 хв)" }, -- Atiesh, Greatstaff of the Guardian, @equip Improves your chance to hit with spells by 2%., @equip Increases damage and healing done by magical spells and effects by up to 150., @equip Increases the spell critical chance of all party members within 30 yards by 2%., @use Creates a portal, teleporting group members that use it to Karazhan. (1 Min Cooldown)
[22593] = { "подяка за супровід" }, -- Writ of Safe Passage
[22595] = { "оголошення про заклик до зброї" }, -- Call to Arms Announcement
[22600] = { "замовлення майстра — масивне грузило", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Dense Weightstone, @flavor Bears the seal of the Argent Dawn.
[22601] = { "замовлення майстра — імперська латна кіраса", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Imperial Plate Chest, @flavor Bears the seal of the Argent Dawn.
[22602] = { "замовлення майстра — вулканічний молот", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Volcanic Hammer, @flavor Bears the seal of the Argent Dawn.
[22603] = { "замовлення майстра — величезна торієва бойова сокира", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Huge Thorium Battleaxe, @flavor Bears the seal of the Argent Dawn.
[22604] = { "замовлення майстра — променистий вінець", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Radiant Circlet, @flavor Bears the seal of the Argent Dawn.
[22605] = { "замовлення майстра — лиха шкіряна бандана", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Wicked Leather Headband, @flavor Bears the seal of the Argent Dawn.
[22606] = { "замовлення майстра — накладки з міцної шкіри", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Rugged Armor Kit, @flavor Bears the seal of the Argent Dawn.
[22607] = { "замовлення майстра — лихий шкіряний пояс", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Wicked Leather Belt, @flavor Bears the seal of the Argent Dawn.
[22608] = { "замовлення майстра — рунічні шкіряні штани", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Runic Leather Pants, @flavor Bears the seal of the Argent Dawn.
[22609] = { "замовлення майстра — сяйнополотняні штани", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Brightcloth Pants, @flavor Bears the seal of the Argent Dawn.
[22610] = { "замовлення майстра — сумка з рунічного полотна", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Runecloth Boots, @flavor Bears the seal of the Argent Dawn.
[22611] = { "замовлення майстра — сумка з рунічного полотна", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Runecloth Bag, @flavor Bears the seal of the Argent Dawn.
[22612] = { "замовлення майстра — вбрання з рунічного полотна", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Runecloth Robe, @flavor Bears the seal of the Argent Dawn.
[22613] = { "замовлення майстра — гоблінський саперний заряд", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Goblin Sapper Charge, @flavor Bears the seal of the Argent Dawn.
[22614] = { "замовлення майстра — торієва граната", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Thorium Grenade, @flavor Bears the seal of the Argent Dawn.
[22615] = { "замовлення майстра — гномське бойове курча", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Gnomish Battle Chicken, @flavor Bears the seal of the Argent Dawn.
[22616] = { "замовлення майстра — торієва трубка", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Thorium Tube, @flavor Bears the seal of the Argent Dawn.
[22617] = { "замовлення майстра — величезне зілля мани", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Major Mana Potion, @flavor Bears the seal of the Argent Dawn.
[22618] = { "замовлення майстра — величезне зілля лікування", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Major Healing Potion, @flavor Bears the seal of the Argent Dawn.
[22620] = { "замовлення майстра — велике зілля арканічного захисту", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Greater Arcane Protection Potion, @flavor Bears the seal of the Argent Dawn.
[22621] = { "замовлення майстра — настій скам'яніння", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Flask of Petrification, @flavor Bears the seal of the Argent Dawn.
[22622] = { "замовлення майстра — камнелуский вугор", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Stonescale Eel, @flavor Bears the seal of the Argent Dawn.
[22623] = { "замовлення майстра — риба-броненосець", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Plated Armorfish, @flavor Bears the seal of the Argent Dawn.
[22624] = { "замовлення майстра — блискавковий вугор", flavor="Скріплено печаткою Сріблястого Світанку." }, -- Craftsman's Writ - Lightning Eel, @flavor Bears the seal of the Argent Dawn.
[22630] = { "Атієш, великий посох Вартівника", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 2%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 150.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів всіх членів групи в радіусі 30 м на 33." }, use="Створити портал, що телепортує членів групи, які ним скористалися, до Каражана. (Відновлення 1 хв)" }, -- Atiesh, Greatstaff of the Guardian, @equip Improves your chance to get a critical strike with spells by 2%., @equip Increases damage and healing done by magical spells and effects by up to 150., @equip Increases damage and healing done by magical spells and effects of all party members within 30 yards by up to 33., @use Creates a portal, teleporting group members that use it to Karazhan. (1 Min Cooldown)
[22631] = { "Атієш, великий посох Вартівника", equip={ "Збільшує зцілення від заклинань і ефектів всіх членів групи в радіусі 30 м на 62.", "Збільшує шкоду від заклинань на 120, а зцілення - на 300." }, use="Створити портал, що телепортує членів групи, які ним скористалися, до Каражана. (Відновлення 1 хв)" }, -- Atiesh, Greatstaff of the Guardian, @equip Increases healing done by magical spells and effects of all party members within 30 yards by up to 62., @equip Increases your spell damage by up to 120 and your healing by up to 300., @use Creates a portal, teleporting group members that use it to Karazhan. (1 Min Cooldown)
[22632] = { "Атієш, великий посох Вартівника", equip={ "Відновлює 11 мани кожні 5 сек всім членам групи в радіусі 30 м.", "Збільшує зцілення від заклинань і ефектів на 300.", "Збільшує силу атаки на 420 в подобі кота, ведмедя та лютого ведмедя." }, use="Створити портал, що телепортує членів групи, які ним скористалися, до Каражана. (Відновлення 1 хв)" }, -- Atiesh, Greatstaff of the Guardian, @equip Restores 11 mana per 5 seconds to all party members within 30 yards., @equip Increases healing done by spells and effects by up to 300., @equip +420 Attack Power in Cat, Bear, and Dire Bear forms only., @use Creates a portal, teleporting group members that use it to Karazhan. (1 Min Cooldown)
[22635] = { "захист джунглів", use="Додати на поножі або головний убір чари, що збільшують супротив природі на 10. Не сумується з іншими чарами на предметі." }, -- Savage Guard, @use Permanently adds 10 nature resistance to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[22636] = { "крижаний захист", use="Додати на поножі або головний убір чари, що збільшують супротив кризі на 10. Не сумується з іншими чарами на предметі." }, -- Ice Guard, @use Permanently adds 10 frost resistance to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[22637] = { "первісний ідол Гаккарі", flavor="Всередині вирує древнє зло..." }, -- Primal Hakkari Idol, @flavor An ancient evil stirs within...
[22638] = { "тіньовий захист", use="Додати на поножі або головний убір чари, що збільшують супротив тіні на 10. Не сумується з іншими чарами на предметі." }, -- Shadow Guard, @use Permanently adds 10 shadow resistance to a leg or head slot item. Does not stack with other enchantments for the selected equipment slot.
[22648] = { "досьє Вул'Аші" }, -- Hive'Ashi Dossier
[22649] = { "досьє Вул'Регаля" }, -- Hive'Regal Dossier
[22650] = { "досьє Вул'Зора" }, -- Hive'Zora Dossier
[22652] = { "льодовиковий жилет", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 21." }, -- Glacial Vest, @equip Increases damage and healing done by magical spells and effects by up to 21.
[22654] = { "льодовикові рукавички", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 15." }, -- Glacial Gloves, @equip Increases damage and healing done by magical spells and effects by up to 15.
[22655] = { "льодовикові наручі", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 12." }, -- Glacial Wrists, @equip Increases damage and healing done by magical spells and effects by up to 12.
[22656] = { "Очиститель", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- The Purifier, @equip Improves your chance to get a critical strike by 1%.
[22657] = { "амулет Світанку", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 15." }, -- Amulet of the Dawn, @equip Increases damage and healing done by magical spells and effects by up to 15.
[22658] = { "льодовиковий плащ" }, -- Glacial Cloak
[22659] = { "медальйон Світанку", equip={ "Збільшує силу атаки на 24.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Medallion of the Dawn, @equip +24 Attack Power., @equip Improves your chance to get a critical strike by 1%.
[22661] = { "полярний мундир" }, -- Polar Tunic
[22662] = { "полярні рукавички" }, -- Polar Gloves
[22663] = { "полярні браслети" }, -- Polar Bracers
[22664] = { "кіраса з крижаної луски", equip="Збільшує силу атаки на 40." }, -- Icy Scale Breastplate, @equip +40 Attack Power.
[22665] = { "браслети з крижаної луски", equip="Збільшує силу атаки на 32." }, -- Icy Scale Bracers, @equip +32 Attack Power.
[22666] = { "рукавиці з крижаної луски", equip="Збільшує силу атаки на 22." }, -- Icy Scale Gauntlets, @equip +22 Attack Power.
[22667] = { "браслети надії", equip="Збільшує зцілення від заклинань і ефектів на 18." }, -- Bracers of Hope, @equip Increases healing done by spells and effects by up to 18.
[22668] = { "браслети хитрощів" }, -- Bracers of Subterfuge
[22669] = { "кіраса крижаної гибелі", equip="Збільшує навичку захисту на 8." }, -- Icebane Breastplate, @equip Increased Defense +8.
[22670] = { "рукавиці крижаної гибелі", equip="Збільшує навичку захисту на 5." }, -- Icebane Gauntlets, @equip Increased Defense +5.
[22671] = { "браслети крижаної гибелі", equip="Збільшує навичку захисту на 5." }, -- Icebane Bracers, @equip Increased Defense +5.
[22678] = { "талісман вознесіння", use="Протягом 20 сек 5 заклинань, що наносять шкоду чи зцілюють, збільшать вашу шкоду від заклинань на 40, а зцілення — на 75. Ефект накопичується до 5 разів, а його дія закінчується після 6 заклинань або через 20 секунд. (Відновлення 1 хв)" }, -- Talisman of Ascendance, @use Your next 5 damage or healing spells cast within 20 seconds will grant a bonus of up to 40 damage and up to 75 healing, stacking up to 5 times. Expires after 6 damage or healing spells or 20 seconds, whichever occurs first. (1 Min Cooldown)
[22679] = { "сумка для припасів" }, -- Supply Bag
[22680] = { "перстень рішучості", equip="Збільшує навичку захисту на 5." }, -- Band of Resolution, @equip Increased Defense +5.
[22681] = { "перстень благочестя", equip={ "Збільшує зцілення від заклинань і ефектів на 22.", "Відновлює 4 мани кожні 5 сек." } }, -- Band of Piety, @equip Increases healing done by spells and effects by up to 22., @equip Restores 4 mana per 5 sec.
[22682] = { "морозна руна", use="Поглинає від 1500 до 2500 шкоди від вогню. Триває 1 годину. (Відновлення 3 хв)" }, -- Frozen Rune, @use Absorbs 1500 to 2500 fire damage.  Lasts 1 hour. (3 Min Cooldown)
[22684] = { "викрійка: Льодовикові рукавички", use="Навчає вас пошиттю льодовикових рукавичок." }, -- Pattern: Glacial Gloves, @use Teaches you how to sew Glacial Gloves.
[22685] = { "викрійка: Льодовиковий плащ", use="Навчає вас пошиттю льодовикового плаща." }, -- Pattern: Glacial Cloak, @use Teaches you how to sew a Glacial Cloak.
[22686] = { "викрійка: Льодовиковий жилет", use="Навчає вас пошиттю льодовикового жилета." }, -- Pattern: Glacial Vest, @use Teaches you how to sew Glacial Vest.
[22687] = { "викрійка: Льодовикові наручі", use="Навчає вас пошиттю льодовикових наручів." }, -- Pattern: Glacial Wrists, @use Teaches you how to sew a Glacial Wrists.
[22688] = { "остання надія Верімонда", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 19." }, -- Verimonde's Last Resort, @equip Increases damage and healing done by magical spells and effects by up to 19.
[22689] = { "освячений шкіряний шолом", equip="Збільшує зцілення від заклинань і ефектів на 40." }, -- Sanctified Leather Helm, @equip Increases healing done by spells and effects by up to 40.
[22690] = { "поножі чумного мисливця", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Leggings of the Plague Hunter, @equip Improves your chance to get a critical strike by 1%.
[22692] = { "викрійка: Полярний мундир", use="Навчає вас створювати полярний мундир." }, -- Pattern: Polar Tunic, @use Teaches you how to craft a Polar Tunic.
[22694] = { "викрійка: Полярні рукавички", use="Навчає вас створювати полярні рукавички." }, -- Pattern: Polar Gloves, @use Teaches you how to craft Polar Gloves.
[22695] = { "викрійка: Полярні браслети", use="Навчає вас створювати полярні браслети." }, -- Pattern: Polar Bracers, @use Teaches you how to craft Polar Bracers.
[22696] = { "викрійка: Кіраса з крижаної луски", use="Навчає вас створювати кірасу з крижаної луски." }, -- Pattern: Icy Scale Breastplate, @use Teaches you how to craft an Icy Scale Breastplate.
[22697] = { "викрійка: Рукавиці з крижаної луски", use="Навчає вас створювати рукавиці з крижаної луски." }, -- Pattern: Icy Scale Gauntlets, @use Teaches you how to craft Icy Scale Gauntlets.
[22698] = { "викрійка: Браслети з крижаної луски", use="Навчає вас створювати браслети з крижаної луски." }, -- Pattern: Icy Scale Bracers, @use Teaches you how to craft Icy Scale Bracers.
[22699] = { "поножі крижаної гибелі", equip="Збільшує навичку захисту на 6." }, -- Icebane Leggings, @equip Increased Defense +6.
[22700] = { "льодовикові поножі", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18." }, -- Glacial Leggings, @equip Increases damage and healing done by magical spells and effects by up to 18.
[22701] = { "полярні поножі" }, -- Polar Leggings
[22702] = { "поножі з крижаної луски" }, -- Icy Scale Leggings
[22703] = { "креслення: Кіраса крижаної гибелі", use="Навчає вас створювати кірасу крижаної гибелі." }, -- Plans: Icebane Breastplate, @use Teaches you how to make an Icebane Breastplate.
[22704] = { "креслення: Рукавиці крижаної гибелі", use="Навчає вас створювати рукавиці крижаної гибелі." }, -- Plans: Icebane Gauntlets, @use Teaches you how to make Icebane Gauntlets.
[22705] = { "креслення: Браслети крижаної гибелі", use="Навчає вас створювати браслети крижаної гибелі." }, -- Plans: Icebane Bracers, @use Teaches you how to make Icebane Bracers.
[22707] = { "крижана хватка Рамаладні", flavor="На персні викарбувано: Рамаладні" }, -- Ramaladni's Icy Grasp, @flavor Inscribed on the band: Ramaladni
[22708] = { "доля Рамаладні", flavor="На персні викарбувано: Рамаладні" }, -- Fate of Ramaladni, @flavor Inscribed on the band: Ramaladni
[22711] = { "плащ поклонників Гаккарі", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 23." }, -- Cloak of the Hakkari Worshipers, @equip Increases damage and healing done by magical spells and effects by up to 23.
[22712] = { "міць племені", equip="Збільшує силу атаки на 28." }, -- Might of the Tribe, @equip +28 Attack Power.
[22713] = { "зуліанський обрядовий скіпетр", equip={ "Збільшує зцілення від заклинань і ефектів на 26.", "Відновлює 4 мани кожні 5 сек." } }, -- Zulian Scepter of Rites, @equip Increases healing done by spells and effects by up to 26., @equip Restores 4 mana per 5 sec.
[22714] = { "жертовні рукавиці", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Sacrificial Gauntlets, @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to hit by 1%.
[22715] = { "рукавиці змучених", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Gloves of the Tormented, @equip Improves your chance to get a critical strike by 1%.
[22716] = { "пояс непочатої сили", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 29." }, -- Belt of Untapped Power, @equip Increases damage and healing done by magical spells and effects by up to 29.
[22718] = { "залита кров'ю маска", equip="Збільшує ваш шанс нанесення удару на 2%." }, -- Blooddrenched Mask, @equip Improves your chance to hit by 2%.
[22719] = { "довідник Омаріона" }, -- Omarion's Handbook
[22720] = { "зуліанський головний убір", equip="Збільшує зцілення від заклинань і ефектів на 55." }, -- Zulian Headdress, @equip Increases healing done by spells and effects by up to 55.
[22721] = { "перстень служіння", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 23." }, -- Band of Servitude, @equip Increases damage and healing done by magical spells and effects by up to 23.
[22722] = { "печатка берсерка Ґурубаші", equip="Збільшує силу атаки на 40." }, -- Seal of the Gurubashi Berserker, @equip +40 Attack Power.
[22723] = { "лист від Архіваріуса", flavor="Лист скріплює непорушна печатка Срібного Світанку." }, -- A Letter from the Keeper of the Rolls, @flavor The indelible mark of the Argent Dawn is pressed clearly into the wax of the seal.
[22725] = { "перстень Кенарія" }, -- Band of Cenarius
[22726] = { "уламок Атієша", use="Об'єднати 40 уламків Атієша, щоб сформувати каркас Атієша.", flavor="Уламок Атієша, великого посоха Вартівника." }, -- Splinter of Atiesh, @use Combines 40 Splinters of Atiesh to form the Frame of Atiesh., @flavor A splinter of Atiesh, Greatstaff of the Guardian.
[22727] = { "каркас Атієша", flavor="Не вистачає верхів'я та основи." }, -- Frame of Atiesh, @flavor The head and base are missing.
[22733] = { "верхів'я Атієша" }, -- Staff Head of Atiesh
[22734] = { "основа Атієша" }, -- Base of Atiesh
[22739] = { "фоліант поліморфії: черепаха", use="Навчає поліморфії в черепаху." }, -- Tome of Polymorph: Turtle, @use Teaches Polymorph: Turtle.
[22742] = { "сорочка Кривавого Вітрила" }, -- Bloodsail Shirt
[22743] = { "пояс Кривавого Вітрила" }, -- Bloodsail Sash
[22744] = { "чоботи Кривавого Вітрила" }, -- Bloodsail Boots
[22745] = { "штани Кривавого Вітрила" }, -- Bloodsail Pants
[22746] = { "піратська форма" }, -- Buccaneer's Uniform
[22891] = { "гримуар охоронця від тіні IV", use="Навчає закляттю \"Охоронець від тіні\" (Ранг 4)." }, -- Grimoire of Shadow Ward IV, @use Teaches Shadow Ward (Rank 4).
[22892] = { "тьмяний некротичний камінь" }, -- Dim Necrotic Stone
[22895] = { "начаклований рулет з корицею", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Cinnamon Roll, @use Restores 3180 health over 30 sec.  Must remain seated while eating.
[22930] = { "закривавлений конверт" }, -- A Bloodstained Envelope
[22932] = { "порваний лист" }, -- A Torn Letter
[22940] = { "напліччя крижаної гибелі", equip="Збільшує навичку захисту на 7." }, -- Icebane Pauldrons, @equip Increased Defense +7.
[22941] = { "полярні наплічники" }, -- Polar Shoulder Pads
[22944] = { "зім'яте послання" }, -- A Crumpled Missive
[22945] = { "потерта записка" }, -- A Careworn Note
[22946] = { "пошарпана сторінка" }, -- A Ragged Page
[22948] = { "вкритий брудом документ" }, -- A Smudged Document
[22949] = { "тріснутий некротичний кристал" }, -- Cracked Necrotic Crystal
[22950] = { "тьмяний некротичний кристал" }, -- Faint Necrotic Crystal
[22967] = { "наплічники з крижаної луски" }, -- Icy Scale Spaulders
[22968] = { "льодовикові наплічники", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16." }, -- Glacial Mantle, @equip Increases damage and healing done by magical spells and effects by up to 16.
[22970] = { "закривавлений конверт" }, -- A Bloodstained Envelope
[22972] = { "потерта записка" }, -- A Careworn Note
[22975] = { "вкритий брудом документ" }, -- A Smudged Document
[22977] = { "порваний лист" }, -- A Torn Letter
[22999] = { "гербова накидка Сріблястого Світанку" }, -- Tabard of the Argent Dawn
[23002] = { "коробка з черепашкою", use="Клацніть правою кнопкою миші, щоб викликати і відпустити черепашку Шустрика." }, -- Turtle Box, @use Right Click to summon and dismiss Speedy the turtle.
[23007] = { "нашийник поросяти", use="Клацніть правою кнопкою миші, щоб викликати і відпустити пана Хрюка." }, -- Piglet's Collar, @use Right Click to summon and dismiss Mr. Wiggles the pig.
[23008] = { "запечатані результати дослідження" }, -- Sealed Research Report
[23010] = { "запечатані результати дослідження" }, -- Sealed Research Report
[23011] = { "запечатані результати дослідження" }, -- Sealed Research Report
[23012] = { "запечатані результати дослідження" }, -- Sealed Research Report
[23013] = { "запечатані результати дослідження" }, -- Sealed Research Report
[23015] = { "клітка зі щуром", use="Клацніть правою кнопкою миші, щоб викликати і відпустити щура Вусика." }, -- Rat Cage, @use Right Click to summon and dismiss Whiskers the rat.
[23016] = { "запечатані результати дослідження" }, -- Sealed Research Report
[23019] = { "шолом крижаної гибелі", equip="Збільшує навичку захисту на 8." }, -- Icebane Helmet, @equip Increased Defense +8.
[23020] = { "полярний шолом" }, -- Polar Helmet
[23022] = { "розплата скнари", flavor="Мішок з 5 золотими монетами. Для тих, хто любить розповідати дітям, що Діда Зими не існує..." }, -- Curmudgeon's Payoff, @flavor A bag of 5 gold.  For those who like telling children there's no Great Father Winter...
[23024] = { "підготовлені документи про польову службу" }, -- Prepared Field Duty Papers
[23032] = { "льодовиковий головний убір", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18." }, -- Glacial Headdress, @equip Increases damage and healing done by magical spells and effects by up to 18.
[23033] = { "койф з крижаної луски" }, -- Icy Scale Coif
[23055] = { "слово відлиги", use="Використати на морозній руні, щоб розтопити її." }, -- Word of Thawing, @use Use on a Frozen Rune to melt it free.
[23059] = { "перстень безстрашності", equip={ "Збільшує ваш шанс ухилитися від атаки на 1%.", "Збільшує навичку захисту на 10." } }, -- Ring of the Dreadnaught, @equip Increases your chance to dodge an attack by 1%., @equip Increased Defense +10.
[23060] = { "перстень кістяної коси", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Bonescythe Ring, @equip Improves your chance to hit by 1%.
[23061] = { "перстень віри", equip="Збільшує зцілення від заклинань і ефектів на 55." }, -- Ring of Faith, @equip Increases healing done by spells and effects by up to 55.
[23062] = { "перстень крижаного вогню", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 30.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Frostfire Ring, @equip Increases damage and healing done by magical spells and effects by up to 30., @equip Improves your chance to get a critical strike with spells by 1%.
[23063] = { "перстень чумного серця", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 29." }, -- Plagueheart Ring, @equip Increases damage and healing done by magical spells and effects by up to 29.
[23064] = { "перстень сноходця", equip="Збільшує зцілення від заклинань і ефектів на 37." }, -- Ring of the Dreamwalker, @equip Increases healing done by spells and effects by up to 37.
[23065] = { "перстень Землетрощителя", equip={ "Збільшує зцілення від заклинань і ефектів на 37.", "Відновлює 6 мани кожні 5 сек." } }, -- Ring of the Earthshatterer, @equip Increases healing done by spells and effects by up to 37., @equip Restores 6 mana per 5 sec.
[23066] = { "перстень спокути", equip={ "Збільшує зцілення від заклинань і ефектів на 37.", "Відновлює 6 мани кожні 5 сек." } }, -- Ring of Redemption, @equip Increases healing done by spells and effects by up to 37., @equip Restores 6 mana per 5 sec.
[23067] = { "перстень склепного ловця", equip="Відновлює 6 мани кожні 5 сек." }, -- Ring of the Cryptstalker, @equip Restores 6 mana per 5 sec.
[23078] = { "рукавиці знищення невмерлих", equip="Збільшує силу атаки на 60 в бою з невмерлими." }, -- Gauntlets of Undead Slaying, @equip +60 Attack Power when fighting Undead.
[23081] = { "ручні пов'язки знищення невмерлих", equip="Збільшує силу атаки на 60 в бою з невмерлими." }, -- Handwraps of Undead Slaying, @equip +60 Attack Power when fighting Undead.
[23082] = { "бойові рукавиці знищення невмерлих", equip="Збільшує силу атаки на 60 в бою з невмерлими." }, -- Handguards of Undead Slaying, @equip +60 Attack Power when fighting Undead.
[23083] = { "захоплене полум'я", use="Викликати чи відпустити дух літа." }, -- Captured Flame, @use Summons or dismisses a Spirit of Summer.
[23084] = { "рукавички знищення невмерлих", equip="Збільшує шкоду від магічних заклинань і ефектів в бою з невмерлими на 35." }, -- Gloves of Undead Cleansing, @equip Increases damage done to Undead by magical spells and effects by up to 35.
[23085] = { "мантія знищення невмерлих", equip="Збільшує шкоду від магічних заклинань і ефектів в бою з невмерлими на 48." }, -- Robe of Undead Cleansing, @equip Increases damage done to Undead by magical spells and effects by up to 48.
[23087] = { "кіраса знищення невмерлих", equip="Збільшує силу атаки на 81 в бою з невмерлими." }, -- Breastplate of Undead Slaying, @equip +81 Attack Power when fighting Undead.
[23088] = { "нагрудник знищення невмерлих", equip="Збільшує силу атаки на 81 в бою з невмерлими." }, -- Chestguard of Undead Slaying, @equip +81 Attack Power when fighting Undead.
[23089] = { "мундир знищення невмерлих", equip="Збільшує силу атаки на 81 в бою з невмерлими." }, -- Tunic of Undead Slaying, @equip +81 Attack Power when fighting Undead.
[23090] = { "поручі знищення невмерлих", equip="Збільшує силу атаки на 45 в бою з невмерлими." }, -- Bracers of Undead Slaying, @equip +45 Attack Power when fighting Undead.
[23091] = { "браслети знищення невмерлих", equip="Збільшує шкоду від магічних заклинань і ефектів в бою з невмерлими на 26." }, -- Bracers of Undead Cleansing, @equip Increases damage done to Undead by magical spells and effects by up to 26.
[23092] = { "наручі знищення невмерлих", equip="Збільшує силу атаки на 45 в бою з невмерлими." }, -- Wristguards of Undead Slaying, @equip +45 Attack Power when fighting Undead.
[23093] = { "пов'язки знищення невмерлих", equip="Збільшує силу атаки на 45 в бою з невмерлими." }, -- Wristwraps of Undead Slaying, @equip +45 Attack Power when fighting Undead.
[23122] = { "освячений точильний камінь", use="При нанесенні на зброю збільшує шкоду від магічних заклинань на 24 в бою проти невмерлих. Триває 30 хвилин." }, -- Consecrated Sharpening Stone, @use While applied to target weapon it increases attack power against undead by 100. Lasts for 1 hour.
[23123] = { "благословенна чарівна олія", use="При нанесенні на зброю збільшує шкоду від магічних заклинань на 24. Триває 30 хвилин." }, -- Blessed Wizard Oil, @use While applied to target weapon it increases spell damage against undead by up to 60. Lasts for 1 hour.
[23160] = { "хліб дружби", use="Відновлює 2148 здоров'я протягом 30 сек. Потрібно залишатися в сидячому положенні під час їжі." }, -- Friendship Bread, @use Restores 2148 health over 30 sec.  Must remain seated while eating.
[23161] = { "свіжовичавлений лимонад", use="Відновлює 2934 мани протягом 30 сек. Потрібно залишатися в сидячому положенні під час пиття." }, -- Freshly-Squeezed Lemonade, @use Restores 2934 mana over 30 sec.  Must remain seated while drinking.
[23179] = { "полум'я Орґріммара" }, -- Flame of Orgrimmar
[23180] = { "полум'я Громового Бескиду" }, -- Flame of Thunder Bluff
[23181] = { "полум'я Підмістя" }, -- Flame of the Undercity
[23182] = { "полум'я Штормовію" }, -- Flame of Stormwind
[23183] = { "полум'я Залізогарта" }, -- Flame of Ironforge
[23184] = { "полум'я Дарнаса" }, -- Flame of Darnassus
[23194] = { "менший знак Світанку", use="Збільшує витривалість протягом 1 години." }, -- Lesser Mark of the Dawn, @use Increases Stamina for 1 hour.
[23195] = { "знак Світанку", use="Збільшує витривалість протягом 1 години." }, -- Mark of the Dawn, @use Increases Stamina for 1 hour.
[23196] = { "більший знак Світанку", use="Збільшує витривалість протягом 1 години." }, -- Greater Mark of the Dawn, @use Increases Stamina for 1 hour.
[23206] = { "знак чемпіона", equip="Збільшує силу атаки на 150 в бою з невмерлими та девонами. Також дозволяє отримувати камені Скари для Сріблястого Світанку." }, -- Mark of the Champion, @equip +150 Attack Power when fighting Undead and Demons.  It also allows the acquisition of Scourgestones on behalf of the Argent Dawn.
[23207] = { "знак чемпіона", equip="Збільшує шкоду від магічних заклинань і ефектів в бою з невмерлими та девонами на 85. Також дозволяє отримувати камені Скари для Сріблястого Світанку." }, -- Mark of the Champion, @equip Increases damage done to Undead and Demons by magical spells and effects by up to 85.  It also allows the acquisition of Scourgestones on behalf of the Argent Dawn.
[23211] = { "смажений зефір", use="Збільшує зцілення від магічних заклинань на 44 протягом 1 години.", flavor="Липкий, розплавлений, смачний." }, -- Toasted Smorc, @use Increases healing done by magical spells by up to 44 for 1 hour., @flavor Gooey, melty, good.
[23246] = { "вогняне фестивальне пиво", use="Запалює подих!" }, -- Fiery Festival Brew, @use Sets your breath aflame!
[23247] = { "палаючий цвіт", use="Кинути у вогнище вогняного фестивалю!" }, -- Burning Blossom, @use Toss into a Fire Festival Bonfire!
[23250] = { "призматична мушля" }, -- Prismatic Shell
[23323] = { "корона вогняного фестивалю" }, -- Crown of the Fire Festival
[23324] = { "наплечі вогняного фестивалю" }, -- Mantle of the Fire Festival
[23326] = { "літня ковбаска", use="Збільшує шкоду від заклинань на 23 протягом 1 години." }, -- Midsummer Sausage, @use Increases damage done from spells by up to 23 for 1 hour.
[23327] = { "підсмажена на вогні булочка", use="Збільшує ваш шанс нанесення удару на 2% протягом 1 години." }, -- Fire-toasted Bun, @use Improves your chance to hit by 2% for 1 hour.
[23379] = { "попелясті браслети", use="Викликати попелястого елементаля, що захищатиме вас протягом 10 хв. (Відновлення 10 хв)" }, -- Cinder Bracers, @use Summons a Cinder Elemental that will protect you for 10 min. (10 Min Cooldown)
[23435] = { "бузиновий пиріг", use="Збільшує навичку захисту на 13 протягом 1 години." }, -- Elderberry Pie, @use Increases Defense by 13 for 1 hour.
[23705] = { "гербова накидка полум'я" }, -- Tabard of Flame
[184937] = { "хронозаміщувач благословень", use="Змінює тканину часу, призупиняючи благословення драконоборця, Грізного Молота, Зул'Ґуруба та Сквернолісся." }, -- Chronoboon Displacer, @use Alters the fabric of time, suspending beneficial world effects from dragonslaying, Dire Maul, Zul'Gurub, and Felwood. (1 Hour Cooldown)
[184938] = { "заряджений хронозаміщувач благословень", use="Відновити призупинені благословення." }, -- Supercharged Chronoboon Displacer, @use Restores your suspended world effects.
[190179] = { "серце Авеліни" }, -- Avelina's Heart
[190180] = { "серце Айзека" }, -- Isaac's Heart
[190181] = { "серця закоханих", use="Викликати інкуба в колі виклику. (Відновлення 3 хв)" }, -- Lovers' Hearts, @use Call forth an incubus using the summoning circle. (3 Min Cooldown)
[190186] = { "дерев'яна статуетка", use="Викликати інкуба в колі виклику. (Відновлення 3 хв)", flavor="На підставці є напис: Я вдома." }, -- Wooden Figurine, @use Call forth an incubus using the summoning circle. (3 Min Cooldown), @flavor An inscription on the base reads: I'm home.
[190187] = { "вицвіла хустка", use="Викликати інкуба в колі виклику. (Відновлення 3 хв)", flavor="На тканині вишиті витончені візерунки, а також літери \"M+K\"." }, -- Withered Scarf, @use Call forth an incubus using the summoning circle. (3 Min Cooldown), @flavor Delicate patterns are embroidered into the cloth, along with the letters 'M+K'.
[190232] = { "вицвіла хустка", flavor="На тканині вишиті витончені візерунки, а також літери \"M+K\"." }, -- Withered Scarf, @flavor Delicate patterns are embroidered into the cloth, along with the letters 'M+K'.
[190307] = { "незапалений смолоскип", flavor="Знаєте, що б дуже пасувало цьому смолоскипу? Вогонь." }, -- Unlit Torch, @flavor You know what would look really good on this torch? Fire.
[190308] = { "палаючий смолоскип", use="Кинути смолоскип у ціль, щоб підпалити її.", flavor="Стане в нагоді, щоб відволікти когось пожежею!" }, -- Burning Torch, @use Tosses a torch at the target location, starting a fire., @flavor Useful for fiery distractions!
[190309] = { "дерев'яна статуетка", flavor="На підставці є напис: Я вдома." }, -- Wooden Figurine, @flavor An inscription on the base reads: I'm home.
}
