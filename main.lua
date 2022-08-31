local _, addonTable = ...

-- ---------
-- [ utils ]
-- ---------

local is_classic = strbyte(GetBuildInfo(), 1) == 49
local is_tbc = strbyte(GetBuildInfo(), 1) == 50
local is_wotlk = strbyte(GetBuildInfo(), 1) == 51

local print_table = function (table, title)
    print(title .. " {")
    for k, v in pairs(table) do print("[" .. k .. "]=" .. tostring(v)) end
    print("} " .. title)
end

local copy_table = function (target, source)
    for k, v in pairs(source) do target[k] = v end
    return target
end

local capitalize = function (text)
    local b1 = strbyte(text, 1)
    if b1 >= 208 and b1 <= 210 then -- this is utf8 character, 2 bytes long
        local b2 = strbyte(text, 2)
        if b1 == 209 and b2 == 148 then
            return 'Є' .. text:sub(3)
        elseif b1 == 209 and b2 == 150 then
            return 'І' .. text:sub(3)
        elseif b1 == 209 and b2 == 151 then
            return 'Ї' .. text:sub(3)
        elseif b1 == 210 and b2 == 145 then
            return 'Ґ' .. text:sub(3)
        else -- run out of special cases -- let default upper() handle it
            return text:sub(1, 2):upper() .. text:sub(3)
        end
    else
        return text:sub(1, 1):upper() .. text:sub(2)
    end
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

-- -----------
-- [ entries ]
-- -----------

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
    z["Crossroads"] = z["The Crossroads"]
    z["Crusader's Outpost"] = z["Crusader Outpost"]
    z["Dabyrie's Farmstead"] = z["Dabyrie Farmstead"]
    z["Stormwind City"] = z["Stormwind"]
    z["Stranglethorn"] = z["Stranglethorn Vale"]

    -- known taxi points
    local known_taxi_points = {
        "Aerie Peak, The Hinterlands",
        "Astranaar, Ashenvale",
        "Auberdine, Darkshore",
        "Bloodvenom Post, Felwood",
        "Booty Bay, Stranglethorn",
        "Brackenwall Village, Dustwallow Marsh",
        "Camp Mojache, Feralas",
        "Camp Taurajo, The Barrens",
        "Cenarion Hold, Silithus",
        "Chillwind Camp, Western Plaguelands",
        "Crossroads, The Barrens",
        "Darkshire, Duskwood",
        "Everlook, Winterspring",
        "Feathermoon, Feralas",
        "Flame Crest, Burning Steppes",
        "Freewind Post, Thousand Needles",
        "Gadgetzan, Tanaris",
        "Grom'gol, Stranglethorn",
        "Hammerfall, Arathi",
        "Ironforge, Dun Morogh",
        "Kargath, Badlands",
        "Lakeshire, Redridge",
        "Light's Hope Chapel, Eastern Plaguelands",
        "Marshal's Refuge, Un'Goro Crater",
        "Menethil Harbor, Wetlands",
        "Moonglade",
        "Morgan's Vigil, Burning Steppes",
        "Nethergarde Keep, Blasted Lands",
        "Nijel's Point, Desolace",
        "Orgrimmar, Durotar",
        "Ratchet, The Barrens",
        "Refuge Pointe, Arathi",
        "Revantusk Village, The Hinterlands",
        "Rut'theran Village, Teldrassil",
        "Sentinel Hill, Westfall",
        "Shadowprey Village, Desolace",
        "Southshore, Hillsbrad",
        "Splintertree Post, Ashenvale",
        "Stonard, Swamp of Sorrows",
        "Stonetalon Peak, Stonetalon Mountains",
        "Stormwind, Elwynn",
        "Sun Rock Retreat, Stonetalon Mountains",
        "Talonbranch Glade, Felwood",
        "Talrendis Point, Azshara",
        "Tarren Mill, Hillsbrad",
        "Thalanaar, Feralas",
        "The Sepulcher, Silverpine Forest",
        "Thelsamar, Loch Modan",
        "Theramore, Dustwallow Marsh",
        "Thorium Point, Searing Gorge",
        "Thunder Bluff, Mulgore",
        "Undercity, Tirisfal",
        "Valormok, Azshara",
        "Zoram'gar Outpost, Ashenvale",
    }

    for _, v in ipairs(known_taxi_points) do
        local loc, zone = strsplit(",", v)
        if loc and zone then
            loc = strtrim(loc)
            zone = strtrim(zone)
            if z[loc] and z[zone] then
                z[v] = z[loc] .. ", " .. z[zone]
            else
                print("[!] ClassicUA: Failed to prepare taxi zone \"" .. v .. "\"")
            end
        end
    end
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
        codes["{Раса:" .. c .. "}"] = capitalize(t)
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
        codes["{Клас:" .. c .. "}"] = capitalize(t)
        codes["{КЛАС:" .. c .. "}"] = string.upper(t)
        if c == "н" then -- "н" is default grammatical case
            codes["{клас}"] = codes["{клас:н}"]
            codes["{Клас}"] = codes["{Клас:н}"]
            codes["{КЛАС}"] = codes["{КЛАС:н}"]
        end
    end

    -- sex

    -- only "стать" is needed, but we make possible to use any letter casing
    -- (even if it has nothing to do with the letter case of the result, as text gets shown as is)
    codes["{стать:(.-):(.-)}"] = function (a, b) return is_male and a or b end
    codes["{Стать:(.-):(.-)}"] = function (a, b) return is_male and a or b end
    codes["{СТАТЬ:(.-):(.-)}"] = function (a, b) return is_male and a or b end

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

-- todo: add another loop to try different "'s", e.g. "XXX's" and "XXXs'" are considered to be equal
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

-- ------------
-- [ tooltips ]
-- ------------

local tooltip_entry_type = false
local tooltip_entry_id = false

local add_line_to_tooltip = function (tooltip, content, template, r, g, b)
    if not content then
        return
    end

    local lines = type(content) == "table" and content or { content }
    for i = 1, #lines do
        local text = make_entry_text(lines[i], tooltip)
        local text_cap = capitalize(text)
        local result = template:gsub("TEXT", text_cap:gsub("%%", "%%%%"), 1)
        tooltip:AddLine(result, r, g, b, true)
    end
end

local add_entry_to_tooltip = function (tooltip, entry_type, entry_id, is_buff_debuff_tooltip)
    if tooltip_entry_type then
        return
    end

    local entry = get_entry(entry_type, entry_id)

    if not entry then -- todo: check if debug info should be shown
        entry = { entry_type .. "|cff999999#|r" .. entry_id }
    end

    if entry then
        tooltip:AddLine(" ")
        tooltip:AddLine("|TInterface\\AddOns\\ClassicUA\\assets\\ua:0|t " .. capitalize(entry[1]), 1, 1, 1)

        if entry_type == "item" then
            add_line_to_tooltip(tooltip, entry["desc"], "TEXT", 1, 1, 1)
            add_line_to_tooltip(tooltip, entry["equip"], "При спорядженні: TEXT", 0.25, 1, 0.25)
            add_line_to_tooltip(tooltip, entry["hit"], "Шанс при влучанні: TEXT", 0.25, 1, 0.25)
            add_line_to_tooltip(tooltip, entry["use"], "Використання: TEXT", 0.25, 1, 0.25)
            add_line_to_tooltip(tooltip, entry["flavor"], "\"TEXT\"", 1, 0.82, 0)
        elseif entry_type == "spell" then
            if is_buff_debuff_tooltip then
                add_line_to_tooltip(tooltip, entry[3], "TEXT", 1, 1, 1)
            else
                add_line_to_tooltip(tooltip, entry[2], "TEXT", 1, 0.82, 0)
            end
        else
            add_line_to_tooltip(tooltip, entry[2], "TEXT", 1, 1, 1)
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
        local kind, _, _, _, _, id, _ = strsplit("-", guid)
        if kind == "Creature" and id then
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
        add_entry_to_tooltip(self, "spell", id, true)
    end
end)

hooksecurefunc(GameTooltip, "SetUnitBuff", function (self, unit, index)
    local id = select(10, UnitAura(unit, index, "HELPFUL"))
    if id then
        add_entry_to_tooltip(self, "spell", id, true)
    end
end)

hooksecurefunc(GameTooltip, "SetUnitDebuff", function (self, unit, index)
    local id = select(10, UnitAura(unit, index, "HARMFUL"))
    if id then
        add_entry_to_tooltip(self, "spell", id, true)
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
                self:AddLine("|TInterface\\AddOns\\ClassicUA\\assets\\ua:0|t " .. capitalize(entry), 1, 1, 1)

                if self:IsShown() then
                    self:Show()
                end
            end

            tooltip_entry_type = "text"
            tooltip_entry_id = text
        end
    end
end)

-- ----------
-- [ frames ]
-- ----------

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

-- ----------------
-- [ quest frames ]
-- ----------------

local quest_title_font = "Interface\\AddOns\\ClassicUA\\assets\\Morpheus_UA.ttf"
local quest_text_font = "Interface\\AddOns\\ClassicUA\\assets\\FRIZQT_UA.ttf"

local quest_frames = {}
local get_quest_frame = function (name)
    if quest_frames[name] then
        return quest_frames[name]
    end

    local width, height = QuestFrame:GetSize()
    local frame = CreateFrame("frame", nil, QuestFrame, "BackdropTemplate")
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

    quest_frames[name] = frame
    return quest_frames[name]
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
    local frame = get_quest_frame("detail")
    local entry = get_entry("quest", GetQuestID())
    if entry then
        set_quest_content(frame, entry[1], entry[2], get_text("Quest Objectives"), entry[3])
        frame:Show()
    else
        frame:Hide()
    end
end)

QuestFrameDetailPanel:HookScript("OnHide", function (event)
    local frame = get_quest_frame("detail")
    frame:Hide()
end)

QuestFrameProgressPanel:HookScript("OnShow", function (event)
    local frame = get_quest_frame("progress")
    local entry = get_entry("quest", GetQuestID())
    if entry then
        set_quest_content(frame, entry[1], entry[4])
        frame:Show()
    else
        frame:Hide()
    end
end)

QuestFrameProgressPanel:HookScript("OnHide", function (event)
    local frame = get_quest_frame("progress")
    frame:Hide()
end)

QuestFrameRewardPanel:HookScript("OnShow", function (event)
    local frame = get_quest_frame("reward")
    local entry = get_entry("quest", GetQuestID())
    if entry then
        set_quest_content(frame, entry[1], entry[5])
        frame:Show()
    else
        frame:Hide()
    end
end)

QuestFrameRewardPanel:HookScript("OnHide", function (event)
    local frame = get_quest_frame("reward")
    frame:Hide()
end)

local questlog_frame = nil
local get_questlog_frame = function ()
    if questlog_frame then
        return questlog_frame
    end

    local width, height = QuestLogFrame:GetSize()
    local frame = CreateFrame("frame", nil, QuestLogFrame, "BackdropTemplate")
    frame:SetFrameStrata("HIGH")
    if is_wotlk then
        frame:SetSize(width/2 - 20, height - 96)
        frame:SetPoint("TOP", 0, -66)
        frame:SetPoint("RIGHT", frame:GetWidth() - 9, 0)
    else
        frame:SetSize(width - 64, height - 234)
        frame:SetPoint("TOP", 0, -166)
        frame:SetPoint("RIGHT", frame:GetWidth() - 41, 0)
    end

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

-- --------------
-- [ book frame ]
-- --------------

local book_item_id = false
local book_text_font = "Interface\\AddOns\\ClassicUA\\assets\\Morpheus_UA.ttf"

local book_frame = nil
local get_book_frame = function ()
    if book_frame then
        return book_frame
    end

    local width, height = ItemTextFrame:GetSize()
    local frame = CreateFrame("frame", nil, ItemTextFrame, "BackdropTemplate")
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

-- -------------------------
-- [ zone text and minimap ]
-- -------------------------

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
                lookup[1]:SetText(capitalize(found))
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

-- -------------
-- [ world map ]
-- -------------

local world_map_original_set_map_id = WorldMapFrame.SetMapID
local world_map_dds = { WorldMapContinentDropDown, WorldMapZoneDropDown }

WorldMapFrame.SetMapID = function (self, mapID)
    world_map_original_set_map_id(self, mapID)

    for _, v in ipairs(world_map_dds) do
        local text = v.Text:GetText()
        local found = get_entry_text(text)
        if found then
            v.Text:SetText(capitalize(found))
        end
    end
end

local world_map_dropdown_button_click = function (self)
    local dd = DropDownList1
    if dd:IsShown() then
        local texts = {}
        local buttons = {}

        for i = 1, dd.numButtons do
            local button = _G["DropDownList1Button" .. i]
            local text = button:GetText()
            local found = get_entry_text(text)
            if found then
                local t = capitalize(found)
                texts[#texts + 1] = t
                buttons[t] = button
                button:SetText(t)
            end
        end

        sort(texts)
        local h = DropDownList1Button1:GetHeight()
        for i = 1, #texts do
            buttons[texts[i]]:SetPoint("TOPLEFT", 16, - i * h)
        end
    end
end

WorldMapContinentDropDownButton:HookScript("OnClick", world_map_dropdown_button_click)
WorldMapZoneDropDownButton:HookScript("OnClick", world_map_dropdown_button_click)

local world_map_area_label_update = function (self)
    local text = self.Name:GetText()
    if text then
        local found = get_entry_text(text)
        if found then
            self.Name:SetText(capitalize(found))
        end
    end
end

local prepare_world_map = function ()
    for provider, _ in pairs(WorldMapFrame.dataProviders) do
        if provider.setAreaLabelCallback and provider.Label and provider.Label.Name then
            local _, size, style = provider.Label.Name:GetFont()
            provider.Label.Name:SetFont("Interface\\AddOns\\ClassicUA\\assets\\FRIZQT_UA.ttf", size, style)
            provider.Label:HookScript("OnUpdate", world_map_area_label_update)
            break
        end
    end
end

-- ----------------
-- [ target frame ]
-- ----------------

local update_target_frame_text = function ()
    local guid = UnitGUID("target")
    if guid then
        local kind, _, _, _, _, id, _ = strsplit("-", guid)
        if kind == "Creature" and id then
            local entry = get_entry("npc", id)
            if entry then
                TargetFrame.name:SetText(capitalize(entry[1]))
            end
        end
    end
end

-- ---------------
-- [ name plates ]
-- ---------------

hooksecurefunc("CompactUnitFrame_UpdateName", function (self)
    if ShouldShowName(self) then
        local guid = UnitGUID(self.unit)
        if guid then
            local kind, _, _, _, _, id, _ = strsplit("-", guid)
            if kind == "Creature" and id then
                local entry = get_entry("npc", id)
                if entry then
                    self.name:SetText(capitalize(entry[1]))
                end
            end
        end
    end
end)

-- ----------
-- [ events ]
-- ----------

local event_frame = CreateFrame("frame")

event_frame:RegisterEvent("ADDON_LOADED")
event_frame:RegisterEvent("PLAYER_LOGIN")
event_frame:RegisterEvent("PLAYER_TARGET_CHANGED")
event_frame:RegisterEvent("ITEM_TEXT_BEGIN")
event_frame:RegisterEvent("ITEM_TEXT_READY")
event_frame:RegisterEvent("ITEM_TEXT_CLOSED")
event_frame:RegisterEvent("ZONE_CHANGED")
event_frame:RegisterEvent("ZONE_CHANGED_INDOORS")
event_frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")

event_frame:SetScript("OnEvent", function (self, event, ...)
    -- print(event, ...)
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
        local _, class = UnitClass("player")
        local _, race = UnitRace("player")
        local sex = UnitSex("player")
        local faction = UnitFactionGroup("player")

        -- print("PLAYER_LOGIN", name, race, class, sex, faction)
        prepare_talent_tree(class)
        prepare_quests(faction == "Alliance")
        prepare_codes(name, race, class, sex == 2) -- 2 for male
        prepare_zones()
        prepare_zone_text()
        prepare_world_map()
    elseif event == "PLAYER_TARGET_CHANGED" then
        update_target_frame_text()
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
