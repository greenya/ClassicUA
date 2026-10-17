local _, addonTable = ...

local subtitle = {
    movie = {
        [21] = { -- Worgen starting zone cinematic (the cage)
            name = "Ґілнеас",
            position = 401,
            -- Look at what you've become.
            [1] = "Поглянь, на що ти {стать:перетворився:перетворилася}.",
            -- Those cursed beasts …
            [2] = "Ті прокляті звірі...",
            -- … they've left you nothing more than just another wretched mongrel.
            [3] = "...зробили з тебе лише ще одного жалюгідного покруча.",
            -- Do you even remember what you did to your friends?
            [4] = "Ти хоч пам'ятаєш, що {стать:зробив:зробила} зі своїми друзями?",
            -- Your kind … haunting the wilds unchecked …
            [5] = "Тобі подібні... безкарно нишпорили дикими землями...",
            -- … until we found you.
            [6] = "...доки ми не знайшли тебе.",
            -- They've kept you alive, because they still believe you can be saved.
            [7] = "Тебе лишили {стать:живим:живою}, бо досі вірять, що тебе можна врятувати.",
            -- To which … I must ask
            [8] = "І тому... мушу спитати:",
            -- Is there even a shred … of humanity left within you?
            [9] = "Чи лишилася в тобі бодай крихта... людяності?",
            -- Perhaps.
            [10] = "Можливо.",
            -- We will find out … soon enough.
            [11] = "Що ж... скоро дізнаємося.",
        },
        [22] = { -- Goblin starting zone cinematic (the slave ship)
            name = "Кезан",
            position = 402,
            -- Get down in the hull you worthless SLAAAAAAAAVES!
            [1] = "Ану вниз, у трюм, нікчемні РАБИ-И-И-И-И!",
            -- This is all your fault!  We were supposed to have these stupid slaves to Kalimdor days ago!
            [2] = "Це все через тебе! Ми мали доправити цих довбаних рабів до Калімдору ще кілька днів тому!",
            -- I'm not taking the fall for this one, you're the one who got us lost!
            [3] = "Я за це відповідати не збираюся — це ти нас завів не туди!",
            -- What does it matter?  Gallywix is gonna have both our heads!
            [4] = "Та яка різниця? Ґаллівікс відрубає голови нам обом!",
            -- Shh … did you hear that?
            [5] = "Тс-с... ти це чув?",
            -- Ahhhhhhhhh!
            [6] = "А-а-а-а!",
            -- Captain, Who are they?
            [7] = "Капітане, хто це такі?",
            -- It doesn't matter.  Our orders are to capture the horde target at all costs.
            [8] = "Неважливо. Нам наказано захопити ціль Орди за будь-яку ціну.",
            -- No witnesses.
            [9] = "Жодних свідків.",
            -- AHHHHHHH!!! Abandon ship!  Make for the escape pods!
            [10] = "А-А-А-А!!! Покинути корабель! Усі до рятувальних капсул!",
            -- Let us out!  Don't leave us down here! … please …
            [11] = "Випустіть нас! Не кидайте нас тут!.. благаю...",
            -- Don't leave us! C-c-come back!  NoOOOoOOoo!
            [12] = "Не кидайте нас! П-п-поверніться! НІ-І-І-І!",
        },
        [23] = {
            name = "Вступ Cataclysm",
            position = 400,
            -- Pain. . .
            [1] = "Біль...",
            -- Agony. . .
            [2] = "Агонія...",
            -- My hatred burns through the cavernous deeps.
            [3] = "Моя ненависть палає крізь найглибші надра землі.",
            -- The world heaves with my torment.
            [4] = "Світ здригається від моїх страждань.",
            -- Its wretched kingdoms quake beneath my rage. . .
            [5] = "Ці жалюгідні королівства тремтять від моєї люті...",
            -- But at last. . .  The whole of Azeroth will break. . .
            [6] = "Але зрештою... весь Азерот розколеться...",
            -- . . .  And all will burn beneath the shadow of my wings. . .
            [7] = "...і все згорить у тіні моїх крил...",
        },
        [76] = { -- End of the Cataclysm (dragon aspects)
            name = "Кінець Катаклізму",
            position = 403,
            -- I can feel the elements awakening;
            [1] = "Я відчуваю, як пробуджуються стихії;",
            -- rejoicing...
            [2] = "як вони радіють...",
            -- the Cataclysm is over.
            [3] = "Катаклізм скінчився.",
            -- The champions who fought at our side assured the survival of our world...
            [4] = "Герої, що билися пліч-о-пліч з нами, врятували наш світ...",
            -- but now we must see it, with mortal eyes
            [5] = "але тепер ми мусимо побачити його власними смертними очима.",
            -- We dragon aspects have fulfilled our great purpose
            [6] = "Ми, аспекти драконів, виконали своє велике призначення,",
            -- and our ancient power...
            [7] = "і наша прадавня сила...",
            -- is expended.
            [8] = "вичерпана.",
            -- But though our day draws to an end, life endures...
            [9] = "Та хоча наш час добігає кінця, життя триває...",
            -- and new generations will be born.
            [10] = "і народяться нові покоління.",
            -- Today's victory belongs to all who stood against the shadow.
            [11] = "Сьогоднішня перемога належить усім, хто постав проти темряви.",
            -- You are Azeroth's true Guardians...
            [12] = "Ви — справжні Вартівники Азероту...",
            -- And the future of this world is in your hands...
            [13] = "І майбутнє цього світу у ваших руках...",
            -- For the dawning of the age of mortals has begun.
            [14] = "Бо почалася нова ера — ера смертних.",
        },
    },

    intro = {
        -- the cataclysm old-world rework replaced the narration of every earlier
        -- race intro, so all classic/tbc races are overridden here
        Human = {
            -- Emboldened by the return of their heroic king, Varian Wrynn, the proud humans of Stormwind led the Alliance to victory in its war against the dreaded Lich King.
            { 0, 13, "Підбадьорені поверненням свого героїчного короля Варіана Рінна, горді люди Штормовію привели Альянс до перемоги у війні проти жахливого Короля-Ліча." },
            -- While successful, the campaign in Northrend proved costly and the humans now seek to bolster their strategic holdings through out the world.
            { 13, 23, "Та перемога у Нортренді далася дорогою ціною, і тепер люди прагнуть зміцнити свої стратегічні позиції по всьому світу." },
            -- Under Varian's daring leadership, humanity now braces itself for a renewed conflict with its perennial enemy, the Horde.
            { 23, 33.5, "Під сміливим проводом Варіана людство готується до нового протистояння зі своїм одвічним ворогом — Ордою." },
            -- Yet, as the great Cataclysm rips across the world, familiar threats have once again arisen closer to home.
            { 33.5, 40.5, "Але поки великий Катаклізм розриває світ на шматки, знайомі загрози знову постали ближче до дому." },
            -- It now falls to you to defend the kingdom and uphold the honor of humanity.
            { 40.5, 48, "Тепер саме Вам належить захистити королівство й відстояти честь людства." },
        },
        Dwarf = {
            -- Great change has come to the enduring halls of Ironforge.
            { 0, 5, "Великі зміни прийшли до одвічних зал Залізогарта." },
            -- Obsessed with the workings of the Titans, the dwarves retrieved their creators' mystical tablets from the fabled city of Ulduar.
            { 5, 14.8, "Одержимі таємницями титанів, дворфи відшукали містичні скрижалі своїх творців у легендарному місті Ульдуар." },
            -- Activating one such tablet, King Magni Bronzebeard fell prey to a terrible curse that fused his statue-like form into the diamond heart of Ironforge itself.
            { 14.8, 27.5, "Активувавши одну з таких скрижалей, король Маґні Бронзобородий став жертвою жахливого прокляття, що обернуло його тіло на діамантове серце самого Залізогарта." },
            -- To compound this tragedy, Magni's estranged daughter, Moira, arrived claiming her father's throne for herself and for her infant Dark Iron son.
            { 27.5, 39.5, "На довершення цієї трагедії відчужена донька Маґні, Мойра, прибула вимагати батьків трон для себе та свого немовляти — сина з клану Темного Заліза." },
            -- To avert civil war, the dwarves created the Council of Three Hammers, an uneasy coalition that would share power equally amongst the three clans.
            { 39.5, 50, "Щоб не допустити громадянської війни, дворфи створили Раду Трьох Молотів — хистку коаліцію, що порівну ділить владу між трьома кланами." },
            -- Now, with political upheaval arising in the kingdom and the Great Cataclysm ravaging the surrounding lands, the future of Ironforge falls to brave dwarves like you.
            { 50, 62.5, "Тепер, коли в королівстві наростає політичний неспокій, а Великий Катаклізм спустошує навколишні землі, майбутнє Залізогарта залежить від хоробрих дворфів, таких як Ви." },
        },
        NightElf = {
            -- After years of imprisonment within the Emerald Nightmare, Archdruid Malfurion Stormrage has finally returned to the mortal world.
            { 0, 10.5, "Після років ув'язнення у Смарагдовому Кошмарі архідруїд Малфуріон Шаленство Бурі нарешті повернувся у світ смертних." },
            -- Reunited with his love, Tyrande Whisperwind, Malfurion endeavors now to heal the corrupted world tree, Teldrassil, and rejuvenate the spirit of the night elf people.
            { 10.5, 22.3, "Возз'єднавшись зі своєю коханою Тірандою Шелест Вітру, Малфуріон прагне зцілити осквернене світове дерево Тельдрассіль і відродити силу духу нічних ельфів." },
            -- Yet, as the Great Cataclysm shakes the boughs of their colossal tree, the night elves brace themselves against the coming storm.
            { 22.3, 30, "Але поки Великий Катаклізм стрясає гілля їхнього велетенського дерева, нічні ельфи готуються до прийдешньої бурі." },
            -- As war and destruction close in from all sides, it falls to night elves like you to stand strong and protect the enduring legacy of your people.
            { 30, 42, "Коли війна і руйнування підступають зусібіч, саме таким нічним ельфам, як Ви, належить вистояти й захистити вікову спадщину свого народу." },
        },
        Gnome = {
            -- Given the recent political upheaval in Ironforge, the gnomes have suddenly found themselves unwelcomed guests within the city.
            { 1, 10.5, "Через нещодавні політичні потрясіння у Залізогарті гноми раптом виявилися небажаними гостями в цьому місті." },
            -- Leveraging their ingenious technologies and unquenchable spirit for adventure, the gnomes have begun to reevaluate their role within Khaz Modan.
            { 10.5, 21, "Спираючись на свої геніальні технології та невгамовну жагу до пригод, гноми почали переосмислювати своє місце у Каз-Модані." },
            -- Under the inventive leadership of High Tinker Gelbin Mekkatorque, the gnomes now plan a daring campaign against the barbarous troggs to retake their former capital of Gnomeregan.
            { 21, 36, "Під проводом винахідливого верховного штукаря Ґелбіна Меккакрутя гноми планують зухвалий похід проти диких трогів, щоб повернути свою колишню столицю Гномреґан." },
            -- With the odds stacked against them, the gnomes are counting on brave heroes such as you to stand and be counted.
            { 36, 44, "Попри всі труднощі, гноми покладаються на відважних героїв, таких як Ви, готових доєднатися до боротьби." },
            -- Your people's greatest hour draws near.
            { 44, 48.5, "Найвеличніша година Вашого народу вже близько." },
        },
        Draenei = {
            -- Empowered by the Holy Light and the undying strength of their convictions, the draenei led the charge against the demonic Burning Legion in Outland.
            { 1, 13, "Наснажені Святим Світлом і незламною силою своїх переконань, дренеї очолили наступ на демонічний Палаючий Легіон у Позамежжі." },
            -- Now, with the Legion's defeat, they have completed the desperate mission that first brought them to Azeroth.
            { 13, 20, "Тепер, із поразкою Легіону, вони виконали відчайдушну місію, що колись привела їх до Азероту." },
            -- Though some draenei were sent back to Outland to revitalize their former civilization, the majority have vowed to remain and uphold their sacred commitment to the Alliance.
            { 20, 32.5, "Хоча частина дренеїв повернулася до Позамежжя, щоб відроджувати свою колишню цивілізацію, більшість заприсяглася лишитися та надалі виконувати свій священний обов'язок перед Альянсом." },
            -- Driven by a powerful vision, the immortal Prophet Velen believes that a great war between the darkness and the Light is fast approaching and that Azeroth will be its principal battleground.
            { 32.5, 46.8, "Ведений могутнім видінням, безсмертний пророк Велен вірить, що велика війна між темрявою та Світлом стрімко наближається і що Азерот стане її головним полем битви." },
            -- As one of Velen's chosen, you must stand bravely before the shadow and ensure that your people are ready for the war to come.
            { 46.8, 57.5, "Як {стать:один:одна} з обраних Велена, Ви мусите хоробро постати перед лицем темряви та подбати, щоб Ваш народ був готовий до прийдешньої війни." },
        },
        Worgen = {
            -- Led by their indomitable king, Genn Greymane, the proud citizens of Gilneas once stood with the Alliance against the vile orcish Horde that sought to conquer all of Lordaeron.
            { 1, 13.5, "Під проводом свого незламного короля Ґенна Сивогрива горді громадяни Ґілнеасу колись стояли пліч-о-пліч з Альянсом проти мерзенної орківської Орди, що прагнула підкорити весь Лордерон." },
            -- Gilneas survived but, in the years following the Second War, the kingdom drew ever inward.
            { 13.5, 21, "Ґілнеас вистояв, але в роки після Другої війни королівство дедалі більше замикалося в собі." },
            -- Distrustful of their former allies, the Gilneans erected a mighty wall at the borders of their land, closing off their nation - and their hearts - from an ever-darkening world.
            { 21, 33.5, "Не довіряючи колишнім союзникам, ґілнеасці звели могутню стіну на кордонах своєї землі, відгородивши свою націю — і свої серця — від світу, що поринав у темряву." },
            -- Now, many years later, as the seemingly unstoppable undead Scourge marches across Lordaeron, human civilization once again teeters on the edge of destruction.
            { 33.5, 46, "Тепер, багато років по тому, коли, здавалося б, нездоланні невмерлі Скари крокують Лордероном, людська цивілізація знову балансує на межі знищення." },
            -- As war and terror close in all around them, the citizens of Gilneas are faced with one, terrible truth: their mighty wall cannot hold back the dead for much longer...
            { 46, 57.8, "Поки війна і жах підступають зусібіч, громадяни Ґілнеасу постали перед страшною правдою: їхня могутня стіна вже невдовзі не зможе стримувати мертвих..." },
            -- ...and, worse, rumors of a new threat have risen within the kingdom's borders of feral, nightmare creatures that walk upright as men but hunt and howl as wolves.
            { 57.8, 72, "...і, що гірше, у королівстві ширяться чутки про нову загрозу: диких кошмарних істот, які ходять на двох ногах, мов люди, але полюють і виють, мов вовки." },
        },
        Orc = {
            -- The Great Cataclysm has shattered more than just the world.
            { 0, 5.5, "Великий Катаклізм розтрощив не лише світ." },
            -- Warchief Thrall, arguably the most powerful living shaman has left his people behind so that he might stop the Cataclysm at its source.
            { 5.5, 16, "Вождь Тралл, чи не наймогутніший з нині живих шаманів, полишив свій народ, щоб спинити Катаклізм у самому його джерелі." },
            -- Yet, in his absence, the Horde champion Garrosh Hellscream has become the Horde's new Warchief.
            { 16, 24, "Але за його відсутності новим вождем Орди став її герой Ґаррош Пеклокрик." },
            -- Though popular amongst the orcs for his victories against the Lich King, Garrosh's reckless leadership has begun to cause a rift between himself and the other leaders of the Horde.
            { 24, 35.5, "Орки шанують Ґарроша за його перемоги над Королем-Лічем, проте його безрозсудне правління почало сіяти розбрат між ним та іншими лідерами Орди." },
            -- With Durotar's natural resources nearly depleted, Garrosh seeks to take whatever his people need to survive regardless of who stands in his way.
            { 35.5, 45.8, "Природні багатства Дуротару майже вичерпано, тож Ґаррош ладен узяти все, що потрібно його народові для виживання, хай хто стане в нього на шляху." },
            -- A dangerous new era for the Horde has dawned and it falls to brave orcs like you to uphold the will of the new Warchief and assure the dominance of your people.
            { 45.8, 57, "Для Орди настала небезпечна нова епоха, і тепер таким відважним оркам, як Ви, належить виконати волю нового вождя та утвердити панування свого народу." },
        },
        Scourge = {
            -- Though Lady Sylvanas and her Forsaken finally took vengeance upon their hated enemy, the Lich King, their dark crusade in Northrend proved costly.
            { 1, 12, "Хоча леді Сильвана та її Відречені нарешті помстилися своєму заклятому ворогові — Королю-Лічу, їхній похмурий похід у Нортренд обійшовся дорогою ціною." },
            -- Betrayed by their Grand Apothecary, Putress, at the Battle of Wrathgate, the Forsaken's devious plague of death was unleashed upon both the Alliance and the Horde to calamitous event.
            { 12, 25, "У битві біля Брами гніву великий аптекар Гниліс зрадив Відречених, випустивши смертельну чуму на війська Альянсу й Орди та спричинивши катастрофу." },
            -- Unbeknownst to Sylvanas, Putress and his demonic ally, Varimathras, had taken control of the Undercity.
            { 25, 32.7, "Без відома Сильвани Гниліс та його демонічний спільник Варіматрас захопили владу над Підмістям." },
            -- As a result, the Forsaken were wrongly blamed for the traitor's atrocities.
            { 32.7, 38.2, "Через це провину за звірства зрадників несправедливо поклали на всіх Відречених." },
            -- Though the Undercity was eventually retaken, Sylvanas and her followers still bear the weight of Putress's sins.
            { 38.2, 46.3, "Зрештою Підмістя вдалося відвоювати, але Сильвана та її послідовники й досі несуть тягар гріхів Гниліса." },
            -- Mistrusted by the other members of the Horde, the Forsaken must now prove their loyalty to the cause and redeem themselves from their supposed treachery.
            { 46.3, 56, "Позбавлені довіри інших членів Орди, Відречені мусять тепер довести свою відданість спільній справі та відмитися від звинувачень у зраді." },
            -- To this end, Sylvanas has bolstered her defenses within the Tirisfal Glades and readied her undead forces for any contingency.
            { 56, 65.2, "Задля цього Сильвана зміцнила оборону Тірісфальського перелісся та приготувала свої сили невмерлих до будь-яких загроз." },
            -- As one of the Forsaken, you must use your cunning and viciousness to slay any who would pose a threat to Sylvanas's rule be they human, undead, or otherwise.
            { 65.2, 78, "Як {стать:один:одна} із Відречених, Ви мусите скористатися своєю хитрістю та жорстокістю, щоб винищити всіх, хто загрожує владі Сильвани, — людей, невмерлих чи будь-кого іншого." },
        },
        Tauren = {
            -- Great tragedy has rocked the tauren tribes and shaken their once-stalwart devotion to the Horde.
            { 0, 7.7, "Велика трагедія сколихнула племена тауренів і похитнула їхню колись непохитну відданість Орді." },
            -- A disagreement between the new orc Warchief, Garrosh Hellscream, and the beloved tauren chieftain, Cairne Bloodhoof, led to a duel that ended in Cairne's death.
            { 7.7, 19.7, "Суперечка між новим вождем орків Ґаррошем Пеклокриком та улюбленим вождем тауренів Керном Кривавим Копитом призвела до двобою, що скінчився смертю Керна." },
            -- With his loss, the vile matriarch Magatha Grimtotem launched a murderous attack, attempting to seize control of Thunder Bluff for herself.
            { 19.7, 29.5, "Після цієї втрати підла відьма Маґата Зловісний Тотем розпочала кривавий напад, намагаючись захопити владу над Громовим Бескидом." },
            -- However, Cairne's brave son, Baine Bloodhoof, successfully repelled the attack and banished the surviving Grimtotem to the farthest reaches of the land.
            { 29.5, 41, "Однак хоробрий син Керна, Бейн Криваве Копито, зумів відбити напад і вигнати уцілілих із клану Зловісного Тотема на найдальші землі." },
            -- Under Baine's hopeful leadership, the tauren people now seek to heal their wounds and restore the balance between the various factions of the Horde.
            { 41, 51.2, "Під сповненим надії проводом Бейна народ тауренів прагне загоїти рани та відновити рівновагу між різними силами Орди." },
            -- To this end, a new generation of tauren "Sunwalkers" has arisen to lead their people into the Light of a new dawn and the promise of rebirth.
            { 51.2, 62, "Задля цього постало нове покоління тауренів-«Сонцеходців», щоб повести свій народ до Світла нового світанку та обіцяного відродження." },
            -- As a proud tribesman of Mulgore, you must uphold the honor of your people and safeguard the lands of your ancestors.
            { 62, 70, "Як {стать:гордий одноплемінник:горда одноплемінниця} Мулґору, Ви мусите відстояти честь свого народу та вберегти землі своїх предків." },
        },
        Troll = {
            -- Exiled years ago from their land in Stranglethorn Vale, the Darkspear trolls attempted to make a new home for themselves among the disparate races of the Horde.
            { 0, 12, "Вигнані багато років тому зі своїх земель у Тернистій долині, тролі Темного Списа спробували знайти нову домівку серед різноманітних народів Орди." },
            -- Under the leadership of the noble Warchief Thrall, Vol'jin and his savage trolls had finally found the honor and purpose they had been searching for...
            { 12, 22, "Під проводом шляхетного вождя Тралла Вол'джин та його дикі тролі нарешті знайшли честь і мету, яких так довго шукали..." },
            -- ...but now, under the rule of the headstrong Garrosh Hellscream, the trolls fear that the Horde could tear itself apart.
            { 22, 30.7, "...але тепер, за правління свавільного Ґарроша Пеклокрика, тролі бояться, що Орда може розірвати сама себе на шматки." },
            -- Vol'jin knows that whatever threats loom ahead, whether they be from within the Horde or from without, it is cunning trolls like you that will fight to preserve the honor of the Horde.
            { 30.7, 43, "Вол'джин знає: хай які загрози чекають попереду — зсередини Орди чи ззовні, — саме хитрі тролі, такі як Ви, боротимуться за збереження честі Орди." },
        },
        BloodElf = {
            -- The past few years have seen unprecedented changes within the eternal land of Quel'Thalas.
            { 1, 8.2, "Останні кілька років принесли небачені зміни у вічні землі Квел'Таласа." },
            -- The blood elves, following the will of their crazed leader, Kael'thas Sunstrider, channeled dangerous, chaotic magicks to transform their sacred Sunwell into a gateway of unspeakable evil.
            { 8.2, 22.8, "Ельфи крові, виконуючи волю свого божевільного лідера Кель'таса Сонячного Блукача, спрямували небезпечну хаотичну магію на свій священний Сонячний Колодязь, щоб перетворити його на браму невимовного зла." },
            -- While Kael'thas and his demonic masters were eventually defeated, a different transformation occurred within the Sunwell itself...
            { 22.8, 31, "Хоча Кель'таса та його демонічних володарів зрештою було переможено, у самому Сонячному Колодязі відбулася інша зміна..." },
            -- ...as a dying naaru sacrificed its life essence to reignite the Sunwell into a font of holy energy.
            { 31, 40, "...наару, помираючи, пожертвував своєю життєвою сутністю, щоб знову запалити Сонячний Колодязь і перетворити його на джерело святої енергії." },
            -- Now, the blood elf regent, Lor'themar Theron, sees a new hope on the horizon for his people.
            { 40, 46.7, "Тепер лорд-регент ельфів крові Лор'темар Терон бачить на обрії нову надію для свого народу." },
            -- Over time, the Sunwell's Light could cure the blood elves of their cursed state, but many still cling to the arcane powers they procured and are hesitant to relinquish them.
            { 46.7, 58.7, "З часом Світло Сонячного Колодязя могло б зцілити ельфів крові від їхнього проклятого стану, але багато хто досі чіпляється за здобуті арканічні сили й не квапиться їх зрікатися." },
            -- As one of the remaining blood elves, you must fight to protect Quel'Thalas and help redeem the soul of your ancient people.
            { 58.7, 68, "Як {стать:один:одна} з уцілілих ельфів крові, Ви мусите боротися за захист Квел'Таласа та допомогти спокутувати душу свого стародавнього народу." },
        },
        Goblin = {
            -- The wily cunning goblins of Kezan have lived in relative peace for generations.
            { 0, 6.5, "Хитрі та кмітливі гобліни Кезану поколіннями жили у відносному спокої." },
            -- Though some of their race sided with the marauding orcs during the Second War, most goblins remained neutral throughout the various conflicts between the Alliance and Horde.
            { 6.5, 17.7, "Хоча дехто з їхнього роду став на бік орків-грабіжників під час Другої війни, більшість гоблінів зберігала нейтралітет у конфліктах між Альянсом та Ордою." },
            -- Ruled over by corrupt yet highly affluent Trade Princes, the goblins created a virtual paradise for themselves throughout the islands of the South Seas.
            { 17.7, 27.8, "Під владою корумпованих, але надзвичайно заможних торгових принців гобліни створили собі справжній рай на островах Південних морів." },
            -- Their ingenious feats of engineering and vast trade fleets helped make their island capital of Kezan one of the great technological wonders of the world.
            { 27.8, 37.8, "Їхні геніальні інженерні винаходи та величезні торгові флоти перетворили їхню острівну столицю Кезан на один із найбільших технологічних див світу." },
            -- But now, as the elements themselves rise up in anger across the world, the goblins' mechanical paradise will be put to the test.
            { 37.8, 47.7, "Але тепер, коли самі стихії гнівно повстають по всьому світу, на механічний рай гоблінів чекає випробування." },
            -- For very soon, fate will force them to choose sides in a conflict that will shape the very history of the world.
            { 47.7, 57, "Бо вже зовсім скоро доля змусить їх обрати сторону в конфлікті, який визначить сам хід історії світу." },
        },
    },
}

-- movie ids 32 and 33 replay the same cinematics
subtitle.movie[32] = subtitle.movie[21]
subtitle.movie[33] = subtitle.movie[22]

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
