local _, addonTable = ...

-- [ utils ]

local print_table = function (table, title)
    print(title .. " {")
    for k, v in pairs(table) do print("[" .. k .. "]=" .. tostring(v)) end
    print("} " .. title)
end

local copy_table = function (target, source)
    for k, v in pairs(source) do target[k] = v end
    return target
end

local upper_first = function (text)
    return text:sub(1, 2):upper() .. text:sub(3) -- "2" and "3" because of unicode
end

local function esc(x) -- https://stackoverflow.com/questions/9790688/escaping-strings-for-gsub
    return x:gsub('%%', '%%%%')
            :gsub('^%^', '%%^')
            :gsub('%$$', '%%$')
            :gsub('%(', '%%(')
            :gsub('%)', '%%)')
            :gsub('%.', '%%.')
            :gsub('%[', '%%[')
            :gsub('%]', '%%]')
            :gsub('%*', '%%*')
            :gsub('%+', '%%+')
            :gsub('%-', '%%-')
            :gsub('%?', '%%?')
end

-- [ entries ]

local get_stats = function ()
    local stats = {}
    for _, v in ipairs({ "quest_a", "quest_h", "quest_n", "book", "item", "spell", "npc", "object", "zone" }) do
        stats[v] = 0
        for _, _ in pairs(addonTable[v]) do stats[v] = stats[v] + 1 end
    end
    return stats
end

local prepare_talent_tree = function (class)
    -- keep only player class tree
    addonTable.talent_tree = addonTable.talent_tree[class]
end

local prepare_zones = function ()
    local z = addonTable.zone
    -- known aliases
    z["Stormwind City"] = z["Stormwind"]
end

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
        local t = at.race[race][c][sex]
        codes["{раса:" .. c .. "}"] = t
        codes["{Раса:" .. c .. "}"] = upper_first(t)
        codes["{РАСА:" .. c .. "}"] = string.upper(t)
        if c == "н" then -- "н" is default grammatical case
            codes["{раса}"] = codes["{раса:н}"]
            codes["{Раса}"] = codes["{Раса:н}"]
            codes["{РАСА}"] = codes["{РАСА:н}"]
        end
    end

    -- class

    for _, c in ipairs(cases) do
        local t = at.class[class][c][sex]
        codes["{клас:" .. c .. "}"] = t
        codes["{Клас:" .. c .. "}"] = upper_first(t)
        codes["{КЛАС:" .. c .. "}"] = string.upper(t)
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
    at.codes = codes
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

local make_text_array = function (array)
    if array then
        local result = {}
        for i = 1, #array do
            result[i] = make_text(array[i])
        end
        return result
    else
        return nil
    end
end

local get_entry = function (entry_type, entry_id)
    local at = addonTable

    if entry_type and entry_id then
        entry_id = tonumber(entry_id)

        if entry_type == "quest" then
            local quest = nil

            if at.quest_f[entry_id] then
                quest = at.quest_f[entry_id]
            elseif at.quest_n[entry_id] then
                quest = at.quest_n[entry_id]
            end

            if quest then
                return make_text_array(quest)
            end
        end

        if entry_type == "book" then
            local book = at.book[entry_id]
            if book then
                return make_text_array(book)
            end
        end

        if at[entry_type] and at[entry_type][entry_id] then
            local entry = at[entry_type][entry_id]

            if entry.ref and (entry_type == "spell" or entry_type == "item") then
                local entry_ref = at[entry_type][entry.ref]
                if entry_ref then
                    -- todo: maybe add caching of the result table
                    return copy_table(copy_table({}, entry_ref), entry)
                else
                    return copy_table({ entry_type .. "|cff999999#|r" .. entry_id .. "|cff999999=>|r" .. entry.ref }, entry)
                end
            end

            return entry
        end
    end

    return false
end

local get_entry_text = function (entry_key)
    local at = addonTable

    if entry_key then
        for i = 1, 2 do
            if i == 2 then
                -- if failed to find original entry_key, try one more time with/out starting "The "
                if entry_key:find("^The ") then
                    -- remove starting "The "
                    if #entry_key > 5 then
                        entry_key = entry_key:sub(5)
                    else
                        break
                    end
                else
                    -- add starting "The "
                    entry_key = "The " .. entry_key
                end
            end

            local object = at.object[entry_key]
            if object then
                return object
            end

            local zone = at.zone[entry_key]
            if zone then
                return zone
            end
        end
    end

    return false
end

local make_entry_text = function (text, tooltip, tooltip_matches_to_skip)
    if not text then
        return nil
    end

    text = { strsplit("#", text) }
    if #text == 1 then
        return text[1]
    end

    if not tooltip_matches_to_skip then
        tooltip_matches_to_skip = 0
    end

    local values = {}

    for i = 2, #text do
        local p = esc(text[i]):gsub("{(%d+)}", function (a) return "(%d+)" end)
        local match_number = 0
        for j = 1, tooltip:NumLines() do
            local t = getglobal(tooltip:GetName() .. "TextLeft" .. j):GetText()
            local v = { t:match(p) }
            if #v > 0 then
                match_number = match_number + 1
                if match_number > tooltip_matches_to_skip then
                    for k = 1, #v do values[#values + 1] = v[k] end
                    break
                end
            end
        end
    end

    return text[1]:gsub("{(%d+)}", function (a) return values[tonumber(a)] end)
end

local get_text = function (entry_key)
    local at = addonTable

    if entry_key and at.text[entry_key] then
        return at.text[entry_key]
    else
        return entry_key
    end
end

-- [ tooltips ]

local tooltip_entry_type = false
local tooltip_entry_id = false

-- content_index: default is 2 (description)
local add_entry_to_tooltip = function (tooltip, entry_type, entry_id, content_index)
    if tooltip_entry_type then
        return
    end

    local entry = get_entry(entry_type, entry_id)

    if not entry then -- todo: check if debug info should be shown
        entry = { entry_type .. "|cff999999#|r" .. entry_id }
    end

    if entry then
        tooltip:AddLine(" ")
        tooltip:AddLine("|TInterface\\AddOns\\ClassicUA\\assets\\ua:0|t " .. entry[1], 1, 1, 1)

        local content = make_entry_text(entry[content_index or 2], tooltip)
        if content then
            tooltip:AddLine(content, 1, 1, 1, true)
        end

        if tooltip:IsShown() then
            tooltip:Show()
        end
    end

    tooltip_entry_type = entry_type
    tooltip_entry_id = entry_id
end

local add_talent_entry_to_tooltip = function (tooltip, tab_index, talent_index, rank, max_rank)
    local talent = addonTable.talent_tree[tab_index] and addonTable.talent_tree[tab_index][talent_index] or false
    if not talent then -- this can never be true (as we have full Classic talent tree)
        return
    end

    local rank_to_show = math.max(rank, 1)
    local next_rank_to_show = math.min(rank + 1, max_rank)

    if not talent[rank_to_show] or not talent[next_rank_to_show] then -- this can never be true (otherwise, bug in talent_tree)
        return
    end

    local entry = get_entry("spell", talent[rank_to_show])
    if not entry then
        entry = { "spell|cff999999#|r" .. talent[rank_to_show] }
    end

    tooltip:AddLine(" ")
    tooltip:AddLine("|TInterface\\AddOns\\ClassicUA\\assets\\ua:0|t " .. entry[1], 1, 1, 1)

    if entry[2] then
        tooltip:AddLine(make_entry_text(entry[2], tooltip), 1, 1, 1, true)
    end

    if rank_to_show ~= next_rank_to_show then
        local next_rank_desc = "spell|cff999999#|r" .. talent[next_rank_to_show]

        local entry = get_entry("spell", talent[next_rank_to_show])
        if entry and entry[2] then
            next_rank_desc = make_entry_text(entry[2], tooltip, 1)
        end

        tooltip:AddLine(" ")
        tooltip:AddLine(get_text("Next rank") .. ":", 1, 1, 1)
        tooltip:AddLine(next_rank_desc, 1, 1, 1, true)
    end

    if tooltip:IsShown() then
        tooltip:Show()
    end

    tooltip_entry_type = "spell"
    tooltip_entry_id = talent[rank_to_show]
end

local tooltip_set_item = function (self)
    local _, link = self:GetItem()
    if link then
        local _, _, id = link:find("Hitem:(%d+):")
        if id then
            add_entry_to_tooltip(self, "item", id)
        end
    end
end

local tooltip_set_spell = function (self)
    local _, id = self:GetSpell()
    if id then
        add_entry_to_tooltip(self, "spell", id)
    end
end

local tooltip_set_unit = function (self)
    local _, unit = self:GetUnit()
    if unit then
        local guid = UnitGUID(unit)
        local _, _, _, _, _, id, _ = strsplit("-", guid)
        if id then
            add_entry_to_tooltip(self, "npc", id)
        end
    end
end

local tooltip_cleared = function (self)
    tooltip_entry_type = false
    tooltip_entry_id = false
end

for _, tt in pairs { GameTooltip, ItemRefTooltip } do
    tt:HookScript("OnTooltipSetItem", tooltip_set_item)
    tt:HookScript("OnTooltipSetSpell", tooltip_set_spell)
    tt:HookScript("OnTooltipSetUnit", tooltip_set_unit)
    tt:HookScript("OnTooltipCleared", tooltip_cleared)
end

hooksecurefunc(GameTooltip, "SetTalent", function (self, tab_index, talent_index)
    local rank, max_rank, is_active = select(5, GetTalentInfo(tab_index, talent_index))
    if not is_active then -- skip active talent (they get shown as spell)
        -- print("talent", tab_index, talent_index, "rank", rank, max_rank)
        add_talent_entry_to_tooltip(self, tab_index, talent_index, rank, max_rank)
    end
end)

hooksecurefunc(GameTooltip, "SetUnitAura", function (self, unit, index, filter)
    local id = select(10, UnitAura(unit, index, filter))
    if id then
        add_entry_to_tooltip(self, "spell", id, 3)
    end
end)

hooksecurefunc(GameTooltip, "SetUnitBuff", function (self, unit, index)
    local id = select(10, UnitAura(unit, index, "HELPFUL"))
    if id then
        add_entry_to_tooltip(self, "spell", id, 3)
    end
end)

hooksecurefunc(GameTooltip, "SetUnitDebuff", function (self, unit, index)
    local id = select(10, UnitAura(unit, index, "HARMFUL"))
    if id then
        add_entry_to_tooltip(self, "spell", id, 3)
    end
end)

GameTooltip:HookScript("OnUpdate", function (self)
    local name, unit = self:GetUnit()
    if name == nil and unit == nil and not tooltip_entry_type then
        local text = GameTooltipTextLeft1:GetText()
        if text ~= tooltip_entry_id then
            local entry = get_entry_text(text)
            if entry then
                if self:NumLines() > 1 then self:AddLine(" ") end
                self:AddLine("|TInterface\\AddOns\\ClassicUA\\assets\\ua:0|t " .. upper_first(entry), 1, 1, 1)

                if self:IsShown() then
                    self:Show()
                end
            end

            tooltip_entry_type = "text"
            tooltip_entry_id = text
        end
    end
end)

-- [ frames ]

local setup_frame_background_and_border = function (frame)
    local texture = frame:CreateTexture(nil, "BACKGROUND")
    texture:SetTexture("Interface\\QuestFrame\\QuestBG")
    texture:SetTexCoord(0.0, 0.58, 0.0, 0.65)
    texture:SetPoint("TOPLEFT", 4, -8)
    texture:SetPoint("BOTTOMRIGHT", -4, 8)

    frame:SetBackdrop({
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        edgeSize = 24
    })
end

-- areas: { area1 = { font, size }, ... }
local setup_frame_scrollbar_and_content = function (frame, areas)
    local scrollframe = CreateFrame("ScrollFrame", nil, frame)
    scrollframe:SetPoint("TOPLEFT", 8, -9)
    scrollframe:SetPoint("BOTTOMRIGHT", -8, 9)
    frame.scrollframe = scrollframe

    local content = CreateFrame("Frame", nil, scrollframe)
    content:SetSize(scrollframe:GetWidth() - 60, 0)
    scrollframe:SetScrollChild(content)
    frame.content = content

    for k, v in pairs(areas) do
        local a = content:CreateFontString(nil, "OVERLAY")
        a:SetWidth(frame:GetWidth() - 60)
        a:SetJustifyH("LEFT")
        a:SetJustifyV("TOP")
        a:SetTextColor(0, 0, 0)
        if type(v) == "table" and #v == 2 then
            a:SetFont(v[1], v[2])
        end
        frame[k] = a
    end

    local scrollbar = CreateFrame("Slider", nil, scrollframe, "UIPanelScrollBarTemplate")
    scrollbar:SetPoint("TOPLEFT", frame, "TOPRIGHT", -26, -27)
    scrollbar:SetPoint("BOTTOMLEFT", frame, "BOTTOMRIGHT", 0, 26)
    scrollbar:SetValueStep(40)
    scrollbar.scrollStep = 100
    scrollbar:SetValue(1)
    scrollbar:SetWidth(16)
    scrollbar:SetScript("OnValueChanged", function (self, value)
        self:GetParent():SetVerticalScroll(value)
    end)
    frame.scrollbar = scrollbar

    frame:EnableMouse(true)
    frame:EnableMouseWheel(true)
    frame:SetScript("OnMouseWheel", function(self, delta)
        local v = scrollbar:GetValue()
        scrollbar:SetValue(v - delta * self.scrollbar.scrollStep)
    end)
end

local setup_frame_scrollbar_values = function (frame, height)
    local delta = height - frame:GetHeight() + 24
    if delta > 0 then
        frame.scrollbar:SetMinMaxValues(1, delta)
    else
        frame.scrollbar:SetMinMaxValues(1, 1)
    end

    frame.scrollbar:SetValue(1)
    frame.content:SetSize(frame.content:GetWidth(), height)
end

-- [ quests ]

local quest_title_font = "Interface\\AddOns\\ClassicUA\\assets\\Morpheus_UA.ttf"
local quest_text_font = "Interface\\AddOns\\ClassicUA\\assets\\FRIZQT_UA.ttf"

local quest_frame = nil
local get_quest_frame = function ()
    if quest_frame then
        return quest_frame
    end

    local width, height = QuestFrame:GetSize()
    local frame = CreateFrame("frame", nil, QuestFrame)
    frame:SetFrameStrata("HIGH")
    frame:SetSize(width - 64, height - 160)
    frame:SetPoint("TOP", 0, -72)
    frame:SetPoint("RIGHT", frame:GetWidth() - 37, 0)

    setup_frame_background_and_border(frame)

    setup_frame_scrollbar_and_content(frame, { -- todo: take quest font sizes from config
        title = { quest_title_font, 18 },
        text = { quest_text_font, 13 },
        more_title = { quest_title_font, 18 },
        more_text = { quest_text_font, 13 }
    })

    frame:Show()

    quest_frame = frame
    return quest_frame
end

-- frame must have properties: title, text, more_title, more_text
local set_quest_content = function (frame, title, text, more_title, more_text)
    local h = 16

    frame.title:SetPoint("TOPLEFT", frame.content, 12, -h)
    frame.title:SetText(title)
    h = h + frame.title:GetHeight() + 12

    if text then
        frame.text:SetPoint("TOPLEFT", frame.content, 12, -h)
        frame.text:SetText(text)
        h = h + frame.text:GetHeight() + 12
    else
        frame.text:SetText("")
    end

    if more_title and more_text then
        frame.more_title:SetPoint("TOPLEFT", frame.content, 12, -h)
        frame.more_title:SetText(more_title)
        h = h + frame.more_title:GetHeight() + 12

        frame.more_text:SetPoint("TOPLEFT", frame.content, 12, -h)
        frame.more_text:SetText(more_text)
        h = h + frame.more_text:GetHeight() + 12
    else
        frame.more_title:SetText("")
        frame.more_text:SetText("")
    end

    setup_frame_scrollbar_values(frame, h)
end

QuestFrameDetailPanel:HookScript("OnShow", function (event)
    local frame = get_quest_frame()
    local entry = get_entry("quest", GetQuestID())
    if entry then
        set_quest_content(frame, entry[1], entry[2], get_text("Quest Objectives"), entry[3])
        frame:Show()
    else
        frame:Hide()
    end
end)

QuestFrameDetailPanel:HookScript("OnHide", function (event)
    local frame = get_quest_frame()
    frame:Hide()
end)

QuestFrameProgressPanel:HookScript("OnShow", function (event)
    local frame = get_quest_frame()
    local entry = get_entry("quest", GetQuestID())
    if entry then
        set_quest_content(frame, entry[1], entry[4])
        frame:Show()
    else
        frame:Hide()
    end
end)

QuestFrameProgressPanel:HookScript("OnHide", function (event)
    local frame = get_quest_frame()
    frame:Hide()
end)

QuestFrameRewardPanel:HookScript("OnShow", function (event)
    local frame = get_quest_frame()
    local entry = get_entry("quest", GetQuestID())
    if entry then
        set_quest_content(frame, entry[1], entry[5])
        frame:Show()
    else
        frame:Hide()
    end
end)

QuestFrameRewardPanel:HookScript("OnHide", function (event)
    local frame = get_quest_frame()
    frame:Hide()
end)

local questlog_frame = nil
local get_questlog_frame = function ()
    if questlog_frame then
        return questlog_frame
    end

    local width, height = QuestLogFrame:GetSize()
    local frame = CreateFrame("frame", nil, QuestLogFrame)
    frame:SetFrameStrata("HIGH")
    frame:SetSize(width - 64, height - 234)
    frame:SetPoint("TOP", 0, -166)
    frame:SetPoint("RIGHT", frame:GetWidth() - 41, 0)

    setup_frame_background_and_border(frame)

    setup_frame_scrollbar_and_content(frame, { -- todo: take quest font sizes from config
        title = { quest_title_font, 18 },
        text = { quest_text_font, 13 },
        more_title = { quest_title_font, 18 },
        more_text = { quest_text_font, 13 }
    })

    frame:Show()

    questlog_frame = frame
    return questlog_frame
end

hooksecurefunc("SelectQuestLogEntry", function ()
    if not addonTable.quest_f then -- need to test quest_f, as prepare_quests() might not be called just yet
        return
    end

    local frame = get_questlog_frame()
    local selection = GetQuestLogSelection()
    if selection > 0 then
        local id = select(8, GetQuestLogTitle(selection))
        local entry = get_entry("quest", id)
        if entry then
            set_quest_content(frame, entry[1], entry[3], get_text("Description"), entry[2])
            frame:Show()
        else
            frame:Hide()
        end
    else
        frame:Hide()
    end
end)

-- [[ books ]]

local book_item_id = false
local book_text_font = "Interface\\AddOns\\ClassicUA\\assets\\Morpheus_UA.ttf"

local book_frame = nil
local get_book_frame = function ()
    if book_frame then
        return book_frame
    end

    local width, height = ItemTextFrame:GetSize()
    local frame = CreateFrame("frame", nil, ItemTextFrame)
    frame:SetFrameStrata("HIGH")
    frame:SetSize(width - 64, height - 160)
    frame:SetPoint("TOP", 0, -72)
    frame:SetPoint("RIGHT", frame:GetWidth() - 37, 0)

    setup_frame_background_and_border(frame)

    setup_frame_scrollbar_and_content(frame, { -- todo: take book font size from config
        text = { book_text_font, 15 }
    })

    frame:Show()

    book_frame = frame
    return book_frame
end

local set_book_content = function (text)
    local f = get_book_frame()
    local h = 16

    f.text:SetPoint("TOPLEFT", f.content, 12, -h)
    f.text:SetText(text)
    h = h + f.text:GetHeight() + 12

    setup_frame_scrollbar_values(f, h)
end

local show_book = function (text)
    local book = get_entry("book", book_item_id)
    if book then
        local page = ItemTextGetPage()
        if not book[page] and book[1] then
            book[page] = book[1]
        end
        set_book_content(book[page])
        get_book_frame():Show()
    end
end

local hide_book = function ()
    get_book_frame():Hide()
    book_item_id = false
end

-- [[ zone text and minimap ]]

local zone_text_lookup = {
    -- { FontString object, lookup function }
    { ZoneTextString, get_entry_text },
    { SubZoneTextString, get_entry_text },
    { MinimapZoneText, get_entry_text },
    { PVPInfoTextString, get_text },
    { PVPArenaTextString, get_text },
}

local update_zone_text = function ()
    local text, found
    for _, lookup in ipairs(zone_text_lookup) do
        text = lookup[1]:GetText()
        if text then
            local found = lookup[2](text)
            if found then
                lookup[1]:SetText(upper_first(found))
            end
        end
    end
end

local prepare_zone_text = function ()
    for _, lookup in ipairs(zone_text_lookup) do
        local _, size, style = lookup[1]:GetFont()
        lookup[1]:SetFont("Interface\\AddOns\\ClassicUA\\assets\\FRIZQT_UA.ttf", size, style)
    end
    update_zone_text()
end

-- [[ events ]]

local event_frame = CreateFrame("frame")

event_frame:RegisterEvent("ADDON_LOADED")
event_frame:RegisterEvent("PLAYER_LOGIN")
event_frame:RegisterEvent("ITEM_TEXT_BEGIN")
event_frame:RegisterEvent("ITEM_TEXT_READY")
event_frame:RegisterEvent("ITEM_TEXT_CLOSED")
event_frame:RegisterEvent("ZONE_CHANGED")
event_frame:RegisterEvent("ZONE_CHANGED_INDOORS")
event_frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")

event_frame:SetScript("OnEvent", function (self, event, ...)
    if event == "ADDON_LOADED" then
        local s = get_stats()
        local v = GetAddOnMetadata("ClassicUA", "Version")
        print("|TInterface\\AddOns\\ClassicUA\\assets\\ua:0|t ClassicUA v" .. v .. " loaded: "
            .. s.quest_a + s.quest_h + s.quest_n .. " quests, "
            .. s.book .. " books, "
            .. s.item .. " items, "
            .. s.spell .. " spells, "
            .. s.npc .. " NPCs, "
            .. s.object .. " objects, "
            .. s.zone .. " zones"
        )
        self:UnregisterEvent("ADDON_LOADED")
    elseif event == "PLAYER_LOGIN" then
        local name = UnitName("player")
        local guid = UnitGUID("player")
        local _, class, _, race, sex = GetPlayerInfoByGUID(guid)
        local faction = UnitFactionGroup("player")

        -- print("PLAYER_LOGIN", name, race, class, sex, faction)
        prepare_talent_tree(class)
        prepare_quests(faction == "Alliance")
        prepare_codes(name, race, class, sex == 2) -- 2 for male
        prepare_zones()
        prepare_zone_text()
    elseif event == "ITEM_TEXT_BEGIN" then
        if tooltip_entry_type == "item" then
            book_item_id = tooltip_entry_id
        end
    elseif event == "ITEM_TEXT_READY" then
        show_book()
    elseif event == "ITEM_TEXT_CLOSED" then
        hide_book()
    elseif event == "ZONE_CHANGED"
        or event == "ZONE_CHANGED_INDOORS"
        or event == "ZONE_CHANGED_NEW_AREA" then
        update_zone_text()
    end
end)
