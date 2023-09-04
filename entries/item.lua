local _, addonTable = ...
addonTable.item = {

-- [id] = {
--     [ref]    = ID (optional),
--     [1]      = title (optional),
--     [desc]   = description (optional),
--     [equip]  = text for "Equip: ..." (green color)
--     [hit]    = text for "Chance on hit: ..." (green color)
--     [use]    = text for "Use: ..." (green color)
--     [flavor] = quoted text (golden color)
--     --------
--     note: value can be string or table (multiple strings)
-- }

[56] = { "халат підмайстра" }, -- Apprentice's Robe
[60] = { "багатошаровий мундир" }, -- Layered Tunic
[80] = { "м'які хутряні черевики" }, -- Soft Fur-lined Shoes
[117] = { "жорстка солонина", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2} sec" }, -- Tough Jerky, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[118] = { "крихітне зілля лікування", use="Відновлює від {1} до {2} здоров'я. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Minor Healing Potion, @use Restores 70 to 90 health. (2 Min Cooldown)
[159] = { "освіжаюча джерельна вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Refreshing Spring Water, @use Restores 151.2 mana over 18 sec.  Must remain seated while drinking.
[182] = { "голова Ґарріка" }, -- Garrick's Head
[710] = { "наручі народного ополчення" }, -- Bracers of the People's Militia
[723] = { "печінка іклоштрика" }, -- Goretusk Liver
[724] = { "пиріг з печінки іклоштрика", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв.#Restores {1} health over {2}" }, -- Goretusk Liver Pie, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[725] = { "лапа гнола" }, -- Gnoll Paw
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
[765] = { "срібнолист" }, -- Silverleaf
[769] = { "шматок м'яса кнура" }, -- Chunk of Boar Meat
[771] = { "відколотий бивень кнура" }, -- Chipped Boar Tusk
[772] = { "велика свічка" }, -- Large Candle
[773] = { "золотий пил" }, -- Gold Dust
[774] = { "малахіт" }, -- Malachite
[779] = { "блискуча мушля" }, -- Shiny Seashell
[780] = { "порваний плавник мурлока" }, -- Torn Murloc Fin
[782] = { "розфарбований браслет гнола" }, -- Painted Gnoll Armband
[783] = { "легка шкура" }, -- Light Hide
[785] = { "маговелич" }, -- Mageroyal
[805] = { "маленький червоний мішечок" }, -- Small Red Pouch
[814] = { "фляга з мастилом" }, -- Flask of Oil
[818] = { "тигрове око" }, -- Tigerseye
[829] = { "червона шкіряна бандана" }, -- Red Leather Bandana
[841] = { "кишеньковий годинник Хмуроброва" }, -- Furlbrow's Pocket Watch
[858] = { "мале зілля лікування", ref=118 }, -- Lesser Healing Potion
[884] = { "ребро гуля" }, -- Ghoul Rib
[889] = { "вкритий пилом невідправлений лист", flavor="Давній, вкритий пилом, так і не відправлений лист." }, -- A Dusty Unsent Letter, @flavor This dusty letter from long ago was never sent.
[910] = { "недоставлений лист", flavor="Потертий і старий, цей лист так не доставили." }, -- An Undelivered Letter, @flavor Weathered and old, this letter was never delivered.
[915] = { "червона шовкова бандана" }, -- Red Silk Bandana
[916] = { "вирвана сторінка щоденника", flavor="Залишилася лише нижня половина сторінки щоденника." }, -- A Torn Journal Page, @flavor Only the bottom half of this journal page remains.
[918] = { "сумка зі спотвореної шкіри" }, -- Deviate Hide Pack
[921] = { "вицвіла сторінка щоденника", flavor="Хоча більша частина тексту давно вицвіла, деякі слова все ще можна прочитати." }, -- A Faded Journal Page, @flavor Although most of the text is long faded, some words can still be read.
[929] = { "зілля лікування", ref=118 }, -- Healing Potion
[938] = { "брудні сторінки щоденника", flavor="Хоча сторінки вкриті брудом, деякі слова можна прочитати." }, -- Muddy Journal Pages, @flavor Although the pages are covered in mud, some words can be read.
[939] = { "закривавлена сторінка щоденника", flavor="Крізь кров ще можна розгледіти кілька слів." }, -- A Bloodstained Journal Page, @flavor Through thick blood a few words still remain legible.
[954] = { "сувій сили", use="Збільшує силу цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Strength, @use Increases the target's Strength by 5 for 30 min.
[955] = { "сувій інтелекту", use="Збільшує інтелект цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Intellect, @use Increases the target's Intellect by 4 for 30 min.
[957] = { "пакунок від Вільяма", flavor="До нього прикріплена записка." }, -- William's Shipment, @flavor There is a note attached.
[961] = { "цілюща трава", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Healing Herb, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[962] = { "рулет зі свинячої підчеревини" }, -- Pork Belly Pie
[981] = { "намисто Берніс" }, -- Bernice's Necklace
[983] = { "червоний лляний пояс" }, -- Red Linen Sash
[1006] = { "латунний нашийник", flavor="Принцеса — перше місце" }, -- Brass Collar, @flavor Princess - First Prize
[1008] = { "старий меч" }, -- Well-used Sword
[1013] = { "залізна заклепка" }, -- Iron Rivet
[1015] = { "пісний вовчий бік" }, -- Lean Wolf Flank
[1017] = { "пряний кебаб з вовчатини", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Seasoned Wolf Kabob, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[1019] = { "червона лляна бандана" }, -- Red Linen Bandana
[1075] = { "підвіска Тіньошкурих" }, -- Shadowhide Pendant
[1080] = { "жорстке м'ясо кондора" }, -- Tough Condor Meat
[1081] = { "хрумке павуче м'ясо" }, -- Crisp Spider Meat
[1082] = { "Багрянокрязький гуляш", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Redridge Goulash, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[1083] = { "гліф Азори" }, -- Glyph of Azora
[1113] = { "начаклована паляниця", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Bread, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[1114] = { "начаклована житня хлібина", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Rye, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[1116] = { "перстень з чистого срібла" }, -- Ring of Pure Silver
[1127] = { "вибуховий пакет", use="Створює стовп вогню, що завдає всім ворогам в зоні дії від 55 до 71 шкоди від вогню та додатково 48 шкоди від вогню протягом 8 сек. (Відновлення 1 хв)" }, -- Flash Bundle, @use Calls down a pillar of fire, burning all enemies within the area for 55 to 71 Fire damage and an additional 48 Fire damage over 8 sec. (1 Min Cooldown)
[1129] = { "ікло гуля" }, -- Ghoul Fang
[1130] = { "флакон павучої отрути" }, -- Vial of Spider Venom
[1131] = { "тотем шкоди", equip="Шанс завдати ворогу від 75 до 125 шкоди від тіні при отриманні удару в бою. (Імовірність: 1%)" }, -- Totem of Infliction, @equip When struck in combat has a 1% chance of inflicting 75 to 125 Shadow damage to the attacker. (Proc chance: 1%)
[1154] = { "пояс народного ополчення" }, -- Belt of the People's Militia
[1158] = { "міцна металева булава" }, -- Solid Metal Club
[1159] = { "кийок повстанців" }, -- Militia Quarterstaff
[1161] = { "короткий меч повстанців" }, -- Militia Shortsword
[1171] = { "добре прошитий халат" }, -- Well-stitched Robe
[1172] = { "смолоскип Сивенка" }, -- Grayson's Torch
[1173] = { "вицвілі черевики" }, -- Weather-worn Boots
[1177] = { "масло Олафа", use="Підвищує показник броні на 50 на 1 год." }, -- Oil of Olaf, @use Increases armor by 50 for 1 hour.
[1178] = { "вибухова ракета", use="Завдає від 28 до 32 шкоди вогнем у радіусі 3 м. (Відновлення 1 хв)" }, -- Explosive Rocket, @use Inflicts 28 to 32 Fire damage in a 3 yard radius. (1 Min Cooldown)
[1179] = { "крижане молоко", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Ice Cold Milk, @use Restores 436.8 mana over 21 sec.  Must remain seated while drinking.
[1180] = { "сувій витривалості", use="Збільшує витривалість цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Stamina, @use Increases the target's Stamina by 4 for 30 min.
[1181] = { "сувій духу", use="Збільшує дух цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Spirit, @use Increases the target's Spirit by 3 for 30 min.
[1182] = { "наручі з латунними вставками" }, -- Brass-studded Bracers
[1183] = { "еластичні браслети" }, -- Elastic Wristguards
[1191] = { "мішечок із кольоровими кульками", use="Знижує ймовірність влучання ціллю на 25% на 10 сек. (Відновлення 1 хв)" }, -- Bag of Marbles, @use Decreases target's chance to hit by 25% for 10 sec. (1 Min Cooldown)
[1205] = { "динний сік", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Melon Juice, @use Restores 835.2 mana over 24 sec.  Must remain seated while drinking.
[1206] = { "моховий агат" }, -- Moss Agate
[1208] = { "любовний лист Мейбелл" }, -- Maybell's Love Letter
[1210] = { "тінекамінь" }, -- Shadowgem
[1221] = { "підчеревна луска дракончика" }, -- Underbelly Whelp Scale
[1252] = { "записка бабці Кам'янопільської" }, -- Gramma Stonefield's Note
[1254] = { "менший камінь вогню", equip={ "Зачаровує зброю в основній руці вогнем, надаючи кожній атаці ймовірність завдати від 25 до 35 додаткової шкоди від вогню.", "Збільшує шкоду від заклинань і ефектів вогню на 10." } }, -- Lesser Firestone, @equip Enchants the main hand weapon with fire, granting each attack a chance to deal 25 to 35 additional fire damage., @equip Increases damage done by Fire spells and effects by up to 10.
[1256] = { "стебло кришталевої водорості" }, -- Crystal Kelp Frond
[1257] = { "відвар невидимості" }, -- Invisibility Liquor
[1260] = { "голова Таріл'зуна" }, -- Tharil'zun's Head
[1261] = { "опівнічна сфера" }, -- Midnight Orb
[1262] = { "бочечка громузвару", use="Збільшує витривалість на 3." }, -- Keg of Thunderbrew, @use Increases Stamina by 3.
[1270] = { "тонкотканий плащ" }, -- Finely Woven Cloak
[1273] = { "кольчуга лісу" }, -- Forest Chain
[1274] = { "хміль" }, -- Hops
[1275] = { "плетений нагрудник помічника" }, -- Deputy Chain Coat
[1276] = { "загартований вогнем баклер" }, -- Fire Hardened Buckler
[1282] = { "іскристий койф" }, -- Sparkmetal Coif
[1283] = { "записка Вернера" }, -- Verner's Note
[1284] = { "ящик з підковами", flavor="До ящика прикріплена записка." }, -- Crate of Horseshoes, @flavor There's a note attached to this crate.
[1293] = { "звіт Приозер'я", flavor="Звіт, написаний війтом Соломоном, містить відомості про останні події в Багрянокряжжі." }, -- The State of Lakeshire, @flavor Written by Magistrate Solomon, this report details the events unfolding in Redridge.
[1294] = { "відповідь генерала", flavor="Відповідь генерала Марка Джонатана на прохання війта Соломона про допомогу." }, -- The General's Response, @flavor General Marcus Jonathan's response to Magistrate Solomon's plea for help.
[1302] = { "рукавиці з чорного дракончика" }, -- Black Whelp Gloves
[1303] = { "рукавиці мостобудівника" }, -- Bridgeworker's Gloves
[1304] = { "рукавички вершника" }, -- Riding Gloves
[1306] = { "наручі вовчої гриви" }, -- Wolfmane Wristguards
[1309] = { "інструменти Ослоу" }, -- Oslow's Toolbox
[1310] = { "штани коваля" }, -- Smith's Trousers
[1317] = { "міцний посох з кореня" }, -- Hardened Root Staff
[1319] = { "перстень залізної волі" }, -- Ring of Iron Will
[1322] = { "риб'ячий жир", use="Збільшує швидкість вашої атаки на 10% на 30 сек. (Відновлення 2 хв)" }, -- Fishliver Oil, @use Increases your attack speed by 10% for 30 sec. (2 Min Cooldown)
[1325] = { "букет нарцисів" }, -- Daffodil Bouquet
[1326] = { "соте з сонцериби", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Sauteed Sunfish, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[1327] = { "записка Вайлі", flavor="Записка, наспіх написана Вайлі Чорним для Ґріана Міцнокрива." }, -- Wiley's Note, @flavor A hastily written note written by Wiley the Black for Gryan Stoutmantle.
[1349] = { "ящик Абекромбі", flavor="Цей великий ящик щільно закритий, але з нього тхне мертвечиною." }, -- Abercrombie's Crate, @flavor This large crate is sealed tight, but it reeks of dead things.
[1353] = { "звіт Гича", flavor="Звіт Гича щодо гільдії Каменярів для Ґріана Міцнокрива." }, -- Shaw's Report, @flavor Shaw's report on the Stonemason Guild for Gryan Stoutmantle.
[1357] = { "карта скарбів капітана Сандера", flavor="Намоклий пергамент ось-ось розпадеться." }, -- Captain Sander's Treasure Map, @flavor The waterlogged parchment is about to disintegrate.
[1358] = { "підказка до скарбів Сандера", flavor="Цей рваний шматок пергаменту вкритий каракулями." }, -- A Clue to Sander's Treasure, @flavor This torn piece of parchment contains scribbled writing.
[1359] = { "рукавички з тисненням лева" }, -- Lion-stamped Gloves
[1360] = { "кольчужні рукавиці Штормовію" }, -- Stormwind Chain Gloves
[1361] = { "ще одна підказка до скарбів Сандера", flavor="Цей рваний шматок пергаменту вкритий каракулями." }, -- Another Clue to Sander's Treasure, @flavor This torn piece of parchment contains scribbled writing.
[1362] = { "остання підказка до скарбів Сандера", flavor="Цей рваний шматок пергаменту вкритий каракулями." }, -- Final Clue to Sander's Treasure, @flavor This torn piece of parchment contains scribbled writing.
[1381] = { "таємниче повідомлення", flavor="Ця вкрита кіптявою записка містить якийсь загадковий текст." }, -- A Mysterious Message, @flavor This soot-covered note contains some cryptic text.
[1382] = { "кам'яна булава" }, -- Rock Mace
[1383] = { "кам'яний томагавк" }, -- Stone Tomahawk
[1386] = { "сокира шиподерева" }, -- Thistlewood Axe
[1407] = { "прохання Соломона до Західного краю" }, -- Solomon's Plea to Westfall
[1408] = { "відповідь Міцнокрива Соломону" }, -- Stoutmantle's Response to Solomon
[1409] = { "прохання Соломона до Темнодолу" }, -- Solomon's Plea to Darkshire
[1410] = { "відповідь Чорнобривого Соломону" }, -- Ebonlocke's Response to Solomon
[1413] = { "слабкий меч" }, -- Feeble Sword
[1422] = { "ношені шкіряні рукавиці" }, -- Worn Leather Gloves
[1429] = { "клаптевий плащ" }, -- Patchwork Cloak
[1434] = { "сяюча воскова паличка", use="Зменшує броню цілі на 50 на 30 сек. Поки діє ефект, ціль не може стати непомітною чи невидимою. (Відновлення 1 хв)" }, -- Glowing Wax Stick, @use Decrease the armor of the target by 50 for 30 sec.  While affected, the target cannot stealth or turn invisible. (1 Min Cooldown)
[1450] = { "зілля палкості", use="Збільшує силу на {1} та завдає {2} пошкодження вам кожні {3} с протягом {4} хв.#by {1} and does {2} damage to you every {3} sec for {4} min" }, -- Potion of Fervor, @use Increases Strength by 14 and does 15 damage to you every 15 sec for 1 min. (2 Min Cooldown)
[1451] = { "пляшка соку зомбі" }, -- Bottle of Zombie Juice
[1453] = { "примарний гребінець" }, -- Spectral Comb
[1467] = { "плямиста сонцериба" }, -- Spotted Sunfish
[1468] = { "плавець мурлока" }, -- Murloc Fin
[1476] = { "переламана лапка павука" }, -- Snapped Spider Limb
[1477] = { "сувій спритності II", ref=3012 }, -- Scroll of Agility II
[1478] = { "сувій захисту II", ref=3013 }, -- Scroll of Protection II
[1479] = { "кухонні рукавиці Сальми" }, -- Salma's Oven Mitts
[1480] = { "кулак народного ополчення" }, -- Fist of the People's Militia
[1482] = { "тінеікло", hit="Запускає у ворога заряд тіні, що завдає 30 шкоди від тіні." }, -- Shadowfang, @hit Sends a shadowy bolt at the enemy causing 30 Shadow damage.
[1487] = { "начаклований цільнозерновий хліб", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Pumpernickel, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.
[1518] = { "гребінець з волоссям привида" }, -- Ghost Hair Comb
[1528] = { "жменя вівса" }, -- Handful of Oats
[1529] = { "нефрит" }, -- Jade
[1537] = { "мішок з-під корму старенької Білявки" }, -- Old Blanchy's Feed Pouch
[1547] = { "щит віри" }, -- Shield of the Faith
[1557] = { "баклер морів" }, -- Buckler of the Seas
[1561] = { "жнивальне вбрання" }, -- Harvester's Robe
[1566] = { "лезо народного ополчення" }, -- Edge of the People's Militia
[1596] = { "нитка з волосся привида" }, -- Ghost Hair Thread
[1598] = { "квітка гнилі" }, -- Rot Blossom
[1637] = { "лист до Елло" }, -- Letter to Ello
[1656] = { "перекладений лист" }, -- Translated Letter
[1705] = { "малий місячний камінь" }, -- Lesser Moonstone
[1708] = { "солодкий нектар", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Sweet Nectar, @use Restores 1344.6 mana over 27 sec.  Must remain seated while drinking.
[1710] = { "велике зілля лікування", ref=118 }, -- Greater Healing Potion
[1711] = { "сувій витривалості II", ref=1180 }, -- Scroll of Stamina II
[1712] = { "сувій духу II", ref=1181 }, -- Scroll of Spirit II
[1875] = { "значок Лютополоха", flavor="Десятник Лютополох — член Ліги дослідників" }, -- Thistlenettle's Badge, @flavor Foreman Thistlenettle - Member of the Explorers' League
[1893] = { "помста шахтаря" }, -- Miner's Revenge
[1894] = { "картка спілки шахтарів" }, -- Miners' Union Card
[1922] = { "припаси для Свена", flavor="Пакунок різноманітних припасів для Свена." }, -- Supplies for Sven, @flavor A bundle of miscellaneous supplies for Sven.
[1931] = { "величезна лапа гнола" }, -- Huge Gnoll Claw
[1939] = { "бурдюк солодкого рому" }, -- Skin of Sweet Rum
[1941] = { "барильце Мерло" }, -- Cask of Merlot
[1942] = { "пляшка сивухи" }, -- Bottle of Moonshine
[1946] = { "дзеркальце Мері" }, -- Mary's Looking Glass
[1956] = { "тьмяна підвіска Тіньошкурих", flavor="Заклинання, накладене на цю підвіску, вже розвіялося." }, -- Faded Shadowhide Pendant, @flavor The spell on this pendant has faded.
[1968] = { "монокль огра" }, -- Ogre's Monocle
[1970] = { "відновлюючий бальзам", use="Відновлює цілі {1} здоров'я протягом {2} сек. (Відновлення 2 хв)#Heals the target for {1} damage over {2}" }, -- Restoring Balm, @use Heals the target for 180 damage over 12 sec. (2 Min Cooldown)
[1971] = { "документ Хмуроброва" }, -- Furlbrow's Deed
[2000] = { "Архей", hit="Підриває ціль, завдаючи їй 85 шкоди від аркани.", flavor="Меч Моргана Ладімора." }, -- Archeus, @hit Blasts a target for 85 Arcane damage., @flavor Morgan Ladimore's sword.
[2004] = { "журнал Ґреліна Білоборода" }, -- Grelin Whitebeard's Journal
[2032] = { "наручники Ґаллана" }, -- Gallan Cuffs
[2033] = { "черевики посланця" }, -- Ambassador's Boots
[2036] = { "запорошені шахтарські рукавички" }, -- Dusty Mining Gloves
[2037] = { "чоботи прохідника" }, -- Tunneler's Boots
[2041] = { "мундир західного краю" }, -- Tunic of Westfall
[2042] = { "посох західного краю" }, -- Staff of Westfall
[2043] = { "перстень знедолених духів" }, -- Ring of Forlorn Spirits
[2044] = { "півмісяць знедолених духів" }, -- Crescent of Forlorn Spirits
[2070] = { "дарнаський блю", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Darnassian Bleu, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[2074] = { "міцний клинок" }, -- Solid Shortblade
[2082] = { "мішок Бацбаха" }, -- Wizbang's Gunnysack
[2089] = { "різьблений кинджал" }, -- Scrimshaw Dagger
[2102] = { "малий гаман для набоїв", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Small Ammo Pouch, @equip Increases ranged attack speed by 10%.
[2113] = { "записка Калора" }, -- Calor's Note
[2136] = { "начаклована очищена вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Purified Water, @use Restores 835.2 mana over 24 sec.  Must remain seated while drinking.
[2137] = { "ніж для заточування" }, -- Whittling Knife
[2138] = { "загострений відкривач листів" }, -- Sharpened Letter Opener
[2154] = { "\"Історія Моргана Ладімора\"" }, -- The Story of Morgan Ladimore
[2161] = { "книга з ферми Свена" }, -- Book from Sven's Farm
[2162] = { "каблучка Сари", flavor="Каблучка Сари Ладімор." }, -- Sarah's Ring, @flavor Sarah Ladimore's ring.
[2165] = { "ковдра старенької Білявки" }, -- Old Blanchy's Blanket
[2173] = { "старий шкіряний пояс" }, -- Old Leather Belt
[2186] = { "пояс екіпірувальника" }, -- Outfitter Belt
[2187] = { "стіс листів" }, -- A Stack of Letters
[2188] = { "лист до Ґреліна Білоборода" }, -- A Letter to Grelin Whitebeard
[2223] = { "розклад Збирача" }, -- The Collector's Schedule
[2224] = { "кинджал повстанців" }, -- Militia Dagger
[2225] = { "гострий кухонний ніж" }, -- Sharp Kitchen Knife
[2230] = { "рукавички м'язів" }, -- Gloves of Brawn
[2231] = { "інфернальна мантія", equip="Збільшує шкоду від заклинань і ефектів вогню на 23." }, -- Inferno Robe, @equip Increases damage done by Fire spells and effects by up to 23.
[2237] = { "штопані штани" }, -- Patched Pants
[2238] = { "штани шибеника" }, -- Urchin's Pants
[2239] = { "перстень Збирача", flavor="Вигравірувано: 'За багаторічну службу: -ЕВК'" }, -- The Collector's Ring, @flavor Engraved with the words 'For years of service: -EVC.'
[2249] = { "баклер повстанців" }, -- Militia Buckler
[2250] = { "темні крабові пиріжки" }, -- Dusky Crab Cakes
[2251] = { "липка павуча лапка" }, -- Gooey Spider Leg
[2263] = { "фітолезо", hit="Підриває ціль, завдаючи їй 35 шкоди від природи." }, -- Phytoblade, @hit Blasts a target for 35 Nature damage.
[2288] = { "начаклована свіжа вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Fresh Water, @use Restores 436.8 mana over 21 sec.  Must remain seated while drinking.
[2289] = { "сувій сили II", ref=954 }, -- Scroll of Strength II
[2290] = { "сувій інтелекту II", ref=955 }, -- Scroll of Intellect II
[2296] = { "рило великого іклоштрика" }, -- Great Goretusk Snout
[2313] = { "накладки з середньої шкіри", use="Укріплення предмета, який носять на тілі, ногах, руках чи ступнях, що назавжди збільшить показник його броні на 16." }, -- Medium Armor Kit, @use Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 16.
[2318] = { "легка шкіра" }, -- Light Leather
[2319] = { "середня шкіра" }, -- Medium Leather
[2320] = { "груба нитка" }, -- Coarse Thread
[2321] = { "тонка нитка" }, -- Fine Thread
[2324] = { "відбілювач" }, -- Bleach
[2325] = { "чорний барвник" }, -- Black Dye
[2378] = { "палець скелета" }, -- Skeleton Finger
[2382] = { "серце Бальзамувальника" }, -- The Embalmer's Heart
[2447] = { "мироквіт" }, -- Peacebloom
[2449] = { "землекорінь" }, -- Earthroot
[2450] = { "шипшилючка" }, -- Briarthorn
[2452] = { "прудкоп'ях" }, -- Swiftthistle
[2453] = { "синцівка" }, -- Bruiseweed
[2454] = { "еліксир сили лева", use="Збільшує силу на 4 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Lion's Strength, @use Increases Strength by 4 for 1 hour. (3 Sec Cooldown)
[2455] = { "крихітне зілля мани", use="Відновлює від {1} до {2} мани. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Minor Mana Potion, @use Restores 140 to 180 mana. (2 Min Cooldown)
[2456] = { "крихітне зілля відживлення", use="Відновлює від {1} до {2} мани та від {3} до {4} здоров'я. (Відновлення 2 хв)#{1} to {2} mana and {3} to {4} health" }, -- Minor Rejuvenation Potion, @use Restores 90 to 150 mana and 90 to 150 health. (2 Min Cooldown)
[2457] = { "крихітний еліксир спритності", use="Збільшує спритність на 4 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Minor Agility, @use Increases Agility by 4 for 1 hour. (3 Sec Cooldown)
[2458] = { "крихітний еліксир стійкості", use="Збільшує максимальне здоров'я на 27 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Minor Fortitude, @use Increases the player's maximum health by 27 for 1 hour. (3 Sec Cooldown)
[2459] = { "зілля прудкості", use="Збільшує швидкість бігу на {1}% на {2} с. (Відновлення 2 хв)#by {1}% for {2} sec" }, -- Swiftness Potion, @use Increases run speed by 50% for 15 sec. (2 Min Cooldown)
[2476] = { "охолоджена гомілка василіска" }, -- Chilled Basilisk Haunch
[2516] = { "легка куля", desc="Додає 1.5 пошкодження за секунду" }, -- Light Shot, @desc Adds 1.5 damage per second
[2519] = { "важка куля", desc="Додає 3.5 пошкодження за секунду" }, -- Heavy Shot, @desc Adds 3.5 damage per second
[2536] = { "кам'яний зуб трога" }, -- Trogg Stone Tooth
[2545] = { "гнучкі кольчужні поножі" }, -- Malleable Chain Leggings
[2548] = { "барильце Ячміноварового Пекучого" }, -- Barrel of Barleybrew Scalder
[2553] = { "рецепт: Крихітний еліксир спритності", use="Навчає вас створювати крихітний еліксир спритності." }, -- Recipe: Elixir of Minor Agility, @use Teaches you how to make an Elixir of Minor Agility.
[2555] = { "рецепт: Зілля прудкості", use="Навчає вас створювати зілля прудкості." }, -- Recipe: Swiftness Potion, @use Teaches you how to make a Swiftness Potion.
[2560] = { "заповнений щоденник Тремтінія" }, -- Jitters' Completed Journal
[2561] = { "голова Чок'сула" }, -- Chok'sul's Head
[2562] = { "букет червоних бегоній" }, -- Bouquet of Scarlet Begonias
[2563] = { "порошок з дивним запахом" }, -- Strange Smelling Powder
[2570] = { "лляний плащ" }, -- Linen Cloak
[2571] = { "плетені онучі" }, -- Viny Wrappings
[2575] = { "червона лляна сорочка" }, -- Red Linen Shirt
[2589] = { "лляна тканина" }, -- Linen Cloth
[2592] = { "вовняне полотно" }, -- Wool Cloth
[2594] = { "кружка дворфійської медовухи", use="Міцний алкогольний напій." }, -- Flagon of Dwarven Honeymead, @use A strong alcoholic beverage.
[2604] = { "червоний барвник" }, -- Red Dye
[2605] = { "зелений барвник" }, -- Green Dye
[2606] = { "павуча отрута" }, -- Lurker Venom
[2607] = { "кристал Мо'ґрош" }, -- Mo'grosh Crystal
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
[2625] = { "статуетка Менетіла" }, -- Menethil Statuette
[2628] = { "звіт Сеніра" }, -- Senir's Report
[2629] = { "ключ від сейфа на \"Відважному\"" }, -- Intrepid Strongbox Key
[2636] = { "різьблений кам'яний ідол" }, -- Carved Stone Idol
[2637] = { "звіт Залізоплета" }, -- Ironband's Progress Report
[2639] = { "записка Меррін" }, -- Merrin's Letter
[2640] = { "шахтарське спорядження" }, -- Miners' Gear
[2644] = { "незв'язаний кольчужний плащ" }, -- Loose Chain Cloak
[2650] = { "кепські кольчужні чоботи" }, -- Flimsy Chain Boots
[2652] = { "кепський кольчужний плащ" }, -- Flimsy Chain Cloak
[2654] = { "кепські кольчужні штани" }, -- Flimsy Chain Pants
[2658] = { "фрагмент Адос" }, -- Ados Fragment
[2659] = { "фрагмент Модр" }, -- Modr Fragment
[2660] = { "фрагмент Ґолм" }, -- Golm Fragment
[2661] = { "фрагмент Неру" }, -- Neru Fragment
[2665] = { "штормовійська приправа" }, -- Stormwind Seasoning Herbs
[2666] = { "барильце громузвару" }, -- Barrel of Thunder Ale
[2667] = { "в'ялене м'ясо Мак-Ґранна" }, -- MacGrann's Dried Meats
[2671] = { "грива вендиго" }, -- Wendigo Mane
[2671] = { "жилаве м'ясо вовка" }, -- Stringy Wolf Meat
[2676] = { "блискоквіт" }, -- Shimmerweed
[2678] = { "лагідні спеції", flavor="Використовується для підсилення смаку деяких страв." }, -- Mild Spices, @flavor Used to enhance the flavor in cooking recipes.
[2681] = { "смажене м'ясо кнура", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Roasted Boar Meat, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[2686] = { "громузвар", use="Досить слабкий алкогольний напій." }, -- Thunder Ale, @use A fairly weak alcoholic beverage.
[2690] = { "пояс з пряжкою" }, -- Latched Belt
[2691] = { "чоботи екіпірувальника" }, -- Outfitter Boots
[2692] = { "гострі спеції" }, -- Hot Spices
[2694] = { "поножі поселенця" }, -- Settler's Leggings
[2697] = { "рецепт: Пиріг з печінки іклоштрика", use="Навчає вас приготуванню пирога з печінки іклоштрика." }, -- Recipe: Goretusk Liver Pie, @use Teaches you how to cook a Goretusk Liver Pie.
[2699] = { "рецепт: Багрянокрязький гуляш", use="Навчає вас приготуванню багрянокрязького гуляшу." }, -- Recipe: Redridge Goulash, @use Teaches you how to cook a delicious Redridge Goulash.
[2701] = { "рецепт: Пряний кебаб з вовчатини", use="Навчає вас приготуванню пряного кебаба з вовчатини." }, -- Recipe: Seasoned Wolf Kabob, @use Teaches you how to cook a Seasoned Wolf Kabob.
[2702] = { "злиток світлосталі" }, -- Lightforge Ingot
[2712] = { "скринька зі злитками світлосталі" }, -- Crate of Lightforge Ingots
[2713] = { "голова старого Чорниша" }, -- Ol' Sooty's Head
[2719] = { "маленький латунний ключ" }, -- Small Brass Key
[2720] = { "брудна записка" }, -- Muddy Note
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
[2805] = { "накидка з хутра єті" }, -- Yeti Fur Cloak
[2806] = { "пакунок для Бурешпиля" }, -- Package for Stormpike
[2818] = { "розтягнуті шкіряні штани" }, -- Stretched Leather Trousers
[2820] = { "відмінний секундомір", use="Збільшує швидкість бігу на {1}% на {2} с. (Відновлення 30 хв)#by {1}% for {2} sec" }, -- Nifty Stopwatch, @use Increases run speed by 40% for 10 sec. (30 Min Cooldown)
[2828] = { "рештки Нісси" }, -- Nissa's Remains
[2829] = { "рештки Ґреґора" }, -- Gregor's Remains
[2830] = { "рештки Турмана" }, -- Thurman's Remains
[2831] = { "рештки Девліна" }, -- Devlin's Remains
[2832] = { "рецепт гуляшу по-західнокрайськи від Верни Хмуробров" }, -- Verna's Westfall Stew Recipe
[2833] = { "фоліант ліча" }, -- The Lich's Spellbook
[2834] = { "бальзамувальна сукровиця" }, -- Embalming Ichor
[2835] = { "грубий камінь" }, -- Rough Stone
[2836] = { "шорсткий камінь" }, -- Coarse Stone
[2837] = { "лист Турмана" }, -- Thurman's Letter
[2838] = { "важкий камінь" }, -- Heavy Stone
[2840] = { "злиток міді" }, -- Copper Bar
[2841] = { "злиток бронзи" }, -- Bronze Bar
[2842] = { "злиток срібла" }, -- Silver Bar
[2843] = { "брудні паці" }, -- Dirty Knucklebones
[2846] = { "тірісфальський гарбуз" }, -- Tirisfal Pumpkin
[2855] = { "смердючий пазур" }, -- Putrid Claw
[2856] = { "залізна піка" }, -- Iron Pike
[2858] = { "кров темногончої" }, -- Darkhound Blood
[2859] = { "луска Злобного Плавника" }, -- Vile Fin Scale
[2863] = { "шорсткий точильний камінь", use="Збільшує шкоду гострої зброї на 3 на 30 хвилин." }, -- Coarse Sharpening Stone, @use Increase sharp weapon damage by 3 for 30 minutes.
[2872] = { "отрута злого нічного колопряда" }, -- Vicious Night Web Spider Venom
[2874] = { "ненадісланий лист", flavor="Лист, знайдений на тілі Едвіна ван Кліфа." }, -- An Unsent Letter, @flavor A letter found on Edwin VanCleef's person.
[2875] = { "перстень-відзнака Багряного Походу" }, -- Scarlet Insignia Ring
[2876] = { "шкура сутінкового кажана" }, -- Duskbat Pelt
[2885] = { "документи Багряного Походу" }, -- Scarlet Crusade Documents
[2901] = { "кайло", flavor="Гірникам потрібне кайло щоб копати." }, -- Mining Pick, @flavor Miners need a mining pick for digging.
[2902] = { "плащ віри" }, -- Cloak of the Faith
[2906] = { "кольчужні поножі Смерколісся" }, -- Darkshire Mail Leggings
[2907] = { "дворфійський колун", equip="Збільшує навичку володіння дворучними сокирами на 2." }, -- Dwarven Tree Chopper, @equip Increased Two-handed Axes +2.
[2908] = { "шипастий клинок" }, -- Thornblade
[2909] = { "червона вовняна бандана" }, -- Red Wool Bandana
[2910] = { "золоті черевики ополчення" }, -- Gold Militia Boots
[2916] = { "щит з золотим левом" }, -- Gold Lion Shield
[2917] = { "перстень спокою" }, -- Tranquil Ring
[2924] = { "м'ясо кроколіска" }, -- Crocolisk Meat
[2925] = { "шкура кроколіска" }, -- Crocolisk Skin
[2926] = { "голова Базіла Тредда" }, -- Head of Bazil Thredd
[2933] = { "печатка Рінна" }, -- Seal of Wrynn
[2934] = { "зіпсовані обрізки шкіри" }, -- Ruined Leather Scraps
[2939] = { "сльоза кроколіска" }, -- Crocolisk Tear
[2943] = { "око Палета", equip="Збільшує зцілення від заклинань і ефектів на 13." }, -- Eye of Paleth, @equip Increases healing done by spells and effects by up to 13.
[2944] = { "прокляте око Палета", equip="Збільшує шкоду від заклинань і ефектів тіні на 10." }, -- Cursed Eye of Paleth, @equip Increases damage done by Shadow spells and effects by up to 10.
[2953] = { "плащ начальника варти" }, -- Watch Master's Cloak
[2954] = { "кюлоти Нічної варти" }, -- Night Watch Pantaloons
[2956] = { "доповідь про Повстанське братство" }, -- Report on the Defias Brotherhood
[2960] = { "підмастерські рукавички" }, -- Journeyman's Gloves
[2996] = { "рулон лляної тканини" }, -- Bolt of Linen Cloth
[2997] = { "рулон вовняної тканини" }, -- Bolt of Woolen Cloth
[2998] = { "звичайний компас", flavor="Перший компас Бароса Алекстона." }, -- A Simple Compass, @flavor Baros Alexston's first compass.
[2999] = { "інструменти Сталешквара" }, -- Steelgrill's Tools
[3012] = { "сувій спритності", use="Збільшує спритність цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Agility, @use Increases the target's Agility by 5 for 30 min.
[3013] = { "сувій захисту", use="Збільшує броню цілі на {1} на {2} хв.#by {1} for {2} min" }, -- Scroll of Protection, @use Increases the target's Armor by 60 for 30 min.
[3014] = { "зношена сокира" }, -- Battleworn Axe
[3016] = { "фоліант Ґюнтера" }, -- Gunther's Spellbook
[3017] = { "накази Севрена" }, -- Sevren's Orders
[3033] = { "тверда куля", desc="Додає 7.5 пошкодження за секунду" }, -- Solid Shot, @desc Adds 7.5 damage per second
[3035] = { "оброблений гарбуз" }, -- Laced Pumpkin
[3041] = { "мушкетон \"В Яблучко\"" }, -- "Mage-Eye" Blunderbuss
[3070] = { "плащ хорунжого" }, -- Ensign Cloak
[3071] = { "разюча сокира" }, -- Striking Hatchet
[3079] = { "рушниця Скорна" }, -- Skorn's Rifle
[3080] = { "свічка, що манить" }, -- Candle of Beckoning
[3081] = { "самоцвіт Підсвіття" }, -- Nether Gem
[3082] = { "череп Дарґола" }, -- Dargol's Skull
[3083] = { "зубець рестабілізації" }, -- Restabilization Cog
[3084] = { "гіромеханічна шестірня" }, -- Gyromechanic Gear
[3085] = { "барильце \"Мерехтливого стаута\"" }, -- Barrel of Shimmer Stout
[3087] = { "кружка \"Мерехтливого стаута\"", use="Відновлює від {1} до {2} мани. (Відновлення 2 хв)#{1} to {2} mana" }, -- Mug of Shimmer Stout, @use Restores 140 to 180 mana. (2 Min Cooldown)
[3110] = { "вухо тунельного щура" }, -- Tunnel Rat Ear
[3117] = { "щоденник Гілдельва" }, -- Hildelve's Journal
[3155] = { "\"Засіб Аруґала\"", flavor="Цей старий сувій розписаний нерозбірливою мовою Кірін-Тору." }, -- Remedy of Arugal, @flavor This aging scroll is written in the indecipherable language of the Kirin Tor.
[3156] = { "кайдани ненажери" }, -- Glutton Shackle
[3157] = { "кайдани темнодуха" }, -- Darksoul Shackle
[3162] = { "надщерблене ребро" }, -- Notched Rib
[3163] = { "почорнілий череп" }, -- Blackened Skull
[3164] = { "знебарвлене серце ворга" }, -- Discolored Worg Heart
[3165] = { "Квіннове зілля" }, -- Quinn's Potion
[3169] = { "відколотий зуб ведмедя" }, -- Chipped Bear Tooth
[3171] = { "зламане ікло кабана" }, -- Broken Boar Tusk
[3172] = { "кишки кнура" }, -- Boar Intestines
[3173] = { "м'ясо ведмедя" }, -- Bear Meat
[3174] = { "лімфа павука" }, -- Spider Ichor
[3183] = { "зчесаний кіготь" }, -- Mangy Claw
[3218] = { "кайдани з Поховальних Вогнищ" }, -- Pyrewood Shackle
[3220] = { "кров'янка", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 4 на 15 хв.#Restores {1} health over {2}" }, -- Blood Sausage, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 4 Stamina and Spirit for 15 min.
[3234] = { "перстень Делії" }, -- Deliah's Ring
[3235] = { "кільце нехтування", flavor="Для Делії" }, -- Ring of Scorn, @flavor For Deliah
[3236] = { "пасока Гнилошкурих" }, -- Rot Hide Ichor
[3237] = { "зразок пасоки" }, -- Sample Ichor
[3238] = { "дослідження Йогаана", flavor="Запечатані дослідження аптекаря Йогана." }, -- Johaan's Findings, @flavor The sealed findings of Apothecary Johaan.
[3240] = { "шорстке грузило", use="Збільшує шкоду дробильної зброї на 3 на 30 хвилин." }, -- Coarse Weightstone, @use Increase the damage of a blunt weapon by 3 for 30 minutes.
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
[3264] = { "крило сутінкового кажана" }, -- Duskbat Wing
[3265] = { "лапа падальника" }, -- Scavenger Paw
[3266] = { "багряна пов'язка" }, -- Scarlet Armband
[3267] = { "короткий меч відречених" }, -- Forsaken Shortsword
[3268] = { "кинджал відречених" }, -- Forsaken Dagger
[3269] = { "молот відречених" }, -- Forsaken Maul
[3270] = { "волокняний жилет" }, -- Flax Vest
[3272] = { "поножі зі шкіри зомбі" }, -- Zombie Skin Leggings
[3273] = { "порваний кольчужний жилет" }, -- Rugged Mail Vest
[3274] = { "волокняні чоботи" }, -- Flax Boots
[3275] = { "волокняні рукавиці" }, -- Flax Gloves
[3276] = { "баклер смертостража" }, -- Deathguard Buckler
[3277] = { "посох карателя" }, -- Executor Staff
[3297] = { "мох скверни" }, -- Fel Moss
[3300] = { "лапка кролика" }, -- Rabbit's Foot
[3316] = { "голова Аларіка" }, -- Alaric's Head
[3317] = { "балакуча голова", flavor="Її губи ворушаться!" }, -- A Talking Head, @flavor Its lips are moving!
[3318] = { "останки Аларіка" }, -- Alaric's Remains
[3324] = { "примарний наплічник" }, -- Ghostly Mantle
[3337] = { "бойове знамено Драконопащих" }, -- Dragonmaw War Banner
[3339] = { "дворфійський трут" }, -- Dwarven Tinder
[3340] = { "спалахітова руда" }, -- Incendicite Ore
[3342] = { "сорочка капітана Сандера" }, -- Captain Sander's Shirt
[3343] = { "мішок для здобичі капітана Сандера" }, -- Captain Sander's Booty Bag
[3344] = { "пояс капітана Сандера" }, -- Captain Sander's Sash
[3347] = { "оберемок кроколіскових шкір" }, -- Bundle of Crocolisk Skins
[3348] = { "шкура гігантського кроколіска" }, -- Giant Crocolisk Skin
[3349] = { "сумка Сіди", flavor="З неї крапає." }, -- Sida's Bag, @flavor It's dripping.
[3352] = { "покрита слизом сумка" }, -- Ooze-covered Bag
[3353] = { "покритий рунами кулон" }, -- Rune-inscribed Pendant
[3354] = { "даларанський кулон" }, -- Dalaran Pendant
[3355] = { "дикий сталецвіт" }, -- Wild Steelbloom
[3356] = { "королекров" }, -- Kingsblood
[3357] = { "життєкорінь" }, -- Liferoot
[3358] = { "Хадґарів вус" }, -- Khadgar's Whisker
[3369] = { "могильний мох" }, -- Grave Moss
[3371] = { "порожній фіал" }, -- Empty Vial
[3372] = { "свинцевий фіал" }, -- Leaded Vial
[3382] = { "слабке зілля крові троля", use="Відновлює 2 од. здоров'я кожні 5 сек протягом 1 години. (Відновлення 3 сек)" }, -- Weak Troll's Blood Potion, @use Regenerate 2 health every 5 sec for 1 hour. (3 Sec Cooldown)
[3383] = { "еліксир мудрості", use="Збільшує інтелект на 6 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Wisdom, @use Increases Intellect by 6 for 1 hour. (3 Sec Cooldown)
[3384] = { "крихітне зілля супротиву магії", use="Збільшує ваш супротив всім школам магії на 25 на 3 хв. (Відновлення 2 хв)" }, -- Minor Magic Resistance Potion, @use Increases your resistance to all schools of magic by 25 for 3 min. (2 Min Cooldown)
[3385] = { "невелике зілля мани", ref=2455 }, -- Lesser Mana Potion
[3386] = { "еліксир супротиву отруті", use="Виліковує до чотирьох отрут до 60 рівня. (Відновлення 3 сек)" }, -- Elixir of Poison Resistance, @use Imbiber is cured of up to four poisons up to level 60. (3 Sec Cooldown)
[3387] = { "зілля обмеженої невразливості", use="Надає невразливість до фізичних атак на {1} с. (Відновлення 2 хв)#next {1} sec" }, -- Limited Invulnerability Potion, @use Imbiber is immune to physical attacks for the next 6 sec. (2 Min Cooldown)
[3388] = { "міцне зілля крові троля", use="Відновлює 6 од. здоров'я кожні 5 сек протягом 1 години. (Відновлення 3 сек)" }, -- Strong Troll's Blood Potion, @use Regenerate 6 health every 5 sec for 1 hour. (3 Sec Cooldown)
[3389] = { "еліксир захисту", use="Збільшує броню на 150 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Defense, @use Increases armor by 150 for 1 hour. (3 Sec Cooldown)
[3390] = { "еліксир малої спритності", use="Збільшує спритність на 8 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Lesser Agility, @use Increases Agility by 8 for 1 hour. (3 Sec Cooldown)
[3391] = { "еліксир сили огра", use="Збільшує силу на 8 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Ogre's Strength, @use Increases Strength by 8 for 1 hour. (3 Sec Cooldown)
[3393] = { "рецепт: Крихітне зілля супротиву магії", use="Навчає вас створювати крихітне зілля супротиву магії." }, -- Recipe: Minor Magic Resistance Potion, @use Teaches you how to make a Minor Magic Resistance Potion.
[3394] = { "Рецепт: Еліксир супротиву отруті", use="Навчає вас створювати еліксир супротиву отруті." }, -- Recipe: Elixir of Poison Resistance, @use Teaches you how to make an Elixir of Poison Resistance.
[3395] = { "Рецепт: Зілля обмеженої невразливості", use="Навчає вас створювати зілля обмеженої невразливості." }, -- Recipe: Limited Invulnerability Potion, @use Teaches you how to make a Limited Invulnerability Potion.
[3396] = { "Рецепт: Еліксир малої спритності", use="Навчає вас створювати еліксир малої спритності." }, -- Recipe: Elixir of Lesser Agility, @use Teaches you how to make an Elixir of Lesser Agility.
[3397] = { "шкура молодого кроколіска" }, -- Young Crocolisk Skin
[3400] = { "сяючий довгий меч" }, -- Lucine Longsword
[3405] = { "талісман Воронячого Пазура" }, -- Raven Claw Talisman
[3406] = { "чорне перо" }, -- Black Feather Quill
[3407] = { "сапфір небес" }, -- Sapphire of Sky
[3408] = { "руна Гніздування" }, -- Rune of Nesting
[3409] = { "ікло ночезуба" }, -- Nightsaber Fang
[3411] = { "пір'їна сови" }, -- Strigid Owl Feather
[3412] = { "павутиннолісий шовк" }, -- Webwood Spider Silk
[3418] = { "осквернена шишка" }, -- Fel Cone
[3421] = { "прості польові квіти" }, -- Simple Wildflowers
[3425] = { "сплетений жезл" }, -- Woven Wand
[3431] = { "укріплений кістками шкіряний жилет" }, -- Bone-studded Leather
[3434] = { "пісок дрімоти", use="Присипляє ворожу ціль на час до 20 сек. Після будь-якої заподіяної шкоди ціль прокинеться. Одночасно можна приспати лише одну ціль. (Відновлення 1 хв)" }, -- Slumber Sand, @use Puts the enemy target to sleep for up to 20 sec.  Any damage caused will awaken the target.  Only one target can be asleep at a time. (1 Min Cooldown)
[3435] = { "наручі зі шкіри зомбі" }, -- Zombie Skin Bracers
[3437] = { "пояс з пряжкою" }, -- Clasped Belt
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
[3457] = { "стоптані штани" }, -- Stamped Trousers
[3458] = { "міцні кольчужні рукавиці" }, -- Rugged Mail Gloves
[3460] = { "особливий напій Йогаана" }, -- Johaan's Special Drink
[3461] = { "мантія судді" }, -- High Robe of the Adjudicator
[3462] = { "удар кігтя" }, -- Talonstrike
[3467] = { "тьмяний залізний ключ" }, -- Dull Iron Key
[3468] = { "дані досліджень Ренферрела", flavor="Запечатані дані досліджень аптекаря Ренферрела." }, -- Renferrel's Findings, @flavor The sealed findings of Apothecary Renferrel.
[3470] = { "грубий шліфувальний камінь" }, -- Rough Grinding Stone
[3476] = { "язик сірого ведмедя" }, -- Gray Bear Tongue
[3477] = { "пасока підкрадача" }, -- Creeper Ichor
[3478] = { "шорсткий шліфувальний камінь" }, -- Coarse Grinding Stone
[3486] = { "важкий шліфувальний камінь" }, -- Heavy Grinding Stone
[3495] = { "еліксир страждання" }, -- Elixir of Suffering
[3496] = { "кров гірського лева" }, -- Mountain Lion Blood
[3497] = { "еліксир болю" }, -- Elixir of Pain
[3498] = { "намисто Тарети", flavor="Півмісяць на срібному ланцюжку." }, -- Taretha's Necklace, @flavor A crescent moon dangling from a silver chain.
[3499] = { "полірований золотий ключ" }, -- Burnished Gold Key
[3502] = { "квітка Брудномордих" }, -- Mudsnout Blossoms
[3505] = { "альтерацький перстень з печаткою" }, -- Alterac Signet Ring
[3506] = { "суміш Брудномордих" }, -- Mudsnout Composite
[3508] = { "розчин Брудномордих" }, -- Mudsnout Mixture
[3509] = { "луска клинкоспинної наги" }, -- Daggerspine Scale
[3510] = { "око мурлока Розірваного Плавника" }, -- Torn Fin Eye
[3511] = { "плащ народного ополчення" }, -- Cloak of the People's Militia
[3514] = { "череп Мор'Ладіма" }, -- Mor'Ladim's Skull
[3515] = { "посох Атеріка" }, -- Ataeric's Staff
[3517] = { "барильце \"Землекопського міцного\"" }, -- Keg of Shindigger Stout
[3518] = { "розшифрований лист" }, -- Decrypted Letter
[3520] = { "зіпсоване барильце" }, -- Tainted Keg
[3521] = { "розумно зашифрований лист", flavor="Цей лист зашифрований та нерозбірливий." }, -- Cleverly Encrypted Letter, @flavor This letter is encrypted and indecipherable.
[3550] = { "голова Тарґа" }, -- Targ's Head
[3551] = { "голова Брудня" }, -- Muckrake's Head
[3552] = { "голова Ґломмуса" }, -- Glommus's Head
[3553] = { "голова Муґ'Тола" }, -- Mug'thol's Head
[3554] = { "корона Волі" }, -- Crown of Will
[3555] = { "мантія Соломона" }, -- Robe of Solomon
[3556] = { "магічний капелюх жаху" }, -- Dread Mage Hat
[3558] = { "мантія хранителя болота" }, -- Fen Keeper Robe
[3559] = { "рукавиці Нічної варти" }, -- Night Watch Gauntlets
[3560] = { "наплічник жаху" }, -- Mantle of Honor
[3561] = { "стійке пончо" }, -- Resilient Poncho
[3564] = { "партія заліза" }, -- Shipment of Iron
[3567] = { "дворфійська вудка", flavor="Витонченість — не найкраща риса дворфів." }, -- Dwarven Fishing Pole, @flavor Dwarves aren't known for their subtlety.
[3570] = { "кісткоміс" }, -- Bonegrinding Pestle
[3575] = { "злиток заліза" }, -- Iron Bar
[3576] = { "злиток олова" }, -- Tin Bar
[3577] = { "злиток золота" }, -- Gold Bar
[3578] = { "жнивальні штани" }, -- Harvester's Pants
[3581] = { "зубчастий ніж" }, -- Serrated Knife
[3582] = { "кислотостійкий плащ" }, -- Acidproof Cloak
[3583] = { "зношений пояс" }, -- Weathered Belt
[3585] = { "камуфляжний мундир" }, -- Camouflaged Tunic
[3586] = { "дроворуб" }, -- Logsplitter
[3601] = { "послання Синдикату" }, -- Syndicate Missive
[3613] = { "руки Валдреда" }, -- Valdred's Hands
[3614] = { "лапа Скавчала" }, -- Yowler's Paw
[3617] = { "кулон тіні" }, -- Pendant of Shadow
[3618] = { "голова Жеруна" }, -- Gobbler's Head
[3619] = { "табакерка Снелліґа" }, -- Snellig's Snuffbox
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
[3657] = { "реєстр Гіллзбраду" }, -- Hillsbrad Town Registry
[3658] = { "врятований том" }, -- Recovered Tome
[3659] = { "потерта шкіряна книга", flavor="Рука Ґрі'лека" }, -- Worn Leather Book, @flavor Arm of Gri'lek
[3660] = { "альтерацькі томи" }, -- Tomes of Alterac
[3663] = { "суп з плавців мурлоків", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Murloc Fin Soup, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3664] = { "рагу з кроколіска", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Crocolisk Gumbo, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3666] = { "липкий павучий пиріг", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Gooey Spider Cake, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3668] = { "контракт вбивці" }, -- Assassin's Contract
[3672] = { "голова Наґаза" }, -- Head of Nagaz
[3679] = { "рецепт: Кров'янка", use="Навчає вас приготуванню кров'янки." }, -- Recipe: Blood Sausage, @use Teaches you how to cook a Blood Sausage.
[3680] = { "рецепт: Суп з плавців мурлоків", use="Навчає вас приготуванню супу з плавців мурлоків." }, -- Recipe: Murloc Fin Soup, @use Teaches you how to cook a Murloc Fin Soup.
[3681] = { "рецепт: Рагу з кроколіска", use="Навчає вас приготуванню рагу з кроколіска." }, -- Recipe: Crocolisk Gumbo, @use Teaches you how to cook a Crocolisk Gumbo.
[3683] = { "рецепт: Липкий павучий пиріг", use="Навчає вас приготуванню липкого павучого пирога." }, -- Recipe: Gooey Spider Cake, @use Teaches you how to cook a Gooey Spider Cake.
[3684] = { "тіара Перенольдів" }, -- Perenolde Tiara
[3688] = { "овал з кривавого каменю" }, -- Bloodstone Oval
[3689] = { "кулька з кривавого каменю" }, -- Bloodstone Marble
[3690] = { "осколок з кривавого каменю" }, -- Bloodstone Shard
[3691] = { "клин з кривавого каменю" }, -- Bloodstone Wedge
[3692] = { "людський череп з Гіллзбраду" }, -- Hillsbrad Human Skull
[3693] = { "меч Гумберта" }, -- Humbert's Sword
[3701] = { "запечатана грамота Дарталії", flavor="Вручити особисто лорду Варіматрасу." }, -- Darthalia's Sealed Commendation, @flavor To be opened by Lord Varimathras.
[3703] = { "південнобережне міцне", use="Звичайний алкогольний напій." }, -- Southshore Stout, @use A typical alcoholic beverage.
[3704] = { "іржавий залізний ключ" }, -- Rusted Iron Key
[3706] = { "заряджений пергамент", flavor="Його текст оповитий магією." }, -- Ensorcelled Parchment, @flavor Its letters are enshrouded in magic.
[3708] = { "жезл Гелькулара" }, -- Helcular's Rod
[3710] = { "жезл Гелькулара", use="Зарядити жезл Гелькулара на трьох церемоніальних вогнищах." }, -- Rod of Helcular, @use Charges the Rod of Helcular when used at the three ceremonial pyres.
[3712] = { "черепашаче м'ясо" }, -- Turtle Meat
[3713] = { "запашні спеції" }, -- Soothing Spices
[3714] = { "потертий кам'яний талісман", flavor="Його магія згасла." }, -- Worn Stone Token, @flavor Its magic has faded.
[3715] = { "зв'язувальні браслети землі" }, -- Bracers of Earth Binding
[3716] = { "голова мурлока" }, -- Murloc Head
[3717] = { "мішок голів мурлоків" }, -- Sack of Murloc Heads
[3718] = { "лиховісні плани" }, -- Foreboding Plans
[3719] = { "накидка жителя пагорбів" }, -- Hillman's Cloak
[3720] = { "хутро єті" }, -- Yeti Fur
[3721] = { "звіт Фаррена" }, -- Farren's Report
[3726] = { "великий ведмежий стейк", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Big Bear Steak, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3727] = { "гарячі відбивні з лева", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 6 на 15 хв.#Restores {1} health over {2}" }, -- Hot Lion Chops, @use Restores 552 health over 24 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 6 Stamina and Spirit for 15 min.
[3728] = { "cмачний стейк з лева", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 8 на 15 хв.#Restores {1} health over {2}" }, -- Tasty Lion Steak, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 8 Stamina and Spirit for 15 min.
[3729] = { "ніжний черепаховий суп", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 8 на 15 хв.#Restores {1} health over {2}" }, -- Soothing Turtle Bisque, @use Restores 874.8 health over 27 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 8 Stamina and Spirit for 15 min.
[3730] = { "велике ведмеже м'ясо" }, -- Big Bear Meat
[3731] = { "м'ясо лева" }, -- Lion Meat
[3732] = { "широкий капюшон" }, -- Hooded Cowl
[3733] = { "орча бойова кольчуга" }, -- Orcish War Chain
[3734] = { "рецепт: Великий ведмежий стейк", use="Навчає вас приготуванню великого ведмежого стейка." }, -- Recipe: Big Bear Steak, @use Teaches you how to cook a Big Bear Steak.
[3735] = { "рецепт: Гарячі відбивні з лева", use="Навчає вас приготуванню гарячих відбивних з лева." }, -- Recipe: Hot Lion Chops, @use Teaches you how to cook up some Hot Lion Chops.
[3736] = { "рецепт: Смачний стейк з лева", use="Навчає вас приготуванню cмачного стейка з лева." }, -- Recipe: Tasty Lion Steak, @use Teaches you how to cook a Tasty Lion Steak.
[3737] = { "рецепт: Ніжний черепаховий суп", use="Навчає вас приготуванню ніжного черепахового супу." }, -- Recipe: Soothing Turtle Bisque, @use Teaches you how to cook a Soothing Turtle Bisque.
[3739] = { "перстень з черепом" }, -- Skull Ring
[3741] = { "чоботи тупотіння" }, -- Stomping Boots
[3742] = { "лук грабежу" }, -- Bow of Plunder
[3743] = { "баклер караульного" }, -- Sentry Buckler
[3747] = { "пояс медитації" }, -- Meditative Sash
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
[3763] = { "місячний баклер" }, -- Lunar Buckler
[3764] = { "черевики богомола" }, -- Mantis Boots
[3765] = { "розбійницьке напліччя" }, -- Brigand's Pauldrons
[3772] = { "начаклована джерельна вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Spring Water, @use Restores 1344.6 mana over 27 sec.  Must remain seated while drinking.
[3818] = { "бляклолист" }, -- Fadeleaf
[3819] = { "зимокус" }, -- Wintersbite
[3820] = { "душирість" }, -- Stranglekelp
[3821] = { "злотошпичка" }, -- Goldthorn
[3822] = { "темний рунічний клинок", hit="Запускає у ворога заряд тіні, що завдає 35 шкоди від тіні." }, -- Runic Darkblade, @hit Sends a shadowy bolt at the enemy causing 35 Shadow damage.
[3823] = { "зілля малої невидимості", use="Надає малу невидимість на {1} с. (Відновлення 10 хв)#for {1} sec" }, -- Lesser Invisibility Potion, @use Gives the imbiber lesser invisibility for 15 sec. (10 Min Cooldown)
[3824] = { "тіньова олія", use="При нанесенні на зброю ближнього бою дає 15% ймовірності застосувати тіньову стрілу ІІІ на опонента при ударі. Триває 30 хвилин." }, -- Shadow Oil, @use When applied to a melee weapon it gives a 15% chance of casting Shadowbolt III at the opponent when it hits.  Lasts 30 minutes.
[3825] = { "еліксир стійкості", use="Збільшує максимальне здоров'я на 120 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Fortitude, @use Increases the player's maximum health by 120 for 1 hour. (3 Sec Cooldown)
[3826] = { "потужне зілля крові троля", use="Відновлює 12 од. здоров'я кожні 5 сек протягом 1 години. (Відновлення 3 сек)" }, -- Mighty Troll's Blood Potion, @use Regenerate 12 health every 5 sec for 1 hour. (3 Sec Cooldown)
[3827] = { "зілля мани", ref=2455 }, -- Mana Potion
[3828] = { "еліксир виявлення малої невидимості", use="Надає виявлення малої невидимості на 10 хв. (Відновлення 3 сек)" }, -- Elixir of Detect Lesser Invisibility, @use Grants detect lesser invisibility for 10 min. (3 Sec Cooldown)
[3829] = { "крижана олія", use="При нанесенні на зброю ближнього бою дає 10% ймовірності застосувати крижану стрілу на опонента при ударі. Триває 30 хвилин." }, -- Frost Oil, @use When applied to a melee weapon it gives a 10% chance of casting Frostbolt at the opponent when it hits.  Lasts 30 minutes.
[3830] = { "рецепт: Еліксир стійкості", use="Навчає вас створювати еліксир стійкості." }, -- Recipe: Elixir of Fortitude, @use Teaches you how to make an Elixir of Fortitude.
[3831] = { "рецепт: Потужне зілля крові троля", use="Навчає вас створювати потужне зілля крові троля." }, -- Recipe: Mighty Troll's Blood Potion, @use Teaches you how to make a Mighty Troll's Blood Potion.
[3832] = { "рецепт: Еліксир виявлення малої невидимості", use="Навчає вас створювати еліксир виявлення малої невидимості." }, -- Recipe: Elixir of Detect Lesser Invisibility, @use Teaches you how to make an Elixir of Detect Lesser Invisibility.
[3833] = { "плащ адепта" }, -- Adept's Cloak
[3834] = { "міцні полотняні штани" }, -- Sturdy Cloth Trousers
[3857] = { "вугілля" }, -- Coal
[3858] = { "мітрилова руда" }, -- Mithril Ore
[3859] = { "злиток сталі" }, -- Steel Bar
[3860] = { "злиток мітрилу" }, -- Mithril Bar
[3861] = { "злиток чорносталі" }, -- Blacksteel Bar
[3864] = { "цитрин" }, -- Citrine
[3898] = { "бібліотечний сувій" }, -- Library Scrip
[3899] = { "\"Легенди Ґурубаші, том 3\"", flavor="Камінь Припливів" }, -- Legends of the Gurubashi, Volume 3, @flavor Stone of the Tides
[3928] = { "відмінне зілля лікування", ref=118 }, -- Superior Healing Potion
[4016] = { "суміш Занзіла" }, -- Zanzil's Mixture
[4127] = { "шрапнельний самостріл" }, -- Shrapnel Blaster
[4131] = { "пояс псування" }, -- Belt of Corruption
[4197] = { "берилові наплічники" }, -- Berylline Pads
[4232] = { "середня шкура" }, -- Medium Hide
[4234] = { "важка шкіра" }, -- Heavy Leather
[4235] = { "важка шкура" }, -- Heavy Hide
[4265] = { "накладки з важкої шкіри", use="Укріплення предмета, який носять на тілі, ногах, руках чи ступнях, що назавжди збільшить показник його броні на 24. Можна використовувати лише на предметах 15-го рівня і вище." }, -- Heavy Armor Kit, @use Permanently increase the armor value of an item worn on the chest, legs, hands or feet by 24.  Only usable on items level 15 and above.
[4289] = { "сіль" }, -- Salt
[4291] = { "шовкова нитка" }, -- Silken Thread
[4304] = { "товста шкіра" }, -- Thick Leather
[4306] = { "шовкове полотно" }, -- Silk Cloth
[4330] = { "стильна червона сорочка" }, -- Stylish Red Shirt
[4338] = { "маготкане полотно" }, -- Mageweave Cloth
[4340] = { "сірий барвник" }, -- Gray Dye
[4341] = { "жовтий барвник" }, -- Yellow Dye
[4342] = { "пурпуровий барвник" }, -- Purple Dye
[4344] = { "коричнева лляна сорочка" }, -- Brown Linen Shirt
[4369] = { "смертоносний мушкетон" }, -- Deadly Blunderbuss
[4371] = { "бронзова трубка" }, -- Bronze Tube
[4388] = { "промінь заплутаності", use="Перетворює ціль в лепрогнома, зменшуючи її шкоду від атак в ближньому бою та заклинань на 40, а швидкість пересування на 20% на 12 секунд. (Відновлення 1 хв)" }, -- Discombobulator Ray, @use Transforms the target into a Leper Gnome, reducing its melee and spell damage by 40 and its movement rate by 20% for 12 sec. (1 Min Cooldown)
[4419] = { "сувій інтелекту III", ref=955 }, -- Scroll of Intellect III
[4421] = { "сувій захисту III", ref=3013 }, -- Scroll of Protection III
[4422] = { "сувій витривалості III", ref=1180 }, -- Scroll of Stamina III
[4424] = { "сувій духу III", ref=1181 }, -- Scroll of Spirit III
[4425] = { "сувій спритності III", ref=3012 }, -- Scroll of Agility III
[4426] = { "сувій сили III", ref=954 }, -- Scroll of Strength III
[4429] = { "накази Темнолюта" }, -- Deepfury's Orders
[4430] = { "примарний талісман" }, -- Ethereal Talisman
[4432] = { "лист Саллі Баллу", flavor="Моя люба Сара..." }, -- Sully Balloo's Letter, @flavor My dear Sara...
[4433] = { "промоклий конверт" }, -- Waterlogged Envelope
[4435] = { "порошинка Мізраель" }, -- Mote of Myzrael
[4440] = { "сигіла Строма" }, -- Sigil of Strom
[4441] = { "самогон Мак-Кріла" }, -- MacKreel's Moonshine
[4443] = { "зловісні наплічники" }, -- Grim Pauldrons
[4450] = { "фрагмент сигіли" }, -- Sigil Fragment
[4453] = { "сигіла Торадіна" }, -- Sigil of Thoradin
[4458] = { "сигіла Аратора" }, -- Sigil of Arathor
[4461] = { "шкура раптора" }, -- Raptor Hide
[4466] = { "сигіла Тролебоя" }, -- Sigil of Trollbane
[4467] = { "сигіла Іґная" }, -- Sigil of Ignaeus
[4468] = { "Трол'Калар в піхвах", flavor="Легендарний меч Іґная Тролебоя." }, -- Sheathed Trol'kalar, @flavor The legendary blade of Ignaeus Trollbane.
[4469] = { "скіпетр порядку" }, -- Rod of Order
[4472] = { "сувій Мізраель", use="Викликає Мізраель з осколків Мізраель." }, -- Scroll of Myzrael, @use Summon Myzrael from the Shards of Myzrael.
[4473] = { "містичні наручі" }, -- Eldritch Shackles
[4479] = { "палаюча поваба", use="Позбувається буревійного вигнанця (Відновлення 10 сек)" }, -- Burning Charm, @use Banishes a Thundering Exile (10 Sec Cooldown)
[4480] = { "буревійна поваба", use="Позбувається бурунистого вигнанця (Відновлення 10 сек)" }, -- Thundering Charm, @use Banishes a Cresting Exile (10 Sec Cooldown)
[4481] = { "буруниста поваба", use="Позбувається палаючого вигнанця (Відновлення 10 сек)" }, -- Cresting Charm, @use Banishes a Burning Exile (10 Sec Cooldown)
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
[4495] = { "кривавокамінний амулет" }, -- Bloodstone Amulet
[4502] = { "зразок ельфійського самоцвіту" }, -- Sample Elven Gem
[4503] = { "бивень В'ялошкірих" }, -- Witherbark Tusk
[4506] = { "штромґардський значок" }, -- Stromgarde Badge
[4507] = { "щит бійця ями" }, -- Pit Fighter's Shield
[4508] = { "кривавий обладунок" }, -- Blood-tinged Armor
[4509] = { "рукавиці морського вовка" }, -- Seawolf Gloves
[4510] = { "мерзенна кривавокамінна сфера" }, -- Befouled Bloodstone Orb
[4511] = { "молот чорноводдя" }, -- Black Water Hammer
[4512] = { "око плоскогірного раптора" }, -- Highland Raptor Eye
[4513] = { "серце раптора" }, -- Raptor Heart
[4514] = { "прохання Сари Баллу", flavor="Моєму шановному королю" }, -- Sara Balloo's Plea, @flavor To My Honorable King
[4515] = { "голова Мареза" }, -- Marez's Head
[4516] = { "голова Отто" }, -- Otto's Head
[4517] = { "голова Соколохресного" }, -- Falconcrest's Head
[4521] = { "альтерацький граніт" }, -- Alterac Granite
[4522] = { "мішечок з травами В'ялошкірих" }, -- Witherbark Medicine Pouch
[4525] = { "паличка Трелейна для виклику" }, -- Trelane's Wand of Invocation
[4526] = { "амулет із пазура раптора" }, -- Raptor Talon Amulet
[4527] = { "лазурний агат" }, -- Azure Agate
[4528] = { "сфера Тор'ґана" }, -- Tor'gan's Orb
[4529] = { "зачарований агат", use="Активує захист вежі Трелейна." }, -- Enchanted Agate, @use Activates Trelane's tower defenses.
[4530] = { "філактерія Трелейна" }, -- Trelane's Phylactery
[4531] = { "сфера Трелейна" }, -- Trelane's Orb
[4532] = { "червоний агат Трелейна" }, -- Trelane's Ember Agate
[4533] = { "запечатаний лист до архімага Маліна" }, -- Sealed Letter to Archmage Malin
[4534] = { "наручі зі сталевими застібками" }, -- Steel-clasped Bracers
[4535] = { "пам'ятний перстень Залізогарту" }, -- Ironforge Memorial Ring
[4536] = { "соковите червоне яблуко", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Shiny Red Apple, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[4540] = { "кусень твердого хліба", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Tough Hunk of Bread, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[4541] = { "свіжоспечений хліб", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Freshly Baked Bread, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[4542] = { "вологий кукурудзяний хліб", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Moist Cornbread, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[4543] = { "каптур зі шкіри білого дракончика" }, -- White Drakeskin Cap
[4545] = { "сяючі срібні наручі" }, -- Radiant Silver Bracers
[4546] = { "клич раптора", use="Збільшує спритність на 12 на 30 хв." }, -- Call of the Raptor, @use Increases your Agility by 12 for 30 min.
[4547] = { "гном'ячий шокер" }, -- Gnomish Zapper
[4548] = { "сервомеханічна кувалда", equip="Збільшує навичку володіння дворучними булавами на 7." }, -- Servomechanic Sledgehammer, @equip Increased Two-handed Maces +7.
[4549] = { "перстень морського вогню" }, -- Seafire Band
[4550] = { "холодноводний перстень" }, -- Coldwater Ring
[4551] = { "голова Ор'Калара" }, -- Or'Kalar's Head
[4589] = { "довга елегантна пір'їна" }, -- Long Elegant Feather
[4596] = { "безбарвне зілля лікування", use="Відновлює від {1} до {2} здоров'я. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Discolored Healing Potion, @use Restores 140 to 180 health. (2 Min Cooldown)
[4597] = { "рецепт: Безбарвне зілля лікування", use="Навчає вас створювати безбарвне зілля лікування." }, -- Recipe: Discolored Healing Potion, @use Teaches you how to make a Discolored Healing Potion.
[4604] = { "шапинка лісового гриба", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Forest Mushroom Cap, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[4605] = { "червоний крапчастий гриб", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Red-speckled Mushroom, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[4610] = { "різьблена кам'яна урна" }, -- Carved Stone Urn
[4614] = { "кулон Мізраель" }, -- Pendant of Myzrael
[4623] = { "мале зілля каменещита", use="Збільшує броню на {1} на 1.5 хв. (Відновлення 2 хв)#armor by {1}" }, -- Lesser Stoneshield Potion, @use Increases armor by 1000 for 1.50 min. (2 Min Cooldown)
[4624] = { "рецепт: Мале зілля каменещита", use="Навчає вас створювати мале зілля каменещита." }, -- Recipe: Lesser Stoneshield Potion, @use Teaches you how to make a Lesser Stoneshield Potion.
[4625] = { "вогнеквіт" }, -- Firebloom
[4631] = { "скрижаль Р'юн'еха" }, -- Tablet of Ryun'eh
[4635] = { "амулет Молотопалого" }, -- Hammertoe's Amulet
[4641] = { "рука Даґуна" }, -- Hand of Dagun
[4643] = { "накидка хмуросталі" }, -- Grimsteel Cape
[4644] = { "серце спадку" }, -- The Legacy Heart
[4646] = { "зірка Ксіл'єх" }, -- Star of Xil'yeh
[4650] = { "записка Бел'дуґура" }, -- Bel'dugur's Note
[4654] = { "таємнича скам'янілість" }, -- Mysterious Fossil
[4656] = { "гарбузик", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Small Pumpkin, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[4666] = { "обпалений шкіряний ремінь" }, -- Burnt Leather Belt
[4702] = { "кайло розвідувача", use="Розтрощити кайло у кузні." }, -- Prospector's Pick, @use Right click near a forge to break.
[4703] = { "зламані інструменти" }, -- Broken Tools
[4739] = { "м'ясо рівнинобіга" }, -- Plainstrider Meat
[4740] = { "пір'я рівнинобіга" }, -- Plainstrider Feather
[4741] = { "штромґардські кавалерійські штани" }, -- Stromgarde Cavalry Leggings
[4742] = { "шкура гірської пуми" }, -- Mountain Cougar Pelt
[4743] = { "пульсуючий кристалічний осколок" }, -- Pulsating Crystalline Shard
[4744] = { "наручі з арканічними рунами " }, -- Arcane Runed Bracers
[4745] = { "наручі військового вершника" }, -- War Rider Bracers
[4746] = { "мантія вісника загибелі" }, -- Doomsayer's Robe
[4751] = { "кіготь Вітролютих" }, -- Windfury Talon
[4752] = { "лазурова пір'їна" }, -- Azure Feather
[4753] = { "бронзова пір'їна" }, -- Bronze Feather
[4755] = { "глечик води" }, -- Water Pitcher
[4757] = { "тріснута яєчна шкаралупа" }, -- Cracked Egg Shells
[4758] = { "лапа степового вовка" }, -- Prairie Wolf Paw
[4759] = { "кіготь рівнинобіга" }, -- Plainstrider Talon
[4769] = { "трофейна пір'їна хапуна" }, -- Trophy Swoop Quill
[4770] = { "пояс Щетиношкурих" }, -- Bristleback Belt
[4783] = { "тотем Соколиного Вітру" }, -- Totem of Hawkwind
[4801] = { "пазурі ловця" }, -- Stalker Claws
[4802] = { "пазурі пуми" }, -- Cougar Claws
[4803] = { "зуб степового альфи" }, -- Prairie Alpha Tooth
[4804] = { "серце степового вовка" }, -- Prairie Wolf Heart
[4805] = { "стегнова кістка рівнинної пуми" }, -- Flatland Cougar Femur
[4806] = { "луска рівнинобіга" }, -- Plainstrider Scale
[4807] = { "шлунок хапуна" }, -- Swoop Gizzard
[4808] = { "колодязний камінь" }, -- Well Stone
[4809] = { "бурштинова насінина" }, -- Ambercorn
[4819] = { "записник Шуморакети" }, -- Fizsprocket's Clipboard
[4823] = { "вода провидців", use="Викликає видіння." }, -- Water of the Seers, @use Induces a Vision.
[4834] = { "документи ТзНБ \"Авантюра\"" }, -- Venture Co. Documents
[4840] = { "довгий багнет" }, -- Long Bayonet
[4841] = { "ріг Арра'чі" }, -- Horn of Arra'chea
[4848] = { "рило бойового кнура" }, -- Battleboar Snout
[4849] = { "вирізка бойового кнура" }, -- Battleboar Flank
[4850] = { "плани нападу Щетиношкурих" }, -- Bristleback Attack Plans
[4854] = { "пошматований демонами плащ" }, -- Demon Scarred Cloak
[4859] = { "медальйон Палаючого Леза" }, -- Burning Blade Medallion
[4862] = { "хвіст скорпіда-робітника" }, -- Scorpid Worker Tail
[4863] = { "інструменти гномів" }, -- Gnomish Tools
[4864] = { "череп Міншини" }, -- Minshina's Skull
[4865] = { "зіпсована шкура" }, -- Ruined Pelt
[4866] = { "голова Залазейна" }, -- Zalazane's Head
[4869] = { "кіготь Фіззла" }, -- Fizzle's Claw
[4870] = { "уривки полотна" }, -- Canvas Scraps
[4871] = { "опаляючий нашийник" }, -- Searing Collar
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
[4952] = { "бурехміль", use="Міцний ель, що збільшує вашу силу на 4 та зменшує ваш інтелект на 5 на 5 хв." }, -- Stormstout, @use A powerful brew that increases your strength by 4 and decreases your intellect by 5 for 5 min.
[4953] = { "трозька брага", use="Збільшує ваше здоров'я від 23 до 38, але зменшує дух на 4 на 5 хв." }, -- Trogg Brew, @use Increases your health by 23 to 37, but decreases your spirit by 4 for 5 min.
[4954] = { "пояс кочівника" }, -- Nomadic Belt
[4958] = { "вицвілий плащ" }, -- Sun-beaten Cloak
[4960] = { "легкий дріб", desc="Додає 2 пошкодження за секунду" }, -- Flash Pellet, @desc Adds 2 damage per second
[4961] = { "посох вартового снів" }, -- Dreamwatcher Staff
[4962] = { "двошарові рукавички" }, -- Double-layered Gloves
[4963] = { "плащ громового рога" }, -- Thunderhorn Cloak
[4964] = { "убивач гоблінів" }, -- Goblin Smasher
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
[4980] = { "рукавиці розвідувача" }, -- Prospector Gloves
[4986] = { "пошкоджений силовий камінь", use="Помістити на жертовник вогню" }, -- Flawed Power Stone, @use Place upon the Altar of Fire
[4992] = { "вербувальний лист", flavor="Непідписаний вербувальний лист." }, -- Recruitment Letter, @flavor An unsigned recruitment letter.
[4995] = { "підписаний вербувальний лист" }, -- Signed Recruitment Letter
[5006] = { "журнал Хазґорма" }, -- Khazgorm's Journal
[5012] = { "спори грибів" }, -- Fungal Spores
[5017] = { "нітрогліцерин" }, -- Nitroglycerin
[5018] = { "целюлоза" }, -- Wood Pulp
[5019] = { "нітрат натрію" }, -- Sodium Nitrate
[5021] = { "вибухова палиця Ґанна", use="Чудово підходить для знищення літальних апаратів." }, -- Explosive Stick of Gann, @use Perfect for destroying flying machines.
[5022] = { "голова Барака" }, -- Kodobane's Head
[5023] = { "голова Вероґа" }, -- Verog's Head
[5025] = { "голова Герзула" }, -- Hezrul's Head
[5026] = { "вогняна смола" }, -- Fire Tar
[5027] = { "оброблені спори" }, -- Rendered Spores
[5030] = { "наручі кентаврів" }, -- Centaur Bracers
[5038] = { "Сльоза Місяця" }, -- Tear of the Moons
[5040] = { "ніж тіньового мисливця" }, -- Shadow Hunter Knife
[5050] = { "ключ запалювання" }, -- Ignition Key
[5054] = { "самофланж" }, -- Samophlange
[5055] = { "неушкоджений ріг раптора" }, -- Intact Raptor Horn
[5057] = { "стиглий кавун", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Ripe Watermelon, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[5058] = { "яйце сілітіда" }, -- Silithid Egg
[5059] = { "рийний кіготь", use="Вирити яйця сілітіда." }, -- Digging Claw, @use Digs up silithid eggs.
[5060] = { "інструменти зломника" }, -- Thieves' Tools
[5061] = { "вкрадене срібло" }, -- Stolen Silver
[5062] = { "голова раптора" }, -- Raptor Head
[5063] = { "ікло Крініга Рилоскала" }, -- Kreenig Snarlsnout's Tusk
[5064] = { "кіготь чарокрилої" }, -- Witchwing Talon
[5065] = { "лейтенантський перстень гарпії" }, -- Harpy Lieutenant Ring
[5067] = { "голова Серени" }, -- Serena's Head
[5068] = { "висохле насіння", use="Помістити зерна в розколину Застійного оазису." }, -- Dried Seeds, @use Plant these seeds in the Stagnant Oasis fissure.
[5072] = { "череп Лока" }, -- Lok's Skull
[5073] = { "череп Нака" }, -- Nak's Skull
[5074] = { "череп Каза" }, -- Kuz's Skull
[5075] = { "кривавий скалок" }, -- Blood Shard
[5076] = { "партія черевиків" }, -- Shipment of Boots
[5077] = { "лінза для телескопа" }, -- Telescopic Lens
[5078] = { "медаль Терамору" }, -- Theramore Medal
[5080] = { "гросбух Ґазлоу" }, -- Gazlowe's Ledger
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
[5096] = { "пазурі скрадача" }, -- Prowler Claws
[5097] = { "смарагд «Котяче око»" }, -- Cats Eye Emerald
[5098] = { "панцир видозміненого тріскощелепа" }, -- Altered Snapjaw Shell
[5099] = { "копито Лакота'мані" }, -- Hoof of Lakota'mani
[5100] = { "шкура Ечеякі" }, -- Echeyakee's Hide
[5101] = { "ікло Ішамугала" }, -- Ishamuhale's Fang
[5102] = { "хвостовий шип Оватанки" }, -- Owatanka's Tailspike
[5103] = { "перо Ваште Пауні" }, -- Washte Pawne's Feather
[5104] = { "серце Іши Авака" }, -- Heart of Isha Awak
[5138] = { "голова женця" }, -- Harvester's Head
[5143] = { "кров громоящера" }, -- Thunder Lizard Blood
[5164] = { "крила громояструба" }, -- Thunderhawk Wings
[5165] = { "перо сонцелуского раптора", use="Помістити в гніздо сонцелуского раптора. (Відновлення 10 сек)" }, -- Sunscale Feather, @use Place at a scytheclaw nest. (10 Sec Cooldown)
[5166] = { "отруйна залоза павутиннолісих" }, -- Webwood Venom Sac
[5167] = { "яйце павутиннолісих" }, -- Webwood Egg
[5168] = { "насіння деревника" }, -- Timberling Seed
[5169] = { "паросток деревника" }, -- Timberling Sprout
[5170] = { "вкрита мохом пухлина" }, -- Mossy Tumor
[5175] = { "тотем землі" }, -- Earth Totem
[5176] = { "тотем вогню" }, -- Fire Totem
[5177] = { "тотем води" }, -- Water Totem
[5178] = { "тотем повітря" }, -- Air Totem
[5179] = { "вкрите мохом серце" }, -- Moss-twined Heart
[5184] = { "наповнений кришталевий фіал" }, -- Filled Crystal Phial
[5185] = { "кришталевий фіал", use="Наповнити кришталевий фіал водами місячного колодязя Тінистої долини." }, -- Crystal Phial, @use Right-click to fill the Crystal Phial at the Shadowglen moonwell.
[5186] = { "частково наповнена ємність" }, -- Partially Filled Vessel
[5188] = { "наповнений флакон" }, -- Filled Vessel
[5189] = { "сяючий плід" }, -- Glowing Fruit
[5190] = { "мерехтливий паросток" }, -- Shimmering Frond
[5203] = { "пазур рівнинного скрадача" }, -- Flatland Prowler Claw
[5204] = { "пояс Кривавоперих" }, -- Bloodfeather Belt
[5205] = { "пророслий паросток", use="Відновити вашій цілі від 76 до 91 здоров'я. (Відновлення 2 хв)" }, -- Sprouted Frond, @use Heal your target for 76 to 91. (2 Min Cooldown)
[5217] = { "заражене серце" }, -- Tainted Heart
[5218] = { "очищене серце деревника", use="Викликати деревника, який захищатиме вас протягом 20 хв." }, -- Cleansed Timberling Heart, @use Summons a Timberling to protect you for 20 min.
[5219] = { "вкрита написами кора" }, -- Inscribed Bark
[5221] = { "голова Меленаса" }, -- Melenas' Head
[5232] = { "крихітний камінь душі", use="Зберігає душу дружньої цілі. Якщо ціль, чия душа збережена, помирає, вона може оживити себе з 400 здоров'я та 700 мани. (Відновлення 30 хв)" }, -- Minor Soulstone, @use Stores the friendly target's soul.  If the target dies while his soul is stored, he will be able to resurrect with 400 health and 700 mana. (30 Min Cooldown)
[5233] = { "камінь Релу" }, -- Stone of Relu
[5234] = { "скам'янілість Флягопуза" }, -- Flagongut's Fossil
[5240] = { "смолоскипний жезл" }, -- Torchlight Wand
[5242] = { "тліючий жезл" }, -- Cinder Wand
[5244] = { "освячена паличка" }, -- Consecrated Wand
[5247] = { "скіпетр скорботи" }, -- Rod of Sorrow
[5249] = { "палаюча тріска" }, -- Burning Sliver
[5250] = { "обгорілий жезл" }, -- Charred Wand
[5251] = { "фіал провидіння", use="Створити чашу провидіння. (Відновлення 2 хв)" }, -- Phial of Scrying, @use Creates a bowl of scrying. (2 Min Cooldown)
[5252] = { "жезл розкладання" }, -- Wand of Decay
[5270] = { "мертвошляпка" }, -- Death Cap
[5271] = { "лусконіжка" }, -- Scaber Stalk
[5272] = { "божевільні письмена" }, -- Insane Scribbles
[5273] = { "реліквія Матистри" }, -- Mathystra Relic
[5274] = { "наплічник троянди" }, -- Rose Mantle
[5275] = { "зтягуючий пояс" }, -- Binding Girdle
[5279] = { "гарпієвий кушнір" }, -- Harpy Skinner
[5299] = { "рукавички місяця" }, -- Gloves of the Moon
[5302] = { "кобальтовий баклер" }, -- Cobalt Buckler
[5306] = { "посох вершника вітру" }, -- Wind Rider Staff
[5311] = { "черевики з пряжками" }, -- Buckled Boots
[5312] = { "клепані рукавиці" }, -- Riveted Gauntlets
[5313] = { "тотемна племінна каблучка" }, -- Totemic Clan Ring
[5314] = { "накидка мисливця на кнурів" }, -- Boar Hunter's Cape
[5315] = { "нарукавники полісся" }, -- Timberland Armguards
[5316] = { "жакет з облущеної кори" }, -- Barkshell Tunic
[5317] = { "жакет з пересохшого моху" }, -- Dry Moss Tunic
[5318] = { "протигарпієва сокира" }, -- Zhovur Axe
[5320] = { "м'які пластинчасті чоботи" }, -- Padded Lamellar Boots
[5321] = { "елегантний короткий меч" }, -- Elegant Shortsword
[5322] = { "відбійний молот" }, -- Demolition Hammer
[5323] = { "вічносяйний ліхтар", use="Відновити вашій цілі від 135 до 165 здоров'я. (Відновлення 30 хв)" }, -- Everglow Lantern, @use Heal your target for 135 to 165. (30 Min Cooldown)
[5324] = { "молоток інженера" }, -- Engineer's Hammer
[5325] = { "зварювальний щит" }, -- Welding Shield
[5326] = { "спалахуючий жезл" }, -- Flaring Baton
[5327] = { "заяложені штани майструвальника" }, -- Greasy Tinker's Pants
[5328] = { "пояс із застібкою" }, -- Cinched Belt
[5334] = { "99-річний портвейн" }, -- 99-Year-Old Port
[5335] = { "мішечок з монетами" }, -- A Sack of Coins
[5336] = { "сережка грела" }, -- Grell Earring
[5337] = { "рукавички мандрів" }, -- Wayfaring Gloves
[5338] = { "древня печатка місячного каменю" }, -- Ancient Moonstone Seal
[5339] = { "змієквіт" }, -- Serpentbloom
[5340] = { "мішалка для казана" }, -- Cauldron Stirrer
[5342] = { "рапторовий пунш", use="Збільшує ваш інтелект на 4 та зменшує вашу витривалість на 5 на 5 хв." }, -- Raptor Punch, @use Increases your Intellect by 4 and decreases your Stamina by 5 for 5 min.
[5343] = { "плащ бармена" }, -- Barkeeper's Cloak
[5344] = { "загострена сокира" }, -- Pointed Axe
[5345] = { "камнедеревний молот" }, -- Stonewood Hammer
[5346] = { "орчий бойовий лук" }, -- Orcish Battle Bow
[5348] = { "потертий пергамент" }, -- Worn Parchment
[5349] = { "начаклований кекс", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Muffin, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.
[5350] = { "начаклована вода", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}" }, -- Conjured Water, @use Restores 151.2 mana over 18 sec.  Must remain seated while drinking.
[5351] = { "каблучка мисливця за головами" }, -- Bounty Hunter's Ring
[5352] = { "книга \"Сили підземні\"" }, -- Book: The Powers Below
[5354] = { "лист до Дельґрена" }, -- Letter to Delgren
[5355] = { "пояс володаря звірів" }, -- Beastmaster's Girdle
[5356] = { "опаляючий жезл" }, -- Branding Rod
[5357] = { "вартовий долини" }, -- Ward of the Vale
[5359] = { "манускрипт Лорґаліса" }, -- Lorgalis Manuscript
[5360] = { "реліквія високородних" }, -- Highborne Relic
[5366] = { "сяючий камінь душі" }, -- Glowing Soul Gem
[5382] = { "кулон Анайї" }, -- Anaya's Pendant
[5383] = { "голова Атріка Нарассіна" }, -- Athrikus Narassin's Head
[5385] = { "нога повзуна" }, -- Crawler Leg
[5386] = { "чудова шкура місяцескрада" }, -- Fine Moonstalker Pelt
[5387] = { "зачарований плащ місяцескрада", use="Перетворитися на місяцескрада та отримати невидимість на 5 хв." }, -- Enchanted Moonstalker Cloak, @use Transform into a Moonstalker and become invisible for 5 min.
[5388] = { "череп Рана Кривавозубого" }, -- Ran Bloodtooth's Skull
[5390] = { "повідомлення Фендрала" }, -- Fandral's Message
[5391] = { "рідкісна земля" }, -- Rare Earth
[5392] = { "кинджал шиподерева" }, -- Thistlewood Dagger
[5393] = { "посох шиподерева" }, -- Thistlewood Staff
[5394] = { "тренувальні рукавиці лучника" }, -- Archery Training Gloves
[5395] = { "щит діброви" }, -- Woodland Shield
[5398] = { "широкі поножі" }, -- Canopy Leggings
[5399] = { "чоботи вистежування" }, -- Tracking Boots
[5405] = { "вовняний плащ" }, -- Draped Cloak
[5411] = { "тотем очищення Зимового Копита", use="Викликає духів Зимового Копита для очищення." }, -- Winterhoof Cleansing Totem, @use Invokes Winterhoof spirits of cleansing.
[5412] = { "око молотника" }, -- Thresher Eye
[5413] = { "ікло місяцескрада" }, -- Moonstalker Fang
[5414] = { "посивілий скальп" }, -- Grizzled Scalp
[5415] = { "тотем очищення Громового Рога", use="Викликає духів Громового Рога для очищення." }, -- Thunderhorn Cleansing Totem, @use Invokes Thunderhorn spirits of cleansing.
[5416] = { "тотем очищення Дикої Гриви", use="Викликає духів Дикої Гриви для очищення." }, -- Wildmane Cleansing Totem, @use Invokes Wildmane spirits of cleansing.
[5419] = { "дикі наручі" }, -- Feral Bracers
[5420] = { "броня банші" }, -- Banshee Armor
[5424] = { "стародавня статуетка" }, -- Ancient Statuette
[5428] = { "екзотична кулінарна книга", flavor="Як готувати людина" }, -- An Exotic Cookbook, @flavor How To Serve Man
[5437] = { "батранове волосся" }, -- Bathran's Hair
[5440] = { "пляшка пошесті" }, -- Bottle of Disease
[5441] = { "малий гаман для куль", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Small Shot Pouch, @equip Increases ranged attack speed by 10%.
[5442] = { "голова Аруґала" }, -- Head of Arugal
[5445] = { "зорамський перстень" }, -- Ring of Zoram
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
[5475] = { "дерев'яний ключ", use="Відкриває обдерту скриню." }, -- Wooden Key, @use Unlocks a worn chest.
[5481] = { "роги сатира" }, -- Satyr Horns
[5490] = { "голова гнівохвостої наги" }, -- Wrathtail Head
[5493] = { "сльоза Елуни" }, -- Elune's Tear
[5494] = { "жменя зорепилу" }, -- Handful of Stardust
[5505] = { "щоденник Тероніса", flavor="Щоденник підмочений, але загалом в хорошому стані." }, -- Teronis' Journal, @flavor The journal is waterlogged, but in otherwise good condition.
[5508] = { "впалий місячний камінь" }, -- Fallen Moonstone
[5509] = { "камінь здоров'я", use="Миттєво відновлює 500 здоров'я. (Відновлення 2 хв)" }, -- Healthstone, @use Instantly restores 500 life. (2 Min Cooldown)
[5510] = { "великий камінь здоров'я", use="Миттєво відновлює 800 здоров'я. (Відновлення 2 хв)" }, -- Greater Healthstone, @use Instantly restores 800 life. (2 Min Cooldown)
[5511] = { "малий камінь здоров'я", use="Миттєво відновлює 250 здоров'я. (Відновлення 2 хв)" }, -- Lesser Healthstone, @use Instantly restores 250 life. (2 Min Cooldown)
[5512] = { "крихітний камінь здоров'я", use="Миттєво відновлює 100 здоров'я. (Відновлення 2 хв)" }, -- Minor Healthstone, @use Instantly restores 100 life. (2 Min Cooldown)
[5513] = { "нефрит мани", use="Відновлює від 550 до 650 мани. (Відновлення 2 хв)" }, -- Mana Jade, @use Restores 550 to 650 mana. (2 Min Cooldown)
[5514] = { "агат мани", use="Відновлює від 375 до 425 мани. (Відновлення 2 хв)" }, -- Mana Agate, @use Restores 375 to 425 mana. (2 Min Cooldown)
[5519] = { "залізне навершя" }, -- Iron Pommel
[5520] = { "щоденник Велінди" }, -- Velinde's Journal
[5521] = { "ключ Велінди" }, -- Velinde's Key
[5522] = { "камінь чарів", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", use="Усуває всі магічні ефекти з заклинача та поглинає 400 магічної шкоди протягом 1 хв." }, -- Spellstone, @equip Improves your chance to get a critical strike with spells by 1%., @use Removes all magic effects from the caster and will absorb 400 magic damage for 1 min.
[5533] = { "фоліант Ілкруда Маґтрулла" }, -- Ilkrud Magthrull's Tome
[5535] = { "Компендіум полеглих" }, -- Compendium of the Fallen
[5536] = { "Мітологія титанів" }, -- Mythology of the Titans
[5537] = { "голова Сарілуса Гидкородного" }, -- Sarilus Foulborne's Head
[5538] = { "обручка Воррела" }, -- Vorrel's Wedding Ring
[5544] = { "череп Дала Кривавопазура" }, -- Dal Bloodclaw's Skull
[5547] = { "відтворений жезл" }, -- Reconstructed Rod
[5565] = { "пекельний камінь" }, -- Infernal Stone
[5570] = { "яйце мохового павука" }, -- Deepmoss Egg
[5579] = { "молот повстанців" }, -- Militia Warhammer
[5580] = { "молоток повстанців" }, -- Militia Hammer
[5582] = { "каміннопазуриста живиця" }, -- Stonetalon Sap
[5583] = { "луска чарівного дракончика" }, -- Fey Dragon Scale
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
[5604] = { "ельфійський жезл" }, -- Elven Wand
[5605] = { "ніж для кронування" }, -- Pruning Knife
[5606] = { "садові рукавички" }, -- Gardening Gloves
[5609] = { "пояс непохитності" }, -- Steadfast Cinch
[5610] = { "лісошквальний плащ" }, -- Gustweald Cloak
[5611] = { "сльоза горя" }, -- Tear of Grief
[5612] = { "манжети з плюща" }, -- Ivy Cuffs
[5613] = { "посох Очистителя", use="Очищає дружню ціль, усуваючи 1 ефект хвороби та 1 ефект отрути. (Відновлення 5 хв)" }, -- Staff of the Purifier, @use Purifies the friendly target, removing 1 disease effect and 1 poison effect. (5 Min Cooldown)
[5614] = { "удар серафима" }, -- Seraph's Strike
[5615] = { "меч лісника" }, -- Woodsman Sword
[5617] = { "поножі волоцюги" }, -- Vagabond Leggings
[5618] = { "плащ розвідника" }, -- Scout's Cloak
[5619] = { "нефритовий фіал", use="Наповнити нефритовий фіал водами місячного колодязя Зоряного Бризу." }, -- Jade Phial, @use Fill the Jade Phial at the Starbreeze moonwell.
[5620] = { "флакон крові невинних" }, -- Vial of Innocent Blood
[5621] = { "турмаліновий фіал", use="Наповнити турмаліновий фіал водами місячного колодязя Арлітріенських ставів." }, -- Tourmaline Phial, @use Fill the Tourmaline Phial at the Pools of Arlithrien moonwell.
[5622] = { "перстень духовенства" }, -- Clergy Ring
[5623] = { "аметистовий фіал", use="Наповнити аметистовий фіал водами місячного колодязя поляни Оракула." }, -- Amethyst Phial, @use Fill the Amethyst Phial at the Oracle Glade moonwell.
[5626] = { "черепотес" }, -- Skullchipper
[5627] = { "клинок-реліквія" }, -- Relic Blade
[5628] = { "записка Зами" }, -- Zamah's Note
[5629] = { "рукавиці Молоторука" }, -- Hammerfist Gloves
[5630] = { "вітрофетрові рукавиці" }, -- Windfelt Gloves
[5631] = { "зілля люті", use="Збільшує лють на {1}-{2}. (Відновлення 2 хв)#by {1} to {2}" }, -- Rage Potion, @use Increases Rage by 20 to 40. (2 Min Cooldown)
[5633] = { "велике зілля люті", use="Збільшує лють на {1}-{2}. (Відновлення 2 хв)#by {1} to {2}" }, -- Great Rage Potion, @use Increases Rage by 30 to 60. (2 Min Cooldown)
[5634] = { "зілля вільної дії", use="Надає невразливість до приголомшення та ефектів ускладнення руху на наступні 30 сек. Не знімає вже наявні ефекти. (Відновлення 2 хв)" }, -- Free Action Potion, @use Makes you immune to Stun and Movement Impairing effects for the next 30 sec. Does not remove effects already on the imbiber. (2 Min Cooldown)
[5637] = { "велике ікло" }, -- Large Fang
[5638] = { "розсіювач токсичного туману", use="Розмістити біля повітряного порту ТзНБ \"Авантюра\"." }, -- Toxic Fogger, @use Place near the Venture Co. Airport
[5639] = { "наповнений нефритовий фіал" }, -- Filled Jade Phial
[5640] = { "рецепт: Зілля люті", use="Навчає вас створювати зілля люті." }, -- Recipe: Rage Potion, @use Teaches you how to make a Rage Potion.
[5642] = { "рецепт: Зілля вільної дії", use="Навчає вас створювати зілля вільної дії." }, -- Recipe: Free Action Potion, @use Teaches you how to make a Free Action Potion.
[5643] = { "рецепт: Велике зілля люті", use="Навчає вас створювати велике зілля люті." }, -- Recipe: Great Rage Potion, @use Teaches you how to make a Great Rage Potion.
[5645] = { "наповнений турмаліновий фіал" }, -- Filled Tourmaline Phial
[5646] = { "фіал з благословенною водою" }, -- Vial of Blessed Water
[5659] = { "тліюча вуглинка" }, -- Smoldering Embers
[5664] = { "іржава шрапнель" }, -- Corroded Shrapnel
[5669] = { "уламки пилового дідька" }, -- Dust Devil Debris
[5675] = { "кристалічна луска" }, -- Crystalized Scales
[5686] = { "голова Орданія" }, -- Ordanus' Head
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
[5757] = { "дубова палиця" }, -- Hardwood Cudgel
[5770] = { "мантія аркани" }, -- Robes of Arcana
[5776] = { "кийок старійшини" }, -- Elder's Cane
[5777] = { "сокира сміливця" }, -- Brave's Axe
[5778] = { "груба тростина" }, -- Primitive Walking Stick
[5779] = { "півтораручний меч відречених" }, -- Forsaken Bastard Sword
[5784] = { "слизотна луска мурлока" }, -- Slimy Murloc Scale
[5785] = { "товста луска мурлока" }, -- Thick Murloc Scale
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
[5804] = { "гоблінські чутки" }, -- Goblin Rumors
[5805] = { "ревнісне серце" }, -- Heart of Zeal
[5806] = { "Йолопиво" }, -- Fool's Stout
[5807] = { "звіт про \"Йолопиво\"" }, -- Fool's Stout Report
[5808] = { "отруйна залоза гордокрила" }, -- Pridewing Venom Sac
[5810] = { "свіжа туша", use="Покласти на полум'я Узела." }, -- Fresh Carcass, @use Place upon the Flame of Uzel.
[5811] = { "грива Кригопащі" }, -- Frostmaw's Mane
[5812] = { "мантія античності" }, -- Robes of Antiquity
[5813] = { "тавро Еміля" }, -- Emil's Brand
[5814] = { "обладунок тріскоплину" }, -- Snapbrook Armor
[5815] = { "крижаний камінь", hit="Підриває ціль, завдаючи їй 75 шкоди від криги." }, -- Glacial Stone, @hit Blasts a target for 75 Frost damage.
[5816] = { "сяйво Елуни", use="Дає невразливість до пошкодження та заклять на {1} с. (Відновлення 2 хв)#for {1} sec" }, -- Light of Elune, @use Grants immunity from all damage and spells for 10 sec. (2 Min Cooldown)
[5817] = { "лук Лунаріса" }, -- Lunaris Bow
[5818] = { "жезл місячного вогню" }, -- Moonbeam Wand
[5820] = { "чарівне напліччя" }, -- Faerie Mantle
[5824] = { "скрижаль волі" }, -- Tablet of Will
[5825] = { "кулон Трешали" }, -- Treshala's Pendant
[5826] = { "план Крейвела" }, -- Kravel's Scheme
[5827] = { "лист Фіззла Латуноболта" }, -- Fizzle Brassbolts' Letter
[5830] = { "голова Кенати" }, -- Kenata's Head
[5831] = { "голова Фардела" }, -- Fardel's Head
[5832] = { "голова Марселя" }, -- Marcel's Head
[5833] = { "індурієва руда" }, -- Indurium Ore
[5837] = { "ребро Сталекуса" }, -- Steelsnap's Rib
[5838] = { "сувій зі шкіри кодо" }, -- Kodo Skin Scroll
[5842] = { "неочищений зразок руди" }, -- Unrefined Ore Sample
[5843] = { "кіготь Ґренки" }, -- Grenka's Claw
[5844] = { "фрагменти Рок'аліма" }, -- Fragments of Rok'Alim
[5845] = { "шмат м'яса", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Flank of Meat, @use Restores 552 health over 24 sec.  Must remain seated while eating.
[5846] = { "запечатана записка Коррана" }, -- Korran's Sealed Note
[5848] = { "порожниста кістка стерв'ятника" }, -- Hollow Vulture Bone
[5849] = { "ящик захисних шоломів" }, -- Crate of Crash Helmets
[5850] = { "запечатана записка Белґрома" }, -- Belgrom's Sealed Note
[5851] = { "ключ Коззла" }, -- Cozzle's Key
[5852] = { "креслення паливного регулятора" }, -- Fuel Regulator Blueprints
[5853] = { "цілий панцир сілітіда" }, -- Intact Silithid Carapace
[5854] = { "кіготь сілітіда" }, -- Silithid Talon
[5855] = { "серце сілітіда" }, -- Silithid Heart
[5860] = { "Спадщина Аспектів" }, -- Legacy of the Aspects
[5861] = { "Джерела загрози невмерлих" }, -- Beginnings of the Undead Threat
[5862] = { "сифорієвий прискорювач" }, -- Seaforium Booster
[5865] = { "модифікований сифорієвий прискорювач" }, -- Modified Seaforium Booster
[5866] = { "зразок індурієвої руди" }, -- Sample of Indurium Ore
[5867] = { "гравійований фіал", use="Наповнити гравійований фіал у місячному колодязі Ясенедолу." }, -- Etched Phial, @use Fill the Etched Phial at the Ashenvale moonwell.
[5868] = { "наповнений гравійований фіал" }, -- Filled Etched Phial
[5869] = { "роздвоєне копито" }, -- Cloven Hoof
[5876] = { "бульба синьолиста" }, -- Blueleaf Tuber
[5877] = { "тріснутий панцир сілітіда" }, -- Cracked Silithid Carapace
[5879] = { "сутінкова підвіска" }, -- Twilight Pendant
[5880] = { "ящик з отворами", use="Випустити шморгоноса біля закопаних булб синьолиста в краалі Бритвоболотих. (Відновлення 30 сек)" }, -- Crate With Holes, @use Use in Razorfen Kraul near buried tubers to summon a Snufflenose Gopher. (30 Sec Cooldown)
[5881] = { "голова Келріса" }, -- Head of Kelris
[5897] = { "посібник власника шморгоноса" }, -- Snufflenose Owner's Manual
[5917] = { "звіт шпигуна" }, -- Spy's Report
[5936] = { "пояс зі шкіри звіра" }, -- Animal Skin Belt
[5939] = { "швацькі рукавички" }, -- Sewing Gloves
[5940] = { "кістяний баклер" }, -- Bone Buckler
[5941] = { "латунні лускаті штани" }, -- Brass Scale Pants
[5944] = { "наголінники народного ополчення" }, -- Greaves of the People's Militia
[5946] = { "запечатана записка для Еллінга" }, -- Sealed Note to Elling
[5947] = { "документи повстанського братства" }, -- Defias Docket
[5948] = { "лист до Йоргена" }, -- Letter to Jorgen
[5952] = { "заражений мозковий стовбур" }, -- Corrupted Brain Stem
[5956] = { "ковальский молот" }, -- Blacksmith Hammer
[5960] = { "запечатана записка для наглядача Бакуса" }, -- Sealed Note to Watcher Backus
[5996] = { "еліксир водного дихання", use="Дозволяє дихати водою протягом 30 хв. (Відновлення 3 сек)" }, -- Elixir of Water Breathing, @use Allows the Imbiber to breathe water for 30 min. (3 Sec Cooldown)
[5997] = { "еліксир крихітного захисту", use="Збільшує броню на 50 на 1 годину. (Відновлення 3 ссек)" }, -- Elixir of Minor Defense, @use Increases armor by 50 for 1 hour. (3 Sec Cooldown)
[5998] = { "замовлення Бурешпиля" }, -- Stormpike's Request
[6016] = { "зразок вовчого серця" }, -- Wolf Heart Sample
[6037] = { "злиток ясносрібла" }, -- Truesilver Bar
[6048] = { "зілля тіньового захисту", use="Поглинає від {1} до {2} шкоди від тіні. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Shadow Protection Potion, @use Absorbs 675 to 1125 shadow damage. Lasts 1 hour. (2 Min Cooldown)
[6049] = { "зілля вогняного захисту", use="Поглинає від {1} до {2} шкоди від вогню. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Fire Protection Potion, @use Absorbs 975 to 1625 fire damage. Lasts 1 hour. (2 Min Cooldown)
[6050] = { "зілля крижаного захисту", use="Поглинає від {1} до {2} шкоди від холоду. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Frost Protection Potion, @use Absorbs 1350 to 2250 frost damage. Lasts 1 hour. (2 Min Cooldown)
[6051] = { "зілля священного захисту", use="Поглинає від {1} до {2} шкоди від священності. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Holy Protection Potion, @use Absorbs 300 to 500 holy damage. Lasts 1 hour. (2 Min Cooldown)
[6052] = { "зілля природного захисту", use="Поглинає від {1} до {2} шкоди від природи. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Nature Protection Potion, @use Absorbs 1350 to 2250 nature damage. Lasts 1 hour. (2 Min Cooldown)
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
[6065] = { "дослідження просторової конвергенції Хадґара", flavor="Ці папери запечатані магічними силами." }, -- Khadgar's Essays on Dimensional Convergence, @flavor These documents are sealed by a magical force.
[6068] = { "рецепт: Тіньова олія", use="Навчає вас створювати тіньову олію." }, -- Recipe: Shadow Oil, @use Teaches you how to make Shadow Oil.
[6070] = { "браслети з вовчої шкіри" }, -- Wolfskin Bracers
[6076] = { "завужені штани" }, -- Tapered Pants
[6078] = { "щит пікінера" }, -- Pikeman Shield
[6080] = { "серце тіньової пантери" }, -- Shadow Panther Heart
[6081] = { "гриб повелителя болота" }, -- Mire Lord Fungus
[6082] = { "пухлина глибокохода" }, -- Deepstrider Tumor
[6084] = { "поножі вартового Штормовію" }, -- Stormwind Guard Leggings
[6085] = { "мундир піхотинця" }, -- Footman Tunic
[6086] = { "сироватка правди Фаустіна" }, -- Faustin's Truth Serum
[6087] = { "шосси західного краю" }, -- Chausses of Westfall
[6089] = { "вариво Зредуса" }, -- Zraedus's Brew
[6091] = { "ящик з камінням сили" }, -- Crate of Power Stones
[6092] = { "чоботи з чорного дракончика" }, -- Black Whelp Boots
[6093] = { "погибель орків" }, -- Orc Crusher
[6094] = { "пронзаюча сокира" }, -- Piercing Axe
[6095] = { "чоботи мандрів" }, -- Wandering Boots
[6096] = { "підмайстринська сорочка" }, -- Apprentice's Shirt
[6145] = { "кулон Клариси", flavor="Покладіть на могилу Юріва." }, -- Clarice's Pendant, @flavor Place upon Yuriv's grave.
[6149] = { "велике зілля мани", ref=2455 }, -- Greater Mana Potion
[6168] = { "пазур пилкозубого кусача" }, -- Sawtooth Snapper Claw
[6169] = { "необроблена вирізка пилкозуба" }, -- Unprepared Sawtooth Flank
[6170] = { "реактиви чарівників" }, -- Wizards' Reagents
[6175] = { "артефакт Атал'ай" }, -- Atal'ai Artifact
[6196] = { "дубина Набору" }, -- Noboru's Cudgel
[6211] = { "рецепт: Еліксир сили огра", use="Навчає вас створювати еліксир сили огра." }, -- Recipe: Elixir of Ogre's Strength, @use Teaches you how to make an Elixir of Ogre's Strength.
[6215] = { "збалансований бойовий посох" }, -- Balanced Fighting Stick
[6219] = { "дуговий гайковерт" }, -- Arclight Spanner
[6223] = { "щит Темнодолу" }, -- Crest of Darkshire
[6256] = { "вудка" }, -- Fishing Pole
[6260] = { "блакитний барвник" }, -- Blue Dye
[6265] = { "уламок душі" }, -- Soul Shard
[6281] = { "череп брязкокісткового скелета" }, -- Rattlecage Skull
[6282] = { "священні поховальні штани" }, -- Sacred Burial Trousers
[6283] = { "книга Ура" }, -- The Book of Ur
[6284] = { "руни виклику", use="Викликати пустотника в колі виклику. (Відновлення 3 хв)" }, -- Runes of Summoning, @use Call forth a voidwalker using the summoning circle. (3 Min Cooldown)
[6285] = { "гримуар Еґаліна" }, -- Egalin's Grimoire
[6286] = { "чисті серця", use="Викликати сукуба в колі виклику. (Відновлення 3 хв)" }, -- Pure Hearts, @use Call forth a succubus using the summoning circle. (3 Min Cooldown)
[6312] = { "серце Даліна" }, -- Dalin's Heart
[6313] = { "серце Комара" }, -- Comar's Heart
[6335] = { "вицвілі чоботи" }, -- Grizzled Boots
[6365] = { "міцна вудка", equip="Збільшує навичку риболовлі на 5." }, -- Strong Fishing Pole, @equip Increased Fishing +5.
[6370] = { "олія чорноротика" }, -- Blackmouth Oil
[6371] = { "вогняна олія" }, -- Fire Oil
[6372] = { "зілля швидкого плавання", use="Збільшує швидкість плавання на {1}% на {2} с. (Відновлення 2 хв)#by {1}% for {2} sec" }, -- Swim Speed Potion, @use Increases swim speed by 100% for 20 sec. (2 Min Cooldown)
[6373] = { "еліксир вогнеміці", use="Збільшує шкоду від вогняних заклинань на 10 на 30 хв. (Відновлення 3 сек)" }, -- Elixir of Firepower, @use Increases spell fire damage by up to 10 for 30 min. (3 Sec Cooldown)
[6414] = { "печатка Сильвани" }, -- Seal of Sylvanas
[6435] = { "наповнений палаючий самоцвіт" }, -- Infused Burning Gem
[6436] = { "палаючий самоцвіт", use="Захоплює дух найближчого члена Палаючого Леза. Якщо ціль помирає під час дії заклинання — заклинач отримує 1 наповнений палаючий самоцвіт." }, -- Burning Gem, @use Captures the spirit of the nearest Burning Blade member. If target dies while being drained, the caster gains 1 Infused Burning Gem.
[6443] = { "спотворена шкура" }, -- Deviate Hide
[6462] = { "запечатаний ящик" }, -- Secure Crate
[6464] = { "плачуча сутність" }, -- Wailing Essence
[6468] = { "пояс зі спотвореної луски" }, -- Deviate Scale Belt
[6470] = { "спотворена луска" }, -- Deviate Scale
[6471] = { "бездоганна спотворена луска" }, -- Perfect Deviate Scale
[6476] = { "рецепт: Пояс зі спотвореної луски", use="Навчає вас створенню пояса зі спотвореної луски." }, -- Pattern: Deviate Scale Belt, @use Teaches you how to craft a Deviate Scale Belt.
[6477] = { "пояс лугів" }, -- Grassland Sash
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
[6529] = { "блискуча блешня", use="Оснащення вашої вудки такою блешнею збільшує навичку риболовлі на 25 протягом 10 хв." }, -- Shiny Bauble, @use When applied to your fishing pole, increases Fishing by 25 for 10 min.
[6532] = { "райдужні блешні", use="Оснащення вашої вудки такою блешнею збільшує навичку риболовлі на 75 протягом 10 хв." }, -- Bright Baubles, @use When applied to your fishing pole, increases Fishing by 75 for 10 minutes.
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
[6658] = { "зразок ошийника" }, -- Example Collar
[6659] = { "штани скарабея" }, -- Scarab Trousers
[6662] = { "еліксир гігантського росту", use="Ваш розмір збільшено, а ваша сила зростає на 8, відповідно до вашого нового розміру. Триває 2 хв. (Відновлення 3 сек)" }, -- Elixir of Giant Growth, @use Your size is increased and your Strength goes up by 8 to match your new size.  Lasts 2 min. (3 Sec Cooldown)
[6663] = { "рецепт: Еліксир гігантського росту", use="Навчає вас створювати еліксир гігантського росту." }, -- Recipe: Elixir of Giant Growth, @use Teaches you how to make an Elixir of Giant Growth.
[6664] = { "напліччя вуду" }, -- Voodoo Mantle
[6665] = { "наручі заклять" }, -- Hexed Bracers
[6666] = { "черевики землечерпа" }, -- Dredge Boots
[6669] = { "священний перстень" }, -- Sacred Band
[6670] = { "броня пантери" }, -- Panther Armor
[6671] = { "поножі джаггернаута" }, -- Juggernaut Leggings
[6675] = { "загартовані наручі" }, -- Tempered Bracers
[6676] = { "баклер констебля" }, -- Constable Buckler
[6677] = { "жезл заклинателя" }, -- Spellcrafter Wand
[6678] = { "перстень ельфійської благодаті" }, -- Band of Elven Grace
[6684] = { "палиця керування шморгоносом", use="Для керування шморгоносом." }, -- Snufflenose Command Stick, @use For use on a Snufflenose Gopher.
[6713] = { "рвані штани" }, -- Ripped Pants
[6714] = { "Динаміт \"Простокид\"", use="Динаміт для неінженерів, який майже завжди досягає цілі! Завдає від 51 до 69 шкоди вогнем в радіусі 5 м. (Відновлення 1 хв)" }, -- Ez-Thro Dynamite, @use The dynamite for Non-Engineers that nearly always gets to the target!  Inflicts 51 to 69 Fire damage in a 5 yard radius. (1 Min Cooldown)
[6720] = { "головний убір мисливця за духами" }, -- Spirit Hunter Headdress
[6721] = { "нагрудник Кора" }, -- Chestplate of Kor
[6722] = { "звірячі кайдани" }, -- Beastial Manacles
[6723] = { "медаль за відвагу" }, -- Medal of Courage
[6725] = { "мармуровий баклер" }, -- Marbled Buckler
[6726] = { "модифікований ремінь безпеки Раззеріка" }, -- Razzeric's Customized Seatbelt
[6727] = { "перегонові рукавички Раззеріка" }, -- Razzeric's Racing Grips
[6729] = { "блискавична запальничка Фіззла" }, -- Fizzle's Zippy Lighter
[6732] = { "рукавички гнома-механіка" }, -- Gnomish Mechanic's Gloves
[6737] = { "штани сухолисту" }, -- Dryleaf Pants
[6738] = { "кривавий півмісяць", hit="Ранить ціль, спричиняючи 45 шкоди від кровотечі протягом 30 сек." }, -- Bleeding Crescent, @hit Wounds the target causing them to bleed for 45 damage over 30 sec.
[6739] = { "лук Скелеступа" }, -- Cliffrunner's Aim
[6740] = { "лазурний пояс" }, -- Azure Sash
[6741] = { "орчий бойовий меч" }, -- Orcish War Sword
[6742] = { "пояс кам'яного кулака" }, -- Stonefist Girdle
[6744] = { "рукавиці капелана" }, -- Gloves of Kapelan
[6745] = { "накидка стрімкобіга" }, -- Swiftrunner Cape
[6748] = { "перстень мавпи" }, -- Monkey Ring
[6749] = { "перстень тигра" }, -- Tiger Band
[6750] = { "перстень змії" }, -- Snake Hoop
[6751] = { "траурна шаль" }, -- Mourning Shawl
[6752] = { "уланські чоботи" }, -- Lancer Boots
[6753] = { "оберіг з пір'я" }, -- Feather Charm
[6755] = { "невеликий ящик з самоцвітами" }, -- A Small Container of Gems
[6757] = { "перстень-печатка Джайни" }, -- Jaina's Signet Ring
[6775] = { "фоліант божественності" }, -- Tome of Divinity
[6781] = { "кружка Бартлбі" }, -- Bartleby's Mug
[6782] = { "значок маршала Знесилія" }, -- Marshal Haggard's Badge
[6783] = { "ключ Мертвозуба", use="Відкриває скриню Мертвозуба." }, -- Dead-tooth's Key, @use Opens Dead-tooth's Strongbox.
[6785] = { "Сили Порожнечі", flavor="За авторством Хадґара" }, -- Powers of the Void, @flavor By the hand of Khadgar
[6799] = { "голова Веджріка" }, -- Vejrek's Head
[6800] = { "смеркова руда" }, -- Umbral Ore
[6802] = { "меч Омена" }, -- Sword of Omen
[6803] = { "палиця пророцтва" }, -- Prophetic Cane
[6804] = { "молот бурелому" }, -- Windstorm Hammer
[6805] = { "ріг Ворла" }, -- Horn of Vorlus
[6806] = { "танцююче полум'я" }, -- Dancing Flame
[6808] = { "елунітова руда" }, -- Elunite Ore
[6809] = { "медальйон Елури" }, -- Elura's Medallion
[6810] = { "кольє Сурени" }, -- Surena's Choker
[6812] = { "ящик елуніту" }, -- Case of Elunite
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
[6894] = { "серце вихору" }, -- Whirlwind Heart
[6895] = { "ковальський молоток Джордана" }, -- Jordan's Smithing Hammer
[6898] = { "сфера Соран'рука", equip={ "Збільшує шкоду від заклинань і ефектів вогню на 4.", "Збільшує шкоду від заклинань і ефектів тіні на 4." }, use="Відновлює 25 здоров'я кожні 3 сек протягом 30 сек. (Відновлення 30 хв)" }, -- Orb of Soran'ruk, @equip Increases damage done by Fire spells and effects by up to 4., @equip Increases damage done by Shadow spells and effects by up to 4., @use Restores 25 health every 3 sec for 30 sec. (30 Min Cooldown)
[6900] = { "зачарована золота кровомантія" }, -- Enchanted Gold Bloodrobe
[6912] = { "серцедерево" }, -- Heartswood
[6913] = { "серцевина серцедерева", use="Викликати сукуба в колі виклику. (Відновлення 3 хв)" }, -- Heartswood Core, @use Call forth a succubus using the summoning circle. (3 Min Cooldown)
[6914] = { "фрагмент Соран'рука" }, -- Soran'ruk Fragment
[6915] = { "великий фрагмент Соран'рука" }, -- Large Soran'ruk Fragment
[6926] = { "записи Фьюрена", flavor="Цей лист запечатано" }, -- Furen's Notes, @flavor This letter is sealed
[6928] = { "кольє з кривавого каменю", use="Викликати пустотника в колі виклику. (Відновлення 3 хв)" }, -- Bloodstone Choker, @use Call forth a voidwalker using the summoning circle. (3 Min Cooldown)
[6929] = { "пергамент Бат'раха" }, -- Bath'rah's Parchment
[6930] = { "жезл виклику" }, -- Rod of Channeling
[6931] = { "запліснявілий фоліант", use="Викликати скверногончу в колі виклику. (Відновлення 3 хв)", flavor="На обкладинці видніється тьмяний напис: 'Фоліант Змови'." }, -- Moldy Tome, @use Call forth a felhunter using the summoning circle. (3 Min Cooldown), @flavor Faint letters on the cover of the locked book read, 'Tome of the Cabal.'
[6948] = { "камінь повернення", use="Повертає вас додому. Поговоріть з корчмарем в іншому місці, щоб змінити домівку." }, -- Hearthstone, @use Returns you to <Hearthstone Location>.  Speak to an Innkeeper in a different place to change your home location.
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
[7208] = { "ключ Тазана", use="Використовується для відкриття ранця Тазана." }, -- Tazan's Key, @use Used to open Tazan's satchel.
[7209] = { "ранець Тазана" }, -- Tazan's Satchel
[7226] = { "маг-тастичний гізмонітор" }, -- Mage-tastic Gizmonitor
[7227] = { "ротики Бальнірів" }, -- Balnir Snapdragons
[7229] = { "жилет дослідникв" }, -- Explorer's Vest
[7231] = { "рекомендаційний лист Астора" }, -- Astor's Letter of Introduction
[7247] = { "ящик зі скринями стримування", use="Створити скриню для стримування приголомшеного породження розлому (Відновлення 8 сек)" }, -- Chest of Containment Coffers, @use Create a containment coffer on a stunned Rift Spawn (8 Sec Cooldown)
[7249] = { "заряджений камінь розлому" }, -- Charged Rift Gem
[7266] = { "трактат Ура про темну магію" }, -- Ur's Treatise on Shadow Magic
[7267] = { "бездоганне павутиння" }, -- Pristine Spider Silk
[7268] = { "зразок води Завіана" }, -- Xavian Water Sample
[7269] = { "фляга Дейно", use="Наповнити водою біля підніжжя водоспаду Завіана." }, -- Deino's Flask, @use Use at the base of the Xavian waterfall.
[7272] = { "заряджена блискавкою тростина" }, -- Bolt Charged Bramble
[7273] = { "тотемна палиця В'ялошкірих", use="Зберіть 10 тотемних палиць і скористайтесь ними біля каменю Зовнішнього Поневолення." }, -- Witherbark Totem Stick, @use Gather 10 totem sticks, and use them at the Stone of Outer Binding.
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
[7715] = { "звіт Оніна" }, -- Onin's Report
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
[7912] = { "цільний камінь" }, -- Solid Stone
[7923] = { "ключ від вежі повстанців" }, -- Defias Tower Key
[7966] = { "цільний шліфувальний камінь" }, -- Solid Grinding Stone
[7968] = { "скарб Південних морів" }, -- Southsea Treasure
[7970] = { "В.Х.М.К", use="Папуги люблять крекери!", flavor="Величезний хімічно змінений крекер" }, -- E.C.A.C., @use Parrots love crackers!, @flavor Enormous Chemically Altered Cracker
[7972] = { "пасока невмерлих" }, -- Ichor of Undeath
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
[8153] = { "диколоззя" }, -- Wildvine
[8154] = { "луска скорпіда" }, -- Scorpid Scale
[8155] = { "жертва Сатри", use="Залишти жертву біля фонтану в храмі Місяця." }, -- Sathrah's Sacrifice, @use Offer at the Temple of the Moon fountain.
[8165] = { "зношена драконяча луска" }, -- Worn Dragonscale
[8167] = { "луска черепахи" }, -- Turtle Scale
[8169] = { "товста шкура" }, -- Thick Hide
[8170] = { "рапава шкіра" }, -- Rugged Leather
[8171] = { "рапава шкура" }, -- Rugged Hide
[8343] = { "міцна шовкова нитка" }, -- Heavy Silken Thread
[8344] = { "сріблопавутинні залози" }, -- Silvery Spinnerets
[8363] = { "шаманський оберіг вуду" }, -- Shaman Voodoo Charm
[8368] = { "товста вовча шкура" }, -- Thick Wolfhide
[8431] = { "котушка світло-оливкових шовкових ниток" }, -- Spool of Light Chartreuse Silk Thread
[8432] = { "Міксільпіксілін", use="Ліки від дотику Занзіла." }, -- Eau de Mixilpixil, @use Cure for the Touch of Zanzil.
[8523] = { "набір для польових досліджень" }, -- Field Testing Kit
[8525] = { "список покупок Зінґе" }, -- Zinge's Purchase Order
[8527] = { "запечатаний набір для польових досліджень" }, -- Sealed Field Testing Kit
[8629] = { "поводи смугастого ночезуба", use="Прикликає й відкликає верхового ночезуба. (Відновлення 3 сек)" }, -- Reins of the Striped Nightsaber, @use Summons and dismisses a rideable Sabre Cat. (3 Sec Cooldown)
[8683] = { "свіже яблуко Клари", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}", flavor="Свіжий смачний фрукт... що гарно підходить для маскування." }, -- Clara's Fresh Apple, @use Restores 30 health over 15 sec.  Must remain seated while eating., @flavor A fresh piece of fruit that's good to eat... and is apparently good for disguises also!
[8684] = { "медова шипучка Внутрішніх земель" }, -- Hinterlands Honey Ripple
[8685] = { "вантаж шипучки для Драна", flavor="В цій бочці знаходиться пакунок шипучки для Драна та кілька додаткових пляшок" }, -- Dran's Ripple Delivery, @flavor This barrel contains Dran's packaged ripple and his extra bottles.
[8687] = { "запечатаний опис відвідувача Тредда" }, -- Sealed Description of Thredd's Visitor
[8831] = { "пурпуровий лотос" }, -- Purple Lotus
[8836] = { "сльози Артаса" }, -- Arthas' Tears
[8838] = { "сонцетравка" }, -- Sungrass
[8839] = { "сліпниця" }, -- Blindweed
[8845] = { "примарний гриб" }, -- Ghost Mushroom
[8846] = { "ґромокров" }, -- Gromsblood
[8925] = { "кришталевий фіал" }, -- Crystal Vial
[8949] = { "еліксир спритності", use="Збільшує спритність на 15 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Agility, @use Increases Agility by 15 for 1 hour. (3 Sec Cooldown)
[8951] = { "еліксир більшого захисту", use="Збільшує броню на 250 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Greater Defense, @use Increases armor by 250 for 1 hour. (3 Sec Cooldown)
[8956] = { "олія жертвоприношення", use="Завдає 50 шкоди вогнем усім ворогам у радіусі 5 м кожні 3 секунди протягом 15 сек. (Відновлення 3 сек)" }, -- Oil of Immolation, @use Does 50 fire damage to any enemies within a 5 yard radius around the caster every 3 seconds for 15 sec (3 Sec Cooldown)
[8973] = { "товста шкура єті" }, -- Thick Yeti Hide
[9030] = { "відновлювальне зілля", use="Знімає один магічний ефект, прокляття, отруту або хворобу кожні {1} с протягом {2} с. (Відновлення 2 хв)#every {1} seconds for {2} seconds" }, -- Restorative Potion, @use Removes 1 magic, curse, poison or disease effect on you every 5 seconds for 30 seconds. (2 Min Cooldown)
[9036] = { "зілля супротиву магії", use="Збільшує ваш супротив всім школам магії на 50 на 3 хв. (Відновлення 2 хв)" }, -- Magic Resistance Potion, @use Increases your resistance to all schools of magic by 50 for 3 min. (2 Min Cooldown)
[9061] = { "гоблінське ракетне паливо", flavor="Використовується гоблінськими інженерами для живлення своїх творінь" }, -- Goblin Rocket Fuel, @flavor Used by Goblin Engineers to power their creations
[9088] = { "дар Артаса", use="Збільшує супротив тіні на 10. Кожен атакуючий буде уражений хворобою з імовірністю 30%, яка збільшить отриману ним шкоду на 8 на 3 хв. Триває 30 хв. (Відновлення 3 сек)" }, -- Gift of Arthas, @use Increases resistance to shadow by 10.  If an enemy strikes the imbiber, the attacker has a 30% chance of being inflicted with disease that increases their damage taken by 8 for 3 min.  Lasts for 30 min. (Proc chance: 30%) (3 Sec Cooldown)
[9144] = { "зілля диколоззя", use="Відновлює від {1} до {2} здоров'я та від {3} до {4} мани. (Відновлення 2 хв)#{1} to {2} health and {3} to {4} mana" }, -- Wildvine Potion, @use Restores 1 to 1500 health and 1 to 1500 mana. (2 Min Cooldown)
[9149] = { "філософський камінь", flavor="Потрібен для алхімічної трансмутації." }, -- Philosopher's Stone, @flavor Required for Alchemical Transmutation.
[9153] = { "креслення машини" }, -- Rig Blueprints
[9154] = { "еліксир виявлення невмерлих", use="Відображає на мінімапі місцезнаходження найближчих невмерих протягом 1 години. (Відновлення 3 сек)" }, -- Elixir of Detect Undead, @use Shows the location of all nearby undead on the minimap for 1 hour. (3 Sec Cooldown)
[9155] = { "арканічний еліксир", use="Збільшує шкоду від заклинань на 20 на 30 хв. (Відновлення 3 сек)" }, -- Arcane Elixir, @use Increases spell damage by up to 20 for 30 min. (3 Sec Cooldown)
[9172] = { "зілля невидимості", use="Надає невидимість на {1} с. (Відновлення 10 хв)#for {1} sec" }, -- Invisibility Potion, @use Gives the imbiber invisibility for 18 sec. (10 Min Cooldown)
[9173] = { "гоблінський транспондер" }, -- Goblin Transponder
[9179] = { "еліксир більшого інтелекту", use="Збільшує інтелект на 25 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Greater Intellect, @use Increases Intellect by 25 for 1 hour. (3 Sec Cooldown)
[9187] = { "еліксир більшої спритності", use="Збільшує спритність на 25 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Greater Agility, @use Increases Agility by 25 for 1 hour. (3 Sec Cooldown)
[9197] = { "еліксир снобачення", use="Надає вам снобачення, що дозволяє досліджувати місцини, надто небезпечні для дослідження особисто. (Відновлення 3 сек)" }, -- Elixir of Dream Vision, @use Gives you a dream vision that lets you explore areas that are too dangerous to explore in person. (3 Sec Cooldown)
[9206] = { "еліксир велетнів", use="Збільшує силу на 25 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Giants, @use Increases your Strength by 25 for 1 hour. (3 Sec Cooldown)
[9210] = { "примарний барвник" }, -- Ghost Dye
[9224] = { "еліксир демонорізні", use="Збільшує силу атаки проти демонів на 265. Триває 5 хв. (Відновлення 3 сек)" }, -- Elixir of Demonslaying, @use Increases attack power by 265 against demons.  Lasts 5 min. (3 Sec Cooldown)
[9233] = { "еліксир виявлення демона", use="Відображає на мінімапі місцезнаходження найближчих демонів протягом 1 години. (Відновлення 3 сек)" }, -- Elixir of Detect Demon, @use Shows the location of all nearby demons on the minimap for 1 hour. (3 Sec Cooldown)
[9240] = { "молот Зул'Фаррака" }, -- Mallet of Zul'Farrak
[9241] = { "священний молот", use="Скористатись на вівтарі Джінта'Алора, щоб створити молот Зул'Фаррака." }, -- Sacred Mallet, @use Use at the Jintha'Alor Altar to create the Mallet of Zul'Farrak.
[9261] = { "свинцева руда" }, -- Lead Ore
[9262] = { "чорний купорос" }, -- Black Vitriol
[9264] = { "еліксир сили тіней", use="Збільшує шкоду від заклинань тіні на 40 на 30 хв. (Відновлення 3 сек)" }, -- Elixir of Shadow Power, @use Increases spell shadow damage by up to 40 for 30 min. (3 Sec Cooldown)
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
[9299] = { "код від сейфу Термоштепселя" }, -- Thermaplugg's Safe Combination
[9300] = { "рецепт: Еліксир демонорізні", use="Навчає вас створювати еліксир демонорізні." }, -- Recipe: Elixir of Demonslaying, @use Teaches you how to make an Elixir of Demonslaying.
[9301] = { "рецепт: Еліксир сили тіней", use="Навчає вас створювати еліксир сили тіней." }, -- Recipe: Elixir of Shadow Power, @use Teaches you how to make an Elixir of Shadow Power.
[9302] = { "рецепт: Примарний барвник", use="Навчає вас створювати примарний барвник." }, -- Recipe: Ghost Dye, @use Teaches you how to make Ghost Dye.
[9303] = { "рецепт: Філософський камінь", use="Навчає вас створювати філософський камінь." }, -- Recipe: Philosopher's Stone, @use Teaches you how to make a Philosophers' Stone.
[9304] = { "рецепт: Трансмутація заліза у золото", use="Навчає вас перетворювати залізо на золото." }, -- Recipe: Transmute Iron to Gold, @use Teaches you how to transmute Iron into Gold.
[9305] = { "рецепт: Трансмутація мітрила у ясносрібло", use="Навчає вас перетворювати мітрил на ясносрібло." }, -- Recipe: Transmute Mithril to Truesilver, @use Teaches you how to transmute Mithril into Truesilver.
[9308] = { "вкритий брудом предмет", flavor="Шар бруду приховує справжню сутність цього предмета." }, -- Grime-Encrusted Object, @flavor Caked grime obscures the true identity of this object.
[9309] = { "робо-механічні нутрощі" }, -- Robo-mechanical Guts
[9316] = { "призматична перфокарта", flavor="Карта з даними" }, -- Prismatic Punch Card, @flavor Data card only
[9326] = { "вкритий брудом перстень" }, -- Grime-Encrusted Ring
[9329] = { "коротка записка", flavor="Перев'язана бантиком." }, -- A Short Note, @flavor Tied with a bow.
[9362] = { "блискучий золотий перстень" }, -- Brilliant Gold Ring
[9363] = { "запакована Блискочистом коробочка" }, -- Sparklematic-Wrapped Box
[9364] = { "важкий свинцевий фіал для зразків", use="Зібрати радіоактивний осад.", flavor="Поводитися з обережністю" }, -- Heavy Leaden Collection Phial, @use Captures radioactive fallout., @flavor Handle With Care
[9365] = { "високорадіоактивний осад", flavor="НЕБЕЗПЕЧНО! НЕ КОВТАТИ!" }, -- High Potency Radioactive Fallout, @flavor DANGER! DO NOT INGEST!
[9421] = { "величезний камінь здоров'я", use="Миттєво відновлює 1200 здоров'я. (Відновлення 2 хв)" }, -- Major Healthstone, @use Instantly restores 1200 life. (2 Min Cooldown)
[9513] = { "посох лей-енергії" }, -- Ley Staff
[9514] = { "арканічний посох" }, -- Arcane Staff
[9515] = { "мундир підсвітнього плетіння" }, -- Nether-lace Tunic
[9516] = { "сорочка астрального плетіння" }, -- Astral Knot Blouse
[9517] = { "небесний посох", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 22." }, -- Celestial Stave, @equip Increases damage and healing done by magical spells and effects by up to 22.
[9520] = { "мовчазний мисливець" }, -- Silent Hunter
[9521] = { "черепоруб" }, -- Skullsplitter
[9522] = { "заряджений кам'яний круг" }, -- Energized Stone Circle
[9535] = { "вогнезварні наручі" }, -- Fire-welded Bracers
[9536] = { "чарокрилий наплічник" }, -- Fairywing Mantle
[9538] = { "золотий перстень Талваша" }, -- Talvash's Gold Ring
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
[9598] = { "мантія сну" }, -- Sleeping Robes
[9599] = { "луб'яні поножі" }, -- Barkmail Leggings
[9600] = { "мереживні штани" }, -- Lace Pants
[9601] = { "пом'якшені чоботи" }, -- Cushioned Boots
[9602] = { "чагарникове лезо" }, -- Brushwood Blade
[9603] = { "посох хватокореня" }, -- Gritroot Staff
[9604] = { "трубомолот механіка" }, -- Mechanic's Pipehammer
[9605] = { "накидка ремонтника" }, -- Repairman's Cape
[9608] = { "розброюючий інструмент Шоні", hit="Роззброєння цілі на 5 сек." }, -- Shoni's Disarming Tool, @hit Disarm target's weapon for 5 sec.
[9609] = { "рукавички нерішучості" }, -- Shilly Mitts
[9623] = { "мантія Цивінада" }, -- Civinad Robes
[9624] = { "штани бігуна" }, -- Triprunner Dungarees
[9625] = { "двічі підсилені поножі", equip="Збільшує рейтинг захисту на 5." }, -- Dual Reinforced Leggings, @equip Increased Defense +5.
[9626] = { "натиск дворфів" }, -- Dwarven Charge
[9627] = { "дороговказ Ліги дослідників" }, -- Explorer's League Lodestar
[9634] = { "рукавиці вправності" }, -- Skilled Handling Gloves
[9635] = { "плащ майстра-аптекаря" }, -- Master Apothecary Cape
[9738] = { "самоцвіт Кобрана" }, -- Gem of Cobrahn
[9739] = { "самоцвіт Анакондри" }, -- Gem of Anacondra
[9740] = { "самоцвіт Пітонаса" }, -- Gem of Pythas
[9741] = { "самоцвіт Серпентіса" }, -- Gem of Serpentis
[10000] = { "ріг Марґол" }, -- Margol's Horn
[10005] = { "гігантський ріг Марґол" }, -- Margol's Gigantic Horn
[10022] = { "доказ правоти" }, -- Proof of Deed
[10043] = { "благочестиві поножі" }, -- Pious Legwraps
[10045] = { "прості лляні поножі" }, -- Simple Linen Pants
[10283] = { "зразки вовчих сердець" }, -- Wolf Heart Samples
[10298] = { "перстень Гномреґану" }, -- Gnomeregan Band
[10299] = { "амулет Гномреґану" }, -- Gnomeregan Amulet
[10305] = { "сувій захисту IV", ref=3013 }, -- Scroll of Protection IV
[10306] = { "сувій духу IV", ref=1181 }, -- Scroll of Spirit IV
[10307] = { "сувій витривалості IV", ref=1180 }, -- Scroll of Stamina IV
[10308] = { "сувій інтелекту IV", ref=955 }, -- Scroll of Intellect IV
[10309] = { "сувій спритності IV", ref=3012 }, -- Scroll of Agility IV
[10310] = { "сувій сили IV", ref=954 }, -- Scroll of Strength IV
[10327] = { "сурма Ечеякі", use="Засурмити біля лігва Ечеякі. (Відновлення 30 сек)" }, -- Horn of Echeyakee, @use Blow near Echeyakee's Lair. (30 Sec Cooldown)
[10338] = { "свіжа туша жеври", use="Покласти біля мертвого дерева на північному заході від Брашпиля щоб приманити Ішамугала." }, -- Fresh Zhevra Carcass, @use Place near the Dead Tree northwest of Ratchet, to lure Ishamuhale.
[10358] = { "дюрацинові браслети" }, -- Duracin Bracers
[10359] = { "вічні чоботи" }, -- Everlast Boots
[10414] = { "зразок панцира тріскощелепа" }, -- Sample Snapjaw Shell
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
[10455] = { "скута сутність Ераніка", use="Отруює всіх ворогів у радіусі 8 м навколо вас. Отрута наносить 50 шкоди від природи кожні 5 сек протягом 45 сек." }, -- Chained Essence of Eranikus, @use Poisons all enemies in an 8 yard radius around the caster.  Victims of the poison suffer 50 Nature damage every 5 sec for 45 sec. (15 Min Cooldown)
[10456] = { "набитий монетами гаманець" }, -- A Bulging Coin Purse
[10459] = { "голова вождя Гостроікла Колючкошкура" }, -- Chief Sharptusk Thornmantle's Head
[10544] = { "молот шиподерева" }, -- Thistlewood Maul
[10563] = { "замальовка: руна Бет'Амара" }, -- Rubbing: Rune of Beth'Amara
[10564] = { "замальовка: руна Джин'яель" }, -- Rubbing: Rune of Jin'yael
[10565] = { "замальовка: руна Маркрі" }, -- Rubbing: Rune of Markri
[10566] = { "замальовка: руна Сель'гай" }, -- Rubbing: Rune of Sael'hai
[10589] = { "клятвокамінь Крила драконів Ізери", flavor="Використання цього каменю зв'язує обов'язком з Крилом драконів Ізери." }, -- Oathstone of Ysera's Dragonflight, @flavor Using this stone binds someone to aid Ysera's Dragonflight.
[10592] = { "еліксир котячого ока", use="Збільшує вашу здатність виявляти непомітність на 10 хв. (Відновлення 3 сек)" }, -- Catseye Elixir, @use Slightly increases your stealth detection for 10 min. (3 Sec Cooldown)
[10597] = { "голова чаклунки Рімторі" }, -- Head of Magus Rimtori
[10620] = { "торієва руда" }, -- Thorium Ore
[10621] = { "сувій з рунами" }, -- Runed Scroll
[10622] = { "стяг Кадрака", use="Розмістити в лігві Кігтя." }, -- Kadrak's Flag, @use Place in the Talon Den.
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
[10649] = { "уламок кошмару" }, -- Nightmare Shard
[10653] = { "черевики першопроходця" }, -- Trailblazer Boots
[10654] = { "джутові рукавички" }, -- Jutebraid Gloves
[10655] = { "осокові бриджі" }, -- Sedgeweed Britches
[10656] = { "короплетений жилет" }, -- Barkmail Vest
[10657] = { "наплічник ниви" }, -- Talbar Mantle
[10658] = { "болотяні калоші" }, -- Quagmire Galoshes
[10682] = { "камінь клятви Белністраза" }, -- Belnistrasz's Oathstone
[10687] = { "порожній фіал №1", use="Наповнити фіал з першої припливної калюжі в Азшарі." }, -- Empty Vial Labeled #1, @use This container should be filled with water from the first tide pool in Azshara.
[10688] = { "порожній фіал №2", use="Наповнити фіал з другої припливної калюжі в Азшарі." }, -- Empty Vial Labeled #2, @use This container should be filled with water from the second tide pool in Azshara.
[10689] = { "порожній фіал №3", use="Наповнити фіал з третьої припливної калюжі в Азшарі." }, -- Empty Vial Labeled #3, @use This container should be filled with water from the third tide pool in Azshara.
[10690] = { "порожній фіал №4", use="Наповнити фіал з четвертої припливної калюжі в Азшарі." }, -- Empty Vial Labeled #4, @use This container should be filled with water from the fourth tide pool in Azshara.
[10691] = { "наповнений фіал №1" }, -- Filled Vial Labeled #1
[10692] = { "наповнений фіал №2" }, -- Filled Vial Labeled #2
[10693] = { "наповнений фіал №3" }, -- Filled Vial Labeled #3
[10694] = { "наповнений фіал №4" }, -- Filled Vial Labeled #4
[10695] = { "коробка з порожніми фіалами" }, -- Box of Empty Vials
[10707] = { "наголінники сталеплава" }, -- Steelsmith Greaves
[10708] = { "сфера чарочерепа" }, -- Skullspell Orb
[10709] = { "вогнекам'яна сфера" }, -- Pyrestone Orb
[10710] = { "перстень кігтя дракона" }, -- Dragonclaw Ring
[10711] = { "намисто крові дракона" }, -- Dragon's Blood Necklace
[10712] = { "еліксир К'юлі" }, -- Cuely's Elixir
[10739] = { "перстень стійкості" }, -- Ring of Fortitude
[10740] = { "поножі сотника" }, -- Centurion Legplates
[10741] = { "шолом Лордрека" }, -- Lordrec Helmet
[10747] = { "пояс вчителя" }, -- Teacher's Sash
[10748] = { "чоботи мандрівника" }, -- Wanderlust Boots
[10819] = { "перо дикого совуха" }, -- Wildkin Feather
[10820] = { "рициновий пояс" }, -- Jackseed Belt
[10821] = { "плащ сіяча" }, -- Sower's Cloak
[10823] = { "меч завойовника", equip="Збільшує силу атаки на 28." }, -- Vanquisher's Sword, @equip +28 Attack Power.
[10824] = { "бурштиновий талісман" }, -- Amberglow Talisman
[10958] = { "намисто Гіларі" }, -- Hilary's Necklace
[11018] = { "ґрунт Ун'Ґоро" }, -- Un'Goro Soil
[11020] = { "торба вічного цвітіння", use="Використати два зразки ґрунту Ун'Ґоро та пакет насіння Тарлендріса, щоб отримати контейнер з травами вічного цвітіння. (Відновлення 10 хв)" }, -- Evergreen Pouch, @use Consume two Un'Goro Soil samples and a Packet of Tharlendris seeds to make an Evergreen Herb Casing. (10 Min Cooldown)
[11022] = { "пакет насіння Тарлендріса" }, -- Packet of Tharlendris Seeds
[11024] = { "контейнер з травами вічного цвітіння", flavor="Вирощенні з ґрунту Ун'Ґоро." }, -- Evergreen Herb Casing, @flavor Using Un'Goro soil, Tharlendris seeds have been cultivated inside.
[11040] = { "світанка" }, -- Morrowgrain
[11099] = { "темнозалізна руда" }, -- Dark Iron Ore
[11103] = { "розписка про видачу насіння", flavor="На двадцять пакетів насінин Тарлендріса." }, -- Seed Voucher, @flavor Good for twenty packs of Tharlendris seeds.
[11119] = { "урожай Міллі" }, -- Milly's Harvest
[11120] = { "молот Белґрома" }, -- Belgrom's Hammer
[11125] = { "повідомлення про постачання винограду" }, -- Grape Manifest
[11127] = { "віднайдені припаси" }, -- Scavenged Goods
[11142] = { "зламаний самофланж" }, -- Broken Samophlange
[11143] = { "заготовка для деталі" }, -- Nugget Slug
[11146] = { "зламаний та пошарпаний самофланж" }, -- Broken and Battered Samophlange
[11147] = { "обкладинка посібника з експлуатації самофланжу", use="З'єднати обкладинку та 5 сторінок, щоб створити посібник з експлуатації самофланжу." }, -- Samophlange Manual Cover, @use Join the cover and 5 pages to create the Samophlange Manual.
[11148] = { "сторінка посібника з експлуатації самофланжу", use="З'єднати обкладинку та 5 сторінок, щоб створити посібник з експлуатації самофланжу." }, -- Samophlange Manual Page, @use Join the cover and 5 pages to create the Samophlange Manual.
[11149] = { "посібник з експлуатації самофланжу" }, -- Samophlange Manual
[11187] = { "наручі стеблолиста" }, -- Stemleaf Bracers
[11189] = { "мантія діброви" }, -- Woodland Robes
[11190] = { "лозяні рукавички" }, -- Viny Gloves
[11191] = { "фермерські чоботи" }, -- Farmer's Boots
[11192] = { "рукавиці екіпірувальника" }, -- Outfitter Gloves
[11227] = { "клаптик стягу Кром'зара" }, -- Piece of Krom'zar's Banner
[11229] = { "пояс блискучої луски" }, -- Brightscale Girdle
[11262] = { "сфера Лоріки" }, -- Orb of Lorica
[11265] = { "кувалда кам'яного дерева" }, -- Cragwood Maul
[11315] = { "паросток кровоцвіту" }, -- Bloodpetal Sprout
[11370] = { "руда темного заліза" }, -- Dark Iron Ore
[11371] = { "злиток темного заліза" }, -- Dark Iron Bar
[11382] = { "кров гори" }, -- Blood of the Mountain
[11475] = { "плащ з плямами від вина" }, -- Wine-stained Cloak
[11477] = { "білий кіготь равазавра" }, -- White Ravasaur Claw
[11480] = { "шкура ун'ґорського рокотуна" }, -- Un'Goro Thunderer Pelt
[11502] = { "наплечі з мудрошкіри" }, -- Loreskin Shoulders
[11512] = { "клапоть зараженої шкіри" }, -- Patch of Tainted Skin
[11583] = { "кактусове яблуко" }, -- Cactus Apple
[11584] = { "\"Пиріг-сюрприз\" з кактусовими яблуками", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі. Через 10 сек ви насититесь і ваші витривалість та дух збільшаться на 2 на 15 хв.#Restores {1} health over {2}" }, -- Cactus Apple Surprise, @use Restores 61.2 health over 18 sec.  Must remain seated while eating.  If you spend at least 10 seconds eating you will become well fed and gain 2 Stamina and Spirit for 15 min.
[11754] = { "чорний діамант" }, -- Black Diamond
[11843] = { "банківська розписка" }, -- Bank Voucher
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
[11862] = { "кільце з білої кістки", equip="Збільшує силу атаки на 24." }, -- White Bone Band, @equip +24 Attack Power.
[11863] = { "подрібнювач з білої кістки" }, -- White Bone Shredder
[11864] = { "спис з білої кістки" }, -- White Bone Spear
[11870] = { "сфера забуття" }, -- Oblivion Orb
[11871] = { "наплічники чудовиська хащів" }, -- Snarkshaw Spaulders
[11872] = { "поножі уникнення", use="Збільшує ваш шанс ухилитися від атаки на 1%." }, -- Eschewal Greaves, @equip Increases your chance to dodge an attack by 1%.
[11886] = { "термінове повідомлення" }, -- Urgent Message
[11887] = { "припаси Кенарійського Кола" }, -- Cenarion Circle Cache
[11888] = { "дослідницькі рукавиці Квінтіса" }, -- Quintis' Research Gloves
[11889] = { "напліччя залізної кори" }, -- Bark Iron Pauldrons
[11912] = { "набір ємностей для слизу" }, -- Package of Empty Ooze Containers
[11914] = { "порожня банка для проклятого слизу", use="Наповнити порожню банку зразком з проклятого слизня. ОБЕРЕЖНО! Найімовірніше, це знищить тіло створіння." }, -- Empty Cursed Ooze Jar, @use Fills an Empty Cursed Ooze Jar with a sample of Cursed Ooze. WARNING! Will likely destroy the creature's body.
[11936] = { "пояс шукача реліквій" }, -- Relic Hunter Belt
[11947] = { "наповнена проклятим слизом банка" }, -- Filled Cursed Ooze Jar
[11948] = { "порожня банка для забрудненого слизу", use="Наповнити порожню банку зразком з забрудненого слизня. ОБЕРЕЖНО! Найімовірніше, це знищить тіло створіння." }, -- Empty Tainted Ooze Jar, @use Fills an Empty Tainted Ooze Jar with a sample of Tainted Ooze. WARNING! Will likely destroy the creature's body.
[11949] = { "наповнена забрудненим слизом банка" }, -- Filled Tainted Ooze Jar
[11951] = { "плід кнутокореня", use="Відновлює від 700 до 900 здоров'я. (Відновлення 2 хв)" }, -- Whipper Root Tuber, @use Restores 700 to 900 health. (2 Min Cooldown)
[11954] = { "наповнена чистим слизом банка" }, -- Filled Pure Sample Jar
[11955] = { "сумка пустих контейнерів для слизу" }, -- Bag of Empty Ooze Containers
[12050] = { "серпанкові чоботи" }, -- Hazecover Boots
[12051] = { "латунні рукавиці" }, -- Brazen Gauntlets
[12060] = { "лист від Шиндрел" }, -- Shindrell's Note
[12102] = { "перстень аристократа" }, -- Ring of the Aristocrat
[12190] = { "зілля сну без сновидінь", use="Занурює у сон без сновидінь на {1} с. Протягом цього часу відновлює {2} здоров'я та {3} мани. (Відновлення 2 хв)#for {1} sec#{2} health and {3} mana" }, -- Dreamless Sleep Potion, @use Puts the imbiber in a dreamless sleep for 12 sec. During that time the imbiber heals 1200 health and 1200 mana. (2 Min Cooldown)
[12191] = { "скринька \"Срібястого Світанку\"" }, -- Silver Dawning's Lockbox
[12192] = { "скринька \"Туманного Серпанку\"" }, -- Mist Veil's Lockbox
[12220] = { "неушкоджений браслет елементаля" }, -- Intact Elemental Bracer
[12225] = { "сімейна вудка Блампів", equip="Збільшує навичку рибальства на 3." }, -- Blump Family Fishing Pole, @equip Increased Fishing +3.
[12230] = { "зразок сквернолісного слизу" }, -- Felwood Slime Sample
[12234] = { "забруднений сквернолісний зразок" }, -- Corrupted Felwood Sample
[12235] = { "зразок ун'ґорського слизу" }, -- Un'Goro Slime Sample
[12236] = { "чистий ун'ґорський зразок" }, -- Pure Un'Goro Sample
[12237] = { "чудове крабове м'ясо" }, -- Fine Crab Chunks
[12238] = { "окунь Темнобережжя", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Darkshore Grouper, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[12242] = { "кістки морської істоти" }, -- Sea Creature Bones
[12288] = { "запакований забруднений слизень", use="Випустити забрудненого сквернолісного слизня, щоб він міг провзаємодіяти з первісним слизнем в кратері Ун'Ґоро. (Відновлення 3 хв)" }, -- Encased Corrupt Ooze, @use Releases a captured Felwood ooze so it can interact with a primal ooze in Un'Goro Crater. (3 Min Cooldown)
[12289] = { "рештки морської черепахи" }, -- Sea Turtle Remains
[12291] = { "об’єднаний зразок слизу" }, -- Merged Ooze Sample
[12293] = { "тонка золота нитка" }, -- Fine Gold Thread
[12295] = { "поножі народного ополчення" }, -- Leggings of the People's Militia
[12296] = { "іскра народного ополчення" }, -- Spark of the People's Militia
[12299] = { "сітчасті рукавички" }, -- Netted Gloves
[12341] = { "зразок фруктів Чорнолісних" }, -- Blackwood Fruit Sample
[12342] = { "зразок зерна Чорнолісних" }, -- Blackwood Grain Sample
[12343] = { "зразок горіхів Чорнолісних" }, -- Blackwood Nut Sample
[12346] = { "порожня чаша очищення", use="Наповнити водою з місячного колодязя, щоб підготувати чашу для очищенної їжі." }, -- Empty Cleansing Bowl, @use Fill with moonwell water to prepare the bowl to cleanse food placed in it.
[12347] = { "наповнена чаша очищення", use="Створити чашу з очищенною їжею, що сподобається хутропузам. Потрібні фрукти, горіхи та зерно з табору Чорнолісних." }, -- Filled Cleansing Bowl, @use Creates a bowl of purified food that the furbolg are sure to enjoy.  It requires fruit, grain, and nuts from the Blackwood camp.
[12349] = { "зразок води зі Скельноджерельної річки" }, -- Cliffspring River Sample
[12350] = { "порожня посудина для зразків" }, -- Empty Sampling Tube
[12351] = { "ріг арктичного вовка", use="Викликає та відпускає арктичного вовка, на якому можна їздити верхи. Це дуже швидке створіння. (Відновлення 3 сек)" }, -- Horn of the Arctic Wolf, @use Summons and dismisses a rideable arctic wolf.  This is a very fast mount. (3 Sec Cooldown)
[12353] = { "вуздечка білого жеребця", use="Прикликає й відкликає їздового білого жеребця. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- White Stallion Bridle, @use Summons and dismisses a rideable white stallion.  This is a very fast mount. (3 Sec Cooldown)
[12354] = { "вуздечка солового коня", use="Прикликає й відкликає їздового солового коня. Це дуже швидка верхова тварина. (Відновлення 3 сек)" }, -- Palomino Bridle, @use Summons and dismisses a rideable Palomino.  This is a very fast mount. (3 Sec Cooldown)
[12355] = { "талісман порчі" }, -- Talisman of Corruption
[12356] = { "яйце виверни з Високого Сідала" }, -- Highperch Wyvern Egg
[12359] = { "злиток торію" }, -- Thorium Bar
[12360] = { "злиток арканіту" }, -- Arcanite Bar
[12361] = { "синій сапфір" }, -- Blue Sapphire
[12363] = { "арканічний кристал" }, -- Arcane Crystal
[12364] = { "величезний смарагд" }, -- Huge Emerald
[12365] = { "масивний камінь" }, -- Dense Stone
[12383] = { "осяяне місяцем перо" }, -- Moontouched Feather
[12447] = { "лук шиподерева" }, -- Thistlewood Bow
[12467] = { "чужоземне яйце", flavor="Всередині щось ворушиться" }, -- Alien Egg, @flavor Something seems to shake from within
[12562] = { "важливі папери Чорнокаменю" }, -- Important Blackrock Documents
[12564] = { "план вбивства" }, -- Assassination Note
[12630] = { "голова Ренда Чорнорукого", flavor="Огидна, кривава і брудна." }, -- Head of Rend Blackhand, @flavor Sickening, bloody, foulness.
[12635] = { "простий пергамент" }, -- Simple Parchment
[12642] = { "очищена сфера пекельника" }, -- Cleansed Infernal Orb
[12644] = { "масивний шліфувальний камінь" }, -- Dense Grinding Stone
[12646] = { "пекельний смарагд", use="Захоплює дух пекельника для використання у створенні кулі чорнокнижника." }, -- Infus Emerald, @use Captures the spirit of an Infernal to be used in the creation of a warlockian orb.
[12647] = { "рубін сквернолова", use="Захоплює дух сквернопса для використання у створенні кулі чорнокнижника." }, -- Felhas Ruby, @use Captures the spirit of a Felhound to be used in the creation of a warlockian orb.
[12648] = { "ув'язнений дух сквернопса" }, -- Imprisoned Felhound Spirit
[12649] = { "ув'язнений дух пекельника" }, -- Imprisoned Infernal Spirit
[12655] = { "зачарований злиток торію" }, -- Enchanted Thorium Bar
[12708] = { "ящики з припасами для Перехрестя" }, -- Crossroads' Supply Crates
[12724] = { "пакунок Дженіс" }, -- Janice's Parcel
[12731] = { "неторкана шкура Звіра" }, -- Pristine Hide of the Beast
[12732] = { "вогниста агава" }, -- Incendia Agave
[12737] = { "бур'ян мороку" }, -- Gloom Weed
[12765] = { "таємна записка №1" }, -- Secret Note #1
[12766] = { "таємна записка №2" }, -- Secret Note #2
[12768] = { "таємна записка №3" }, -- Secret Note #3
[12785] = { "вогнистий порошок", use="Підкинути вогнистий порошок у священний вогонь життя." }, -- Incendia Powder, @use Toss the Incendia Powder into the sacred fire of life.
[12799] = { "великий опал" }, -- Large Opal
[12800] = { "азеротський діамант" }, -- Azerothian Diamond
[12803] = { "жива сутність" }, -- Living Essence
[12808] = { "сутність невмерлості" }, -- Essence of Undeath
[12809] = { "охоронний камінь" }, -- Guardian Stone
[12810] = { "зачарована шкіра" }, -- Enchanted Leather
[12884] = { "копито Арнака" }, -- Arnak's Hoof
[12925] = { "зміїна шкіра Арікари" }, -- Arikara Serpent Skin
[12942] = { "ключ від клітки пантери", use="Відкрити клітку пантери." }, -- Panther Cage Key, @use Opens Panther Cage
[12946] = { "гіперконденсатор" }, -- Hypercapacitor Gizmo
[12958] = { "рецепт: Трансмутація арканіту", use="Навчає вас перетворювати торій та арканічні кристали на арканіт." }, -- Recipe: Transmute Arcanite, @use Teaches you how to transmute Thorium and Arcane Crystals into Arcanite.
[13180] = { "свята вода Стратхольму", use="Завдає від 438 до 562 шкоди нежиті в радіусі 10 метрів. (1 хв перезарядки)", flavor="Всього 1 кал." }, -- Stratholme Holy Water, @use Inflicts between 438 and 562 damage to Undead in a 10 yard radius. (1 Min Cooldown), @flavor Just 1 calorie.
[13422] = { "камнелуский вугор" }, -- Stonescale Eel
[13423] = { "олія камнелуского вугра" }, -- Stonescale Oil
[13442] = { "потужне зілля люті", use="Збільшує лють на {1}-{2} та збільшує силу на {3} на {4} с. (Відновлення 2 хв)#Rage by {1} to {2}#Strength by {3} for {4} sec" }, -- Mighty Rage Potion, @use Increases Rage by 45 to 75 and increases Strength by 60 for 20 sec. (2 Min Cooldown)
[13443] = { "відмінне зілля мани", ref=2455 }, -- Superior Mana Potion
[13444] = { "величезне зілля мани", ref=2455 }, -- Major Mana Potion
[13445] = { "еліксир відмінного захисту", use="Збільшує броню на 450 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Superior Defense, @use Increases armor by 450 for 1 hour. (3 Sec Cooldown)
[13446] = { "величезне зілля лікування", ref=118 }, -- Major Healing Potion
[13447] = { "еліксир мудреців", use="Збільшує інтелект і дух на 18 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of the Sages, @use Increases Intellect and Spirit by 18 for 1 hour. (3 Sec Cooldown)
[13452] = { "еліксир мангуста", use="Збільшує спритність на 25 та ймовірність нанесення критичного удару на 2% на 1 годину. (Відновлення 3 сек)" }, -- Elixir of the Mongoose, @use Increases Agility by 25 and chance to get a critical hit by 2% for 1 hour. (3 Sec Cooldown)
[13453] = { "еліксир грубої сили", use="Збільшує силу та витривалість на 18 на 1 годину. (Відновлення 3 сек)" }, -- Elixir of Brute Force, @use Increases Strength and Stamina by 18 for 1 hour. (3 Sec Cooldown)
[13454] = { "великий арканічний еліксир", use="Збільшує шкоду від заклинань на 35 на 1 годину. (Відновлення 3 сек)" }, -- Greater Arcane Elixir, @use Increases spell damage by up to 35 for 1 hour. (3 Sec Cooldown)
[13455] = { "велике зілля каменещита", use="Збільшує броню на {1} на 2 хв. (Відновлення 2 хв)#armor by {1}" }, -- Greater Stoneshield Potion, @use Increases armor by 2000 for 2 min. (2 Min Cooldown)
[13456] = { "велике зілля крижаного захисту", use="Поглинає від {1} до {2} шкоди від криги. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Frost Protection Potion, @use Absorbs 1950 to 3250 frost damage. Lasts 1 hour. (2 Min Cooldown)
[13457] = { "велике зілля вогняного захисту", use="Поглинає від {1} до {2} шкоди від вогню. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Fire Protection Potion, @use Absorbs 1950 to 3250 fire damage. Lasts 1 hour. (2 Min Cooldown)
[13458] = { "велике зілля природного захисту", use="Поглинає від {1} до {2} шкоди від природи. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Nature Protection Potion, @use Absorbs 1950 to 3250 nature damage. Lasts 1 hour. (2 Min Cooldown)
[13459] = { "велике зілля тіньового захисту", use="Поглинає від {1} до {2} шкоди від тіні. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Shadow Protection Potion, @use Absorbs 1950 to 3250 shadow damage. Lasts 1 hour. (2 Min Cooldown)
[13460] = { "велике зілля священного захисту", use="Поглинає від {1} до {2} шкоди від священності. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Holy Protection Potion, @use Absorbs 1950 to 3250 holy damage. Lasts 1 hour. (2 Min Cooldown)
[13461] = { "велике зілля арканічного захисту", use="Поглинає від {1} до {2} шкоди від аркани. Триває 1 годину. (Відновлення 2 хв)#Absorbs {1} to {2}" }, -- Greater Arcane Protection Potion, @use Absorbs 1950 to 3250 arcane damage. Lasts 1 hour. (2 Min Cooldown)
[13462] = { "зілля очищення", use="Намагається зняти одне прокляття, одну хворобу та одну отруту." }, -- Purification Potion, @use Attempts to remove one Curse, one Disease and one Poison from the Imbiber. (2 Min Cooldown)
[13463] = { "снолистя" }, -- Dreamfoil
[13464] = { "золотий сансам" }, -- Golden Sansam
[13465] = { "гірська срібномудриця" }, -- Mountain Silversage
[13466] = { "чумоцвіт" }, -- Plaguebloom
[13467] = { "льодошапка" }, -- Icecap
[13468] = { "чорний лотос" }, -- Black Lotus
[13476] = { "рецепт: Потужне зілля люті", use="Навчає вас створювати потужне зілля люті." }, -- Recipe: Mighty Rage Potion, @use Teaches you how to make a Mighty Rage Potion.
[13477] = { "рецепт: Відмінне зілля мани", use="Навчає вас створювати відмінне зілля мани." }, -- Recipe: Superior Mana Potion, @use Teaches you how to make a Superior Mana Potion.
[13478] = { "рецепт: Еліксир відмінного захисту", use="Навчає вас створювати еліксир відмінного захисту." }, -- Recipe: Elixir of Superior Defense, @use Teaches you how to make an Elixir of Superior Defense.
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
[13491] = { "Рецепт: Еліксир мангуста", use="Навчає вас створювати еліксир мангуста." }, -- Recipe: Elixir of the Mongoose, @use Teaches you how to make an Elixir of the Mongoose.
[13493] = { "рецепт: Великий арканічний еліксир", use="Навчає вас створювати великий арканічний еліксир." }, -- Recipe: Greater Arcane Elixir, @use Teaches you how to make a Greater Arcane Elixir.
[13494] = { "рецепт: Велике зілля вогняного захисту", use="Навчає вас створювати велике зілля вогняного захисту." }, -- Recipe: Greater Fire Protection Potion, @use Teaches you how to make a Greater Fire Protection Potion.
[13495] = { "рецепт: Велике зілля крижаного захисту", use="Навчає вас створювати велике зілля крижаного захисту." }, -- Recipe: Greater Frost Protection Potion, @use Teaches you how to make a Greater Frost Protection Potion.
[13496] = { "рецепт: Велике зілля природного захисту", use="Навчає вас створювати велике зілля природного захисту." }, -- Recipe: Greater Nature Protection Potion, @use Teaches you how to make a Greater Nature Protection Potion.
[13497] = { "рецепт: Велике зілля арканічного захисту", use="Навчає вас створювати велике зілля арканічного захисту." }, -- Recipe: Greater Arcane Protection Potion, @use Teaches you how to make a Greater Arcane Protection Potion.
[13499] = { "рецепт: Велике зілля тіньового захисту", use="Навчає вас створювати велике зілля тіньового захисту." }, -- Recipe: Greater Shadow Protection Potion, @use Teaches you how to make a Greater Shadow Protection Potion.
[13501] = { "рецепт: Величезне зілля мани", use="Навчає вас створювати величезне зілля мани." }, -- Recipe: Major Mana Potion, @use Teaches you how to make a Major Mana Potion.
[13506] = { "настій скам'яніння", use="Ви перетворюєтеся на камінь, що захищає вас від усіх фізичних атак і заклинань на 1 хв, але протягом цього часу ви не можете атакувати, рухатися або промовляти заклинання. Ви можете бути під дією лише одного настою одночасно. (Відновлення 3 с)" }, -- Flask of Petrification, @use You turn to stone, protecting you from all physical attacks and spells for 1 min, but during that time you cannot attack, move or cast spells. You can only have the effect of one flask at a time. (3 Sec Cooldown)
[13507] = { "звіт спостерігача скель Довгорогого" }, -- Cliffwatcher Longhorn Report
[13510] = { "настій титанів", use="Збільшує максимальне здоров'я на 1200 на 2 год. Ви можете бути під дією лише одного настою одночасно. Цей ефект зберігається після смерті. (Відновлення 3 с)" }, -- Flask of the Titans, @use Increases the player's maximum health by 1200 for 2 hrs. You can only have the effect of one flask at a time. This effect persists through death. (3 Sec Cooldown)
[13511] = { "настій дистильованої мудрості", use="Збільшує максимальну ману на 2000 на 2 год. Ви можете бути під дією лише одного настою одночасно. Цей ефект зберігається після смерті. (Відновлення 3 с)" }, -- Flask of Distilled Wisdom, @use Increases the player's maximum mana by 2000 for 2 hrs. You can only have the effect of one flask at a time. This effect persists through death. (3 Sec Cooldown)
[13512] = { "настій великої сили", use="Збільшує шкоду від магічних заклинань і ефектів на 150 на 2 год. Ви можете бути під дією лише одного настою одночасно. Цей ефект зберігається після смерті. (Відновлення 3 с)" }, -- Flask of Supreme Power, @use Increases damage done by magical spells and effects by up to 150 for 2 hrs. You can only have the effect of one flask at a time. This effect persists through death. (3 Sec Cooldown)
[13513] = { "настій хроматичного супротиву", use="Збільшує ваш супротив всім школам магії на 25 на 2 год. Ви можете бути під дією лише одного настою одночасно. Цей ефект зберігається після смерті та додається до всіх інших заклинань і предметів зі супротивом. (Відновлення 3 с)" }, -- Flask of Chromatic Resistance, @use Increases your resistance to all schools of magic by 25 for 2 hrs. You can only have the effect of one flask at a time. This effect persists through death and stacks with all other resistance spells and items. (3 Sec Cooldown)
[13536] = { "ріг пробудження", use="Пробудити сплячого друїда. (Відновлення 30 сек)" }, -- Horn of Awakening, @use Awaken the sleeping druid. (30 Sec Cooldown)
[13602] = { "великий камінь чарів", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", use="Усуває всі магічні ефекти з заклинача та поглине 650 магічної шкоди протягом 1 хв." }, -- Greater Spellstone, @equip Improves your chance to get a critical strike with spells by 1%., @use Removes all magic effects from the caster and will absorb 650 magic damage for 1 min.
[13603] = { "величезний камінь чарів", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", use="Усуває всі магічні ефекти з заклинача та поглине 900 магічної шкоди протягом 1 хв." }, -- Major Spellstone, @equip Improves your chance to get a critical strike with spells by 1%., @use Removes all magic effects from the caster and will absorb 900 magic damage for 1 min.
[13699] = { "камінь вогню", equip={ "Зачаровує зброю в основній руці вогнем, надаючи кожній атаці ймовірність завдати від 40 до 60 додаткової шкоди від вогню.", "Збільшує шкоду від заклинань і ефектів вогню на 14." } }, -- Firestone, @equip Enchants the main hand weapon with fire, granting each attack a chance to deal 40 to 60 additional fire damage., @equip Increases damage done by Fire spells and effects by up to 14.
[13700] = { "великий камінь вогню", equip={ "Зачаровує зброю в основній руці вогнем, надаючи кожній атаці ймовірність завдати від 60 до 90 додаткової шкоди від вогню.", "Збільшує шкоду від заклинань і ефектів вогню на 17." } }, -- Greater Firestone, @equip Enchants the main hand weapon with fire, granting each attack a chance to deal 60 to 90 additional fire damage., @equip Increases damage done by Fire spells and effects by up to 17.
[13701] = { "величезний камінь вогню", equip={ "Зачаровує зброю в основній руці вогнем, надаючи кожній атаці ймовірність завдати від 80 до 120 додаткової шкоди від вогню.", "Збільшує шкоду від заклинань і ефектів вогню на 21." } }, -- Major Firestone, @equip Enchants the main hand weapon with fire, granting each attack a chance to deal 80 to 120 additional fire damage., @equip Increases damage done by Fire spells and effects by up to 21.
[13702] = { "бур'ян приречення" }, -- Doom Weed
[13724] = { "збагачене маною печиво", use="Відновлює {1} здоров'я та {2} мани протягом {3} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health and {2} mana over {3}" }, -- Enriched Manna Biscuit, @use Restores 2148 health and 4410 mana over 30 sec.  Must remain seated while eating.
[13850] = { "набої Грімостріла" }, -- Rumbleshot's Ammo
[13872] = { "зв'язка деревини" }, -- Bundle of Wood
[13958] = { "кайдани Змійталака" }, -- Wyrmthalak's Shackles
[13959] = { "обхватний ремінь Омокка", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Omokk's Girth Restrainer, @equip Improves your chance to get a critical strike by 1%.
[13961] = { "намордник Галікон" }, -- Halycon's Muzzle
[13962] = { "пасок Вош'ґаджин", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс ухилитися від атаки на 1%." } }, -- Vosh'gajin's Strand, @equip Improves your chance to get a critical strike by 1%., @equip Increases your chance to dodge an attack by 1%.
[13963] = { "порочні захвати Вуна", equip="Збільшує ваш шанс нанесення удару на 2%." }, -- Voone's Vice Grips, @equip Improves your chance to hit by 2%.
[13965] = { "пластина Чорнорукого", equip="Збільшує ваш шанс нанесення критичного удару на 2%." }, -- Blackhand's Breadth, @equip Improves your chance to get a critical strike by 2%.
[13966] = { "знак тиранії", equip="Збільшує ваш шанс ухилитися від атаки на 1%." }, -- Mark of Tyranny, @equip Increases your chance to dodge an attack by 1%.
[13968] = { "око Звіра", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 2%." }, -- Eye of the Beast, @equip Improves your chance to get a critical strike with spells by 2%.
[14047] = { "рунічне полотно" }, -- Runecloth
[14256] = { "сквернотканина" }, -- Felcloth
[14338] = { "порожня посудина для води", use="Наповнити водою з місячного колодязя Аубердіну." }, -- Empty Water Tube, @use Fill with water from the Auberdine moonwell.
[14339] = { "посудина з водою місячного колодязя" }, -- Moonwell Water Tube
[14342] = { "місячне полотно" }, -- Mooncloth
[14344] = { "великий блискучий осколок" }, -- Large Brilliant Shard
[14381] = { "сумка Зловісного Тотема" }, -- Grimtotem Satchel
[14395] = { "Закляття Темряви", flavor="Краще її не відкривати." }, -- Spells of Shadow, @flavor You know opening this would be a terrible idea.
[14396] = { "Чаклунство з Підсвіття", flavor="Ви раді, що не розумієте рун, викарбуваних на обкладинці." }, -- Incantations from the Nether, @flavor You're glad you don't understand the runes inscribed on the cover.
[14540] = { "серце Тараґамана Ненажерливого" }, -- Taragaman the Hungerer's Heart
[14542] = { "ящик Крейвела" }, -- Kravel's Crate
[14544] = { "знак розрізнення лейтенанта", flavor="Ця маленька руна означє, що її власник — лейтенант Палаючого Леза." }, -- Lieutenant's Insignia, @flavor This small rune marks the bearer as a lieutenant in the Burning Blade.
[14634] = { "рецепт: Крижана олія", use="Навчає вас створювати крижану олію." }, -- Recipe: Frost Oil, @use Teaches you how to make Frost Oil.
[15042] = { "порожня банка для термітів", use="Зібрати термітів на термітниках Східних Зачумлених земель." }, -- Empty Termite Jar, @use Helps gather termites from a termite mound in Eastern Plaguelands.
[15043] = { "терміти Зачумлених земель" }, -- Plagueland Termites
[15044] = { "бочка з термітами Зачумлених земель" }, -- Barrel of Plagueland Termites
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
[15412] = { "зелена драконяча луска" }, -- Green Dragonscale
[15414] = { "червона драконяча луска" }, -- Red Dragonscale
[15415] = { "синя драконяча луска" }, -- Blue Dragonscale
[15416] = { "луска чорного дракона" }, -- Black Dragonscale
[15417] = { "шкіра дияволозавра" }, -- Devilsaur Leather
[15418] = { "мерехтливий платиновий бойовий молот", hit="Підриває ціль, завдаючи їй від 180 до 250 шкоди від природи." }, -- Shimmering Platinum Warhammer, @hit Blasts a target for 180 to 250 Nature damage.
[15419] = { "шкіра бойового ведмедя" }, -- Warbear Leather
[15420] = { "залізне перо" }, -- Ironfeather
[15421] = { "плащаниця вигнанця" }, -- Shroud of the Exile
[15422] = { "шкіра кригозуба" }, -- Frostsaber Leather
[15423] = { "шкіра химери" }, -- Chimera Leather
[15424] = { "сокира Орґріммара" }, -- Axe of Orgrimmar
[15425] = { "незрівнянні наручі" }, -- Peerless Bracers
[15443] = { "крис Орґріммара" }, -- Kris of Orgrimmar
[15444] = { "посох Орґріммара" }, -- Staff of Orgrimmar
[15445] = { "молот Орґріммара" }, -- Hammer of Orgrimmar
[15449] = { "мертвотні штани" }, -- Ghastly Trousers
[15450] = { "поножі землечерпа" }, -- Dredgemire Leggings
[15451] = { "поножі гаргуйлі" }, -- Gargoyle Leggings
[15452] = { "перобусинні наручі" }, -- Featherbead Bracers
[15453] = { "наручі савани" }, -- Savannah Bracers
[15455] = { "вкрита пилом мантія" }, -- Dustfall Robes
[15456] = { "поножі легкої ходи" }, -- Lightstep Leggings
[15457] = { "налечі пустелі" }, -- Desert Shoulders
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
[15702] = { "перстень хіміка" }, -- Chemist's Ring
[15703] = { "халат хіміка" }, -- Chemist's Smock
[15710] = { "кенарійський місячний пил", use="Застосувати біля каменя місячного совуха, щоб викликати його захисника — Місяцекігтя." }, -- Cenarion Lunardust, @use Apply near a Moonkin Stone to bring forth the stone's defender, Lunaclaw.
[15769] = { "рецепт: Плащ з луски Оніксії", use="Навчає вас створенню плаща з луски Оніксії." }, -- Pattern: Onyxia Scale Cloak, @use Teaches you how to craft an Onyxia Scale Cloak.
[15790] = { "Дослідження мови духів", flavor="Ця книга написана мовою, яку ви не розумієте." }, -- Studies in Spirit Speaking, @flavor This book is written in a language you cannot understand.
[15826] = { "цілюща мазь для тварин", use="Вилікувати вражену хворобою тварину. (Відновлення 15 сек)" }, -- Curative Animal Salve, @use Cure a sickly animal afflicted by the taint of poisoning. (15 Sec Cooldown)
[15842] = { "пустий флакон вершини Зловісного Туману", use="Взяти пробу води з озера на вершині Зловісного Туману." }, -- Empty Dreadmist Peak Sampler, @use Draw a sample of water from the pool of water at the top of Dreadmist Peak.
[15843] = { "наповнений флакон вершини Зловісного Туману" }, -- Filled Dreadmist Peak Sampler
[15844] = { "пустий флакон Скельноджерельних водоспадів", use="Взяти пробу води біля входу в печеру за Скельноджерельним водоспадом." }, -- Empty Cliffspring Falls Sampler, @use Draw a sample of water from the waterfall at the mouth of the Cliffspring Falls cave .
[15845] = { "наповнений флакон Скельноджерельних водоспадів" }, -- Filled Cliffspring Falls Sampler
[15851] = { "місячний гриб" }, -- Lunar Fungus
[15852] = { "ріг кодо" }, -- Kodo Horn
[15866] = { "вкрита пилом медична сумка", use="Відновлює 50 мани кожні 3 сек протягом 15 сек. (Відновлення 30 хв)" }, -- Veildust Medicine Bag, @use Restores 50 mana every 3 sec for 15 sec. (30 Min Cooldown)
[15877] = { "прикраса вівтаря", use="Покласти прикрасу на вівтар Ремулоса, завершивши випробування." }, -- Shrine Bauble, @use Complete the aquatic time trial at the Shrine of Remulos.
[15882] = { "половинка підвіски водної витривалості", flavor="Цій підвісці не витрачає половинки спритності." }, -- Half Pendant of Aquatic Endurance, @flavor The pendant is missing its aquatic counterpart.
[15883] = { "половинка підвіски водної спритності", use="Об'єднати з половинкою підвіски водної вітривалості, щоб зібрати підвіску морського лева." }, -- Half Pendant of Aquatic Agility, @use Combine with the Half Pendant of Aquatic Endurance to form the Pendant of the Sea Lion.
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
[15997] = { "торієві патрони", desc="Додає 17,5 пошкодження за секунду" }, -- Thorium Shells, @desc Adds 17.5 damage per second
[15998] = { "записка Льюїса" }, -- Lewis' Note
[16006] = { "чутливий арканітовий перетворювач" }, -- Delicate Arcanite Converter
[16114] = { "кийок десятника", use="Будить сплячого наймита. (Відновлення 3 сек)" }, -- Foreman's Blackjack, @use Wakes up a targeted sleeping peon. (5 Sec Cooldown)
[16115] = { "ящик Озріка" }, -- Osric's Crate
[16190] = { "рештки криваволютої різниці" }, -- Bloodfury Ripper's Remains
[16192] = { "ікло Бесселет" }, -- Besseleth's Fang
[16203] = { "велика вічна субстанція", use="Перетворити велику вічну субстанцію на три менші." }, -- Greater Eternal Essence, @use Turn a greater eternal essence into three lesser ones.
[16205] = { "насіння Ґеї" }, -- Gaea Seed
[16208] = { "зачароване насіння Ґеї", use="Помістити насіння Ґеї в насип ґрунту Ґеї." }, -- Enchanted Gaea Seeds, @use Place the Gaea seed into the Gaea dirt mound.
[16209] = { "замовлення Подріґа" }, -- Podrig's Order
[16210] = { "ящик Гордона" }, -- Gordon's Crate
[16262] = { "колекція Несси" }, -- Nessa's Collection
[16263] = { "відповідь Лейрда" }, -- Laird's Response
[16282] = { "оберемок шкур" }, -- Bundle of Hides
[16283] = { "шкіргалантерея Агану" }, -- Ahanu's Leather Goods
[16303] = { "лапа Урсанґо" }, -- Ursangous's Paw
[16304] = { "голова Шадумбри" }, -- Shadumbra's Head
[16305] = { "кіготь Гостропазура" }, -- Sharptalon's Claw
[16306] = { "м'ясо від Зарґа" }, -- Zargh's Meats
[16307] = { "лист Гришки" }, -- Gryshka's Letter
[16310] = { "список Брока" }, -- Brock's List
[16311] = { "почесні кирки" }, -- Honorary Picks
[16312] = { "спалахтит" }, -- Incendrites
[16313] = { "скриня Фелікса" }, -- Felix's Chest
[16314] = { "відро з болтами Фелікса" }, -- Felix's Bucket of Bolts
[16332] = { "кайло Тазз'ріла" }, -- Thazz'ril's Pick
[16333] = { "рештки Семюеля", use="Захоронити на могилі Марли." }, -- Samuel's Remains, @use Bury at Marla's Grave.
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
[16658] = { "плащ дикого полювання", equip="Збільшеє силу атаки на 18 під час бою зі звірами." }, -- Wildhunter Cloak, @equip Attack Power increased by 18 when fighting Beasts.
[16659] = { "пояс спритника", equip="Збільшує силу атаки на 12." }, -- Deftkin Belt, @equip +12 Attack Power.
[16660] = { "щит повзучого болота" }, -- Driftmire Shield
[16661] = { "м'яка вербова накидка" }, -- Soft Willow Cape
[16662] = { "фрагмент Ока Дракона" }, -- Fragment of the Dragon's Eye
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
[16782] = { "дивна водяна куля" }, -- Strange Water Globe
[16783] = { "зв'язка наказів" }, -- Bundle of Reports
[16784] = { "сапфір Аку'Май" }, -- Sapphire of Aku'Mai
[16790] = { "розмокла записка" }, -- Damp Note
[16885] = { "важка скринька" }, -- Heavy Junkbox
[16886] = { "шабля беззаконника", equip="Збільшує силу атаки на 15." }, -- Outlaw Sabre, @equip +15 Attack Power.
[16887] = { "відьомський палець" }, -- Witch's Finger
[16889] = { "полірована палиця" }, -- Polished Walking Staff
[16890] = { "булатна шабля" }, -- Slatemetal Cutlass
[16891] = { "аргілітовий короткий меч" }, -- Claystone Shortsword
[16892] = { "менший камінь душі", use="Зберігає душу дружньої цілі. Якщо ціль, чия душа збережена, помирає, вона може оживити себе з 700 здоров'я та 1200 мани. (Відновлення 30 хв)" }, -- Lesser Soulstone, @use Stores the friendly target's soul.  If the target dies while his soul is stored, he will be able to resurrect with 750 health and 1200 mana. (30 Min Cooldown)
[16893] = { "камінь душі", use="Зберігає душу дружньої цілі. Якщо ціль, чия душа збережена, помирає, вона може оживити себе з 1100 здоров'я та 1700 мани. (Відновлення 30 хв)" }, -- Soulstone, @use Stores the friendly target's soul.  If the target dies while his soul is stored, he will be able to resurrect with 1100 health and 1700 mana. (30 Min Cooldown)
[16894] = { "кришталевий жезл" }, -- Clear Crystal Rod
[16895] = { "великий камінь душі", use="Зберігає душу дружньої цілі. Якщо ціль, чия душа збережена, помирає, вона може оживити себе з 1600 здоров'я та 2200 мани. (Відновлення 30 хв)" }, -- Greater Soulstone, @use Stores the friendly target's soul.  If the target dies while his soul is stored, he will be able to resurrect with 1600 health and 2200 mana. (30 Min Cooldown)
[16896] = { "величезний камінь душі", use="Зберігає душу дружньої цілі. Якщо ціль, чия душа збережена, помирає, вона може оживити себе з 2200 здоров'я та 2800 мани. (Відновлення 30 хв)" }, -- Major Soulstone, @use Stores the friendly target's soul.  If the target dies while his soul is stored, he will be able to resurrect with 2200 health and 2800 mana. (30 Min Cooldown)
[16972] = { "хоругва Каранґа", use="Розмістити на тотемному пагорбі Гидколісових." }, -- Karang's Banner, @use Place at the Foulweald Totem Mound.
[16975] = { "пояс Боєпісні" }, -- Warsong Sash
[16976] = { "тотем Мурґута" }, -- Murgut's Totem
[16977] = { "чоботи Боєпісні" }, -- Warsong Boots
[16978] = { "рукавиці Боєпісні" }, -- Warsong Gauntlets
[16981] = { "браслети совоборода" }, -- Owlbeard Bracers
[16985] = { "черевики шукача вітру" }, -- Windseeker Boots
[16986] = { "рукавиці піщаного шпиля" }, -- Sandspire Gloves
[16987] = { "пояс вереску", equip="Збільшує силу атаки на 12." }, -- Screecher Belt, @equip +12 Attack Power.
[16990] = { "плащ фей" }, -- Spritekin Cloak
[17005] = { "мундир грубіяна" }, -- Boorguard Tunic
[17006] = { "кобальтові поножі" }, -- Cobalt Legguards
[17008] = { "маленький сувій", flavor="На сувої красується печатка з невідомим вам знаком." }, -- Small Scroll, @flavor The scroll bears an insignia foreign to you.
[17009] = { "голова посла Малкіна" }, -- Ambassador Malcin's Head
[17012] = { "серцевинна шкіра" }, -- Core Leather
[17021] = { "дикі ягоди" }, -- Wild Berries
[17026] = { "дикий колючекорінь" }, -- Wild Thornroot
[17031] = { "руна телепортації" }, -- Rune of Teleportation
[17032] = { "руна порталів" }, -- Rune of Portals
[17033] = { "знак божественності" }, -- Symbol of Divinity
[17034] = { "насіння клена" }, -- Maple Seed
[17039] = { "череполом" }, -- Skullbreaker
[17042] = { "цвяхостріл" }, -- Nail Spitter
[17043] = { "мантія фанатика" }, -- Zealot's Robe
[17046] = { "клинок для патрання" }, -- Gutterblade
[17047] = { "світний амікт" }, -- Luminescent Amice
[17057] = { "блискуча риб'яча луска" }, -- Shiny Fish Scales
[17117] = { "флейта щуролова", use="Пограти на флейті, щоб зачарувати підземних щурів в депо Глибокобіжного трамвая." }, -- Rat Catcher's Flute, @use Use to lull the vermin infesting the Deeprun Tram into a state of raptured bliss.
[17118] = { "коробка загадкового м'яса", flavor="Не трясти." }, -- Carton of Mystery Meat, @flavor Handle With Care.
[17119] = { "шашлик з підземних щурів", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Deeprun Rat Kabob, @use Restores 243.6 health over 21 sec.  Must remain seated while eating.
[17124] = { "емблема Синдикату" }, -- Syndicate Emblem
[17125] = { "печатка Рейвенхольдта" }, -- Seal of Ravenholdt
[17203] = { "злиток сульфурону" }, -- Sulfuron Ingot
[17348] = { "величезний ковток лікування", ref=17349 }, -- Major Healing Draught
[17349] = { "відмінний ковток лікування", use="Відновлює від {1} до {2} здоров'я. Цей предмет можна використовувати лише на полях боїв (PvP).#Restores {1} to {2}" }, -- Superior Healing Draught, @use Restores 560 to 720 health. This item may only be used in PvP Battlegrounds. (5 Min Cooldown)
[17351] = { "величезний ковток мани", ref=17352 }, -- Major Mana Draught
[17352] = { "відмінний ковток мани", use="Відновлює від {1} до {2} мани. Цей предмет можна використовувати лише на полях боїв (PvP).#Restores {1} to {2}" }, -- Superior Mana Draught, @use Restores 560 to 720 mana. This item may only be used in PvP Battlegrounds. (5 Min Cooldown)
[17355] = { "лист Рабіна" }, -- Rabine's Letter
[17508] = { "баклер лютокаменю" }, -- Forcestone Buckler
[17692] = { "роговий перстень" }, -- Horn Ring
[17708] = { "еліксир крижаної міці", use="Збільшує шкоду від заклинань холоду на 15 на 30 хв. (Відновлення 3 сек)" }, -- Elixir of Frost Power, @use Increases spell frost damage by up to 15 for 30 min. (3 Sec Cooldown)
[17709] = { "рецепт: Еліксир крижаної міці", use="Навчає вас створювати еліксир крижаної міці." }, -- Recipe: Elixir of Frost Power, @use Teaches you how to make an Elixir of Frost Power.
[17771] = { "злиток елементію" }, -- Elementium Bar
[17967] = { "очищена луска Оніксії" }, -- Refined Scale of Onyxia
[18042] = { "стріли з торієвим вістрям", desc="Додає 17,5 пошкодження за секунду" }, -- Thorium Headed Arrow, @desc Adds 17.5 damage per second
[18151] = { "наповнений аметистовий фіал" }, -- Filled Amethyst Phial
[18152] = { "аметистовий фіал", use="Наповнити аметистовий фіал водами місячного колодязя поляни Оракула." }, -- Amethyst Phial, @use Fill the Amethyst Phial at the Oracle Glade moonwell.
[18160] = { "рецепт: Прудкоп'яховий чай", use="Навчає вас приготуванню прудкоп'яхового чаю." }, -- Recipe: Thistle Tea, @use Teaches you how to brew a Thistle Tea.
[18253] = { "величезне зілля відживлення", use="Відновлює від {1} до {2} мани та здоров'я. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Major Rejuvenation Potion, @use Restores 1440 to 1760 mana and health. (2 Min Cooldown)
[18256] = { "зміцнений фіал" }, -- Imbued Vial
[18257] = { "рецепт: Величезне зілля відживлення", use="Навчає вас створювати величезне зілля відживлення." }, -- Recipe: Major Rejuvenation Potion, @use Teaches you how to make a Major Rejuvenation Potion.
[18294] = { "еліксир глибшого водного дихання", use="Дозволяє дихати водою протягом 1 години. (Відновлення 3 сек)" }, -- Elixir of Greater Water Breathing, @use Allows the Imbiber to breathe water for 1 hour. (3 Sec Cooldown)
[18335] = { "незайманий чорний діамант" }, -- Pristine Black Diamond
[18400] = { "перстень живого каменю" }, -- Ring of Living Stone
[18402] = { "сяючий кришталевий перстень" }, -- Glowing Crystal Ring
[18403] = { "печатка драконоборця", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." }, -- Dragonslayer's Signet, @equip Improves your chance to get a critical strike with spells by 1%.
[18404] = { "підвіска зубу Оніксії", equip={ "Збільшує ваш шанс нанесення удару на 1%. ", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Onyxia Tooth Pendant, @equip Improves your chance to hit by 1%., @equip Improves your chance to get a critical strike by 1%.
[18406] = { "талісман крові Оніксії", equip={ "Збільшує ваш шанс парирування атаки на 1%. ", "Збільшує рейтинг захисту на 8. ", "Відновлює 7 здоров'я кожні 5 сек." } }, -- Onyxia Blood Talisman, @equip Increases your chance to parry an attack by 1%., @equip Increased Defense +8., @equip Restores 7 health per 5 sec.
[18410] = { "меч спринтера", hit="Збільшує швидкість бігу на {1}% на {2} с.#by {1}% for {2} sec" }, -- Sprinter's Sword, @hit Increases run speed by 30% for 10 sec.
[18423] = { "голова Оніксії", flavor="Голова матері чорних драконів" }, -- Head of Onyxia, @flavor The head of the Black Dragonflight's Brood Mother
[18501] = { "уламок Сквернолози" }, -- Felvine Shard
[18535] = { "щит Міллі", equip="Відновлює 4 здоров'я кожні 5 сек." }, -- Milli's Shield, @equip Restores 4 health per 5 sec.
[18536] = { "словник Міллі", equip="Відновлює 6 мани кожні 5 сек." }, -- Milli's Lexicon, @equip Restores 6 mana per 5 sec.
[18539] = { "релікварій чистоти", use="Запечатати уламок Сквернолози в релікварій чистоти." }, -- Reliquary of Purity, @use Seal a Felvine Shard inside the Reliquary of Purity.
[18540] = { "запечатаний релікварій чистоти" }, -- Sealed Reliquary of Purity
[18562] = { "елементієва руда" }, -- Elementium Ore
[18567] = { "стихійний флюс" }, -- Elemental Flux
[18588] = { "Динаміт \"Простокид II\"", use="Завдає від 213 до 287 шкоди вогнем в радіусі 5 м. (За умови досягнення цілі, можуть накладатись обмеження.) (Відновлення 1 хв) ", flavor="Динаміт для неінженерів, який рідко* вибухає у вашій руці з удвічі більшою вибуховою потужністю, ніж стандартний Простокид." }, -- Ez-Thro Dynamite II, @use Inflicts 213 to 287 Fire damage in a 5 yard radius (Assuming that it gets to the target, some restrictions may apply.) (1 Min Cooldown), @flavor The dynamite for Non-Engineers that rarely* blows up in your hand with over twice the blasting power of standard EZ-Thro.
[18590] = { "кров лютого звіра" }, -- Raging Beast's Blood
[18591] = { "скриня з кров'ю" }, -- Case of Blood
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
[18646] = { "Око Божественності", flavor="Ви помічаєте рух, коли вдивляєтеся в Око." }, -- The Eye of Divinity, @flavor You can see movement when you peer into the Eye.
[18659] = { "уламок Нордрассіля", use="Утворює Благословення в поєднанні з Оком Тіні та Оком Божественності.", flavor="Крихітний фрагмент Світового Дерева" }, -- Splinter of Nordrassil, @use Forms Benediction when combined with the Eye of Shadow and the Eye of Divinity., @flavor A tiny fragment of the World Tree
[18665] = { "Око Тіні", flavor="В Оці кипить темрява." }, -- The Eye of Shadow, @flavor Seething darkness engulfs the eye.
[18687] = { "зоротський зоряний пил" }, -- Xorothian Stardust
[18688] = { "біс у банці", use="Випустити біса біля алхімічної лабораторії Школоманса." }, -- Imp in a Jar, @use Release the imp near the Scholomance's alchemy lab.
[18703] = { "древній скам'янілий листок", flavor="Дуже великий скам'янілий листок." }, -- Ancient Petrified Leaf, @flavor A very large petrified leaf.
[18704] = { "сухожилля дорослого синього дракона" }, -- Mature Blue Dragon Sinew
[18705] = { "сухожилля дорослого чорного дракона" }, -- Mature Black Dragon Sinew
[18707] = { "різблене рунами руків'я древніх", use="Створити Рок'Делар, довгий лук древніх хранителів об'єднавши руків'я з зачарованим сухожиллям дорослого чорного дракона.", flavor="Подарунок від древніх." }, -- Ancient Rune Etched Stave, @use Forms Rhok'delar, Longbow of the Ancient Keepers, when combined with Enchanted Black Dragon Sinew., @flavor A Gift from the Ancients.
[18708] = { "скам'яніла кора" }, -- Petrified Bark
[18713] = { "Рок'Делар, довгий лук древніх хранителів", equip={ "Збільшує ваш шанс критичного удару на 1%.", "Збільшує вашу силу атаки дальнього бою на 17." } }, -- Rhok'delar, Longbow of the Ancient Keepers, @equip Improves your chance to get a critical strike by 1%., @equip +17 ranged Attack Power.
[18714] = { "перетягнутий жилою лист древнього", equip="Збільшує швидкість атаки дальнього бою на 10%." }, -- Ancient Sinew Wrapped Lamina, @equip Increases ranged attack speed by 15%.
[18719] = { "серце зрадника" }, -- The Traitor's Heart
[18724] = { "зачароване сухожилля дорослого чорного дракона", flavor="Практично незруйновна тятива. Ідеально підійде до могутнього руків'я." }, -- Enchanted Black Dragon Sinew, @flavor An almost indestructible string. Perfect for a mighty bow stave.
[18746] = { "кристал провидіння", use="Помістити кристал спасіння в глибинах підземель великого склепу." }, -- Divination Scryer, @use Plant the Divination Scryer in the heart of the Great Ossuary's basement.
[18749] = { "згублена душа коня", use="Дарувати спасіння згубленій душі коня, провівши ритуал спокути." }, -- Charger's Lost Soul, @use Reclaim the lost soul of death knight's charger, judging it redeemed.
[18752] = { "кадильниця екзорцизму", use="Виявлення духів, що населяють руїни Страходолу. (Відновлення 30 сек)" }, -- Exorcism Censer, @use Reveal the spirits that haunt the ruins of Terrordale. (30 Sec Cooldown)
[18753] = { "арканітовий бард" }, -- Arcanite Barding
[18762] = { "уламок зеленого полум'я", equip="Збільшує шкоду від заклинань і ефектів вогню на 16." }, -- Shard of the Green Flame, @equip Increases damage done by Fire spells and effects by up to 16.
[18775] = { "збагачений маною корм для коней", flavor="Овес та зерно змішане з наповненим маною печивом Сріблястого Світанку." }, -- Manna-Enriched Horse Feed, @flavor Oats and grains specially mixed with the Argent Dawn's enriched manna biscuits.
[18792] = { "благословенний арканітовий бард" }, -- Blessed Arcanite Barding
[18799] = { "спасенна душа коня" }, -- Charger's Redeemed Soul
[18802] = { "тіньове зілля", use="Наділяє вас духом тіні, унаслідок чого жителі Джеденара ставляться до вас дружелюбно. Діє 20 хвилин." }, -- Shadowy Potion, @use Infuses imbiber with a taint of shadow, making him/her friendly to the denizens of Jaedenar.  Lasts 20 minutes.
[18804] = { "сумка лорда Тіньолома", flavor="В сумці знаходиться кристал провидіння та благословенний арканітовий бард." }, -- Lord Grayson's Satchel, @flavor Your finished Divination Scryer and Blessed Arcanite Barding are inside the satchel.
[18807] = { "шолом прихованої сили", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 14." } }, -- Helm of Latent Power, @equip Improves your chance to get a critical strike with spells by 1%., @equip Increases damage and healing done by magical spells and effects by up to 14.
[18818] = { "вказівки Мор'зула" }, -- Mor'zul's Instructions
[18819] = { "кадильниця екзорцизму Рогана" }, -- Rohan's Exorcism Censer
[18839] = { "бойове зілля лікування", use="Відновлює від {1} до {2} здоров'я. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Combat Healing Potion, @use Restores 700 to 900 health. (2 Min Cooldown)
[18841] = { "бойове зілля мани", use="Відновлює від {1} до {2} мани. (Відновлення 2 хв)#Restores {1} to {2}" }, -- Combat Mana Potion, @use Restores 900 to 1500 mana. (2 Min Cooldown)
[18880] = { "голова Тінегубителя" }, -- Darkreaver's Head
[18952] = { "голова Симони" }, -- Simone's Head
[18953] = { "голова Клінфрана" }, -- Klinfran's Head
[18954] = { "голова Соленора" }, -- Solenor's Head
[18955] = { "голова Арторія" }, -- Artorius's Head
[18957] = { "клинок чагарників" }, -- Brushwood Blade
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
[19025] = { "перо володаря неба" }, -- Skylord Plume
[19071] = { "посудина із забрудненою кров'ю" }, -- Vessel of Tainted Blood
[19118] = { "подих природи" }, -- Nature's Breath
[19150] = { "базовий набір припасів стражів" }, -- Sentinel Basic Care Package
[19151] = { "стандартний набір припасів стражів" }, -- Sentinel Standard Care Package
[19152] = { "покращений набір припасів стражів" }, -- Sentinel Advanced Care Package
[19153] = { "базовий набір припасів авангарду" }, -- Outrider Advanced Care Package
[19154] = { "стандартний набір припасів авангарду" }, -- Outrider Basic Care Package
[19155] = { "покращений набір припасів авангарду" }, -- Outrider Standard Care Package
[19182] = { "призовий купон ярмарку Темного місяця" }, -- Darkmoon Faire Prize Ticket
[19338] = { "ваучер на призовий купон" }, -- Free Ticket Voucher
[19366] = { "сфера великого драконоборця", use="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 28." }, -- Master Dragonslayer's Orb, @equip Increases damage and healing done by magical spells and effects by up to 28.
[19383] = { "медальйон великого драконоборця", equip="Збільшує рейтинг захисту на 7." }, -- Master Dragonslayer's Medallion, @equip Increased Defense +7.
[19384] = { "перстень великого драконоборця", equip={ "Збільшує силу атаки на 48.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Master Dragonslayer's Ring, @equip +48 Attack Power., @equip Improves your chance to hit by 1%.
[19726] = { "кровопарость" }, -- Bloodvine
[19727] = { "кривава коса", flavor="При наявності дозволяє травникові збирати кровопарость із флори Зул'Ґурубу." }, -- Blood Scythe, @flavor Allows an Herbalist to collect Bloodvine from Zul'Gurub Flora when carried.
[19767] = { "шкіра первісного кажана" }, -- Primal Bat Leather
[19768] = { "шкіра первісного тигра" }, -- Primal Tiger Leather
[19774] = { "душарит" }, -- Souldarite
[19775] = { "запечатана лазурна сумка", flavor="Міцно запечатано." }, -- Sealed Azure Bag, @flavor Sealed tight.
[19931] = { "моджо божевільності Ґурубаші", use="Гасить жаровню божевільності." }, -- Gurubashi Mojo Madness, @use Extinguishes the Brazier of Madness.
[19982] = { "пелерина сутінкового кажана", equip="Зменшує шкоду від падіння." }, -- Duskbat Drape, @equip Reduces damage from falling.
[19984] = { "чорна маска", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує силу атаки на 36." } }, -- Ebon Mask, @equip Improves your chance to get a critical strike by 1%., @equip +36 Attack Power.
[19990] = { "благословенні молитовні намистини", use="Збільшує зцілення від заклинань і ефектів на 190 на 20 сек. (Відновлення 2 хв)", flavor="Пізнаються в біді." }, -- Blessed Prayer Beads, @use Increases healing done by spells and effects by up to 190 for 20 sec. (2 Min Cooldown), @flavor A friend in need is a friend without beads.
[19991] = { "око дияволозавра", use="Збільшує вашу силу атаки на 150 і ваш шанс влучити на 2%. Ефект триває 20 сек. (Відновлення 2 хв)" }, -- Devilsaur Eye, @use Increases your attack power by 150 and your chance to hit by 2%.  Effect lasts for 20 sec. (2 Min Cooldown)
[19992] = { "зуб дияволозавра", use="Наступна атака вашого супутника завдасть критичного удару, якщо ця атака має таку можливість. (Відновлення 2 хв)" }, -- Devilsaur Tooth, @use Your pet's next attack is guaranteed to critically strike if that attack is capable of striking critically. (2 Min Cooldown)
[20002] = { "велике зілля сну без сновидінь", use="Занурює у сон без сновидінь на {1} с. Протягом цього часу відновлює {2} здоров'я та {3} мани. (Відновлення 2 хв)#for {1} sec#{2} health and {3} mana" }, -- Greater Dreamless Sleep Potion, @use Puts the imbiber in a dreamless sleep for 12 sec. During that time the imbiber heals 2100 health and 2100 mana. (2 Min Cooldown)
[20004] = { "величезне зілля крові троля", use="Відновлює 20 од. здоров'я кожні 5 сек протягом 1 години. (Відновлення 3 сек)" }, -- Major Troll's Blood Potion, @use Regenerate 20 health every 5 sec for 1 hour. (3 Sec Cooldown)
[20006] = { "перстень надії", equip="Збільшує шанс критичного ефекту ваших заклинань світла на 1%.", flavor="Викуваний з чистого світла." }, -- Circle of Hope, @equip Increases the critical effect chance of your Holy spells by 1%., @flavor Forged from pure light.
[20007] = { "зілля магокрові", use="Відновлює 12 мани кожні 5 сек протягом 1 години. (Відновлення 3 сек)" }, -- Mageblood Potion, @use Regenerate 12 mana per 5 sec for 1 hour. (3 Sec Cooldown)
[20008] = { "зілля живої дії", use="Надає невразливість до приголомшення та ефектів ускладнення руху на наступні {1} с. Також знімає вже наявні ефекти. (Відновлення 2 хв)#next {1} sec" }, -- Living Action Potion, @use Makes you immune to Stun and Movement Impairing effects for the next 5 sec. Also removes existing Stun and Movement Impairing effects. (2 Min Cooldown)
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
[20035] = { "крижаний шип", equip="Ваше заклинання \"Крижана стріла\" має 6% шанс відновити 50 мани при використанні.", flavor="Лезо прикрашають демонічні руни." }, -- Glacial Spike, @equip Your Frostbolt spells have a 6% chance to restore 50 mana when cast., @flavor Diabolical runes adorn the blade.
[20036] = { "вогняний рубін", use="Відновлює від 1 до 500 мани та збільшує шкоду від наступного вогняного заклинання на 100. Ефект триває 1 хв. (Відновлення 3 хв)", flavor="Може принести як перемогу, так і загибель." }, -- Fire Ruby, @use Restores 1 to 500 mana and increases the damage of your next Fire spell by up to 100.  Effect lasts for 1 min. (3 Min Cooldown), @flavor Unpredictability leads to both victory and death.
[20037] = { "кулон з арканічним кристалом", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16.", flavor="Арканічні кристали зазвичай використовуються магами." }, -- Arcane Crystal Pendant, @equip Increases damage and healing done by magical spells and effects by up to 16., @flavor Arcane crystals are best utilized for the purposes of a mage.
[20082] = { "лихопосох", equip="Збільшує шкоду від заклинань і ефектів тіні на 11.", flavor="Лихо тим, хто противиться." }, -- Woestave, @equip Increases damage done by Shadow spells and effects by up to 11., @flavor Woe to those who oppose.
[20083] = { "мисливський спис", equip={ "Збільшує ваш шанс критичного удару на 1%.", "Відновлює 5 мани кожні 5 сек." } }, -- Hunting Spear, @equip Improves your chance to get a critical strike by 1%., @equip Restores 5 mana per 5 sec.
[20085] = { "арканічний уламок" }, -- Arcane Shard
[20086] = { "метальний ніж зі смеркосталі" }, -- Dusksteel Throwing Knife
[20087] = { "луска хвилешльопа" }, -- Wavethrasher Scales
[20130] = { "діамантова фляжка", use="Відновлює 9 здоров'я кожні 5 секунд і збільшує вашу силу на 75. Триває 1 хв. (Відновлення 6 хв)", flavor="Подається з льодом." }, -- Diamond Flask, @use Restores 9 health every 5 sec and increases your Strength by 75.  Lasts 1 min. (6 Min Cooldown), @flavor Served on the rocks.
[20134] = { "шолом небесної люті", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 2%.", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Skyfury Helm, @equip Improves your chance to get a critical strike with spells by 2%., @equip Improves your chance to get a critical strike by 1%.
[20255] = { "черевики шереху", equip="Збільшує ефективність непомітності на 1 рівень." }, -- Whisperwalk Boots, @equip Increases your effective stealth level by 1.
[20369] = { "азуритові бойові рукавиці", equip="Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." }, -- Azurite Fists, @equip Improves your chance to get a critical strike with spells by 1%.
[20381] = { "снолуска" }, -- Dreamscale
[20503] = { "закоханий водяний дух", use="Створення поруч із заклинателем тотема джерела мани з 5 од. здоров'я на 24 сек, який відновлює 27 мани кожні 2 сек членам групи в радіусі 20 м. (Відновлення 3 хв)" }, -- Enamored Water Spirit, @use Summons a Mana Spring Totem with 5 health at the feet of the caster for 24 sec that restores 27 mana every 2 seconds to group members within 20 yards. (3 Min Cooldown)
[20504] = { "клинок зі світлосталі", equip="Збільшує шкоду від заклинань і ефектів світла на 16." }, -- Lightforged Blade, @equip Increases damage done by Holy spells and effects by up to 16.
[20505] = { "лицарська печатка", equip="Збільшує зцілення від заклинань і ефектів на 15." }, -- Chivalrous Signet, @equip Increases healing done by spells and effects by up to 15.
[20512] = { "освячена сфера", use="Збільшує шанс нанесення критичного удару заклинаннями та атаками ближнього бою на 3%.  Триває 25 сек. (Відновлення 3 хв)" }, -- Sanctified Orb, @use Increases your critical strike chance with spells and melee attacks by 3%.  Lasts 25 sec. (3 Min Cooldown)
[20517] = { "наплічники бритвосталі", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Razorsteel Shoulders, @equip Improves your chance to hit by 1%.
[20520] = { "темна руна", use="Відновлює від 900 до 1500 мани в обмін на від 600 до 1000 здоров'я. (Відновлення 2 хв)" }, -- Dark Rune, @use Restores 900 to 1500 mana at the cost of 600 to 1000 life. (2 Min Cooldown)
[20521] = { "маска люті", equip={ "Збільшує ваш шанс нанесення критичного удару на 1%.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Fury Visor, @equip Improves your chance to get a critical strike by 1%., @equip Improves your chance to hit by 1%.
[20530] = { "мантія служіння", equip={ "Збільшує шкоду від заклинань і ефектів вогню на 23.", "Збільшує шкоду від заклинань і ефектів тіні на 23." } }, -- Robes of Servitude, @equip Increases damage done by Fire spells and effects by up to 23., @equip Increases damage done by Shadow spells and effects by up to 23.
[20534] = { "уламок безодні", use="Виклик пустотника без вимог до мани та уламків душ. (Відновлення 30 хв)", flavor="Темні ритуали ув'язнені в темних самоцвітах." }, -- Abyss Shard, @use Casts your Summon Voidwalker spell with no mana or Soul Shard requirements. (30 Min Cooldown), @flavor Dark rituals are trapped in dark gems.
[20536] = { "жнець душ", equip={ "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%.", "Збільшує шкоду від заклинань і ефектів тіні на 24." } }, -- Soul Harvester, @equip Improves your chance to hit with spells by 1%., @equip Increases damage done by Shadow spells and effects by up to 24.
[20556] = { "дикий посох", equip={ "Збільшує ваш шанс нанесення удару на 1%. ", "Збільшує ваш шанс нанесення критичного удару на 1%." } }, -- Wildstaff, @equip Improves your chance to hit by 1%., @equip Improves your chance to get a critical strike by 1%.
[20558] = { "відзнака честі тіснини Боєпісні", flavor="Медаль за битву в тіснині Боєпісні" }, -- Warsong Gulch Mark of Honor, @flavor Medal awarded for fighting in Warsong Gulch
[20559] = { "відзнака честі низини Араті", flavor="Медаль за битву в низині Араті" }, -- Arathi Basin Mark of Honor, @flavor Medal awarded for fighting in Arathi Basin
[20560] = { "відзнака честі Альтерацької долини", flavor="Медаль за битву в Альтерацькій долині" }, -- Alterac Valley Mark of Honor, @flavor Medal awarded for fighting in Alterac Valley
[20606] = { "бурштинове пір'я вуду" }, -- Amber Voodoo Feather
[20607] = { "блакитне пір'я вуду" }, -- Blue Voodoo Feather
[20608] = { "зелене пір'я вуду" }, -- Green Voodoo Feather
[20610] = { "налите кров'ю павуче око" }, -- Bloodshot Spider Eye
[20611] = { "товстий чорний кіготь" }, -- Thick Black Claw
[20613] = { "гнила деревина" }, -- Rotting Wood
[20614] = { "кровотруйна есенція" }, -- Bloodvenom Essence
[20620] = { "священний камінь сили", use="Розбити священний камінь сили, щоб отримати 300 сили атаки і збільшити шкоду від заклинань і ефектів світла на 400 в бою з нежиттю. Триває 10 хв." }, -- Holy Mightstone, @use Shatters the Holy Mightstone, granting 300 Attack Power and increasing Holy damage from spells and effects by up to 400 when fighting undead.  Lasts 10 min.
[20761] = { "рецепт: Трансмутація первородного вогню", use="Навчає вас перетворювати серце вогню на три первородні вогні." }, -- Recipe: Transmute Elemental Fire, @use Teaches you how to transmute a Heart of Fire into three Elemental Fires.
[21139] = { "уламок зеленого скіпетра" }, -- Green Scepter Shard
[21145] = { "сутність Зандівія" }, -- Essence of Xandivious
[21146] = { "фрагмент зараження Жаху", flavor="-Внутрішні землі" }, -- Fragment of the Nightmare's Corruption, @flavor -Hinterlands
[21147] = { "фрагмент зараження Жаху", flavor="-Ясенеділ" }, -- Fragment of the Nightmare's Corruption, @flavor -Ashenvale
[21148] = { "фрагмент зараження Жаху", flavor="-Фералас" }, -- Fragment of the Nightmare's Corruption, @flavor -Feralas
[21149] = { "фрагмент зараження Жаху", flavor="-Смерколісся" }, -- Fragment of the Nightmare's Corruption, @flavor -Duskwood
[21177] = { "знак королів" }, -- Symbol of Kings
[21531] = { "намисто із зубів дракона", equip="Збільшує зцілення від заклинань і ефектів на 26." }, -- Drake Tooth Necklace, @equip Increases healing done by spells and effects by up to 26.
[21532] = { "чоботи роботяги" }, -- Drudge Boots
[21546] = { "еліксир більшої вогнеміці", use="Збільшує шкоду від вогняних заклинань на 40 на 30 хв. (Відновлення 3 сек)" }, -- Elixir of Greater Firepower, @use Increases spell fire damage by up to 40 for 30 min. (3 Sec Cooldown)
[21547] = { "рецепт: Еліксир більшої вогнеміці", use="Навчає вас створювати еліксир більшої вогнеміці." }, -- Recipe: Elixir of Greater Firepower, @use Teaches you how to make an Elixir of Greater Firepower.
[21928] = { "зразок крові із Зимоключа" }, -- Winterspring Blood Sample
[21935] = { "стабільна ектоплазма" }, -- Stable Ectoplasm
[21936] = { "заморожена ектоплазма" }, -- Frozen Ectoplasm
[21937] = { "обпалена ектоплазма" }, -- Scorched Ectoplasm
[21938] = { "магматичне ядро" }, -- Magma Core
[21939] = { "скверно-стихійний стрижень", flavor="Скверна і стихія — два в одному!" }, -- Fel Elemental Rod, @flavor Fel and Elemental, two great tastes...
[21946] = { "ектоплазматичний дистилятор", use="Розмістити ектоплазматичний дистилятор на землі, що дозволить збирати ектоплазму. Працює на гоблінському ракетному паливі. (Відновлення 1 хв)" }, -- Ectoplasmic Distiller, @use Places Ectoplasmic Distiller on the ground, allowing Ectoplasm to be gathered.   Requires Goblin Rocket Fuel. (1 Min Cooldown)
[21982] = { "бойове намисто огрів" }, -- Ogre Warbeads
[21983] = { "незавершений стяг виклику" }, -- Incomplete Banner of Provocation
[21984] = { "ліва частина амулета лорда Вальталака", use="Об'єднати ліву, праву та верхню частини амулету лорда Вальталака в одне ціле.", flavor="Зло, ув'язнене в амулеті, здається, стає дедалі сильнішим..." }, -- Left Piece of Lord Valthalak's Amulet, @use Recombines the left, right and top pieces of Lord Valthalak's Amulet into one whole., @flavor The evil trapped within this fragment seems to be growing stronger...
[21985] = { "запечатаний контейнер з кров'ю" }, -- Sealed Blood Container
[21986] = { "стяг виклику", use="Розмістити стяг на арені в Чорноскельних надрах, щоб викликати Телдрена на поєдинок. (Відновлення 10 хв)" }, -- Banner of Provocation, @use Use this banner at the Arena in Blackrock Depths to challenge Theldren. (10 Min Cooldown)
[21987] = { "спалахіт Спалахія", flavor="Цей тліючий шматок лорда Спалахія чудово замінить собою вугілля." }, -- Incendicite of Incendius, @flavor This still-smoldering chunk of Lord Incendius will make for an excellent coal.
[21988] = { "вуглинка Вуглегляда", flavor="Надто палка, щоб тримати в руках... краще загорнути її у щось вогнетривке!" }, -- Ember of Emberseer, @flavor This one's far too hot to touch... better wrap it in something nonflammable!
[21989] = { "попіл герцога попелу", flavor="Рештки герцога горять його ненавистю до вас." }, -- Cinder of Cynders, @flavor This visceral chunk of the Duke burns on, fueled by his hatred for you.
[21994] = { "пояс героїзму", equip="Збільшує рейтинг захисту на 7." }, -- Belt of Heroism, @equip Increased Defense +7.
[21995] = { "чоботи героїзму", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Boots of Heroism, @equip Improves your chance to hit by 1%.
[21996] = { "поручі героїзму", equip="Збільшує рейтинг захисту на 3." }, -- Bracers of Heroism, @equip Increased Defense +3.
[21997] = { "нагрудник героїзму", equip="Збільшує ваш шанс нанесення удару на 1%." }, -- Breastplate of Heroism, @equip Improves your chance to hit by 1%.
[21998] = { "рукавиці героїзму", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Gauntlets of Heroism, @equip Improves your chance to get a critical strike by 1%.
[21999] = { "шолом героїзму", equip="Збільшує ваш шанс нанесення критичного удару на 1%." }, -- Helm of Heroism, @equip Improves your chance to get a critical strike by 1%.
[22000] = { "поножі героїзму", equip="Збільшує рейтинг захисту на 5." }, -- Legplates of Heroism, @equip Increased Defense +5.
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
[22046] = { "права частина амулета лорда Вальталака", use="Об'єднати ліву, праву та верхню частини амулету лорда Вальталака в одне ціле.", flavor="Ця частина амулета відчутно тремтить, жадаючи возз’єднатися з іншими." }, -- Right Piece of Lord Valthalak's Amulet, @use Recombines the left, right and top pieces of Lord Valthalak's Amulet into one whole., @flavor This section of the amulet vibrates with a palpable fervor to be rejoined with its sibling pieces.
[22047] = { "верхня частина амулету лорда Вальталака", use="Об'єднати ліву, праву та верхню частини амулету лорда Вальталака в одне ціле.", flavor="При дотику до цього предмету виникає неприємне відчуття, ніби ув'язнене в ньому зло прагне вирватися назовні." }, -- Top Piece of Lord Valthalak's Amulet, @use Recombines the left, right and top pieces of Lord Valthalak's Amulet into one whole., @flavor This object feels wrong to the touch, as if an evil within is trying to escape.
[22048] = { "амулет лорда Вальталака", use="Направити на тіло лорда Вальталака, вливши в нього душу з амулету.", flavor="Зібраний воєдино, амулет пульсує від злого духу лорда Вальталака." }, -- Lord Valthalak's Amulet, @use Target Lord Valthalak's corpse to instill his spirit from the amulet., @flavor Reunited into its whole form, the amulet pulses strongly with the evil spirit of Lord Valthalak.
[22049] = { "жаровня виклику", use="Викликати дух Мора Сивого Копита. (Відновлення 10 хв)" }, -- Brazier of Beckoning, @use Summon the spirit of Mor Grayhoof. (10 Min Cooldown)
[22050] = { "жаровня виклику", use="Викликати дух Ізалієн. (Відновлення 10 хв)" }, -- Brazier of Beckoning, @use Summon the spirit of Isalien. (10 Min Cooldown)
[22051] = { "жаровня виклику", use="Викликати духи Ярієн та Сотоса. (Відновлення 10 хв)" }, -- Brazier of Beckoning, @use Summon the remains of Jarien and Sothos. (10 Min Cooldown)
[22052] = { "жаровня виклику", use="Викликати дух Кормока. (Відновлення 10 хв)" }, -- Brazier of Beckoning, @use Summon the spirit of Kormok. (10 Min Cooldown)
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
[22069] = { "мантія чаклуна", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 16.", use="Зменшує супротив магії цілей ваших заклинань на 20." }, -- Sorcerer's Robes, @equip Increases damage and healing done by magical spells and effects by up to 16., @equip Decreases the magical resistances of your spell targets by 20.
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
[22115] = { "міжвимірний шукач привидів", use="Дозволяє носію бачити привити нещодавно померлих. (Відновлення 1 хв)" }, -- Extra-Dimensional Ghost Revealer, @use Allows wielder to see ghosts of the recently deceased. (1 Min Cooldown)
[22137] = { "сумка Ісіди" }, -- Ysida's Satchel
[22138] = { "поручі Чорнокаменю", flavor="Ці поручі виготовлені переважно з темного заліза, але подекуди блищить інший метал." }, -- Blackrock Bracer, @flavor Crudely crafted, mostly from dark iron, these bracers exhibit trace amounts of a shiny metal.
[22139] = { "медальйон Ісіди" }, -- Ysida's Locket
[22149] = { "буси огрського чаклунства", equip="Збільшує шкоду і зцілення від магічних заклинань і ефектів на 13." }, -- Beads of Ogre Mojo, @equip Increases damage and healing done by magical spells and effects by up to 13.
[22150] = { "буси огрської могутності", equip={ "Збільшує силу атаки на 24.", "Збільшує ваш шанс нанесення удару на 1%." } }, -- Beads of Ogre Might, @equip +24 Attack Power., @equip Improves your chance to hit by 1%.
[22192] = { "кров'яничний еліксир ухилення", use="Збільшує шанс ухилитися від атаки на 3% на 30 хв." }, -- Bloodkelp Elixir of Dodging, @use Increases chance to dodge by 3% for 30 min.
[22193] = { "кров'яничний еліксир супротиву", use="Збільшує супротив всім школам магії на 15 на 30 хв." }, -- Bloodkelp Elixir of Resistance, @use Increases all magical resistances by 15 for 30 min.
[22201] = { "релікварій чистоти" }, -- Reliquary of Purity
[22202] = { "малий шматок обсидіану" }, -- Small Obsidian Shard
[22203] = { "великий шматок обсидіану" }, -- Large Obsidian Shard
[22224] = { "сутність глузливого привида" }, -- Jeering Spectre's Essence
[22226] = { "друїдські останки", flavor="Сілітіди мало що залишили від цього героя Кенарійського Кола." }, -- Druidical Remains, @flavor The silithid have left little to the corpse of this champion of the Cenarion Circle.
[22227] = { "реліквія Зоряного Бризу", flavor="Ця древня реліквія нічних ельфів була заморожена велетнями-кригобоями. Поводитись обережно." }, -- Starbreeze Village Relic, @flavor This night elvic antiquity has been frozen solid by the Frostmaul giants. Handle with care.
[22228] = { "блискучий меч фанатизму", flavor="Найгостріше лезо легко проріже будь-якого ворога, живого чи мертвого." }, -- Brilliant Sword of Zealotry, @flavor The keenest of edges, meant to indiscriminately cleave through any foe, living or dead.
[22229] = { "попіл душі вигнанця", flavor="Ці попелясті залишки душі вигнанця ледь помітно пульсують відлунням минулого життя." }, -- Soul Ashes of the Banished, @flavor These ashen remains of an exiled soul pulse faintly with the echo of a once-promising life.
[22243] = { "маленький мішечок душ" }, -- Small Soul Pouch
[22244] = { "коробка душ" }, -- Box of Souls
[22250] = { "мішечок для трав", desc="Сумка для трав на 12 місць" }, -- Herb Pouch
[22272] = { "шати лісу", equip="Збільшує зцілення від заклинань і ефектів на 55." }, -- Forest's Embrace, @equip Increases healing done by spells and effects by up to 55.
[22274] = { "посивіла шкура" }, -- Grizzled Pelt
[22320] = { "якісні товари Мукса" }, -- Mux's Quality Goods
[22338] = { "вулканічний попіл" }, -- Volcanic Ash
[22344] = { "жаровня виклику: посібник користувача", flavor="Де знайти місця з привидами" }, -- Brazier of Invocation: User's Manual, @flavor Where to find Haunted Loci
[22381] = { "зразок отрути з Сілітуса" }, -- Silithus Venom Sample
[22382] = { "запечатаний контейнер з отрутою" }, -- Sealed Venom Container
[22432] = { "дияволозаврова колючка", use="Проткнути дияволозавра, щоб ввести велику дозу отрути." }, -- Devilsaur Barb, @use Stabs a devilsaur, inflicting a large dose of poison.
[22434] = { "кровошляп" }, -- Bloodcap
[22435] = { "жало Ґоріші" }, -- Gorishi Sting
[22444] = { "гнила лоза" }, -- Putrid Vine
[22458] = { "посох місячної тіні", equip={ "Збільшує шкоду і зцілення від магічних заклинань і ефектів на 18.", "Відновлює 7 мани кожні 5 сек.", "Збільшує ваш шанс нанесення критичного удару заклинаннями на 1%." } }, -- Moonshadow Stave, @equip Increases damage and healing done by magical spells and effects by up to 18., @equip Restores 7 mana per 5 sec., @equip Improves your chance to get a critical strike with spells by 1%.
[22682] = { "заморожена руна", use="Поглинає від {1} до {2} шкоди від вогню. Триває 1 годину. (Відновлення 3 хв)#Absorbs {1} to {2}" }, -- Frozen Rune, @use Absorbs 1500 to 2500 fire damage. Lasts 1 hour. (3 Min Cooldown)
[22895] = { "начаклована булочка з корицею", use="Відновлює {1} здоров'я протягом {2} сек. Потрібно залишатися в сидячому положенні під час їжі.#Restores {1} health over {2}" }, -- Conjured Cinnamon Roll, @use Restores 3180 health over 30 sec.  Must remain seated while eating.
[22945] = { "потерта записка" }, -- A Careworn Note
[22972] = { "потерта записка" }, -- A Careworn Note
[23250] = { "призматична мушля" }, -- Prismatic Shell
[25470] = { "золотий грифон", use="Викликає та звільняє грифона, на якому можна їздити. Цього верхового скакуна можна викликати лише в Закордоні." },
[27498] = { "сувій спритності V", ref=3012 }, -- Scroll of Agility V
[27499] = { "сувій інтелекту V", ref=955 }, -- Scroll of Intellect V
[27500] = { "сувій захисту V", ref=3013 }, -- Scroll of Protection V
[27501] = { "сувій духу V", ref=1181 }, -- Scroll of Spirit V
[27502] = { "сувій витривалості V", ref=1180 }, -- Scroll of Stamina V
[27503] = { "сувій сили V", ref=954 }, -- Scroll of Strength V
[27885] = { "жезл душі Алдора" },
[28790] = { "перстень світлоохоронця Наару" }, -- Naaru Lightwarden's Band
[28823] = { "око Ґруула" }, -- Eye of Gruul
[29434] = { "знак правосуддя" },
[29736] = { "чарівна руна" },
[30349] = { "медальйон Альянса" },
[32450] = { "молоток гладіатора" },
[32451] = { "порятунок гладіатора" },
[32452] = { "відстрочка гладіатора" },
[32453] = { "зоряні сльози", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}", flavor="Обережно видобуті для використання у військових цілях." }, -- Star's Tears, @use Restores 7200 mana over 30 sec. Must remain seated while drinking., @flavor Carefully extracted for warfare use.
[32454] = { "дослідження Арторн", flavor="Нотатки Арторн Пісні Вітрі з її вивчення книги Ворона." }, -- Arthorn's Research, @flavor Arthorn Windsong's notes from her studies of the Book of the Raven.
[32455] = { "плач зірок", use="Відновлює {1} мани протягом {2} сек. Потрібно залишатися в сидячому положенні під час пиття.#Restores {1} mana over {2}", flavor="Обережно видобуті для використання у військових цілях." }, -- Star's Lament, @use Restores 4200 mana over 30 sec. Must remain seated while drinking., @flavor Carefully extracted for warfare use.
[32456] = { "бомби-охоронці неба" }, -- Skyguard Bombs
[32457] = { "фетиш араккоа" }, -- Arakkoa Fetish
[32458] = { "попіл Ал'ара", use="Викликає та відпускає фенікса, на якому можна їздити. Це дуже швидкий транспорт. Цього верхового скакуна можна викликати лише в Закордоні.", flavor="І з попелу він відродився..." }, -- Ashes of Al'ar, @use Summons and dismisses a rideable phoenix. This is a very fast mount. This mount can only be summoned in Outland., @flavor And from the ashes it was reborn...
[32459] = { "поетапна філактерія", flavor="Дивна темрява оточує цей артефакт." },
[32961] = { "відстрочка нещадного гладіатора" },
[32962] = { "дотик поразки безжального гладіатора" },
[32963] = { "молоток нещадного гладіатора" },
[32964] = { "порятунок безжального гладіатора" },
}
