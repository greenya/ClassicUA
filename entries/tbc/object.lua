local _, addonTable = ...
local objects_tbc = {

["Altar of Aggonar"] = "вівтар Аґґонара",
["Altar of Naias"] = "вівтар Найаса",
["Altar of Tidal Mastery"] = "вівтар приборкання припливів",
["Altered Bloodmyst Crystal"] = "видозмінений кристал Кривавої Мли",
["Ancient Draenei Altar"] = "древній вівтар дренеїв",
["Ancient Lichen"] = "древній лишайник",
["Ancient Relic"] = "древня реліквія",
["Ango'rosh Attack Plans"] = "плани нападу племені Анґо'рош",
["Aquatic Stinkhorn"] = "водянистий смердоріг",
["Arelion's Knapsack"] = "торба Ареліона",
["Auchenai Coffin"] = "акенайська труна",
["Axxarien Crystal"] = "аксаріенcький кристал",
["Azure Phial"] = "лазурний фіал",
["Azure Snapdragon"] = "лазуровий ротик",
["Barrel of Filth"] = "бочка бруду",
["Basin of Holy Water"] = "чаша зі святою водою",
["Battered Ancient Book"] = "пошарпана древня книга",
["Blackhoof Armaments"] = "озброєння Чорного Копита",
["Blackhoof Cage"] = "клітка Чорного Копита",
["Bleeding Hollow Forge"] = "кузня Кривавої Очниці",
["Bleeding Hollow Supply Crate"] = "ящик з припасами Кривавої Очниці",
["Blood Crystal"] = "кривавий кристал",
["Blood Mushroom"] = "кривавий гриб",
["Bloodstone Signal Fire"] = "кривавий сигнальний вогонь",
["Bloodthistle"] = "кровополох",
["Bloodthistle Plant"] = "кровополох",
["Bogblossom"] = "болотоцвіт",
["Box of Mushrooms"] = "ящик грибів",
["Bristlelimb Cage"] = "клітка Клишоногих",
["Burial Chest"] = "погребальна скриня",
["Burning Wreckage"] = "палаючі уламки",
["Burstcap Mushroom"] = "гриб-зривошапка",
["Cabal Chest"] = "скриня змовників",
["Captain Kelisendra's Cargo"] = "вантаж капітана Келісендри",
["Central Beacon"] = "центральний маяк",
["Chalice of Elune"] = "чаша Елуни",
["Clopper's Equipment"] = "обладнання Клоппера",
["Concealed Control Panel"] = "прихована панель управління",
["Corki's Prison"] = "клітка Коркі",
["Corrupted Crystal"] = "зіпсований кристал",
["Corrupted Flower"] = "зіпсована квітка",
["Cove Cannon"] = "портова гармата",
["Crate of Ingots"] = "ящик злитків",
["Cursed Cauldron"] = "проклятий казан",
["Cursed Egg"] = "прокляте яйце",
["Damaged Diving Gear"] = "пошкоджене водолазне спорядження",
["Darkstone of Terokk"] = "Темний камінь Терокка",
["Dead Mire Soil"] = "ґрунт Мертвої Трясовини",
["Deserter Propaganda"] = "дезертирська пропаганда",
["Discarded Nutriment"] = "полишений корм",
["Draenei Ascendant"] = "предок дренеїв",
["Draenei Vessel"] = "дренейська посудина",
["Dragon Bone"] = "кістка дракона",
["Dragonspine"] = "драконячий шипень",
["Dreaming Glory"] = "мрійник",
["Drycap Mushroom"] = "гриб-сухошапка",
["Dung"] = "послід",
["Duskwither Spire Power Source"] = "джерело енергії шпиля Посушливого Присмерку",
["Dusty Journal"] = "вкритий пилом щоденник",
["East Tent"] = "східний намет",
["Eastern Altar"] = "східний вівтар",
["Emerald Signal Fire"] = "смарагдовий сигнальний вогонь",
["Emitter Spare Part"] = "запчастина для передавача",
["Empty Barrel"] = "порожня діжка",
["Ethereal Transporter Control Panel"] = "панель керування телепортом ефіріалів",
["Ever-burning Pyre"] = "вічне вогнище",
["Eye of Veil Reskk"] = "Око гніздів'я Реск",
["Eye of Veil Shienor"] = "Око гніздів'я Шиєнор",
["Featherbeard's Journal"] = "щоденник Пероборода",
["Featherbeard's Remains"] = "рештки Пероборода",
["Fei Fei's Cache"] = "схованка Сір-ка",
["Fel Cone Fungus"] = "конусна поганка",
["Fel Orc Plans"] = "плани орків Скверни",
["Felhound Poo"] = "послід скверногончої",
["Feralfen Idol"] = "ідол Дикотвані",
["Fertile Dirt Mound"] = "родюча купа ґрунту",
["Forge Camp: Portal Glyph"] = "портальна руна табору Легіону",
["Fresh Fish Rack"] = "стійка зі свіжою рибою",
["Fulgor Spore"] = "спори світлошляпки",
["Galaen's Journal"] = "щоденник Ґалена",
["Garadar Bulletin Board"] = "дошка оголошень Ґарадара",
["Gilded Brazier"] = "позолочена жаровня",
["Glistening Mud"] = "блискучий мул",
["Glowcap"] = "сяйношляпка",
["Gryphon Egg"] = "яйце грифона",
["Haal'eshi Altar"] = "вівтар Гаал'еші",
["Harbinger of the Second Trial"] = "вісник другого випробування",
["Hellfire Spineleaf"] = "пекельний хребтолист",
["Hollowed Out Tree"] = "порожнисте дерево",
["Holy Coffer"] = "священа скриня",
["Hyal Family Monument"] = "пам'ятник сім'ї Хіалів",
["Ikeyen's Belongings"] = "речі Ікейена",
["Impact Site Crystal"] = "кристал з місця падіння",
["Irradiated Power Crystal"] = "опромінений силовий кристал",
["Jakk's Cage"] = "клітка Джакка",
["Jump-a-tron 4000"] = "Стриботрон-4000",
["Kil'sorrow Armaments"] = "озброєння Кіл'туги",
["Lumber Pile"] = "купа деревини",
["Manni's Cage"] = "клітка Манні",
["Marksman Regiment's Cooking Pot"] = "казан загону стрільців",
["Marshberry"] = "болотиця",
["Massive Treasure Chest"] = "масивна скриня зі скарбом",
["Mature Spore Sac"] = "мішечок зрілих спор",
["Medical Supplies"] = "ящик з медикаментами",
["Metal Coffer"] = "металева скриня",
["Moh's Cage"] = "клітка Мога",
["Mound of Dirt"] = "купа землі",
["Mummified Troll Remains"] = "муміфіковані рештки троля",
["Mysteries of the Light"] = "Таємниці Світла",
["Mysterious Egg"] = "таємниче яйце",
["Naga Flag"] = "прапор наг",
["Nautical Compass"] = "морський компас",
["Nautical Map"] = "морська мапа",
["Nazzivus Monument Glyphs"] = "гліфи монумента Наззивія",
["Night Elf Moon Crystal"] = "місячний кристал нічних ельфів",
["Night Elf Plans: An'daroth"] = "плани нічних ельфів: Ан'дарот",
["Night Elf Plans: An'owyn"] = "плани нічних ельфів: Ан'овін",
["Night Elf Plans: Scrying on the Sin'dorei"] = "плани нічних ельфів: спостереження за сін’дорай",
["North Tent"] = "північний намет",
["Northeast Tent"] = "північно-східний намет",
["Northern Altar"] = "північний вівтар",
["Olemba Cone"] = "шишка олемби",
["Olemba Root"] = "корінь олемби",
["Orb of Translocation"] = "сфера транслокації",
["Pile of Leaves"] = "купа листя",
["Portal Grimh"] = "портал Ґрімг",
["Portal Kaalez"] = "портал Каалез",
["Primitive Chest"] = "примітивна скриня",
["Princess Stillpine's Cage"] = "клітка принцеси Тихохвоїв",
["Ragveil"] = "ганчірниця",
["Rathis Tomber's Supplies"] = "вантаж Ратіса Могильника",
["Ravager Cage"] = "клітка спустошника",
["Ravager Egg"] = "яйце спустошника",
["Raven Stone Fragment"] = "фрагмент каменя Ворона",
["Raw Meat Rack"] = "стійка з сирим м'ясом",
["Restless Bones"] = "неупокоєні кістки",
["Ruinous Polyspore"] = "руйнівна поліспора",
["Salvageable Metal"] = "металолом",
["Salvageable Wood"] = "обрізки деревини",
["Sand Pear"] = "піщана груша",
["Sapphire Signal Fire"] = "сапфіровий сигнальний вогонь",
["Scourge Meat Wagon"] = "м'ясний фургон Скари",
["Scroll of Scourge Magic"] = "сувій магії Скари",
["Sealed Box"] = "запечатана коробка",
["Sha'naar Relic"] = "реліквія Ша'наар",
["Shipwreck Debris"] = "уламки кораблетрощі",
["Shredder Parts"] = "частини подрібнювача",
["Shrine of Dath'Remar"] = "вівтар Дат'Ремара",
["Smoked Meat Rack"] = "стійка з копченим м'ясом",
["Soaked Tome"] = "промоклий фоліант",
["Solanian's Journal"] = "щоденник Соланіана",
["Solanian's Scrying Orb"] = "віщувальна куля Соланіана",
["Soul Mirror"] = "дзеркало душі",
["Southern Beacon"] = "південний маяк",
["Springpaw Appetizer"] = "закуска з пругколапа",
["Stillpine Grain"] = "мішок зерна Тихохвоїв",
["Stonemaul Clan Banner"] = "знамено клану Каменедовбні",
["Strange Object"] = "дивний об'єкт",
["Sun Gate"] = "сонячна брама",
["Sunhawk Portal Controller"] = "портальний контролер Сонячних Яструбів",
["Suntouched Special Reserve"] = "Сонцесяйне Особливе",
["Tainted Soil Sample"] = "зразок зіпсованого ґрунту",
["Tainted Wood"] = "осквернена деревина",
["Telaar Bulletin Board"] = "дошка оголошень Телаара",
["Telaar Supply Crate"] = "телаарський ящик з припасами",
["Telaari Frond"] = "телаарський паросток",
["The Raven's Claw"] = "пазур воронв",
["Tool Kit"] = "набір інструментів",
["Torgos's Bane"] = "Гибель Торґоса",
["Torn Pilgrim's Pack"] = "порвана сумка паломниці",
["Trampled Skeleton"] = "розтоптаний скелет",
["Unopened Crate"] = "закритий ящик",
["Unstable Mana Crystal Crate"] = "ящик з нестабільними кристалами мани",
["Unyielding Banner"] = "стяг Непохитних",
["Veil Skith Cage"] = "клітка гніздів'я Скіт",
["Violet Signal Fire"] = "ліловий сигнальний вогонь",
["Void Stone"] = "камінь Пустоти",
["Voidstone"] = "камінь Пустоти",
["Wanted Poster"] = "оголошення про розшук",
["Wanted Poster: Kel'gash the Wicked"] = "оголошення про розшук: Кел'ґаш Лихий",
["Wanted: Thaelis the Hungerer"] = "розшук: Теліс-Ненажера",
["Weapon Container"] = "ящик зі зброєю",
["Weapon Rack"] = "стійка для зброї",
["Western Altar"] = "західний вівтар",
["Western Beacon"] = "західний маяк",
["Wickerman Effigy"] = "плетене опудало",
["Witchbane"] = "відьмобій",
["Worn Chest"] = "обдерта скриня",
["Wyrmtail"] = "змієхвіст",
["Ysera's Tear"] = "сльоза Ізери",
["Zeppelin Cargo"] = "вантаж з дирижабля",
["Zeppelin Debris"] = "частини дирижабля",
}

for k, v in pairs(objects_tbc) do addonTable.object[k] = v end
