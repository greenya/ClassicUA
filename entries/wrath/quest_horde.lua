-- -------------------------------- --
-- AUTOGENERATED FILE. DO NOT EDIT. --
-- -------------------------------- --

local _, addonTable = ...

local quest_horde = { -- [id] = { title, description, objective, progress, completion }
[702] = { en="Guile of the Raptor",
[===[Підступність раптора]===],
[===[Візьми цю сферу і використай її енергію, щоб наділити Ґор'мула сутністю раптора. Впевнений, це підбадьорить його і відкриє нові горизонти життя. Коли він повернеться до нас, ми зможемо роз'яснити йому, в якому становищі перебуває нині Орда та отримаємо великого воїна, який буде битись з нами пліч-о-пліч.]===],
[===[Передайте сферу Тор'ґана Ґор'мулу в Молотобої, що на височині Араті.]===],
[===[Знову ти? Жалості Тор'ґана мені ще не вистачає...

Що ти {стать:приніс:принесла} мені цього разу? Кольорову ниточку? Чи, може, мотузку, щоб я міг покласти край своїм стражданням...]===],
[===[Принаймні, цього разу це щось цікаве... Я відчуваю дивну силу...]===],
},
[847] = { en="Guile of the Raptor",
[===[Підступність раптора]===],
[===[Ця... Сила... Це і є сила шаманів, яку мені намагався показати Тор'ґан? Мушу визнати, це цікаво. Скажи Тор'ґану, що він мене переконав... поки що. Я вислухаю його.]===],
[===[Поговоріть з Тор'ґаном в Молотобої, що на височині Араті.]===],
nil,
[===[Коли чари спадуть, я з ним поговорю. Дякую тобі за допомогу в поверненні Ґор'мула до життя. Я не сумніваюся, що він також дуже вдячний тобі.]===],
},
[8367] = { en="For Great Honor",
[===[Велика честь]===],
[===[Служити Орді в битві проти Альянсу — велика честь! Найкращі ж наші воїни — ті, кому довелося битися на ВСІХ полях битви. Дрібні сутички не допоможуть нам здолати ворога. Лише ретельно спланувавши наступ, ми зможемо перемогти.

Йди й розтрощи Альянс на кожному з наших фронтів! За честь! За Орду!]===],
[===[Принесіть відзнаки честі з кожного поля бою війноносцю Орди в будь-якій столиці Орди або в Шаттраті.]===],
[===[Араті просякнута кров'ю великих воїнів, а брязкіт сталі все ще лунає по всьому Альтераку. Не гай даремно мій час — йди на поле бою!]===],
[===[На твою долю випали непрості випробування, але твоя відвага і сила не підвели тебе. Знаки перемоги — дрібниця, {клас:к}. Не вони принесуть тобі славу. Вище голову, {ім'я}. Сьогодні ти можеш ходити з гордістю, бо ти - {стать:справжній герой:справжня героїня}!]===],
},
}

if addonTable.quest_horde then
    for k, v in pairs(quest_horde) do addonTable.quest_horde[k] = v end
else
    addonTable.quest_horde = quest_horde
end