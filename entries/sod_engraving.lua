local _, addonTable = ...
addonTable.sod_engraving = {

-- [id] = {
--     [1] = title,
--     [spell] = spell id (this spell should have "rune" key)
-- }

-- Druid
[48642] = { "Нівечення", spell=410025 }, -- Mangle
[48644] = { "Гнів Лютошторма", spell=410061 }, -- Fury of Stormrage
[48646] = { "Дикий рев", spell=410023 }, -- Savage Roar
[48649] = { "Життєцвіт", spell=410033 }, -- Lifebloom
[48651] = { "Дикі удари", spell=410021 }, -- Wild Strikes
[48652] = { "Дикий ріст", spell=410028 }, -- Wild Growth
[48820] = { "Виживає найсильніший", spell=416042 }, -- Survival of the Fittest
[48821] = { "Сонячний вогонь", spell=416044 }, -- Sunfire
[48870] = { "Лобова атака", spell=416046 }, -- Skull Bash
[48881] = { "Зерно життя", spell=416050 }, -- Living Seed
[48883] = { "Розірвати", spell=416049 }, -- Lacerate
[49159] = { "Зоряний сплеск", spell=424718 }, -- Starsurge

-- Hunter
[48656] = { "Аспект лева", spell=410115 }, -- Aspect of the Lion
[48659] = { "Майстер-стрілець", spell=410113 }, -- Master Marksman
[48661] = { "Влада над звірами", spell=410110 }, -- Beast Mastery
[48666] = { "Постріл химери", spell=410121 }, -- Chimera Shot
[48667] = { "Вибуховий постріл", spell=410123 }, -- Explosive Shot
[48668] = { "Команда \"Вбити\"", spell=410111 }, -- Kill Command
[48669] = { "Самотній вовк", spell=410122 }, -- Lone Wolf
[48869] = { "Снайперська підготовка", spell=416091 }, -- Sniper Training
[49216] = { "Розтинання", spell=425758 }, -- Carve
[49217] = { "Зміїний розмах", spell=425760 }, -- Serpent Spread
[49218] = { "Фланговий удар", spell=425762 }, -- Flanking Strike
[49219] = { "Удари кобри", spell=425759 }, -- Cobra Strikes

-- Mage
[48835] = { "Масова регенерація", spell=415939 }, -- Mass Regeneration
[48837] = { "Жива бомба", spell=415936 }, -- Living Bomb
[48893] = { "Просвітлення", spell=415942 }, -- Enlightenment
[49185] = { "Арканічний сплеск", spell=425171 }, -- Arcane Surge
[49186] = { "Крижана кров", spell=425170 }, -- Icy Veins
-- [?] = { "Вигорання", spell=401759 }, -- Burnout
-- [?] = { "Крижані пальці", spell=401765 }, -- Fingers of Frost
-- [?] = { "Регенерація", spell=401767 }, -- Regeneration
-- [?] = { "Арканічний спалах", spell=401757 }, -- Arcane Blast
-- [?] = { "Крижаний спис", spell=401760 }, -- Ice Lance
-- [?] = { "Повернення у часі", spell=401761 }, -- Rewind Time
-- [?] = { "Живе полум'я", spell=401768 }, -- Living Flame

-- Paladin
[48626] = { "Маяк світла", spell=409999 }, -- Beacon of Light
[48627] = { "Удар хрестоносця", spell=410002 }, -- Crusader Strike
[48628] = { "Божественна жертва", spell=410010 }, -- Divine Sacrifice
[48629] = { "Взірець натхнення", spell=410011 }, -- Inspiration Exemplar
[48631] = { "Щит месника", spell=410008 }, -- Avenger's Shield
[48633] = { "Печатка мучеництва", spell=410015 }, -- Seal of Martyrdom
[48635] = { "Божественна буря", spell=410014 }, -- Divine Storm
[48638] = { "Десниця відплати", spell=410001 }, -- Hand of Reckoning
[48892] = { "Екзорцист", spell=416037 }, -- Exorcist
[49213] = { "Ріг Лордерона", spell=425618 }, -- Horn of Lordaeron
[49214] = { "Егіда", spell=425619 }, -- Aegis
[49215] = { "Докір", spell=425621 }, -- Rebuke

-- Priest
[48866] = { "Сила душі", spell=415997 }, -- Strength of Soul
[48872] = { "Проникливість", spell=415995 }, -- Serendipity
[48879] = { "Випалювання розуму", spell=415996 }, -- Mind Sear
[49188] = { "Слово сили: Бар'єр", spell=425213 }, -- Power Word: Barrier
[49189] = { "Чума Порожнечі", spell=425216 }, -- Void Plague
[49190] = { "Викривлена віра", spell=425215 }, -- Twisted Faith
-- [?] = { "Коло зцілення", spell=402859 }, -- Circle of Healing
-- [?] = { "Сповідь", spell=402862 }, -- Penance
-- [?] = { "Слово тіні: Смерть", spell=402849 }, -- Shadow Word - Death
-- [?] = { "Гомункули", spell=402852 }, -- Homunculi
-- [?] = { "Молитва відновлення", spell=402848 }, -- Prayer of Mending
-- [?] = { "Спільний біль", spell=402854 }, -- Shared Pain

-- Rogue
[49170] = { "Різанина з тіні", spell=424992 }, -- Slaughter from the Shadows
[49171] = { "Удар шаблею", spell=424984 }, -- Saber Slash
[49172] = { "Укол", spell=424988 }, -- Shiv
[49173] = { "Удар лівицею", spell=424990 }, -- Main Gauche
-- [?] = { "Смертельне вариво", spell=400080 }, -- Deadly Brew
-- [?] = { "Всього лише подряпина", spell=400082 }, -- Just a Flesh Wound
-- [?] = { "Швидкий постріл", spell=400095 }, -- Quick Draw
-- [?] = { "Скалічити", spell=400094 }, -- Mutilate
-- [?] = { "Тіньовий удар", spell=400105 }, -- Shadowstrike
-- [?] = { "Поміж очей", spell=400081 }, -- Between the Eyes
-- [?] = { "Танок клинків", spell=400099 }, -- Blade Dance
-- [?] = { "Руна Різзака", spell=401488 }, -- Cutty's Rune
-- [?] = { "Отруєння", spell=400102 }, -- Envenom

-- Shaman
[48671] = { "Настанови пращурів", spell=410099 }, -- Ancestral Guidance
[48672] = { "Спеціалізація на бою з двох рук", spell=410096 }, -- Dual Wield Specialization
[48674] = { "Майстерність володіння щитом", spell=410098 }, -- Shield Mastery
[48675] = { "Щит води", spell=410097 }, -- Water Shield
[48677] = { "Щит землі", spell=410101 }, -- Earth Shield
[48679] = { "Перевантаження", spell=410094 }, -- Overload
[48681] = { "Виверження лави", spell=410095 }, -- Lava Burst
[48682] = { "Удар лавою", spell=410104 }, -- Lava Lash
[48685] = { "Шлях Землі", spell=410107 }, -- Way of Earth
[48840] = { "Цілющий дощ", spell=416057 }, -- Healing Rain
[49197] = { "Вибух лави", spell=425344 }, -- Molten Blast
[49198] = { "Шаманська лють", spell=425343 }, -- Shamanistic Rage

-- Warlock
[48848] = { "Вічна химородь", spell=416008 }, -- Everlasting Affliction
[48850] = { "Демонічна тактика", spell=416009 }, -- Demonic Tactics
[48885] = { "Спалення", spell=416015 }, -- Incinerate
[49211] = { "Демонічна благодать", spell=425477 }, -- Demonic Grace
[49212] = { "Угода з демоном", spell=425476 }, -- Demonic Pact
-- [?] = { "Вогняне озеро", spell=403937 }, -- Lake of Fire
-- [?] = { "Майстерність чаклування", spell=403932 }, -- Master Channeler
-- [?] = { "Витягування душі", spell=403920 }, -- Soul Siphon
-- [?] = { "Стріла Хаосу", spell=403925 }, -- Chaos Bolt
-- [?] = { "Мара", spell=403919 }, -- Haunt
-- [?] = { "Метаморфоза", spell=403938 }, -- Metamorphosis
-- [?] = { "Залп тіньових стріл", spell=403936 }, -- Shadow Bolt Volley

-- Warrior
[48823] = { "Цілеспрямована лють", spell=425445 }, -- Single-Minded Fury
[49200] = { "Швидкий удар", spell=425444 }, -- Quick Strike
[49201] = { "Лютий удар", spell=403476 }, -- Raging Blow
[49202] = { "Вісник війни", spell=403480 }, -- Warbringer
[49203] = { "Неконтрольована лють", spell=425446 }, -- Consumed by Rage
[49204] = { "Несамовитий натиск", spell=425447 }, -- Frenzied Assault
-- [?] = { "Криваве шаленство", spell=403474 }, -- Blood Frenzy
-- [?] = { "Бичування", spell=403475 }, -- Flagellation
-- [?] = { "Спустошення", spell=403489 }, -- Devastate
-- [?] = { "Нескінченна лють", spell=425443 }, -- Endless Rage
-- [?] = { "Переможний запал", spell=403470 }, -- Victory Rush
-- [?] = { "Несамовитий грім", spell=416003 }, -- Furious Thunder

}
