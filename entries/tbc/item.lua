local _, addonTable = ...
local item_tbc = {

-- [id] = {
--     [ref]    = ID (optional),
--     [1]      = title (optional),
--     [desc]   = description (optional),
--     [equip]  = text or number (spell id) for "Equip: ..." (green color)
--     [hit]    = text or number (spell id) for "Chance on hit: ..." (green color)
--     [use]    = text or number (spell id) for "Use: ..." (green color)
--     [flavor] = quoted text (golden color)
--     --------
--     note: value can be string or table (multiple strings)
-- }

[14647] = { "подарунковий сертифікат Хараноса" }, -- Kharanos Gift Voucher
[25470] = { "золотий грифон", use="Викликає та звільняє грифона, на якому можна їздити. Цього верхового скакуна можна викликати лише в Закордоні." }, -- Golden Gryphon, @use Summons and dismisses a rideable gryphon mount. This mount can only be summoned in Outland. (3 Sec Cooldown)
[27498] = { "сувій спритності V", ref=3012 }, -- Scroll of Agility V
[27499] = { "сувій інтелекту V", ref=955 }, -- Scroll of Intellect V
[27500] = { "сувій захисту V", ref=3013 }, -- Scroll of Protection V
[27501] = { "сувій духу V", ref=1181 }, -- Scroll of Spirit V
[27502] = { "сувій витривалості V", ref=1180 }, -- Scroll of Stamina V
[27503] = { "сувій сили V", ref=954 }, -- Scroll of Strength V
[27885] = { "жезл душі Алдора" },
[28790] = { "перстень світлоохоронця Наару" }, -- Naaru Lightwarden's Band
[28823] = { "око Ґруула" }, -- Eye of Gruul
[29024] = { "відзнака честі Ока Бурі", flavor="Медаль за битву в Оці Бурі." }, -- Eye of the Storm Mark of Honor, @flavor Medal awarded for fighting in the Eye of the Storm
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

for k, v in pairs(item_tbc) do addonTable.item[k] = v end
