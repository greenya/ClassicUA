local _, addonTable = ...
addonTable.sod_engraving = {

-- [id] = {
--     [1] = title,
--     [spell] = spell id (this spell should have "rune" key)
-- }

-- Druid
[48641] = { "Підживлення", spell=410059 }, -- Nourish
[48642] = { "Нівечення", spell=410025 }, -- Mangle
[48644] = { "Гнів Лютошторма", spell=410061 }, -- Fury of Stormrage
[48645] = { "Входження в сон", spell=410060 }, -- Dreamstate
[48646] = { "Дикий рев", spell=410023 }, -- Savage Roar
[48649] = { "Життєцвіт", spell=410033 }, -- Lifebloom
[48651] = { "Дикі удари", spell=410021 }, -- Wild Strikes
[48652] = { "Дикий ріст", spell=410028 }, -- Wild Growth
[48653] = { "Інстинкти виживання", spell=410027 }, -- Survival Instincts
[48655] = { "Затемнення", spell=410029 }, -- Eclipse
[48820] = { "Виживає найсильніший", spell=416042 }, -- Survival of the Fittest
[48821] = { "Сонячний вогонь", spell=416044 }, -- Sunfire
[48870] = { "Лобова атака", spell=416046 }, -- Skull Bash
[48881] = { "Зерно життя", spell=416050 }, -- Living Seed
[48883] = { "Розірвати", spell=416049 }, -- Lacerate
[48895] = { "Вогні Елуни", spell=416051 }, -- Elune's Fires
[49159] = { "Зоряний сплеск", spell=424718 }, -- Starsurge
[49160] = { "Король джунглів", spell=424765 }, -- King of the Jungle
[49161] = { "Берсерк", spell=424760 }, -- Berserk
[49657] = { "Покращена луб'яна шкіра", spell=431449 }, -- Improved Barkskin
[49658] = { "Кривавість", spell=431447 }, -- Gore
[49659] = { "Шквальний вітер", spell=431451 }, -- Gale Winds
[49660] = { "Покращене шалене відновлення", spell=431461 }, -- Improved Frenzied Regeneration
[49661] = { "Цвітіння", spell=431468 }, -- Efflorescence
[50015] = { "Покращений розмах", spell=439765 }, -- Improved Swipe
[50016] = { "Зорепад", spell=439770 }, -- Starfall
[50017] = { "Дерево життя", spell=439767 }, -- Tree of Life

-- Hunter
[48656] = { "Вбивця кобр", spell=410115 }, -- Cobra Slayer
[48657] = { "Спеціалізація на бою з двох рук", spell=410116 }, -- Dual Wield Specialization
[48658] = { "Виявлення слабких місць", spell=410114 }, -- Expose Weakness
[48659] = { "Майстер-стрілець", spell=410113 }, -- Master Marksman
[48660] = { "Впевнений постріл", spell=410109 }, -- Steady Shot
[48661] = { "Влада над звірами", spell=410110 }, -- Beast Mastery
[48665] = { "Кидання пасток", spell=410118 }, -- Trap Launcher
[48666] = { "Постріл химери", spell=410121 }, -- Chimera Shot
[48667] = { "Вибуховий постріл", spell=410123 }, -- Explosive Shot
[48668] = { "Вбивчий постріл", spell=410111 }, -- Kill Shot
[48669] = { "Самотній вовк", spell=410122 }, -- Lone Wolf
[48833] = { "Фахівець з ближнього бою", spell=416086 }, -- Melee Specialist
[48836] = { "Захоплення цілі", spell=416085 }, -- Lock and Load
[48854] = { "Котячі рефлекси", spell=416083 }, -- Catlike Reflexes
[48869] = { "Снайперська підготовка", spell=416091 }, -- Sniper Training
[48875] = { "Лють раптора", spell=416093 }, -- Raptor Fury
[48876] = { "Швидке вбивство", spell=416090 }, -- Rapid Killing
[48884] = { "Удар виверни", spell=416089 }, -- Wyvern Strike
[49216] = { "Розтинання", spell=425758 }, -- Carve
[49217] = { "Зміїний розмах", spell=425760 }, -- Serpent Spread
[49218] = { "Фланговий удар", spell=425762 }, -- Flanking Strike
[49219] = { "Удари кобри", spell=425759 }, -- Cobra Strikes
[49663] = { "Тротил", spell=431611 }, -- T.N.T.
[49664] = { "Сконцентрований вогонь", spell=431601 }, -- Focus Fire
[50043] = { "Бий-біжи", spell=440563 }, -- Hit and Run
[50044] = { "Покращений залп", spell=440560 }, -- Improved Volley
[50045] = { "Винахідливість", spell=440557 }, -- Resourcefulness

-- Mage
[48189] = { "Живе полум'я", spell=401768 }, -- Living Flame
[48190] = { "Регенерація", spell=401767 }, -- Regeneration
[48191] = { "Крижані пальці", spell=401765 }, -- Fingers of Frost
[48192] = { "Перегрів", spell=401764 }, -- Overheat
[48193] = { "Обстріл снарядами", spell=401763 }, -- Missile Barrage
[48194] = { "Стріла крижаного полум'я", spell=401762 }, -- Frostfire Bolt
[48195] = { "Повернення у часі", spell=401761 }, -- Rewind Time
[48196] = { "Крижаний спис", spell=401760 }, -- Ice Lance
[48197] = { "Вигорання", spell=401759 }, -- Burnout
[48198] = { "Арканічний спалах", spell=401757 }, -- Arcane Blast
[48200] = { "Посилені обереги", spell=401754 }, -- Advanced Warding
[48201] = { "Замороження мозку", spell=401752 }, -- Brain Freeze
[48202] = { "Полум'яна вдача", spell=401749 }, -- Hot Streak
[48203] = { "Арканічний обстріл", spell=401722 }, -- Arcane Barrage
[48822] = { "Сила заклинань", spell=415934 }, -- Spell Power
[48835] = { "Масова регенерація", spell=415939 }, -- Mass Regeneration
[48837] = { "Жива бомба", spell=415936 }, -- Living Bomb
[48867] = { "Чарокрижана стріла", spell=415948 }, -- Spellfrost Bolt
[48893] = { "Просвітлення", spell=415942 }, -- Enlightenment
[49185] = { "Арканічний сплеск", spell=425171 }, -- Arcane Surge
[49186] = { "Крижана кров", spell=425170 }, -- Icy Veins
[49187] = { "Хроностатичне збереження", spell=425189 }, -- Chronostatic Preservation
[49318] = { "Темпоральна аномалія", spell=429306 }, -- Temporal Anomaly
[49319] = { "Глибока заморозка", spell=429304 }, -- Deep Freeze
[49321] = { "Стріла руйнівного полум'я", spell=429311 }, -- Balefire Bolt
[49322] = { "Заміщення", spell=429309 }, -- Displacement
[49323] = { "Розплавлений обладунок", spell=429308 }, -- Molten Armor
[50054] = { "Крижана куля", spell=440858 }, -- Frozen Orb

-- Paladin
[48626] = { "Маяк світла", spell=409999 }, -- Beacon of Light
[48627] = { "Удар хрестоносця", spell=410002 }, -- Crusader Strike
[48628] = { "Десниця жертовності", spell=410010 }, -- Hand of Sacrifice
[48629] = { "Взірець натхнення", spell=410011 }, -- Inspiration Exemplar
[48631] = { "Щит месника", spell=410008 }, -- Avenger's Shield
[48632] = { "Опанування аури", spell=416037 }, -- Aura Mastery
[48633] = { "Божественне світло", spell=410015 }, -- Divine Light
[48634] = { "Молот праведника", spell=410013 }, -- Hammer of the Righteous
[48635] = { "Божественна буря", spell=410014 }, -- Divine Storm
[48638] = { "Десниця відплати", spell=410001 }, -- Hand of Reckoning
[48825] = { "Священний щит", spell=416028 }, -- Sacred Shield
[48860] = { "Мистецтво війни", spell=416031 }, -- The Art of War
[48888] = { "Під захистом Світла", spell=416035 }, -- Guarded by the Light
[48892] = { "Опанування аури", spell=416037 }, -- Aura Mastery
[49213] = { "Освячена земля", spell=425618 }, -- Hallowed Ground
[49214] = { "Егіда", spell=425619 }, -- Aegis
[49215] = { "Докір", spell=425621 }, -- Rebuke
[49234] = { "Гнучкий захист", spell=426175 }, -- Malleable Protection
[49235] = { "Покрив Світла", spell=426178 }, -- Sheath of Light
[49236] = { "Вливання Cвітла", spell=426180 }, -- Infusion of Light
[49310] = { "Фанатизм", spell=429251 }, -- Fanaticism
[49311] = { "Гнів", spell=429249 }, -- Wrath
[49312] = { "Покращений прихисток", spell=429247 }, -- Improved Sanctuary
[49313] = { "Милість Світла", spell=429242 }, -- Light's Grace
[49314] = { "Покращений молот гніву", spell=429261 }, -- Improved Hammer of Wrath
[49315] = { "Сила очищення", spell=429255 }, -- Purifying Power
[50049] = { "Праведна помста", spell=440792 }, -- Righteous Vengeance
[50050] = { "Шок і трепет", spell=440790 }, -- Shock and Awe
[50051] = { "Щит праведності", spell=440788 }, -- Shield of Righteousness

-- Priest
[48263] = { "Молитва відновлення", spell=402848 }, -- Prayer of Mending
[48264] = { "Слово тіні: Смерть", spell=402849 }, -- Shadow Word: Death
[48265] = { "Оберіг душі", spell=402850 }, -- Soul Warding
[48267] = { "Гомункули", spell=402852 }, -- Homunculi
[48268] = { "Зв'язуюче зцілення", spell=402853 }, -- Binding Heal
[48269] = { "Спільний біль", spell=402854 }, -- Shared Pain
[48270] = { "Приглушення болю", spell=402855 }, -- Pain Suppression
[48272] = { "Дотик вампіра", spell=402857 }, -- Vampiric Touch
[48273] = { "Коло зцілення", spell=402859 }, -- Circle of Healing
[48275] = { "Сповідь", spell=402862 }, -- Penance
[48277] = { "Око Порожнечі", spell=402864 }, -- Eye of the Void
[48830] = { "Біль і страждання", spell=415991 }, -- Pain and Suffering
[48866] = { "Сила душі", spell=415997 }, -- Strength of Soul
[48872] = { "Проникливість", spell=415995 }, -- Serendipity
[48879] = { "Випалювання розуму", spell=415996 }, -- Mind Sear
[49188] = { "Слово сили: Бар'єр", spell=425213 }, -- Power Word: Barrier
[49189] = { "Чума Порожнечі", spell=425216 }, -- Void Plague
[49190] = { "Викривлена віра", spell=425215 }, -- Twisted Faith
[49192] = { "Підсилене відновлення", spell=425309 }, -- Empowered Renew
[49193] = { "Відроджена надія", spell=425310 }, -- Renewed Hope
[49194] = { "Дух спокутника", spell=425312 }, -- Spirit of the Redeemer
[49195] = { "Злиття з тінню", spell=425314 }, -- Dispersion
[49665] = { "Божественне заступництво", spell=431650 }, -- Divine Aegis
[49666] = { "Пронизування розуму", spell=431663 }, -- Mind Spike
[49667] = { "Сплеск Світла", spell=431669 }, -- Surge of Light
[49668] = { "Відчай", spell=431673 }, -- Despair
[49669] = { "Осередок Порожнечі", spell=431705 }, -- Void Zone

-- Rogue
[48141] = { "Смертельне вариво", spell=400080 }, -- Deadly Brew
[48142] = { "Поміж очей", spell=400081 }, -- Between the Eyes
[48143] = { "Всього лише подряпина", spell=400082 }, -- Just a Flesh Wound
[48147] = { "Удар за ударом", spell=400093 }, -- Rolling with the Punches
[48148] = { "Швидкий постріл", spell=400095 }, -- Quick Draw
[48160] = { "Скалічити", spell=400094 }, -- Mutilate
[48161] = { "Танок клинків", spell=400099 }, -- Blade Dance
[48162] = { "Крок через тінь", spell=400101 }, -- Shadowstep
[48163] = { "Отруєння", spell=400102 }, -- Envenom
[48164] = { "Крок через тінь", spell=400101 }, -- Shadowstep
[48165] = { "Тіньовий удар", spell=400105 }, -- Shadowstrike
[48166] = { "Кидок сюрікена", spell=400096 }, -- Shuriken Toss
[48847] = { "Мушкетон", spell=415922 }, -- Blunderbuss
[48852] = { "Багряний вихор", spell=415918 }, -- Crimson Tempest
[48862] = { "Раптові удари", spell=415926 }, -- Waylay
[49170] = { "Різанина з тіні", spell=424992 }, -- Slaughter from the Shadows
[49171] = { "Удар шаблею", spell=424984 }, -- Saber Slash
[49172] = { "Головоріз", spell=424988 }, -- Cutthroat
[49173] = { "Удар лівицею", spell=424990 }, -- Main Gauche
[49174] = { "Майстер непомітності", spell=425103 }, -- Master of Subtlety
[49175] = { "Отруєний ніж", spell=425102 }, -- Poisoned Knife
[49682] = { "Честь серед злодіїв", spell=432295 }, -- Honor Among Thieves
[49683] = { "Зосереджені атаки", spell=432291 }, -- Focused Attacks
[49684] = { "Бойова витримка", spell=432293 }, -- Combat Potency
[49685] = { "Нечесна перевага", spell=432301 }, -- Unfair Advantage
[49686] = { "Одразу до справи", spell=432297 }, -- Cut to the Chase
[49687] = { "Різанина", spell=432299 }, -- Carnage
[49859] = { "Віяло ножів", spell=436609 }, -- Fan of Knives

-- Shaman
[48671] = { "Настанови пращурів", spell=410099 }, -- Ancestral Guidance
[48672] = { "Спеціалізація на бою з двох рук", spell=410096 }, -- Dual Wield Specialization
[48673] = { "Вогненний спалах", spell=410093 }, -- Fire Nova
[48674] = { "Майстерність володіння щитом", spell=410098 }, -- Shield Mastery
[48675] = { "Щит води", spell=410097 }, -- Water Shield
[48677] = { "Щит землі", spell=410101 }, -- Earth Shield
[48678] = { "Зброя Водоверті", spell=410100 }, -- Maelstrom Weapon
[48679] = { "Перевантаження", spell=410094 }, -- Overload
[48680] = { "Дух альфа-вовка", spell=410103 }, -- Spirit of the Alpha
[48681] = { "Виверження лави", spell=410095 }, -- Lava Burst
[48682] = { "Удар лавою", spell=410104 }, -- Lava Lash
[48683] = { "Бистрина", spell=410105 }, -- Riptide
[48685] = { "Шлях Землі", spell=410107 }, -- Way of Earth
[48829] = { "Сплеск сили", spell=416054 }, -- Power Surge
[48831] = { "Гнучкість розуму", spell=416055 }, -- Mental Dexterity
[48840] = { "Цілющий дощ", spell=416057 }, -- Healing Rain
[48853] = { "Злагодженість", spell=416062 }, -- Coherence
[48902] = { "Горіння", spell=416066 }, -- Burn
[49197] = { "Вибух лави", spell=425344 }, -- Molten Blast
[49198] = { "Покращений примарний вовк", spell=425343 }, -- Greater Ghost Wolf
[49221] = { "Пробудження пращурів", spell=425883 }, -- Ancestral Awakening
[49222] = { "Тотем-приманка", spell=425882 }, -- Decoy Totem
[49678] = { "Приливні хвилі", spell=432234 }, -- Tidal Waves
[49679] = { "Електростатика", spell=432238 }, -- Static Shock
[49680] = { "Розкотистий грім", spell=432236 }, -- Rolling Thunder
[49681] = { "Надпровідність", spell=432241 }, -- Overcharged
[49855] = { "Майстерність володіння дворучною зброєю", spell=436368 }, -- Two-Handed Mastery
[50047] = { "Духи диких звірів", spell=440630 }, -- Feral Spirit
[50048] = { "Буря, земля і вогонь", spell=440634 }, -- Storm, Earth, and Fire

-- Warlock
[48343] = { "Метаморфоза", spell=403938 }, -- Metamorphosis
[48344] = { "Вогняне озеро", spell=403937 }, -- Lake of Fire
[48345] = { "Залп тіньових стріл", spell=403936 }, -- Shadow Bolt Volley
[48347] = { "Майстерність чаклування", spell=403932 }, -- Master Channeler
[48352] = { "Стріла Хаосу", spell=403925 }, -- Chaos Bolt
[48355] = { "Витягування душі", spell=403920 }, -- Soul Siphon
[48356] = { "Мара", spell=403919 }, -- Haunt
[48848] = { "Вічна химородь", spell=416008 }, -- Everlasting Affliction
[48850] = { "Демонічна тактика", spell=416009 }, -- Demonic Tactics
[48885] = { "Спалення", spell=416015 }, -- Incinerate
[48898] = { "Демонічні знання", spell=416014 }, -- Demonic Knowledge
[48899] = { "Танець нечестивців", spell=416017 }, -- Dance of the Wicked
[49211] = { "Демонічна благодать", spell=425477 }, -- Demonic Grace
[49212] = { "Угода з демоном", spell=425476 }, -- Demonic Pact
[49245] = { "Закляття", spell=426443 }, -- Invocation
[49246] = { "Гримуар синергії", spell=426445 }, -- Grimoire of Synergy
[49247] = { "Тінь і полум'я", spell=426452 }, -- Shadow and Flame
[49248] = { "Тіньове полум'я", spell=426467 }, -- Shadowflame
[49249] = { "Помста", spell=426470 }, -- Vengeance
[49670] = { "Пандемія", spell=431743 }, -- Pandemic
[49671] = { "Зворотний потік", spell=431745 }, -- Backdraft
[49672] = { "Нестабільна химородь", spell=431747 }, -- Unstable Affliction
[49673] = { "Виклик вартового скверни", spell=431756 }, -- Summon Felguard
[49674] = { "Обпалююча аура", spell=431758 }, -- Immolation Aura
[50067] = { "Винищення", spell=440922 }, -- Decimation
[50068] = { "Знак Хаосу", spell=440924 }, -- Mark of Chaos
[50069] = { "Інфернальний обладунок", spell=440926 }, -- Infernal Armor

-- Warrior
[48323] = { "Переможний запал", spell=403470 }, -- Victory Rush
[48325] = { "Нескінченна лють", spell=403489 }, -- Endless Rage
[48326] = { "Бичування", spell=403480 }, -- Flagellation
[48329] = { "Спустошення", spell=403475 }, -- Devastate
[48330] = { "Несамовитий грім", spell=403476 }, -- Furious Thunder
[48332] = { "Криваве шаленство", spell=403474 }, -- Blood Frenzy
[48335] = { "Несамовите відновлення", spell=403467 }, -- Enraged Regeneration
[48336] = { "Втручання", spell=403472 }, -- Intervene
[48593] = { "Зосереджена лють", spell=409163 }, -- Focused Rage
[48823] = { "Цілеспрямована лють", spell=416003 }, -- Single-Minded Fury
[48841] = { "Стійка гладіатора", spell=416002 }, -- Gladiator Stance
[48877] = { "Точний розрахунок", spell=416005 }, -- Precise Timing
[48904] = { "Приплив крові", spell=416004 }, -- Blood Surge
[49200] = { "Швидкий удар", spell=425443 }, -- Quick Strike
[49201] = { "Лютий удар", spell=425444 }, -- Raging Blow
[49202] = { "Вісник війни", spell=425445 }, -- Warbringer
[49203] = { "Неконтрольована лють", spell=425446 }, -- Consumed by Rage
[49204] = { "Несамовитий натиск", spell=425447 }, -- Frenzied Assault
[49250] = { "Підбадьорливий клич", spell=426491 }, -- Rallying Cry
[49261] = { "Смак крові", spell=427076 }, -- Taste for Blood
[49262] = { "Пильність", spell=427078 }, -- Vigilance
[49263] = { "Майстерність володіння щитом", spell=427080 }, -- Shield Mastery
[49264] = { "Шаленство", spell=427081 }, -- Rampage
[49265] = { "Мечем і щитом", spell=427082 }, -- Sword and Board
[49266] = { "Погром", spell=427084 }, -- Wrecking Crew
[50037] = { "Ударна хвиля", spell=440496 }, -- Shockwave
[50038] = { "Раптова смерть", spell=440494 }, -- Sudden Death
[50039] = { "Свіже м'ясо", spell=440492 }, -- Fresh Meat

-- Ring
[51232] = { "Спеціалізація на мечах", spell=453635 }, -- Sword Specialization
[51233] = { "Спеціалізація на сокирах", spell=453688 }, -- Axe Specialization
[51234] = { "Спеціалізація на булавах", spell=453689 }, -- Mace Specialization
[51235] = { "Спеціалізація на кинджалах", spell=453690 }, -- Dagger Specialization
[51236] = { "Спеціалізація на кулачній зброї", spell=453691 }, -- Fist Weapon Specialization
[51237] = { "Спеціалізація на зброї дальнього бою", spell=453692 }, -- Ranged Weapon Specialization
[51238] = { "Спеціалізація на держаковій зброї", spell=453694 }, -- Pole Weapon Specialization
[51239] = { "Спеціалізація на аркані", spell=453695 }, -- Arcane Specialization
[51240] = { "Спеціалізація на вогні", spell=453696 }, -- Fire Specialization
[51241] = { "Спеціалізація на кризі", spell=453697 }, -- Frost Specialization
[51242] = { "Спеціалізація на природі", spell=453698 }, -- Nature Specialization
[51243] = { "Спеціалізація на тіні", spell=453700 }, -- Shadow Specialization
[51244] = { "Спеціалізація на святості", spell=453702 }, -- Holy Specialization
[51245] = { "Спеціалізація на дикості", spell=453703 }, -- Feral Combat Specialization


}
