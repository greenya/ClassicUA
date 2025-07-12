local _, addon_table = ...

local utils = addon_table.use("utils") ---@class utils_class

local math_floor            = _G.math.floor
local math_fmod             = _G.math.fmod
local string_byte           = _G.string.byte
local string_gmatch         = _G.string.gmatch
local string_split          = _G.string.split
local string_sub            = _G.string.sub
local string_trim           = _G.string.trim
local table_concat          = _G.table.concat
local C_ChatBubbles         = _G.C_ChatBubbles
local GetMouseFoci          = _G.GetMouseFoci
local GetMouseFocus         = _G.GetMouseFocus
local GetQuestID            = _G.GetQuestID
local GetQuestLogSelectedID = _G.GetQuestLogSelectedID
local UnitGUID              = _G.UnitGUID

utils.prepare = function ()
    local build_version = GetBuildInfo()

    utils.is_classic        = string_byte(build_version, 1) == string_byte("1")
    utils.is_classic_sod    = utils.is_classic and C_Seasons and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery
    utils.is_tbc            = string_byte(build_version, 1) == string_byte("2")
    utils.is_wrath          = string_byte(build_version, 1) == string_byte("3")
    utils.is_cata           = string_byte(build_version, 1) == string_byte("4")
    utils.is_mists          = string_byte(build_version, 1) == string_byte("5")

    if     utils.is_classic then utils.expansion_key = utils.is_classic_sod and "sod" or "classic"
    elseif utils.is_tbc     then utils.expansion_key = "tbc"
    elseif utils.is_wrath   then utils.expansion_key = "wrath"
    elseif utils.is_cata    then utils.expansion_key = "cata"
    elseif utils.is_mists   then utils.expansion_key = "mists"
    else                         utils.expansion_key = "???" end
end

utils.dump = function (value)
    if type(_G.DevTools_Dump) == "function" then
        _G.DevTools_Dump(value)
    else
        print("[dump]", value)
    end
end

utils.copy_table = function (target, source)
    for k, v in pairs(source) do target[k] = v end
    return target
end

utils.table_string_keys = function (tbl)
    local result = {}
    for k, _ in pairs(tbl) do
        if type(k) == "string" then
            result[#result + 1] = k
        end
    end
    return result
end

utils.table_keys_count = function (tbl)
    local count = 0
    for _ in pairs(tbl) do count = count + 1 end
    return count
end

utils.table_sync_keys = function (target_table, blueprint_table)
    -- clean up unknown/deprecated keys
    for k, _ in pairs(target_table) do
        if blueprint_table[k] == nil then
            target_table[k] = nil
        end
    end

    -- add brand new keys with default values
    for k, _ in pairs(blueprint_table) do
        if target_table[k] == nil then
            target_table[k] = blueprint_table[k]
        end
    end
end

utils.cap = function (text)
    local b1 = string_byte(text, 1)
    if b1 >= 208 and b1 <= 210 then -- this is utf8 character, 2 bytes long
        local b2 = string_byte(text, 2)
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

utils.upper = function (str)
    return str:upper():gsub("ї", "Ї"):gsub("є", "Є"):gsub("і", "І"):gsub("ґ", "Ґ")
end

utils.lower = function (str)
    return str:lower():gsub("Ї", "ї"):gsub("Є", "є"):gsub("І", "і"):gsub("Ґ", "ґ")
end

utils.esc = function (x) -- https://stackoverflow.com/questions/9790688/escaping-strings-for-gsub
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

-- [!] Any changes made to string_hash() func must be kept in sync with Python impl
utils.string_hash = function (text) -- https://wowwiki-archive.fandom.com/wiki/USERAPI_StringHash
    if type(text) ~= "string" or text == "" then
        return 0
    end

    local counter = 1
    local len = #text
    for i = 1, len, 3 do
        counter = math_fmod(counter * 8161, 4294967279) +
            (string_byte(text, i) * 16776193) +
            ((string_byte(text, i+1) or (len - i + 256)) * 8372226) +
            ((string_byte(text, i+2) or (len - i + 256)) * 3932164)
    end

    return math_fmod(counter, 4294967291)
end

utils.fix_float_number = function (value)
    local result = value:gsub(",", "")
    -- fix floating-point number without leading "0", e.g. ",2"
    if #result > 1 and result:sub(1, 1) == "," then
        result = "0" .. result
    end
    return result
end

utils.strip_color_codes = function (text)
    if type(text) == "string" then
        text = text:gsub("|c%x%x%x%x%x%x%x%x", "")
        text = text:gsub("|c%x%x%x%x%x%x %x", "")
        text = text:gsub("|r", "")
    end
    return text
end

utils.first_line_only = function (text)
    if type(text) == "string" then
        local lines = { string_split("\n\r", text) }
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

utils.tooltip_lines = function (tooltip, is_right)
    local lines = {}
    for j = 1, tooltip:NumLines() do
        local k = tooltip:GetName() .. (is_right and "TextRight" or "TextLeft") .. j
        lines[#lines + 1] = _G[k]:GetText()
    end
    return lines
end

utils.tooltip_title_line = function (tooltip)
    local num_lines = tooltip:NumLines()
    if num_lines == 0 then
        return ""
    end

    local text = _G[tooltip:GetName() .. "TextLeft1"]:GetText()

    -- check special case for item tooltip when showing currently equipped
    if text == CURRENTLY_EQUIPPED and num_lines > 1 then
        text = _G[tooltip:GetName() .. "TextLeft2"]:GetText()
    end

    return text
end

utils.chat_bubble_font_string_with_text = function (text)
    local bubbles = C_ChatBubbles:GetAllChatBubbles()
    for _, bubble in pairs(bubbles) do
        if not bubble:IsForbidden() then
            local frame = select(1, bubble:GetChildren())
            for i = 1, frame:GetNumRegions() do
                local region = select(i, frame:GetRegions())
                if region:GetObjectType() == "FontString" and region:GetText() == text then
                    return region
                end
            end
        end
    end
end

-- unit_id is one of https://warcraft.wiki.gg/wiki/UnitId
utils.npc_id_from_unit_id = function (unit_id)
    if type(unit_id) == "string" then
        local guid = UnitGUID(unit_id)
        if guid then
            local kind, _, _, _, _, id, _ = string_split("-", guid)
            if id and (kind == "Creature" or kind == "Vehicle") then
                return tonumber(id)
            end
        end
    end
end

-- returns 0 in case no quest (no npc quest and quest log is empty)
utils.get_currently_viewed_quest_id = function ()
    local npc_quest_id = GetQuestID()
    if npc_quest_id and npc_quest_id > 0 then
        return npc_quest_id
    end

    local questlog_quest_id = GetQuestLogSelectedID()
    if questlog_quest_id and questlog_quest_id > 0 then
        return questlog_quest_id
    end

    return 0
end

-- returns 0 in case no book (item text) is opened at the moment
utils.get_currently_viewed_book_id = function ()
    local meta = ItemTextFrame.classicua or {}
    return meta.entry_type == "item" and meta.entry_id or 0
end

utils.mouse_hover_frame = function ()
    if GetMouseFocus then
        return GetMouseFocus()
    elseif GetMouseFoci then
        return GetMouseFoci()[1]
    end
end

utils.update_item_text_scrollbar = function ()
    local sf, sb = ItemTextScrollFrame, ItemTextScrollFrameScrollBar
    if not sf or not sb then return end

    sf.scrollBarHideable = false
    sf:GetScrollChild():SetHeight(1)
    sf:UpdateScrollChildRect()
    if math_floor(sf:GetVerticalScrollRange()) > 0 then
        sf:GetScrollChild():SetHeight(sf:GetHeight() + sf:GetVerticalScrollRange() + 30)
    end

    sb:SetValue(0)
end

utils.get_match_list_of_equal_meaning_english_texts_for_phrase = function (phrase)
    if type(phrase) ~= "string" or phrase == "" then
        return {}
    end

    -- input: "Bank" or "The bank" or "A bank." etc., all such cases will same output
    -- output: "bank", "a bank", "an bank", "the bank", "bank.", "a bank.", "an bank.", "the bank."
    -- note: "an bank" and "an bank." are incorrect, but will be returned (keep in mind)

    local phrase_lower = string_trim(phrase:lower())
    local phrase_lower_clean = phrase_lower

    -- remove ending "." if needed
    if phrase_lower_clean:find("%.$") then
        phrase_lower_clean = phrase_lower_clean:sub(1, #phrase_lower_clean - 1)
    end

    local known_prefixes = { "the ", "a ", "an " }

    -- extract "bank"
    for _, p in ipairs(known_prefixes) do
        if phrase_lower:find("^" .. p) then
            phrase_lower_clean = phrase_lower:sub(#p + 1)
            break
        end
    end

    -- generate all combinations
    local result = { phrase_lower_clean, phrase_lower_clean .. "." }
    for _, p in ipairs(known_prefixes) do
        result[#result + 1] = p .. phrase_lower_clean
        result[#result + 1] = p .. phrase_lower_clean .. "."
    end

    return result
end

-- [!] Any changes made to get_text_hash() func must be kept in sync with Python impl
utils.get_text_hash = function (text)
    return type(text) == "string" and utils.string_hash(utils.lower(string_trim(text))) or 0
end

local known_gossip_dynamic_seq_with_multiple_words_for_get_text_code = {
    {"night elf", "nightelf"},
    {"blood elf", "bloodelf"},
    {"death knight", "deathknight"},
    {"demon hunter", "demonhunter"},
    {"void elf", "voidelf"},
    {"lightforged draenei", "lightforgeddraenei"},
    {"dark iron dwarf", "darkirondwarf"},
    {"kul tiran", "kultiran"},
    {"highmountain tauren", "highmountaintauren"},
    {"mag'har orc", "magharorc"},
    {"zandalari troll", "zandalaritroll"},
}
-- [!] Any changes made to get_text_code() func must be kept in sync with Python impl in utils.py
utils.get_text_code = function (text)
    local text_low_case = text:lower()
    local seq_pairs = known_gossip_dynamic_seq_with_multiple_words_for_get_text_code
    for i = 1, #seq_pairs do
        text_low_case = text_low_case:gsub(seq_pairs[i][1], seq_pairs[i][2])
    end
    local result = {}
    for word in string_gmatch(text_low_case, [===[%w[%w%-']*%w]===]) do
        if #word > 0 then
            result[#result+1] = word:sub(1, 1)
            result[#result+1] = word:sub(-1)
        end
    end

    return table_concat(result)
end

utils.match_text_code = function (code, candidates)
    for _, candidate in ipairs(candidates) do
        if code:match('^'..candidate..'.*$') then
            return candidate
        end
    end
    return false
end
