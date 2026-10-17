local _, addonTable = ...

local subtitle = {
    movie = {
        [1098] = {
            name = "Вступ WoW: Forever",
            position = 110,
            -- [dreamy music playing]
            [1] = "[лунає мрійлива музика]",
            -- [Narrator] Our home.
            [2] = "[Оповідачка] Наш дім.",
            -- Azeroth.
            [3] = "Азерот.",
            -- Her untold stories call to our hearts,
            [4] = "Її нерозказані історії кличуть наші серця,",
            -- revealing lands unexplored,
            [5] = "відкриваючи недосліджені землі,",
            -- forgotten secrets,
            [6] = "забуті таємниці",
            -- and new horizons.
            [7] = "і нові обрії.",
            -- [wind gusting]
            [8] = "[пориви вітру]",
            -- [inhaling deeply]
            [9] = "[глибокий вдих]",
            -- [roars]
            [10] = "[гарчить]",
            -- [majestic music playing]
            [11] = "[лунає велична музика]",
            -- [sniffs]
            [12] = "[принюхується]",
            -- [sneezes]
            [13] = "[чхає]",
            -- [snarls]
            [14] = "[гарчить]",
            -- [uplifting music playing]
            [15] = "[лунає піднесена музика]",
            -- [uplifting music intensifies]
            [16] = "[піднесена музика наростає]",
            -- [growls contentedly]
            [17] = "[вдоволено бурчить]",
            -- [boots marching]
            [18] = "[тупіт чобіт]",
            -- [wings flapping, birds tweeting]
            [19] = "[лопотіння крил, щебет птахів]",
            -- [panting]
            [20] = "[важке дихання]",
            -- [beckoning whistle]
            [21] = "[кличний свист]",
            -- [majestic music continues]
            [22] = "[велична музика триває]",
            -- [sniffing]
            [23] = "[принюхується]",
            -- [wind gusting]
            [24] = "[пориви вітру]",
            -- [orchestral music playing]
            [25] = "[лунає оркестрова музика]",
            -- [dramatic music playing]
            [26] = "[лунає драматична музика]",
            -- [roars]
            [27] = "[ричить]",
            -- [yells]
            [28] = "[кричить]",
            -- [screams]
            [29] = "[кричить]",
            -- [dramatic music swells]
            [30] = "[драматична музика наростає]",
            -- [chuffing]
            [31] = "[пирхає]",
            -- [weak snarl]
            [32] = "[жалібне гарчання]",
            -- [transcendent music playing]
            [33] = "[лунає неземна музика]",
            -- [Skyborne Elf] Azeroth beckons us back.
            [34] = "[Небороджена ельфа] Азерот кличе нас назад.",
            -- To home.
            [35] = "Додому.",
            -- To adventure.
            [36] = "До пригод.",
            -- Forever.
            [37] = "Назавжди.",
            -- [wondrous music playing]
            [38] = "[лунає чарівна музика]",
            -- [music ends]
            [39] = "[музика стихає]",
        },
    },

    text = {
        -- Skyborne intro
        ["For thousands of years,"] = "Тисячі років",
        ["a band of high elven exiles has remained safe"] = "громада вигнанців із вищих ельфів жила в безпеці,",
        ["and hidden upon their flying sanctuary of Zephras Isle."] = "сховавшись на своєму летючому прихистку — острові Зефрас.",
        ["These \"Skyborne,\" as they call themselves,"] = "Ці «небороджені», як вони себе називають,",
        ["shared a bond with air elementals"] = "були пов'язані з елементалями повітря,",
        ["who kept their island aloft in the realm of Skywall."] = "що тримали їхній острів у небі, у царстві Небесного муру.",
        ["But in recent years,"] = "Та останніми роками",
        ["the elementals vanished without a trace--"] = "елементалі безслідно зникли —",
        ["disrupting the delicate magic that kept them safe in their haven amongst the clouds."] = "порушивши тендітну магію, що берегла ельфів у їхньому притулку серед хмар.",
        ["Now, a new generation of Skyborne elves face a time of unprecedented change,"] = "Тепер нове покоління небороджених ельфів стоїть перед часом небачених змін",
        ["and must seek new allies and sources of magic--"] = "і мусить шукати нових союзників і нові джерела магії —",
        ["to protect their hidden home and secure their future..."] = "щоб захистити свій прихований дім і вберегти своє майбутнє...",
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
