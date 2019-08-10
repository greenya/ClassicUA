local _, addonTable = ...

-- [ debug ]

local print_table = function (table, title)
    print(title .. " {")
    for k, v in pairs(table) do print("[" .. k .. "]=" .. tostring(v)) end
    print("} " .. title)
end

-- [ entries ]

local prepare_quests = function (is_alliance)
    -- init faction quests reference
    addonTable.quest_f = is_alliance and addonTable.quest_a or addonTable.quest_h
    -- drop opposite faction quests
    addonTable[ is_alliance and "quest_h" or "quest_a" ] = nil
end

local prepare_codes = function (name, race, class, is_male)
    -- print("preparing codes for: " .. name .. " / " .. race .. " / " .. class .. " / " .. (is_male and "male" or "famale"))
    local at = addonTable
    local sex = is_male and 1 or 2
    local cases = { "н", "р", "д", "з", "о", "м", "к" }

    local codes = {
        ["{ім'я}"] = name,
        ["{Ім'я}"] = name,
        ["{ІМ'Я}"] = string.upper(name),
    }

    -- race

    for _, c in ipairs(cases) do
        codes["{раса:" .. c .. "}"] = at.race[race][c][sex]
        codes["{Раса:" .. c .. "}"] = at.race[race][c][sex]:gsub("^%l", string.upper)
        codes["{РАСА:" .. c .. "}"] = string.upper(at.race[race][c][sex])
        if c == "н" then -- "н" is default grammatical case
            codes["{раса}"] = codes["{раса:н}"]
            codes["{Раса}"] = codes["{Раса:н}"]
            codes["{РАСА}"] = codes["{РАСА:н}"]
        end
    end

    -- class

    for _, c in ipairs(cases) do
        codes["{клас:" .. c .. "}"] = at.class[class][c][sex]
        codes["{Клас:" .. c .. "}"] = at.class[class][c][sex]:gsub("^%l", string.upper)
        codes["{КЛАС:" .. c .. "}"] = string.upper(at.class[class][c][sex])
        if c == "н" then -- "н" is default grammatical case
            codes["{клас}"] = codes["{клас:н}"]
            codes["{Клас}"] = codes["{Клас:н}"]
            codes["{КЛАС}"] = codes["{КЛАС:н}"]
        end
    end

    -- sex

    codes["{стать:(.-):(.-)}"] = function (a, b)
        return is_male and a or b
    end

    -- print_table(codes, "codes")
    addonTable.codes = codes
end

local make_text = function (text)
    if not text then
        return nil
    end

    for k, v in pairs(addonTable.codes) do
        text = text:gsub(k, v)
    end

    return text
end

local get_entry = function (type, id)
    id = tonumber(id)

    if type and id then
        if type == "quest" then
            local quest = nil

            if addonTable.quest_f[id] then
                quest = addonTable.quest_f[id]
            elseif addonTable.quest_n[id] then
                quest = addonTable.quest_n[id]
            end

            if quest then
                local result = {}
                for i = 1, #quest do
                    result[i] = make_text(quest[i])
                end
                return result
            end
        end

        if addonTable[type] and addonTable[type][id] then
            return addonTable[type][id]
        end

        return { type .. "|cff999999#|r" .. id }
    end

    return false
end

-- [ tooltips ]

local add_entry_to_tooltip = function (type, id, tt)
    if tt.ClassicUA_entry_shown then
        return
    end

    local entry = get_entry(type, id)
    if entry then
        tt:AddLine(" ")
        tt:AddLine("|TInterface\\AddOns\\ClassicUA\\ua:0|t " .. entry[1], 1, 1, 1)
        if entry[2] then
            tt:AddLine(entry[2], 1, 1, 1, true)
        end
        tt.ClassicUA_entry_shown = true
    end
end

local tt_set_item = function (tt)
    local _, link = tt:GetItem()
    if link then
        local _, _, id = link:find("Hitem:(%d+):")
        add_entry_to_tooltip("item", id, tt)
    end
end

local tt_set_spell = function (tt)
    local _, id = tt:GetSpell()
    add_entry_to_tooltip("spell", id, tt)
end

local tt_set_unit = function (tt)
    local _, unit = tt:GetUnit()
    local guid = UnitGUID(unit)
    local _, _, _, _, _, id, _ = strsplit("-", guid)
    add_entry_to_tooltip("npc", id, tt)
end

local tt_cleared = function (tt)
    tt.ClassicUA_entry_shown = nil
end

for _, tt in pairs { GameTooltip, ItemRefTooltip } do
    tt:HookScript("OnTooltipSetItem", tt_set_item)
    tt:HookScript("OnTooltipSetSpell", tt_set_spell)
    tt:HookScript("OnTooltipSetUnit", tt_set_unit)
    tt:HookScript("OnTooltipCleared", tt_cleared)
end

-- [ quests ]

local quest_frame = nil
local quest_objectives_title = "Доручення"

local get_quest_frame = function ()
    if quest_frame then
        return quest_frame
    end

    local width, height = QuestFrame:GetSize()
    local frame = CreateFrame("frame", nil, QuestFrame)
    frame:SetFrameStrata("HIGH") -- TODO: set to LOW for Classic
    frame:SetSize(width, height - 73)

    frame:ClearAllPoints()
    frame:SetPoint("TOP", 0, -52)
    frame:SetPoint("RIGHT", frame:GetWidth() - 7, 0)

    local texture = frame:CreateTexture(nil, "BACKGROUND")
    texture:SetTexture("Interface\\QuestFrame\\QuestBG")
    texture:SetAllPoints()
    texture:SetPoint("TOPLEFT", 0, -8)
    texture:SetPoint("BOTTOMRIGHT", 226, -212)

    frame:SetBackdrop({
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        edgeSize = 24,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    })

    local scrollframe = CreateFrame("ScrollFrame", nil, frame)
    scrollframe:SetPoint("TOPLEFT", 8, -8)
    scrollframe:SetPoint("BOTTOMRIGHT", -8, 8)
    frame.scrollframe = scrollframe

    local scrollbar = CreateFrame("Slider", nil, scrollframe, "UIPanelScrollBarTemplate")
    scrollbar:SetPoint("TOPLEFT", frame, "TOPRIGHT", -26, -27)
    scrollbar:SetPoint("BOTTOMLEFT", frame, "BOTTOMRIGHT", 0, 26)
    scrollbar:SetValueStep(40)
    scrollbar.scrollStep = 40
    scrollbar:SetValue(0)
    scrollbar:SetWidth(16)
    scrollbar:SetScript("OnValueChanged", function (self, value)
        self:GetParent():SetVerticalScroll(value)
    end)
    frame.scrollbar = scrollbar

    local scrollbg = scrollbar:CreateTexture(nil, "BACKGROUND")
    scrollbg:SetAllPoints(scrollbar)
    scrollbg:SetTexture(0, 0, 0, 0.4)

    local content = CreateFrame("Frame", nil, scrollframe)
    frame.content = content

    local title = frame:CreateFontString(nil, "OVERLAY")
    title:SetWidth(frame:GetWidth() - 60)
    title:SetFontObject(GameFontNormalLarge)
    title:SetJustifyH("LEFT")
    title:SetJustifyV("TOP")
    title:SetTextColor(0, 0, 0)
    frame.title = title

    local text = frame:CreateFontString(nil, "OVERLAY")
    text:SetWidth(frame:GetWidth() - 60)
    text:SetFontObject(QuestFontNormalSmall)
    text:SetJustifyH("LEFT")
    text:SetJustifyV("TOP")
    text:SetTextColor(0, 0, 0)
    frame.text = text

    local obj_title = frame:CreateFontString(nil, "OVERLAY")
    obj_title:SetWidth(frame:GetWidth() - 60)
    obj_title:SetFontObject(GameFontNormalLarge)
    obj_title:SetJustifyH("LEFT")
    obj_title:SetJustifyV("TOP")
    obj_title:SetTextColor(0, 0, 0)
    frame.obj_title = obj_title

    local obj_text = frame:CreateFontString(nil, "OVERLAY")
    obj_text:SetWidth(frame:GetWidth() - 60)
    obj_text:SetFontObject(QuestFontNormalSmall)
    obj_text:SetJustifyH("LEFT")
    obj_text:SetJustifyV("TOP")
    obj_text:SetTextColor(0, 0, 0)
    frame.obj_text = obj_text

    frame:EnableMouse(true)
    frame:EnableMouseWheel(true)
    frame:SetScript("OnMouseWheel", function(self, delta)
        local v = scrollbar:GetValue()
        scrollbar:SetValue(v - delta * 20)
    end)

    frame:Show()

    quest_frame = frame
    return quest_frame
end

local set_quest_content = function (title, text, obj)
    local qf = get_quest_frame()
    local h = 16

    qf.title:SetPoint("TOPLEFT", qf.content, 12, -h)
    qf.title:SetText(title)
    h = h + qf.title:GetHeight() + 12

    if text then
        qf.text:SetPoint("TOPLEFT", qf.content, 12, -h)
        qf.text:SetText(text)
        h = h + qf.text:GetHeight() + 12
    else
        qf.text:SetText("")
    end

    if obj then
        qf.obj_title:SetPoint("TOPLEFT", qf.content, 12, -h)
        qf.obj_title:SetText(quest_objectives_title)
        h = h + qf.obj_title:GetHeight() + 12

        qf.obj_text:SetPoint("TOPLEFT", qf.content, 12, -h)
        qf.obj_text:SetText(obj)
        h = h + qf.obj_text:GetHeight() + 12
    else
        qf.obj_title:SetText("")
        qf.obj_text:SetText("")
    end

    qf.content:SetSize(300, h)
    qf.scrollframe:SetScrollChild(qf.content)
    qf.scrollbar:SetValue(0)

    local scrolldelta = h - qf:GetHeight() + 16
    if scrolldelta > 0 then
        qf.scrollbar:SetMinMaxValues(0, scrolldelta)
    else
        qf.scrollbar:SetMinMaxValues(0, 0)
    end
end

-- state: 1 for details, 2 for progress, 3 for reward
local show_quest = function (state)
    local id = GetQuestID()
    local entry = get_entry("quest", id)
    if entry then
        if state == 1 then
            set_quest_content(entry[1], entry[2], entry[3])
        elseif state == 2 then
            set_quest_content(entry[1], entry[4])
        else
            set_quest_content(entry[1], entry[5])
        end
    end
end

QuestFrameDetailPanel:HookScript("OnShow", function (event)
    show_quest(1)
end)

QuestFrameProgressPanel:HookScript("OnShow", function (event)
    show_quest(2)
end)

QuestFrameRewardPanel:HookScript("OnShow", function(event)
    show_quest(3)
end)

-- [[ events ]]

local event_frame = CreateFrame("frame")

event_frame:RegisterEvent("ADDON_LOADED")
event_frame:RegisterEvent("PLAYER_ENTERING_WORLD")

event_frame:SetScript("OnEvent", function (self, event, ...)
    if event == "ADDON_LOADED" then
        print("ClassicUA loaded.")
        self:UnregisterEvent("ADDON_LOADED")
    elseif event == "PLAYER_ENTERING_WORLD" then
        local name = UnitName("player")
        local guid = UnitGUID("player")
        local _, class, _, race, sex = GetPlayerInfoByGUID(guid)
        local faction = UnitFactionGroup("player")

        -- todo: remove for Classic: fallback for non-classic race and class
        if not addonTable.race[race] then race = "Human" end
        if not addonTable.class[class] then race = "WARRIOR" end

        prepare_quests(faction == "Alliance")
        prepare_codes(name, race, class, sex == 2) -- 2 for male
    end
end)
