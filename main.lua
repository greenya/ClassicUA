local _, addonTable = ...

local player_class = false
local player_race = false
local player_is_male = false
local player_is_alliance = false

local frame = CreateFrame("frame")

frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")

frame:SetScript("OnEvent", function (self, event, ...)
    if event == "ADDON_LOADED" then
        print("ClassicUA loaded.")
        self:UnregisterEvent("ADDON_LOADED")
    elseif event == "PLAYER_ENTERING_WORLD" then
        local guid = UnitGUID("player")
        local _, class, _, race, sex = GetPlayerInfoByGUID(guid)
        local faction = UnitFactionGroup("player")

        player_class = class
        player_race = race
        player_is_male = sex == 2
        player_is_alliance = faction == "Alliance"

        addonTable.quest = player_is_alliance and addonTable.quest_a or addonTable.quest_h
        addonTable[ player_is_alliance and "quest_h" or "quest_a" ] = nil
    end
end)

-- [ tooltips ]

local get_entry = function (type, id)
    id = tonumber(id)
    if type and id then
        if (addonTable[type]) and (addonTable[type][id]) then
            return addonTable[type][id]
        else
            return { type .. "|cff999999#|r" .. id }
        end
    end
    return false
end

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

for _, tt in pairs { GameTooltip } do
    tt:HookScript("OnTooltipSetItem", tt_set_item)
    tt:HookScript("OnTooltipSetSpell", tt_set_spell)
    tt:HookScript("OnTooltipSetUnit", tt_set_unit)
    tt:HookScript("OnTooltipCleared", tt_cleared)
end

-- [ quests ]

local make_quest_frame = function ()
    local width, height = QuestFrame:GetSize()
    local frame = CreateFrame("frame", nil, QuestFrame)
    frame:SetFrameStrata("LOW")
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
    return frame
end

local quest_frame = make_quest_frame()
local quest_objectives_title = "Доручення"

local set_quest_content = function (title, text, obj)
    local qf = quest_frame
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
