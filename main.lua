local _, addonTable = ...

-- ----------
-- [ assets ]
-- ----------

local asset_ua_code = "|TInterface\\AddOns\\ClassicUA\\assets\\ua:0|t"
local asset_font1_path = "Interface\\AddOns\\ClassicUA\\assets\\Morpheus_UA.ttf"
local asset_font2_path = "Interface\\AddOns\\ClassicUA\\assets\\FRIZQT_UA.ttf"

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

local function strip_color_codes(text)
    if type(text) == "string" then
        return text:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
    else
        return text
    end
end

local first_line_only = function (text)
    if type(text) == "string" then
        local lines = { strsplit("\n\r", text) }
        local esc_nl_pos = lines[1]:find("|n")
        if esc_nl_pos then
            return lines[1]:sub(1, esc_nl_pos - 1)
        else
            return lines[1]
        end
    else
        return text
    end
end

-- -----------
-- [ options ]
-- -----------

local options = nil
local default_options = {
    debug = false,
    quest_text_size = 13,
    book_text_size = 15
}

local prepare_options = function ()
    ClassicUA_Options = ClassicUA_Options or copy_table({}, default_options)
    options = ClassicUA_Options
end

local reset_options = function ()
    ClassicUA_Options = copy_table({}, default_options)
    options = ClassicUA_Options
end

-- -----------
-- [ entries ]
-- -----------

local get_stats = function ()
    local at = addonTable
    local stats = {}

    for _, v in ipairs({
        "quest_alliance",
        "quest_horde",
        "quest_both",
        "book",
        "item",
        "spell",
        "npc",
        "object",
        "zone"
    }) do
        if at[v .. '_stats'] then
            stats[v] = at[v .. '_stats'].count
        else
            stats[v] = 0
            for _, _ in pairs(at[v]) do stats[v] = stats[v] + 1 end
        end
    end

    return stats
end

local prepare_talent_tree = function (class)
    -- keep only player class tree
    addonTable.talent_tree = addonTable.talent_tree[class]
end

local prepare_quests = function (is_alliance)
    -- init faction quests reference
    addonTable.quest_faction = is_alliance and addonTable.quest_alliance or addonTable.quest_horde
    -- drop opposite faction quests
    addonTable[ is_alliance and "quest_horde" or "quest_alliance" ] = nil
end

local prepare_glossary = function ()
    local at = addonTable
    local glossary = {}

    -- collect text-key entries: text, zone, object
    for _, entry_type in pairs({ "text", "zone", "object" }) do
        for entry_key, entry_value in pairs(at[entry_type]) do
            local glossary_key = strtrim(entry_key:lower())
            if not glossary[glossary_key] then
                glossary[glossary_key] = entry_value
            end

            -- if key starts with "the " part, add key without it
            if glossary_key:find("^the ") and #glossary_key > 8 then
                local glossary_key_no_the = glossary_key:sub(5)
                if not glossary[glossary_key_no_the] then
                    glossary[glossary_key_no_the] = entry_value
                end
            else
                -- if key doesn't start with "the ", add key that does
                local glossary_key_with_the = "the " .. glossary_key
                if not glossary[glossary_key_with_the] then
                    glossary[glossary_key_with_the] = entry_value
                end
            end
        end
    end

    -- collect id-key entries: quest, npc
    for _, entry_type in pairs({ "quest_faction", "quest_both", "npc" }) do
        for _, entry_value in pairs(at[entry_type]) do
            if entry_value.en then
                local glossary_key = strtrim(entry_value.en:lower())
                if not glossary[glossary_key] then
                    glossary[glossary_key] = entry_value[1]
                end
            end
        end
    end

    at.glossary = glossary
end

local prepare_codes = function (name, race, class, is_male)
    local at = addonTable
    local sex = is_male and 1 or 2
    local cases = { "н", "р", "д", "з", "о", "м", "к" }
    local codes = {}

    -- name

    for _, c in ipairs(cases) do
        local t = name -- TODO: should be something like: options.player_name_case[c], when player name will have grammatical cases
        codes["{ім'я:" .. c .. "}"] = t
        codes["{Ім'я:" .. c .. "}"] = capitalize(t)
        codes["{ІМ'Я:" .. c .. "}"] = string.upper(t)
        if c == "н" then -- "н" is default grammatical case
            codes["{ім'я}"] = codes["{ім'я:н}"]
            codes["{Ім'я}"] = codes["{Ім'я:н}"]
            codes["{ІМ'Я}"] = codes["{ІМ'Я:н}"]
        end
    end

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
    if not array then
        return nil
    end

    local result = {}
    for i = 1, #array do
        result[i] = make_text(array[i])
    end

    return result
end

local get_entry = function (entry_type, entry_id)
    if not entry_type or not entry_id then
        return false
    end

    local at = addonTable
    entry_id = tonumber(entry_id)

    if entry_type == "quest" then
        local quest = nil

        if at.quest_faction[entry_id] then
            quest = at.quest_faction[entry_id]
        elseif at.quest_both[entry_id] then
            quest = at.quest_both[entry_id]
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
                return copy_table(copy_table({}, entry_ref), entry)
            else
                if options.debug then
                    return copy_table({ entry_type .. "#" .. entry_id .. "=>#" .. entry.ref }, entry)
                else
                    return false
                end
            end
        end

        return entry
    end

    return false
end

local make_entry_text = function (text, tooltip, tooltip_matches_to_skip)
    if not text then
        return nil
    end

    text = { strsplit("#", text) }
    if #text == 1 or not tooltip then
        return text[1]
    end

    local tooltip_lines = {}
    for j = 1, tooltip:NumLines() do
        tooltip_lines[#tooltip_lines + 1] = _G[tooltip:GetName() .. "TextLeft" .. j]:GetText()
    end

    if not tooltip_matches_to_skip then
        tooltip_matches_to_skip = 0
    end

    local values = {}
    for i = 2, #text do
        local p = esc(text[i]:lower()):gsub("{(%d+)}", function (a) return "(%d*.?%d+)" end)
        local match_number = 0
        for j = 1, #tooltip_lines do
            local v = { tooltip_lines[j]:lower():match(p) }
            if #v > 0 then
                match_number = match_number + 1
                if match_number > tooltip_matches_to_skip then
                    for k = 1, #v do
                        local value = v[k]:gsub("%.", ",")
                        -- fix floating-point number without leading "0", e.g. ",2"
                        if #value > 1 and value:sub(1, 1) == "," then
                            value = "0" .. value
                        end
                        values[#values + 1] = value
                    end
                    break
                end
            end
        end
    end

    return text[1]:gsub("{(%d+)}", function (a) return values[tonumber(a)] end)
end

local get_glossary_text = function (entry_key)
    local at = addonTable

    if type(entry_key) ~= "string" or type(at.glossary) ~= "table" then
        return false
    end

    -- prepare entry_key
    entry_key = strip_color_codes(entry_key)
    entry_key = first_line_only(entry_key)
    entry_key = entry_key:lower()

    -- check directly
    if at.glossary[entry_key] then
        return capitalize(at.glossary[entry_key])
    end

    -- check using Taxi Map destination format: Undercity, Tirisfal
    local key1, key2 = string.gmatch(entry_key, "(.*), (.*)")()
    if key1 and key2 then
        if at.glossary[key1] and at.glossary[key2] then
            return capitalize(at.glossary[key1]) .. ", " .. capitalize(at.glossary[key2])
        end
    end

    -- check using Questie' quest format: [57+] Feathermoon Stronghold
    local key = string.gmatch(entry_key, "%[.+%] (.*)")()
    if key then
        if at.glossary[key] then
            return capitalize(at.glossary[key])
        end
    end

    -- check using Questie' quest format: [57+] Feathermoon Stronghold (12345)
    local key = string.gmatch(entry_key, "%[.+%] (.*) %((.*)%)")()
    if key then
        if at.glossary[key] then
            return capitalize(at.glossary[key])
        end
    end

    -- check using Questie' npc format: John Smith (Wind Rider Master)
    local key1, key2 = string.gmatch(entry_key, "(.*) %((.*)%)")()
    if key1 and key2 then
        if at.glossary[key1] then
            if at.glossary[key2] then
                return capitalize(at.glossary[key1]) .. " (" .. capitalize(at.glossary[key2]) .. ")"
            else
                return capitalize(at.glossary[key1])
            end
        end
    end

    return false
end

-- ------------
-- [ tooltips ]
-- ------------

local known_tooltips = {}
for _, tt in pairs({
    GameTooltip,
    ShoppingTooltip1,
    ShoppingTooltip2,
    ItemRefTooltip,
    WorldMapTooltip, -- Note: WorldMapTooltip is deprecated in 8.1.5
}) do
    if tt then
        known_tooltips[#known_tooltips + 1] = tt
        tt.classicua = { entry_type = false, entry_id = false }
    end
end

local add_line_to_tooltip = function (tooltip, content, template, r, g, b, content_can_be_spell_id)
    if not content then
        return
    end

    local lines = type(content) == "table" and content or { content }
    for i = 1, #lines do
        local text = lines[i]

        if content_can_be_spell_id and type(text) == "number" then
            local spell_id = text
            local spell_entry = get_entry("spell", spell_id)
            if spell_entry then
                text = false
                local spell_desc = make_entry_text(spell_entry[2], tooltip)
                if spell_desc then
                    text = make_entry_text(spell_desc, tooltip)
                    text = capitalize(text)
                end
            elseif options.debug then
                text = "spell#" .. spell_id
            else
                text = false
            end
        else
            text = make_entry_text(text, tooltip)
            text = capitalize(text)
        end

        if text then
            local result = template:gsub("TEXT", text:gsub("%%", "%%%%"), 1)
            tooltip:AddLine(result, r, g, b, true)
        end
    end
end

local add_item_entry_to_tooltip -- do not assign directly, this needed for recursion to work
add_item_entry_to_tooltip = function (tooltip, entry, is_sub_item)
    local prefix = is_sub_item and "" or asset_ua_code .. " "
    local heading = make_entry_text(entry[1], tooltip)
    tooltip:AddLine(prefix .. capitalize(heading), 1, 1, 1)

    add_line_to_tooltip(tooltip, entry.desc, "TEXT", 1, 1, 1)
    add_line_to_tooltip(tooltip, entry.equip, "При спорядженні: TEXT", 0, 1, 0, true)
    add_line_to_tooltip(tooltip, entry.hit, "Шанс при влучанні: TEXT", 0, 1, 0, true)
    add_line_to_tooltip(tooltip, entry.use, "Використання: TEXT", 0, 1, 0, true)

    if entry.recipe_result_item then
        local rr_item = get_entry("item", entry.recipe_result_item)
        if rr_item then
            tooltip:AddLine(" ")
            add_item_entry_to_tooltip(tooltip, rr_item, true)
        elseif options.debug then
            tooltip:AddLine("recipe_result_item#" .. tostring(entry.recipe_result_item), 1, 1, 1)
        end
    end

    add_line_to_tooltip(tooltip, entry.flavor, "\"TEXT\"", 1, 0.82, 0)
end

local add_spell_entry_to_tooltip = function (tooltip, entry, is_aura, skip_title)
    if not skip_title then
        local heading = make_entry_text(entry[1], tooltip)
        tooltip:AddLine(asset_ua_code .. " " .. capitalize(heading), 1, 1, 1)
    end

    if is_aura then
        add_line_to_tooltip(tooltip, entry[3], "TEXT", 1, 1, 1)
    else
        add_line_to_tooltip(tooltip, entry[2], "TEXT", 1, 0.82, 0)

        if entry.rune then
            local rune_spells = type(entry.rune) == "table" and entry.rune or { entry.rune }
            for _, rune_spell_id in pairs(rune_spells) do
                tooltip:AddLine(" ")
                local rune_spell = get_entry("spell", rune_spell_id)
                if rune_spell and rune_spell[1] and rune_spell[2] then
                    add_line_to_tooltip(tooltip, capitalize(make_entry_text(rune_spell[1], tooltip)), "TEXT", 1, 1, 1)
                    add_line_to_tooltip(tooltip, capitalize(make_entry_text(rune_spell[2], tooltip)), "TEXT", 1, 0.82, 0)
                elseif options.debug then
                    tooltip:AddLine("rune_spell#" .. tostring(rune_spell_id), 1, 1, 1)
                end
            end
        end
    end
end

local add_sod_engraving_entry_to_tooltip = function (tooltip, entry)
    local heading = make_entry_text(entry[1], tooltip)
    tooltip:AddLine(asset_ua_code .. " " .. capitalize(heading), 1, 1, 1)

    if entry.spell then
        local spell = get_entry("spell", entry.spell)
        if spell then
            add_spell_entry_to_tooltip(tooltip, spell, false, true)
        elseif options.debug then
            tooltip:AddLine("engraving.spell#" .. entry.spell, 1, 1, 1)
        end
    end
end

local add_general_entry_to_tooltip = function (tooltip, entry)
    local heading = make_entry_text(entry[1], tooltip)
    tooltip:AddLine(asset_ua_code .. " " .. capitalize(heading), 1, 1, 1)

    add_line_to_tooltip(tooltip, entry[2], "TEXT", 1, 1, 1)
end

local add_entry_to_tooltip = function (tooltip, entry_type, entry_id, is_aura)
    if tooltip.classicua.entry_type then
        return
    end

    local updated = false
    local entry = get_entry(entry_type, entry_id)

    if entry then
        updated = true
        tooltip:AddLine(" ")

        if entry_type == "item" then
            add_item_entry_to_tooltip(tooltip, entry)
        elseif entry_type == "spell" then
            add_spell_entry_to_tooltip(tooltip, entry, is_aura)
        elseif entry_type == "sod_engraving" then
            add_sod_engraving_entry_to_tooltip(tooltip, entry)
        else
            add_general_entry_to_tooltip(tooltip, entry)
        end
    elseif options.debug then
        updated = true
        tooltip:AddLine(" ")
        tooltip:AddLine(asset_ua_code .. " " .. entry_type .. "#" .. entry_id, 1, 1, 1)
    end

    if updated and tooltip:IsShown() then
        tooltip:Show()
    end

    tooltip.classicua.entry_type = entry_type
    tooltip.classicua.entry_id = entry_id
end

local add_glossary_entry_to_tooltip = function (tooltip, glossary_key)
    if tooltip.classicua.entry_type then
        return
    end

    local found = get_glossary_text(glossary_key)
    if found then
        result_text = capitalize(found)

        if tooltip:NumLines() > 1 then
            tooltip:AddLine(" ")
        end

        tooltip:AddLine(asset_ua_code .. " " .. result_text, 1, 1, 1, true)

        if tooltip:IsShown() then
            tooltip:Show()
        end
    end

    tooltip.classicua.entry_type = "glossary"
    tooltip.classicua.entry_id = glossary_key
end

local add_talent_entry_to_tooltip = function (tooltip, tab_index, tier, column, rank, max_rank)
    if tooltip.classicua.entry_type then
        return
    end

    local talent =
        addonTable.talent_tree and
        addonTable.talent_tree[tab_index] and
        addonTable.talent_tree[tab_index][tier] and
        addonTable.talent_tree[tab_index][tier][column]
        or false

    if not talent then
        return
    end

    local rank_to_show = math.max(rank, 1)
    local next_rank_to_show = math.min(rank + 1, max_rank)

    if not talent[rank_to_show] or not talent[next_rank_to_show] then
        -- this should never be true (otherwise, bug in talent_tree)
        return
    end

    local entry = get_entry("spell", talent[rank_to_show])
    if not entry then
        if options.debug then
            entry = { "spell#" .. talent[rank_to_show] }
        else
            return
        end
    end

    tooltip:AddLine(" ")
    tooltip:AddLine(asset_ua_code .. " " .. entry[1], 1, 1, 1)

    if entry[2] then
        tooltip:AddLine(make_entry_text(entry[2], tooltip), 1, 0.82, 0, true)
    end

    if rank_to_show ~= next_rank_to_show then
        local next_rank_desc = "spell#" .. talent[next_rank_to_show]

        local entry = get_entry("spell", talent[next_rank_to_show])
        if entry and entry[2] then
            next_rank_desc = make_entry_text(entry[2], tooltip, 1)
        end

        tooltip:AddLine(" ")
        tooltip:AddLine("Наступний ранг:", 1, 1, 1)
        tooltip:AddLine(next_rank_desc, 1, 0.82, 0, true)
    end

    if tooltip:IsShown() then
        tooltip:Show()
    end

    tooltip.classicua.entry_type = "spell"
    tooltip.classicua.entry_id = talent[rank_to_show]
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

local tooltip_updated = function (self)
    if self.classicua.entry_type then
        return
    end

    local name, unit = self:GetUnit()
    if name or unit then
        return
    end

    if addonTable.sod_engraving then
        local owner = self:GetOwner()
        if owner then
            local owner_name = owner:GetName()
            if owner_name and owner_name:find("^EngravingFrameScrollFrameButton") and owner.skillLineAbilityID then
                add_entry_to_tooltip(self, "sod_engraving", owner.skillLineAbilityID)
                return
            end
        end
    end

    local text = _G[self:GetName() .. "TextLeft1"]:GetText()
    if text == self.classicua.entry_id then
        return
    end

    add_glossary_entry_to_tooltip(self, text)
end

local tooltip_cleared = function (self)
    self.classicua.entry_type = false
    self.classicua.entry_id = false
end

for _, tt in pairs(known_tooltips) do
    tt:HookScript("OnTooltipSetItem", tooltip_set_item)
    tt:HookScript("OnTooltipSetSpell", tooltip_set_spell)
    tt:HookScript("OnTooltipSetUnit", tooltip_set_unit)
    tt:HookScript("OnUpdate", tooltip_updated)
    tt:HookScript("OnTooltipCleared", tooltip_cleared)

    if tt == ItemRefTooltip then
        -- ItemRefTooltip is "special" tooltip as it clears "OnUpdate" hook every time,
        -- making it work only once, so we reset it back.
        -- Some details here: https://github.com/arkayenro/arkinventory/issues/1337
        -- TODO: find better solution, check other addons on how they handle ItemRefTooltip
        tt:HookScript("OnShow", function (self)
            tooltip_updated(tt)
            if tt:GetScript("OnUpdate") ~= tooltip_updated then
                tt:SetScript("OnUpdate", tooltip_updated)
            end
        end)
    end
end

hooksecurefunc(GameTooltip, "SetTalent", function (self, tab_index, talent_index)
    local tier, column, rank, max_rank, is_active = select(3, GetTalentInfo(tab_index, talent_index))
    if not is_active then -- skip active talent (it gets shown as spell)
        add_talent_entry_to_tooltip(self, tab_index, tier, column, rank, max_rank)
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
local setup_frame_scrollbar_and_content = function (frame, areas, scrollframe_width_override)
    local scrollframe = CreateFrame("ScrollFrame", nil, frame)
    scrollframe:SetPoint("TOPLEFT", 8, -9)
    scrollframe:SetPoint("BOTTOMRIGHT", -8, 9)
    frame.scrollframe = scrollframe
    scrollframe_width = scrollframe_width_override or scrollframe:GetWidth()

    local content = CreateFrame("Frame", nil, scrollframe)
    content:SetSize(scrollframe_width - 60, 0)
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
        local v = self.scrollbar:GetValue()
        self.scrollbar:SetValue(v - delta * self.scrollbar.scrollStep)
    end)
end

local setup_frame_scrollbar_values = function (frame, height)
    local delta = height - frame:GetHeight() + 24
    if delta < 1 then
        delta = 1
    end

    frame.scrollbar:SetMinMaxValues(1, delta)
    frame.scrollbar:SetValue(1)
    frame.content:SetSize(frame.content:GetWidth(), height)
end

-- ----------------
-- [ quest frames ]
-- ----------------

local quest_frames = {}
local get_quest_frame = function (name)
    if quest_frames[name] then
        return quest_frames[name]
    end

    local width, height = QuestFrame:GetSize()
    local frame = CreateFrame("Frame", nil, QuestFrame, "BackdropTemplate")
    frame:SetFrameStrata("HIGH")
    frame:SetSize(width - 64, height - 160)
    frame:SetPoint("TOP", 0, -72)
    frame:SetPoint("RIGHT", frame:GetWidth() - 37, 0)

    setup_frame_background_and_border(frame)

    setup_frame_scrollbar_and_content(frame, {
        title = { asset_font1_path, options.quest_text_size + 5 },
        text = { asset_font2_path, options.quest_text_size },
        more_title = { asset_font1_path, options.quest_text_size + 5 },
        more_text = { asset_font2_path, options.quest_text_size }
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
        if frame.more_title then
            frame.more_title:SetText("")
        end
        if frame.more_text then
            frame.more_text:SetText("")
        end
    end

    setup_frame_scrollbar_values(frame, h)
end

QuestFrameDetailPanel:HookScript("OnShow", function (self)
    local frame = get_quest_frame("detail")
    local entry = get_entry("quest", GetQuestID())
    if entry then
        set_quest_content(frame, entry[1], entry[2], "Доручення", entry[3])
        frame:Show()
    else
        frame:Hide()
    end
end)

QuestFrameDetailPanel:HookScript("OnHide", function (self)
    local frame = get_quest_frame("detail")
    frame:Hide()
end)

QuestFrameProgressPanel:HookScript("OnShow", function (self)
    local frame = get_quest_frame("progress")
    local entry = get_entry("quest", GetQuestID())
    if entry then
        set_quest_content(frame, entry[1], entry[4])
        frame:Show()
    else
        frame:Hide()
    end
end)

QuestFrameProgressPanel:HookScript("OnHide", function (self)
    local frame = get_quest_frame("progress")
    frame:Hide()
end)

QuestFrameRewardPanel:HookScript("OnShow", function (self)
    local frame = get_quest_frame("reward")
    local entry = get_entry("quest", GetQuestID())
    if entry then
        set_quest_content(frame, entry[1], entry[5])
        frame:Show()
    else
        frame:Hide()
    end
end)

QuestFrameRewardPanel:HookScript("OnHide", function (self)
    local frame = get_quest_frame("reward")
    frame:Hide()
end)

local questlog_frame = nil
local get_questlog_frame = function ()
    if questlog_frame then
        return questlog_frame
    end

    local width, height = QuestLogDetailScrollFrame:GetSize()
    local frame = CreateFrame("Frame", nil, QuestLogDetailScrollFrame, "BackdropTemplate")
    frame:SetFrameStrata("HIGH")
    frame:SetSize(width + 18, height + 18)
    frame:SetPoint("TOP", 0, 18/2)
    frame:SetPoint("RIGHT", width + 23 + 18, 0)

    setup_frame_background_and_border(frame)

    setup_frame_scrollbar_and_content(frame, {
        title = { asset_font1_path, options.quest_text_size + 5 },
        text = { asset_font2_path, options.quest_text_size },
        more_title = { asset_font1_path, options.quest_text_size + 5 },
        more_text = { asset_font2_path, options.quest_text_size }
    })

    frame:Show()

    questlog_frame = frame
    return questlog_frame
end

hooksecurefunc("SelectQuestLogEntry", function ()
    if not addonTable.quest_faction then -- need to test quest_faction, as prepare_quests() might not be called just yet
        return
    end

    local frame = get_questlog_frame()
    local selection = GetQuestLogSelection()
    if selection > 0 then
        local id = select(8, GetQuestLogTitle(selection))
        local entry = get_entry("quest", id)
        if entry then
            set_quest_content(frame, entry[1], entry[3], "Опис", entry[2])
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

local book_frame = nil
local get_book_frame = function ()
    if book_frame then
        return book_frame
    end

    local width, height = ItemTextScrollFrame:GetSize()
    local frame = CreateFrame("Frame", nil, ItemTextScrollFrame, "BackdropTemplate")
    frame:SetFrameStrata("HIGH")
    frame:SetSize(width + 18, height + 18)
    frame:SetPoint("TOP", 0, 18/2)
    frame:SetPoint("RIGHT", width + 27 + 18, 0)

    setup_frame_background_and_border(frame)

    setup_frame_scrollbar_and_content(frame, {
        text = { asset_font1_path, options.book_text_size }
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
    { ZoneTextString, get_glossary_text },
    { SubZoneTextString, get_glossary_text },
    { MinimapZoneText, get_glossary_text },
    { PVPInfoTextString, get_glossary_text },
    { PVPArenaTextString, get_glossary_text },
}

local update_zone_text = function ()
    local text, found
    for _, lookup in ipairs(zone_text_lookup) do
        text = lookup[1]:GetText()
        if text then
            local found = lookup[2](text)
            if not found then
                local text_in_bracers = string.gmatch(text, "%((.*)%)")()
                if text_in_bracers then
                    found = lookup[2](text_in_bracers)
                    if found then
                        found = "(" .. capitalize(found) .. ")"
                    end
                end
            end
            if found then
                lookup[1]:SetText(capitalize(found))
            end
        end
    end
end

local prepare_zone_text = function ()
    for _, lookup in ipairs(zone_text_lookup) do
        local _, size, style = lookup[1]:GetFont()
        lookup[1]:SetFont(asset_font2_path, size, style)
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
        local found = get_glossary_text(text)
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
            local found = get_glossary_text(text)
            if found then
                local t = capitalize(found)
                texts[#texts + 1] = t
                buttons[t] = button
                button:SetText(t)
            else
                texts[#texts + 1] = text
                buttons[text] = button
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
        local found = get_glossary_text(text)
        if found then
            self.Name:SetText(capitalize(found))
        end
    end
end

local prepare_world_map = function ()
    for provider, _ in pairs(WorldMapFrame.dataProviders) do
        if provider.setAreaLabelCallback and provider.Label and provider.Label.Name then
            local _, size, style = provider.Label.Name:GetFont()
            provider.Label.Name:SetFont(asset_font2_path, size, style)
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
    if ShouldShowName(self) and not self:IsForbidden() then
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

-- -----------------
-- [ options frame ]
-- -----------------

local prepare_options_frame = function ()
    local at_text = addonTable.text -- can not use glossary as its not prepared at this moment
    local options_frame = CreateFrame("Frame")
    local f = nil

    -- title

    f = options_frame:CreateFontString()
    f:SetPoint("TOPLEFT", 22, -20)
    f:SetFont(asset_font2_path, 20)
    f:SetText("|cff1177eeClassic|r|cffffdd00UA|r")

    -- version & stats

    f = options_frame:CreateFontString()
    f:SetPoint("TOPRIGHT", -20, -20)
    f:SetFont(asset_font2_path, 12)
    f:SetJustifyH("LEFT")
    local stats = get_stats()
    f:SetText(
        "Версія: " .. GetAddOnMetadata("ClassicUA", "Version") .. "\n"
        .. "— завдань: " .. stats.quest_alliance + stats.quest_horde + stats.quest_both .. "\n"
        .. "— книжок: " .. stats.book .. "\n"
        .. "— локацій: " .. stats.zone .. "\n"
        .. "— персонажів: " .. stats.npc .. "\n"
        .. "— предметів: " .. stats.item .. "\n"
        .. "— об'єктів: " .. stats.object .. "\n"
        .. "— заклять: " .. stats.spell
    )

    -- reload button

    f = CreateFrame("Button", nil, options_frame, "UIPanelButtonTemplate")
    f:SetPoint("TOPRIGHT", -48, -128)
    f:SetText("/reload")
    f:SetSize(88, 20)
    f:SetScript("OnClick", function()
        ReloadUI()
    end)
    f:SetScript("OnEnter", function(self)
        local memory_usage_text = ""
        UpdateAddOnMemoryUsage()
        for i = 1, GetNumAddOns() do
            local name = GetAddOnInfo(i)
            if name == "ClassicUA" then
                local megabytes = GetAddOnMemoryUsage(i) / 1024
                memory_usage_text = string.format("\n\nВикористання пам'яті: %.1f Мб", megabytes)
            end
        end
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText(
            "Перезавантажити інтерфейс гри. Деякі зміни в налаштуваннях будуть помітні лише після такої операції."
            .. memory_usage_text,
            nil, nil, nil, nil, true
        )
    end)
    f:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    -- options.quest_text_size

    f = CreateFrame("Slider", nil, options_frame, "OptionsSliderTemplate")
    options_frame.quest_text_size_frame = f
    f:SetPoint("TOPLEFT", 24, -80)
    f:SetWidth(200)
    f:SetHeight(20)
    f.tooltipText = "Розмір шрифту в вікні завдання."
    f:SetObeyStepOnDrag(true)
    f:SetValueStep(1)
    f:SetMinMaxValues(10, 20)
    f.Low:SetText("10")
    f.High:SetText("20")
    f:SetScript("OnValueChanged", function (self, value)
        self.Text:SetText("Розмір тексту завдання: " .. value)
        options.quest_text_size = value
    end)

    -- options.book_text_size

    f = CreateFrame("Slider", nil, options_frame, "OptionsSliderTemplate")
    options_frame.book_text_size_frame = f
    f:SetPoint("TOPLEFT", 24, -140)
    f:SetWidth(200)
    f:SetHeight(20)
    f.tooltipText = "Розмір шрифту в вікні книжки."
    f:SetObeyStepOnDrag(true)
    f:SetValueStep(1)
    f:SetMinMaxValues(10, 20)
    f.Low:SetText("10")
    f.High:SetText("20")
    f:SetScript("OnValueChanged", function (self, value)
        self.Text:SetText("Розмір тексту книжки: " .. value)
        options.book_text_size = value
    end)

    -- options.debug

    f = CreateFrame("CheckButton", nil, options_frame, "InterfaceOptionsCheckButtonTemplate")
    options_frame.debug_frame = f
    f:SetPoint("TOPLEFT", 280, -78)
    f.Text:SetText("Режим розробки")
    f.tooltipText = "В цьому режимі в підказках відображається ID, якщо переклад відсутній."
    f:SetScript("OnClick", function (self)
        options.debug = self:GetChecked()
    end)

    -- info tabs

    f = CreateFrame("Frame", nil, options_frame, "BackdropTemplate")
    options_frame.info_tab_frame = f
    f:SetPoint("TOPLEFT", 24, -224)
    f:SetSize(600, 340)
    setup_frame_background_and_border(f)
    setup_frame_scrollbar_and_content(f, {
        title = { asset_font1_path, options.quest_text_size + 5 },
        text = { asset_font2_path, options.quest_text_size }
    }, f:GetWidth() - 16)

    options_frame.info_tab_buttons = {}
    for tab_index, tab_data in ipairs({
        -- { tab title, tab content text key }
        { "Оновлення", "addon_changelog" },
        { "Причетні", "addon_contributors" },
    }) do
        f = CreateFrame("Button", nil, options_frame, "UIPanelButtonTemplate")
        table.insert(options_frame.info_tab_buttons, f)
        f.tab_index = tab_index
        f.tab_title = tab_data[1]
        f.tab_text_key = tab_data[2]
        f:SetSize(100, 32)
        f:SetPoint("TOPLEFT", 124 + tab_index * f:GetWidth(), -200)
        f:SetText(f.tab_title)
        f:SetScript("OnClick", function(self)
            if self.tab_index == options_frame.info_tab_frame.current_tab_index then
                return
            end

            for _, f in ipairs(options_frame.info_tab_buttons) do
                if f.tab_index ~= self.tab_index then
                    f:UnlockHighlight()
                end
            end

            set_quest_content(options_frame.info_tab_frame, self.tab_title, at_text[self.tab_text_key])
            options_frame.info_tab_frame.current_tab_index = self.tab_index
            self:LockHighlight()
        end)

        -- preselect 1st tab
        if tab_index == 1 then
            set_quest_content(options_frame.info_tab_frame, f.tab_title, at_text[f.tab_text_key])
            options_frame.info_tab_frame.current_tab_index = 1
            f:LockHighlight()
        end
    end

    -- add options frame to Interface Options -> AddOns

    options_frame.name = "ClassicUA"
    options_frame.default = reset_options
    options_frame.refresh = function ()
        local f = options_frame
        f.quest_text_size_frame:SetValue(options.quest_text_size)
        f.quest_text_size_frame.Text:SetText("Розмір тексту завдання: " .. options.quest_text_size)
        f.book_text_size_frame:SetValue(options.book_text_size)
        f.book_text_size_frame.Text:SetText("Розмір тексту книжки: " .. options.book_text_size)
        f.debug_frame:SetChecked(options.debug)
    end

    InterfaceOptions_AddCategory(options_frame)

    -- add slash command to open the options

    _G.SLASH_CLASSICUA_SETTINGS1 = "/ua"
    SlashCmdList.CLASSICUA_SETTINGS = function ()
        InterfaceOptionsFrame_OpenToCategory(options_frame)
    end
end

-- ----------
-- [ events ]
-- ----------

local event_frame = CreateFrame("Frame")

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
    if event == "ADDON_LOADED" then
        self:UnregisterEvent("ADDON_LOADED")
        prepare_options()
        prepare_options_frame()
        print(
            asset_ua_code
            .. " ClassicUA v" .. GetAddOnMetadata("ClassicUA", "Version")
            .. " — |cffffbb22" .. _G.SLASH_CLASSICUA_SETTINGS1 .. "|r"
        )

    elseif event == "PLAYER_LOGIN" then
        local name = UnitName("player")
        local _, class = UnitClass("player")
        local _, race = UnitRace("player")
        local sex = UnitSex("player")
        local faction = UnitFactionGroup("player")

        prepare_talent_tree(class)
        prepare_quests(faction == "Alliance")
        prepare_glossary()
        prepare_codes(name, race, class, sex == 2) -- 2 for male
        prepare_zone_text()
        prepare_world_map()

    elseif event == "PLAYER_TARGET_CHANGED" then
        update_target_frame_text()

    elseif event == "ITEM_TEXT_BEGIN" then
        if known_tooltips[1].classicua.entry_type == "item" then
            book_item_id = known_tooltips[1].classicua.entry_id
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
