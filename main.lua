local _, addonTable = ...

-- -----------
-- [ globals ]
-- -----------

local hooksecurefunc    = _G['hooksecurefunc']
local sort              = _G['sort']
local strbyte           = _G['strbyte']
local strsplit          = _G['strsplit']
local strtrim           = _G['strtrim']

local C_ChatBubbles             = _G['C_ChatBubbles']
local C_GossipInfo              = _G['C_GossipInfo']
local C_Seasons                 = _G['C_Seasons']
local C_Timer                   = _G['C_Timer']
local ChatFrame_AddMessageEventFilter = _G['ChatFrame_AddMessageEventFilter']
local ChatTypeInfo              = _G['ChatTypeInfo']
local CreateFrame               = _G['CreateFrame']
local DEFAULT_CHAT_FRAME        = _G['DEFAULT_CHAT_FRAME']
local DevTools_Dump             = _G['DevTools_Dump']
local Enum                      = _G['Enum']
local GameTooltip               = _G['GameTooltip']
local GetAddOnInfo              = _G['GetAddOnInfo']
local GetAddOnMemoryUsage       = _G['GetAddOnMemoryUsage']
local GetAddOnMetadata          = _G['GetAddOnMetadata']
local GetBuildInfo              = _G['GetBuildInfo']
local GetMouseFoci              = _G['GetMouseFoci']
local GetMouseFocus             = _G['GetMouseFocus']
local GetNumAddOns              = _G['GetNumAddOns']
local GetQuestID                = _G['GetQuestID']
local GetQuestLogSelection      = _G['GetQuestLogSelection']
local GetQuestLogTitle          = _G['GetQuestLogTitle']
local GetTalentInfo             = _G['GetTalentInfo']
local GossipFrame               = _G['GossipFrame']
local InterfaceAddOnsList_Update = _G['InterfaceAddOnsList_Update']
local InterfaceOptions_AddCategory = _G['InterfaceOptions_AddCategory']
local InterfaceOptionsFrame_OpenToCategory = _G['InterfaceOptionsFrame_OpenToCategory']
local ItemRefTooltip            = _G['ItemRefTooltip']
local ItemTextGetPage           = _G['ItemTextGetPage']
local ItemTextGetText           = _G['ItemTextGetText']
local ItemTextScrollFrame       = _G['ItemTextScrollFrame']
local MinimapZoneText           = _G['MinimapZoneText']
local PVPArenaTextString        = _G['PVPArenaTextString']
local PVPInfoTextString         = _G['PVPInfoTextString']
local QuestFrame                = _G['QuestFrame']
local QuestFrameDetailPanel     = _G['QuestFrameDetailPanel']
local QuestFrameProgressPanel   = _G['QuestFrameProgressPanel']
local QuestFrameRewardPanel     = _G['QuestFrameRewardPanel']
local QuestLogDetailScrollFrame = _G['QuestLogDetailScrollFrame']
local TargetFrame               = _G['TargetFrame']
local UnitAura                  = _G['UnitAura']
local UnitClass                 = _G['UnitClass']
local UnitFactionGroup          = _G['UnitFactionGroup']
local UnitGUID                  = _G['UnitGUID']
local UnitName                  = _G['UnitName']
local UnitRace                  = _G['UnitRace']
local UnitSex                   = _G['UnitSex']
local UpdateAddOnMemoryUsage    = _G['UpdateAddOnMemoryUsage']
local ReloadUI                  = _G['ReloadUI']
local Settings                  = _G['Settings']
local ShoppingTooltip1          = _G['ShoppingTooltip1']
local ShoppingTooltip2          = _G['ShoppingTooltip2']
local ShouldShowName            = _G['ShouldShowName']
local SlashCmdList              = _G['SlashCmdList']
local StaticPopup_Show          = _G['StaticPopup_Show']
local StaticPopupDialogs        = _G['StaticPopupDialogs']
local SubZoneTextString         = _G['SubZoneTextString']
local WorldMapTooltip           = _G['WorldMapTooltip']
local WorldFrame                = _G['WorldFrame']
local WorldMapFrame             = _G['WorldMapFrame']
local ZoneTextString            = _G['ZoneTextString']

local build_info = GetBuildInfo()
local is_classic = strbyte(build_info, 1) == 49
local is_classic_sod = is_classic and C_Seasons and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery
local is_tbc = strbyte(build_info, 1) == 50
local is_wrath = strbyte(build_info, 1) == 51
local is_cata = strbyte(build_info, 1) == 52

local asset_ua_code = "|TInterface\\AddOns\\ClassicUA\\assets\\ua:0|t"
local asset_font1_path = "Interface\\AddOns\\ClassicUA\\assets\\Morpheus_UA.ttf"
local asset_font2_path = "Interface\\AddOns\\ClassicUA\\assets\\FRIZQT_UA.ttf"

---@class options_class
local options = nil

---@class Frame
local options_frame = nil

-- ---------
-- [ utils ]
-- ---------

local function game_expansion_key()
    if is_classic then
        return is_classic_sod and "sod" or "classic"
    elseif is_tbc then
        return "tbc"
    elseif is_wrath then
        return "wrath"
    elseif is_cata then
        return "cata"
    else
        return "???"
    end
end

local function dump(value)
    if type(DevTools_Dump) == "function" then
        DevTools_Dump(value)
    else
        print("[dump]", value)
    end
end

local function copy_table(target, source)
    for k, v in pairs(source) do target[k] = v end
    return target
end

local function table_string_keys(table)
    local result = {}
    for k, _ in pairs(table) do
        if type(k) == "string" then
            result[#result + 1] = k
        end
    end
    return result
end

local function table_keys_count(table)
    local count = 0
    for _ in pairs(table) do count = count + 1 end
    return count
end

local function capitalize(text)
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

local function upper(str)
    return str:upper():gsub("ї", "Ї"):gsub("є", "Є"):gsub("і", "І"):gsub("ґ", "Ґ")
end

local function lower(str)
    return str:lower():gsub("Ї", "ї"):gsub("Є", "є"):gsub("І", "і"):gsub("Ґ", "ґ")
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

local function fix_float_number(value)
    local result = value:gsub(",", "")
    -- fix floating-point number without leading "0", e.g. ",2"
    if #result > 1 and result:sub(1, 1) == "," then
        result = "0" .. result
    end
    return result
end

local function strip_color_codes(text)
    if type(text) == "string" then
        text = text:gsub("|c%x%x%x%x%x%x%x%x", "")
        text = text:gsub("|c%x%x%x%x%x%x %x", "")
        text = text:gsub("|r", "")
    end

    return text
end

local function first_line_only(text)
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

local function tooltip_lines(tooltip, is_right)
    local lines = {}
    for j = 1, tooltip:NumLines() do
        local k = tooltip:GetName() .. (is_right and "TextRight" or "TextLeft") .. j
        lines[#lines + 1] = _G[k]:GetText()
    end
    return lines
end

local function tooltip_title_line(tooltip)
    local num_lines = tooltip:NumLines()
    if num_lines == 0 then
        return ""
    end

    local text = _G[tooltip:GetName() .. "TextLeft1"]:GetText()

    -- check special case for item tooltip when showing currently equipped
    if text == "Currently Equipped" and num_lines > 1 then
        text = _G[tooltip:GetName() .. "TextLeft2"]:GetText()
    end

    return text
end

-- unit_id is one of https://warcraft.wiki.gg/wiki/UnitId
local function npc_id_from_unit_id(unit_id)
    if type(unit_id) == "string" then
        local guid = UnitGUID(unit_id)
        if guid then
            local kind, _, _, _, _, id, _ = strsplit("-", guid)
            if id and (kind == "Creature" or kind == "Vehicle") then
                return tonumber(id)
            end
        end
    end
end

local function chat_bubble_font_string_with_text(text)
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

local function mouse_hover_frame()
    if GetMouseFocus then
        return GetMouseFocus()
    elseif GetMouseFoci then
        return GetMouseFoci()[1]
    end
end

local get_text_code_replace_seq = {}

local function prepare_get_text_code_replace_seq(player_name)
    local at = addonTable
    local rs = get_text_code_replace_seq

    -- player races
    rs[#rs + 1] = "<race>"
    for _, w in ipairs(table_string_keys(at.race)) do
        rs[#rs + 1] = w:lower()
    end

    -- player classes
    rs[#rs + 1] = "<class>"
    for _, w in ipairs(table_string_keys(at.class)) do
        rs[#rs + 1] = w:lower()
    end

    -- player name
    rs[#rs + 1] = "<name>"
    rs[#rs + 1] = player_name:lower()
end

-- [!] Any changes made to get_text_code() func must be kept in sync with Python impl in utils.py
local function get_text_code(text)
    local result = { "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_", "_" }
    local result_len = #result
    text = text:lower()

    for _, w in ipairs(get_text_code_replace_seq) do
        text = text:gsub(w, "")
    end

    local result_fill_idx = 1
    for word in string.gmatch(text, "%w+") do
        if #word > 0 then
            if result_fill_idx > result_len then
                break
            end

            for i = 1, #word do
                result[result_fill_idx] = string.sub(word, i, i)
                result_fill_idx = result_fill_idx + 1
                if result_fill_idx > result_len then
                    break
                end
            end
        end
    end

    local result_idx = 1
    local result_rewind = 1
    for word in string.gmatch(text, "%w+") do
        if #word > 0 then
            result[result_idx] = string.sub(word, 1, 1)
            result_idx = result_idx + 1
            if result_idx > result_len then
                result_rewind = result_rewind < result_len and result_rewind + 1 or result_len - 3
                result_idx = result_rewind
            end
        end
    end

    return table.concat(result)
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
local function get_text_code_for_chat(text)
    local text_low_case = text:lower()
    local seq_pairs = known_gossip_dynamic_seq_with_multiple_words_for_get_text_code
    for i = 1, #seq_pairs do
        text_low_case = text_low_case:gsub(seq_pairs[i][1], seq_pairs[i][2])
    end
    local result = {}
    for word in string.gmatch(text_low_case, "%w+") do
        if #word > 0 then
            result[#result+1] = word:sub(1, 1)
            result[#result+1] = word:sub(-1)
        end
    end

    return table.concat(result)
end

local function fuzzy_match_text_code(code, candidates, minimum_match_ratio)
    if not minimum_match_ratio then
        minimum_match_ratio = 0.5
    end

    local best_match = false
    local best_match_ratio = 0.0

    for i = 1, #candidates do
        local matches = 0

        if #code == #candidates[i] then
            for j = 1, #candidates[i] do
                if string.sub(code, j, j) == string.sub(candidates[i], j, j) then
                    matches = matches + 1
                end
            end
        end

        local ratio = matches/#code
        if ratio >= minimum_match_ratio and ratio > best_match_ratio then
            best_match = candidates[i]
            best_match_ratio = ratio
        end
    end

    return best_match
end

local function match_text_code(code, candidates)
    for _, candidate in ipairs(candidates) do
        if code:match('^'..candidate..'$') then
            return candidate
        end
    end
    return false
end

-- -----------
-- [ dev log ]
-- -----------

---@class dev_log_class
local dev_log = nil
local default_dev_log = {
    addon_version = "???",
    game_version = "???",
    game_expansion = "???",
    missing_quests = {},
    missing_npcs = {},
    missing_items = {},
    missing_spells = {},
    missing_books = {},
    missing_gossips = {},
    missing_chats = {},
    missing_zones = {},
    missing_objects = {},
    missing_sod_engravings = {},
    issues = {}
}

local function dev_log_print(text)
    DEFAULT_CHAT_FRAME:AddMessage(asset_ua_code .. " |cff4488aa[Розробка] " .. text .. "|r")
end

local function dev_log_init()
    dev_log.addon_version = GetAddOnMetadata("ClassicUA", "Version")
    dev_log.game_version = build_info
    dev_log.game_expansion = game_expansion_key()

    if not dev_log.missing_quests           then dev_log.missing_quests = {} end
    if not dev_log.missing_npcs             then dev_log.missing_npcs = {} end
    if not dev_log.missing_items            then dev_log.missing_items = {} end
    if not dev_log.missing_spells           then dev_log.missing_spells = {} end
    if not dev_log.missing_books            then dev_log.missing_books = {} end
    if not dev_log.missing_gossips          then dev_log.missing_gossips = {} end
    if not dev_log.missing_chats            then dev_log.missing_chats = {} end
    if not dev_log.missing_zones            then dev_log.missing_zones = {} end
    if not dev_log.missing_objects          then dev_log.missing_objects = {} end
    if not dev_log.missing_sod_engravings   then dev_log.missing_sod_engravings = {} end
    if not dev_log.issues                   then dev_log.issues = {} end
end

local function dev_log_print_stats()
    dev_log_print("-------- Статистика накопичених даних --------")
    dev_log_print("Відсутні завдання: "     .. table_keys_count(dev_log.missing_quests))
    dev_log_print("Відсутні персонажі: "    .. table_keys_count(dev_log.missing_npcs))
    dev_log_print("Відсутні предмети: "     .. table_keys_count(dev_log.missing_items))
    dev_log_print("Відсутні закляття: "     .. table_keys_count(dev_log.missing_spells))
    dev_log_print("Відсутні книжки: "       .. table_keys_count(dev_log.missing_books))
    dev_log_print("Відсутні плітки: "       .. table_keys_count(dev_log.missing_gossips))
    dev_log_print("Відсутні чати: "         .. table_keys_count(dev_log.missing_chats))
    dev_log_print("Відсутні зони: "         .. table_keys_count(dev_log.missing_zones))
    dev_log_print("Відсутні об'єкти: "      .. table_keys_count(dev_log.missing_objects))
    if is_classic_sod then
        dev_log_print("Відсутні SOD гравіювання: " .. table_keys_count(dev_log.missing_sod_engravings))
    end
    dev_log_print("Помилки: "               .. table_keys_count(dev_log.issues))
    dev_log_print("----------------------------------------------")
end

local function dev_log_reset()
    ClassicUA_DevLog = copy_table({}, default_dev_log)
    dev_log = ClassicUA_DevLog
    dev_log_init()
    dev_log_print("Всі накопичені дані скинуто.")
end

local function dev_log_issue(key, data)
    if not options.dev_mode or dev_log.issues[key] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Помилка: " .. key)
    end

    dev_log.issues[key] = data and data or true
end

local function dev_log_issue_entry(entry_type, entry_id, key, data)
    dev_log_issue(entry_type .. "#" .. tostring(entry_id) .. ": " .. key, data)
end

local function dev_log_missing_quest(quest_id)
    quest_id = tonumber(quest_id)
    if not quest_id then
        return
    end

    if dev_log.missing_quests[quest_id] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Відсутнє завдання #" .. tostring(quest_id))
    end

    dev_log.missing_quests[quest_id] = true
end

local function dev_log_missing_npc(npc_id, npc_name)
    npc_id = tonumber(npc_id)
    if not npc_id then
        return
    end

    if dev_log.missing_npcs[npc_id] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Відсутній персонаж #" .. tostring(npc_id) .. " " .. npc_name)
    end

    dev_log.missing_npcs[npc_id] = npc_name
end

local function dev_log_missing_item(item_id, item_name)
    item_id = tonumber(item_id)
    if not item_id then
        return
    end

    if dev_log.missing_items[item_id] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Відсутній предмет #" .. tostring(item_id) .. " " .. item_name)
    end

    dev_log.missing_items[item_id] = item_name
end

local function dev_log_missing_spell(spell_id, spell_name)
    spell_id = tonumber(spell_id)
    if not spell_id then
        return
    end

    if dev_log.missing_spells[spell_id] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Відсутнє закляття #" .. tostring(spell_id) .. " " .. spell_name)
    end

    dev_log.missing_spells[spell_id] = spell_name
end

local function dev_log_missing_sod_engraving(sod_engraving_id, sod_engraving_name)
    sod_engraving_id = tonumber(sod_engraving_id)
    if not sod_engraving_id then
        return
    end

    if dev_log.missing_sod_engravings[sod_engraving_id] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Відсутнє SOD гравіювання #" .. tostring(sod_engraving_id) .. " " .. sod_engraving_name)
    end

    dev_log.missing_sod_engravings[sod_engraving_id] = sod_engraving_name
end

local function dev_log_missing_book_page(book_id, page_number, page_text)
    book_id = tonumber(book_id)
    if not book_id then
        return
    end

    if not dev_log.missing_books[book_id] then
        dev_log.missing_books[book_id] = {}
    end

    local page_number_text = tostring(page_number)
    local page_key = "page_" .. page_number_text

    if dev_log.missing_books[book_id][page_key] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Відсутня сторінка " .. page_number_text .. " книги #" .. book_id)
    end

    dev_log.missing_books[book_id][page_key] = page_text
end

local function dev_log_missing_gossip(npc_id, gossip_code, gossip_text_en)
    npc_id = tonumber(npc_id)
    if not npc_id then
        return
    end

    if not dev_log.missing_gossips[npc_id] then
        dev_log.missing_gossips[npc_id] = {}
    end

    if dev_log.missing_gossips[npc_id][gossip_code] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Відсутня плітка \"" .. gossip_code .. "\" для персонажа #" .. npc_id)
    end

    dev_log.missing_gossips[npc_id][gossip_code] = gossip_text_en
end

local function dev_log_missing_chat_text(npc_name, chat_text_code, chat_text_en)
    if not dev_log.missing_chats[npc_name] then
        dev_log.missing_chats[npc_name] = {}
    end

    if dev_log.missing_chats[npc_name][chat_text_code] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Відсутній чат \"" .. chat_text_code .. "\" для " .. npc_name)
    end

    dev_log.missing_chats[npc_name][chat_text_code] = chat_text_en
end

local function dev_log_missing_zone(zone_name)
    if not string.match(zone_name, "%w") then
        -- skip non-English zone name
        return
    end

    if dev_log.missing_zones[zone_name] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Відсутня зона \"" .. zone_name .. "\"")
    end

    dev_log.missing_zones[zone_name] = true
end

local function dev_log_missing_object(object_name)
    if dev_log.missing_objects[object_name] then
        return
    end

    if options.dev_mode_notify_activity then
        dev_log_print("Відсутній об'єкт \"" .. object_name .. "\"")
    end

    dev_log.missing_objects[object_name] = true
end

-- -----------
-- [ options ]
-- -----------

local default_options = {
    dev_mode = false,
    dev_mode_notify_activity = false,
    quest_text_size = 13,
    book_text_size = 15
}

---@class character_options_class
---@field name_cases table
local character_options = nil
local default_character_options = {
    name_cases = {}
}

local function prepare_options()
    ClassicUA_Options = ClassicUA_Options or copy_table({}, default_options)
    options = ClassicUA_Options

    ClassicUA_Character_Options = ClassicUA_Character_Options or copy_table({}, default_character_options)
    character_options = ClassicUA_Character_Options

    ClassicUA_DevLog = ClassicUA_DevLog or copy_table({}, default_dev_log)
    dev_log = ClassicUA_DevLog
    dev_log_init()

    -- clean up unknown/deprecated keys
    for _, v in pairs({
        { options, default_options },
        { character_options, default_character_options },
        { dev_log, default_dev_log },
    }) do
        for k, _ in pairs(v[1]) do
            if v[2][k] == nil then
                v[1][k] = nil
            end
        end
    end
end

local function reset_options()
    ClassicUA_Options = copy_table({}, default_options)
    options = ClassicUA_Options

    if options_frame then
        options_frame.refresh()
    end
end

-- -----------
-- [ entries ]
-- -----------

local function get_stats()
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

local function prepare_talent_tree(class)
    -- keep only player class tree
    addonTable.talent_tree = addonTable.talent_tree[class]
end

local function prepare_quests(is_alliance)
    -- init faction quests reference
    addonTable.quest_faction = is_alliance and addonTable.quest_alliance or addonTable.quest_horde
    -- drop opposite faction quests
    addonTable[ is_alliance and "quest_horde" or "quest_alliance" ] = nil
end

local function prepare_glossary()
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

local function prepare_codes(name, race, class, is_male)
    local at = addonTable
    local sex = is_male and 1 or 2
    local cases = { "н", "р", "д", "з", "о", "м", "к" }
    local name_cases = character_options.name_cases
    local codes = {}
    local race_lower = race:lower()

    -- name

    for _, c in ipairs(cases) do
        local t = name_cases[c] or ""
        if t == "" then
            t = name_cases["н"] or ""
            if t == "" then
                t = name
            end
        end

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

    if not at.race[race_lower] then
        -- use some default value in case race is unknown/unsupported
        race = "Human"
    end

    for _, c in ipairs(cases) do
        local t = at.race[race_lower][c][sex]
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

    if not at.class[class] then
        -- use some default value in case class is unknown/unsupported
        class = "WARRIOR"
    end

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

local function make_text(text)
    if not text then
        return nil
    end

    for k, v in pairs(addonTable.codes) do
        text = text:gsub(k, v)
    end

    return text
end

local function make_text_array(array)
    if not array then
        return nil
    end

    local result = {}
    for i = 1, #array do
        result[i] = make_text(array[i])
    end

    return result
end

local function make_chat_text(original, translation)
    local known_templates = { ["name"] = true, ["race"] = true, ["class"] = true, ["target"] = true }
    local at = addonTable
    local sex = UnitSex("player") == 2 and 1 or 2  -- UnitSex("player") == 2 - male

    if not translation then
        return nil
    end

    local translation_split = { strsplit("#", translation) }
    if #translation_split == 1 then
        return translation_split[1]
    end

    translation = translation_split[1]
    local text_templates = {}
    for i = 2, #translation_split do
        local template = translation_split[i]
        -- TODO: Instead of one-placeholder-per-template remember placeholders types, allowing to have few placeholders in one template
        local template_type = template:match("<(.+)>")
        if known_templates[template_type] then
            text_templates[template_type] = template
        elseif template_type:match("/") then
            local match_male, match_female = template_type:match("^(%w+)/(%w+)$")
            if original:match(template:gsub("<"..template_type..">", match_male)) then
                sex = 1
            elseif original:match(template:gsub("<"..template_type..">", match_female)) then
                sex = 2
            else
                error("Error. Unknown sex.")
            end
        else
            error("Error. Unknown template type: " .. tostring(template_type))
        end
    end

    local template_matches = {}
    for template_type, template in pairs(text_templates) do
        local template_expression = esc(template):gsub("<" .. template_type .. ">", "(.-)")
        local match = original:match(template_expression)
        template_matches[template_type] = match
    end

    for pattern_uk in translation:gmatch("{(.-)}") do
        local pattern_uk_split = { strsplit(":", pattern_uk) }
        local pattern_uk_type = pattern_uk_split[1]
        local case = pattern_uk_split[2] or "н"
        pattern_uk = "{" .. pattern_uk .. "}"

        if lower(pattern_uk_type) == "ім'я" then
            local name_en = template_matches["name"]
            local name_uk
            if name_en == UnitName("player") then
                name_uk = character_options.name_cases and character_options.name_cases[case] or name_en
            else
                name_uk = name_en
            end
            name_uk = name_uk and pattern_uk_type == "Ім'я" and capitalize(name_uk) or name_uk  -- TODO: check these operators and maybe optimize their usage
            name_uk = name_uk and pattern_uk_type == "ІМ'Я" and upper(name_uk) or name_uk
            translation = translation:gsub(pattern_uk, name_uk)
        end

        if pattern_uk_type:lower() == "раса" then
            local race_en = template_matches["race"]
            local race_key = race_en:lower():gsub(" ", "")
            if race_key == "scourge" then
                -- Player's race called "scourge", but NPCs call them "undead"
                race_key = "undead"
            end
            local race_uk = at.race[race_key] and at.race[race_key][case][sex]
            race_uk = race_uk and pattern_uk_type == "Раса" and capitalize(race_uk) or race_uk
            race_uk = race_uk and pattern_uk_type == "РАСА" and upper(race_uk) or race_uk
            translation = translation:gsub(pattern_uk, race_uk or race_en)
        end

        if pattern_uk_type:lower() == "клас" then
            local class_en = template_matches["class"]
            local class_key = class_en:upper():gsub(" ", "")
            local class_uk = at.class[class_key] and at.class[class_key][case][sex]
            class_uk = class_uk and pattern_uk_type == "Клас" and capitalize(class_uk) or class_uk
            class_uk = class_uk and pattern_uk_type == "КЛАС" and upper(class_uk) or class_uk
            translation = translation:gsub(pattern_uk, class_uk or class_en)
        end

        if lower(pattern_uk_type) == "ціль" then
            local target_en = template_matches["target"]
            local target_uk
            if target_en == UnitName("player") then
                target_uk = character_options.name_cases and character_options.name_cases[case]
            elseif at.class[target_en:upper():gsub(" ", "")] then
                target_uk = at.class[target_en:upper():gsub(" ", "")][case][sex]
            elseif at.race[target_en:lower():gsub(" ", "")] then
                local race_key = target_en:lower():gsub(" ", "")
                if race_key == "scourge" then
                    race_key = "undead"
                end
                target_uk = at.race[race_key][case][sex]
            elseif at.glossary[target_en:lower()] then
                target_uk = at.glossary[target_en:lower()]
            end
            target_uk = target_uk and pattern_uk_type == "Ціль" and capitalize(target_uk) or target_uk
            target_uk = target_uk and pattern_uk_type == "ЦІЛЬ" and upper(target_uk) or target_uk
            translation = translation:gsub(pattern_uk, target_uk or target_en)
        end

        if pattern_uk_type:lower() == "стать" then
            translation = translation:gsub(pattern_uk, pattern_uk_split[sex+1])
        end

    end

    return translation
end

local function safe_make_chat_text(original, translation)
    local success, result = pcall(make_chat_text, original, translation)

    if success then
        return result
    else
        dev_log_issue("Помилка перекладу чату \"" .. tostring(original) .. "\"", tostring(result))
        return original
    end
end

local function resolve_entry_with_possible_ref(entry_type, entry_id, depth)
    depth = depth or 1
    if depth > 4 then
        if options.dev_mode then
            dev_log_issue_entry(entry_type, entry_id, "переповнення глибини пошуку ref")
        end
        return
    end

    if not entry_type or not entry_id then
        return
    end

    local at = addonTable

    if not at[entry_type] then
        if options.dev_mode then
            dev_log_issue_entry(entry_type, entry_id, "невірний тип запису \"" .. entry_type .. "\"")
        end
        return
    end

    local entry = at[entry_type][entry_id]

    if entry and entry.ref then
        if entry_type == "spell" or entry_type == "item" then
            local entry_ref = resolve_entry_with_possible_ref(entry_type, entry.ref, depth + 1)
            if entry_ref then
                return copy_table(copy_table({}, entry_ref), entry)
            elseif options.dev_mode then
                dev_log_issue_entry(entry_type, entry_id, "невірне значення ref для " .. entry_type .. '#' .. tostring(entry_ref))
                return copy_table({ entry_type .. "#" .. entry_id .. "=>#" .. entry.ref }, entry)
            end
        elseif options.dev_mode then
            dev_log_issue_entry(entry_type, entry_id, "невірне використання ref; дозволено лише для типів запису spell та item")
        end
    end

    return entry
end

local function get_entry(entry_type, entry_id)
    if not entry_type or not entry_id then
        return
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
        elseif options.dev_mode then
            dev_log_missing_quest(entry_id)
        end

        return
    end

    if entry_type == "book" then
        local book = at.book[entry_id]

        if book then
            return make_text_array(book)
        elseif options.dev_mode and entry_id ~= 8383 then -- #8383 is a saved letter inventory item
            dev_log_missing_book_page(entry_id, ItemTextGetPage(), ItemTextGetText())
        end

        return
    end

    return resolve_entry_with_possible_ref(entry_type, entry_id)
end

local function resolve_optional_entry_text(text, tt_lines, tooltip_matches_to_skip)
    return text:gsub("%[(.-)#(.-)%]", function(translation, condition)
        local pattern = esc(condition):gsub("{(%d+)}", function () return "([%d,\.]*%d)" end)
        local match_number = 0
        local values = {}
        for j = 1, #tt_lines do
            local matches = { tt_lines[j]:match(pattern) }
            if #matches > 0 then
                match_number = match_number + 1
                if match_number > tooltip_matches_to_skip then
                    if #matches == 1 and matches[1] == pattern then
                        return translation
                    end
                    if #matches > 0 then
                        for k = 1, #matches do
                            values[#values + 1] = fix_float_number(matches[k])
                        end
                        return translation:gsub("{(%d+)}", function (a) return values[tonumber(a)] end)
                    end
                end
            end
        end
        return ""
    end)
end

local function make_entry_text(text, tooltip, tooltip_matches_to_skip)
    if not text then
        return
    end
    if not text:find("#") or not tooltip then
        return text
    end

    if not tooltip_matches_to_skip then
        tooltip_matches_to_skip = 0
    end
    local tt_lines = tooltip_lines(tooltip)

    text = resolve_optional_entry_text(text, tt_lines, tooltip_matches_to_skip)
    text = { strsplit("#", text) }

    local values = {}
    for i = 2, #text do
        local pattern = esc(text[i]:lower()):gsub("{(%d+)}", function () return "([%d,\.]*%d)" end)
        local pattern_numbers = {}
        for pattern_number in text[i]:lower():gmatch("{(%d+)}") do
            table.insert(pattern_numbers, tonumber(pattern_number))
        end
        local match_number = 0
        for j = 1, #tt_lines do
            local matches = { tt_lines[j]:lower():match(pattern) }
            if #matches > 0 and #matches == #pattern_numbers then
                match_number = match_number + 1
                if match_number > tooltip_matches_to_skip then
                    for k = 1, #matches do
                        values[pattern_numbers[k]] = fix_float_number(matches[k])
                    end
                    break
                end
            end
        end
    end

    local result = text[1]:gsub("{(%d+)}", function (a) return values[tonumber(a)] end)

    --if result:match("{%d}") and options.dev_mode and #tt_lines > 0 then
    --    dev_log_issue("незаповнені значення шаблону [" .. tt_lines[1] .. "] " .. text[1])
    --end

    return result
end

local function get_glossary_text(entry_key)
    local at = addonTable

    if type(entry_key) ~= "string" or type(at.glossary) ~= "table" then
        return
    end

    -- prepare entry_key
    entry_key = strip_color_codes(entry_key)
    entry_key = first_line_only(entry_key)
    entry_key = entry_key:lower()

    -- check directly
    if at.glossary[entry_key] then
        return capitalize(at.glossary[entry_key])
    end

    local key, key1, key2

    -- check using Taxi Map destination format: Undercity, Tirisfal
    key1, key2 = string.gmatch(entry_key, "(.*), (.*)")()
    if key1 and key2 then
        if at.glossary[key1] and at.glossary[key2] then
            return capitalize(at.glossary[key1]) .. ", " .. capitalize(at.glossary[key2])
        end
    end

    -- check using Questie' quest format: [57+] Feathermoon Stronghold
    key = string.gmatch(entry_key, "%[.+%] (.*)")()
    if key then
        if at.glossary[key] then
            return capitalize(at.glossary[key])
        end
    end

    -- check using Questie' quest format: [57+] Feathermoon Stronghold (12345)
    key = string.gmatch(entry_key, "%[.+%] (.*) %((.*)%)")()
    if key then
        if at.glossary[key] then
            return capitalize(at.glossary[key])
        end
    end

    -- check using Questie' npc format: John Smith (Wind Rider Master)
    key1, key2 = string.gmatch(entry_key, "(.*) %((.*)%)")()
    if key1 and key2 then
        if at.glossary[key1] then
            if at.glossary[key2] then
                return capitalize(at.glossary[key1]) .. " (" .. capitalize(at.glossary[key2]) .. ")"
            else
                return capitalize(at.glossary[key1])
            end
        end
    end
end

local function get_gossip_text(npc_id, gossip_text)
    local at = addonTable

    if not npc_id or type(gossip_text) ~= "string" or #gossip_text < 1 or type(at.gossip) ~= "table" then
        return
    end

    npc_id = tonumber(npc_id)
    local gossip_code = get_text_code(gossip_text)

    for _, gossip_key in ipairs({ npc_id, '!common' }) do
        if at.gossip[gossip_key] then
            local known_gossip_keys = table_string_keys(at.gossip[gossip_key])
            local gossip_fuzzy_key = fuzzy_match_text_code(gossip_code, known_gossip_keys)
            if gossip_fuzzy_key then
                return make_text(at.gossip[gossip_key][gossip_fuzzy_key]), gossip_code
            end
        end
    end

    return nil, gossip_code
end

local function get_chat_text(npc_name, chat_text)
    local at = addonTable

    if not npc_name or not chat_text or type(at.chat) ~= "table" then
        return
    end

    local chat_code = get_text_code_for_chat(chat_text)

    if chat_code and #chat_code > 0 then
        for _, char_key in ipairs({ npc_name, '!common' }) do
            if at.chat[char_key] then
                local known_chat_keys = table_string_keys(at.chat[char_key])
                local chat_key = match_text_code(chat_code, known_chat_keys)
                if chat_key then
                    local npc_name_uk = at.chat[char_key][1]
                    if not npc_name_uk then
                        npc_name_uk = get_glossary_text(npc_name)
                        if not npc_name_uk then
                            npc_name_uk = npc_name
                        end
                    end

                    return
                    capitalize(npc_name_uk),
                    safe_make_chat_text(chat_text, at.chat[char_key][chat_key]),
                    chat_code
                end
            end
        end
    end

    return nil, nil, chat_code
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

local function add_line_to_tooltip(tooltip, content, template, r, g, b, content_can_be_spell_id, parent_item_id)
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
            elseif options.dev_mode and parent_item_id then
                dev_log_issue_entry("item", parent_item_id, "невірне id закляття " .. tostring(spell_id))
                text = "spell#" .. tostring(spell_id)
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

local function add_item_entry_to_tooltip(tooltip, entry, entry_id, sub_item_depth)
    sub_item_depth = sub_item_depth or 1
    if sub_item_depth > 4 then
        if options.dev_mode then
            local msg = "переповнення sub_item_depth"
            dev_log_issue_entry("item", entry_id, msg)
            tooltip:AddLine("ПОМИЛКА: " .. msg, 1, 1, .25)
        end
        return
    end

    local prefix = sub_item_depth == 1 and asset_ua_code .. " " or ""
    local heading = make_entry_text(entry[1], tooltip)
    tooltip:AddLine(prefix .. capitalize(heading), 1, 1, 1)

    add_line_to_tooltip(tooltip, entry.desc, "TEXT", 1, 1, 1)
    add_line_to_tooltip(tooltip, entry.equip, "При спорядженні: TEXT", 0, 1, 0, true, entry_id)
    add_line_to_tooltip(tooltip, entry.hit, "Шанс при влучанні: TEXT", 0, 1, 0, true, entry_id)
    add_line_to_tooltip(tooltip, entry.use, "Використання: TEXT", 0, 1, 0, true, entry_id)

    if entry.recipe_result_item then
        if tonumber(entry_id) ~= tonumber(entry.recipe_result_item) then
            local rr_item = get_entry("item", entry.recipe_result_item)
            if rr_item then
                tooltip:AddLine(" ")
                add_item_entry_to_tooltip(tooltip, rr_item, entry.recipe_result_item, sub_item_depth + 1)
            elseif options.dev_mode then
                dev_log_issue_entry("item", entry_id, "невірне значення recipe_result_item " .. tostring(entry.recipe_result_item))
                tooltip:AddLine("recipe_result_item#" .. tostring(entry.recipe_result_item), 1, 1, 1)
            end
        elseif options.dev_mode then
            local msg = "значення recipe_result_item ідентичне entry_id"
            dev_log_issue_entry("item", entry_id, msg)
            tooltip:AddLine("recipe_result_item#" .. tostring(entry_id), 1, 1, 1)
            tooltip:AddLine("ПОМИЛКА: " .. msg, 1, 1, .25)
        end
    end

    add_line_to_tooltip(tooltip, entry.flavor, "\"TEXT\"", 1, 0.82, 0)
end

local function add_spell_entry_to_tooltip(tooltip, entry, spell_id, is_aura, skip_title)
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
                elseif options.dev_mode then
                    dev_log_issue_entry("spell", spell_id, "невірне значення rune, невірне id закляття " .. tostring(rune_spell_id))
                    tooltip:AddLine("rune_spell#" .. tostring(rune_spell_id), 1, 1, 1)
                end
            end
        end
    end
end

local function add_sod_engraving_entry_to_tooltip(tooltip, entry, sod_engraving_id)
    local heading = make_entry_text(entry[1], tooltip)
    tooltip:AddLine(asset_ua_code .. " " .. capitalize(heading), 1, 1, 1)

    if entry.spell then
        local spell = get_entry("spell", entry.spell)
        if spell then
            add_spell_entry_to_tooltip(tooltip, spell, entry.spell, false, true)
        elseif options.dev_mode then
            dev_log_issue_entry("sod_engraving", sod_engraving_id, "невірне значення spell " .. tostring(entry.spell))
            tooltip:AddLine("engraving.spell#" .. tostring(entry.spell), 1, 1, 1)
        end
    end
end

local function add_general_entry_to_tooltip(tooltip, entry)
    local heading = make_entry_text(entry[1], tooltip)
    tooltip:AddLine(asset_ua_code .. " " .. capitalize(heading), 1, 1, 1)

    add_line_to_tooltip(tooltip, entry[2], "TEXT", 1, 1, 1)
end

local function add_entry_to_tooltip(tooltip, entry_type, entry_id, is_aura)
    if tooltip.classicua.entry_type then
        return
    end

    local tt_title_line = tooltip_title_line(tooltip)
    if tt_title_line == "Unknown" or tt_title_line == "Retrieving item information" then
        return
    end

    local updated = false
    local entry = get_entry(entry_type, entry_id)

    if entry then
        updated = true
        tooltip:AddLine(" ")

        if entry_type == "item" then
            add_item_entry_to_tooltip(tooltip, entry, entry_id)
        elseif entry_type == "spell" then
            add_spell_entry_to_tooltip(tooltip, entry, entry_id, is_aura, false)
        elseif entry_type == "sod_engraving" then
            add_sod_engraving_entry_to_tooltip(tooltip, entry, entry_id)
        else
            add_general_entry_to_tooltip(tooltip, entry)
        end
    elseif options.dev_mode then
        updated = true
        tooltip:AddLine(" ")
        tooltip:AddLine(asset_ua_code .. " " .. entry_type .. "#" .. entry_id, 1, 1, 1)

        if entry_type == "npc" then
            dev_log_missing_npc(entry_id, tt_title_line)
        elseif entry_type == "item" then
            dev_log_missing_item(entry_id, tt_title_line)
        elseif entry_type == "spell" then
            dev_log_missing_spell(entry_id, tt_title_line)
        elseif entry_type == "sod_engraving" then
            dev_log_missing_sod_engraving(entry_id, tt_title_line)
        end
    end

    if updated and tooltip:IsShown() then
        tooltip:Show()
    end

    tooltip.classicua.entry_type = entry_type
    tooltip.classicua.entry_id = entry_id
end

local function add_glossary_entry_to_tooltip(tooltip, glossary_key)
    if tooltip.classicua.entry_type then
        return
    end

    glossary_key = strip_color_codes(glossary_key)
    if glossary_key then
        local found = get_glossary_text(glossary_key)
        if found then
            local result_text = capitalize(found)

            if tooltip:NumLines() > 1 then
                tooltip:AddLine(" ")
            end

            tooltip:AddLine(asset_ua_code .. " " .. result_text, 1, 1, 1, true)

            if tooltip:IsShown() then
                tooltip:Show()
            end
        elseif options.dev_mode and mouse_hover_frame() == WorldFrame then
            dev_log_missing_object(glossary_key)
        end
    end

    tooltip.classicua.entry_type = "glossary"
    tooltip.classicua.entry_id = glossary_key
end

local function add_talent_entry_to_tooltip(tooltip, tab_index, tier, column, rank, max_rank)
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
        if options.dev_mode then
            dev_log_missing_spell(talent[rank_to_show], tooltip_title_line(tooltip))
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

        local entry_next = get_entry("spell", talent[next_rank_to_show])
        if entry_next and entry_next[2] then
            next_rank_desc = make_entry_text(entry_next[2], tooltip, 1)
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

local function tooltip_set_item(self)
    local _, link = self:GetItem()
    if link then
        local _, _, id = link:find("Hitem:(%d+):")
        if id then
            add_entry_to_tooltip(self, "item", id)
        end
    end
end

local function tooltip_set_spell(self)
    local _, id = self:GetSpell()
    if id then
        add_entry_to_tooltip(self, "spell", id)
    end
end

local function tooltip_set_unit(self)
    local _, unit = self:GetUnit()
    if unit then
        local npc_id = npc_id_from_unit_id(unit)
        if npc_id then
            add_entry_to_tooltip(self, "npc", npc_id)
        end
    end
end

local function tooltip_updated(self)
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

local function tooltip_cleared(self)
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

hooksecurefunc(GameTooltip, "SetTalent", function (self, tab_index, talent_index, _, is_pet)
    if not is_pet then
        local _, _, tier, column, rank, max_rank = GetTalentInfo(tab_index, talent_index)
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

local function setup_frame_background_and_border(frame)
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
local function setup_frame_scrollbar_and_content(frame, areas, scrollframe_width_override)
    local scrollframe = CreateFrame("ScrollFrame", nil, frame)
    scrollframe:SetPoint("TOPLEFT", 8, -9)
    scrollframe:SetPoint("BOTTOMRIGHT", -8, 9)
    frame.scrollframe = scrollframe
    local scrollframe_width = scrollframe_width_override or scrollframe:GetWidth()

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

local function setup_frame_scrollbar_values(frame, height)
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
local function get_quest_frame(name)
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
local function set_quest_content(frame, title, text, more_title, more_text)
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
local function get_questlog_frame()
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

-- ----------------
-- [ gossip frame ]
-- ----------------

local gossip_frame = nil
local function get_gossip_frame()
    if gossip_frame then
        return gossip_frame
    end

    local width, height = GossipFrame.GreetingPanel.ScrollBox:GetSize()
    local frame = CreateFrame("Frame", nil, GossipFrame.GreetingPanel.ScrollBar, "BackdropTemplate")
    frame:SetFrameStrata("HIGH")

    if is_wrath then
        frame:SetSize(width + 20, height - 51)
        frame:SetPoint("TOP", 0, 5)
        frame:SetPoint("RIGHT", width + 16, 0)
    else
        frame:SetSize(width + 20, height + 18)
        frame:SetPoint("TOP", 0, 1)
        frame:SetPoint("RIGHT", width + 16, 0)
    end

    setup_frame_background_and_border(frame)

    setup_frame_scrollbar_and_content(frame, {
        text = { asset_font2_path, options.quest_text_size }
    })

    frame:Show()

    gossip_frame = frame
    return gossip_frame
end

local function set_gossip_content(text)
    local f = get_gossip_frame()
    local h = 16

    f.text:SetPoint("TOPLEFT", f.content, 12, -h)
    f.text:SetText(text)
    h = h + f.text:GetHeight() + 12

    setup_frame_scrollbar_values(f, h)
end

local function show_gossip()
    local npc_id = npc_id_from_unit_id("npc")
    if npc_id then
        local gossip_text_en = C_GossipInfo:GetText()
        local gossip_text_ua, gossip_code = get_gossip_text(npc_id, gossip_text_en)
        if gossip_text_ua then
            set_gossip_content(gossip_text_ua)
            get_gossip_frame():Show()
        elseif options.dev_mode and gossip_code then
            dev_log_missing_gossip(npc_id, gossip_code, gossip_text_en)
        end
    end
end

local function hide_gossip()
    get_gossip_frame():Hide()
end

-- --------------
-- [ book frame ]
-- --------------

---@type integer?
local book_item_id = nil

local book_frame = nil
local function get_book_frame()
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

local function set_book_content(text)
    local f = get_book_frame()
    local h = 16

    f.text:SetPoint("TOPLEFT", f.content, 12, -h)
    f.text:SetText(text)
    h = h + f.text:GetHeight() + 12

    setup_frame_scrollbar_values(f, h)
end

local function show_book()
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

local function hide_book()
    get_book_frame():Hide()
    book_item_id = nil
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

local function update_zone_text()
    local text
    for _, lookup in ipairs(zone_text_lookup) do
        text = lookup[1]:GetText()
        if text then
            text = strip_color_codes(text)
            local found = lookup[2](text)
            if found then
                lookup[1]:SetText(capitalize(found))
            else
                local text_in_bracers = string.gmatch(text, "%((.*)%)")()
                if text_in_bracers then
                    found = lookup[2](text_in_bracers)
                    if found then
                        found = "(" .. capitalize(found) .. ")"
                    else
                        dev_log_missing_zone(text_in_bracers)
                    end
                else
                    dev_log_missing_zone(text)
                end
            end
        end
    end
end

local function prepare_zone_text()
    for _, lookup in ipairs(zone_text_lookup) do
        local _, size, style = lookup[1]:GetFont()
        lookup[1]:SetFont(asset_font2_path, size, style)
    end
    update_zone_text()
end

-- -------------
-- [ world map ]
-- -------------

-- Stopped working in SOD 1.15.4, still works in Cata 4.4.0, maybe will not work soon.
-- Lets keep it until it stops working. At the moment, the new way to translate
-- the dropdowns is yet to be found.
local is_world_map_dropdowns_translation_old_ways_supported =
    WorldMapContinentDropDown and
    WorldMapContinentDropDownButton and
    WorldMapZoneDropDown and
    WorldMapZoneDropDownButton and
    DropDownList1 and
    DropDownList1Button1

if is_world_map_dropdowns_translation_old_ways_supported then
    local world_map_original_set_map_id = WorldMapFrame.SetMapID
    local world_map_dds = { WorldMapContinentDropDown, WorldMapZoneDropDown }

    WorldMapFrame.SetMapID = function (self, mapID)
        world_map_original_set_map_id(self, mapID)

        for _, v in ipairs(world_map_dds) do
            local text = v.Text:GetText()
            if text then
                text = strip_color_codes(text)
                local found = get_glossary_text(text)
                if found then
                    v.Text:SetText(capitalize(found))
                elseif options.dev_mode then
                    dev_log_missing_zone(text)
                end
            end
        end
    end

    local function world_map_dropdown_button_click(self)
        local dd = DropDownList1
        if dd:IsShown() then
            local texts = {}
            local buttons = {}

            for i = 1, dd.numButtons do
                local button = _G["DropDownList1Button" .. i]
                local text = button:GetText()
                if text then
                    text = strip_color_codes(text)
                    local found = get_glossary_text(text)
                    if found then
                        local t = capitalize(found)
                        texts[#texts + 1] = t
                        buttons[t] = button
                        button:SetText(t)
                    else
                        texts[#texts + 1] = text
                        buttons[text] = button
                        if options.dev_mode then
                            dev_log_missing_zone(text)
                        end
                    end
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
end -- if is_world_map_dropdowns_translation_old_ways_supported

local function world_map_area_label_update(self)
    local text = self.Name:GetText()
    if text then
        text = strip_color_codes(text)
        local found = get_glossary_text(text)
        if found then
            self.Name:SetText(capitalize(found))
        elseif options.dev_mode then
            dev_log_missing_zone(text)
        end
    end
end

local function prepare_world_map()
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

local function update_target_frame_text()
    local npc_id = npc_id_from_unit_id("target")
    if npc_id then
        local entry = get_entry("npc", npc_id)
        if entry then
            TargetFrame.name:SetText(capitalize(entry[1]))
        elseif options.dev_mode then
            dev_log_missing_npc(npc_id, UnitName("target"))
        end
    end
end

-- ---------------
-- [ name plates ]
-- ---------------

hooksecurefunc("CompactUnitFrame_UpdateName", function (self)
    if ShouldShowName(self) and not self:IsForbidden() then
        local npc_id = npc_id_from_unit_id(self.unit)
        if npc_id then
            local entry = get_entry("npc", npc_id)
            if entry then
                self.name:SetText(capitalize(entry[1]))
            elseif options.dev_mode then
                dev_log_missing_npc(npc_id, UnitName(self.unit))
            end
        end
    end
end)

-- --------
-- [ chat ]
-- --------

local known_chat_msg_events = {
    CHAT_MSG_MONSTER_EMOTE      = { info=ChatTypeInfo.MONSTER_EMOTE,        verb=false },
    CHAT_MSG_MONSTER_PARTY      = { info=ChatTypeInfo.MONSTER_PARTY,        verb="говорить" },
    CHAT_MSG_MONSTER_SAY        = { info=ChatTypeInfo.MONSTER_SAY,          verb="говорить" },
    CHAT_MSG_MONSTER_WHISPER    = { info=ChatTypeInfo.MONSTER_WHISPER,      verb="шепоче" },
    CHAT_MSG_MONSTER_YELL       = { info=ChatTypeInfo.MONSTER_YELL,         verb="вигукує" },
    CHAT_MSG_RAID_BOSS_EMOTE    = { info=ChatTypeInfo.RAID_BOSS_EMOTE,      verb=false },
    CHAT_MSG_RAID_BOSS_WHISPER  = { info=ChatTypeInfo.RAID_BOSS_WHISPER,    verb="шепоче" },
}

local function filter_chat_msg(self, event, chat_text, npc_name, ...)
    local known_event = known_chat_msg_events[event]
    if not known_event then
        return nil, chat_text, npc_name, ...
    end

    if npc_name == UnitName("player") then
        npc_name = "!player"
    end

    local npc_name_uk, chat_text_uk, chat_text_code = get_chat_text(npc_name, chat_text)
    if (not npc_name_uk or not chat_text_uk) and chat_text_code then
        dev_log_missing_chat_text(npc_name, chat_text_code, chat_text)
        return nil, chat_text, npc_name, ...
    end

    if type(chat_text_uk) == 'string' and chat_text_uk:match("%%s") then
        chat_text_uk = string.format(chat_text_uk, npc_name_uk)
    end

    local chat_message = nil

    if known_event.verb then
        -- format: say, yell, whisper or party
        chat_message = string.format("%s %s: %s", npc_name_uk, known_event.verb, chat_text_uk)

        -- chat bubble is not spawned just yet, so we wait a moment
        C_Timer.After(0.01, function ()
            local font_string = chat_bubble_font_string_with_text(chat_text)
            if font_string then
                font_string:SetText(chat_text_uk)
            end
        end)
    else
        -- format: emote
        chat_message = chat_text_uk
    end

    self:AddMessage(
        asset_ua_code .. " " .. chat_message,
        known_event.info.r,
        known_event.info.g,
        known_event.info.b
    )

    return true
end

for event_name, _ in pairs(known_chat_msg_events) do
    ChatFrame_AddMessageEventFilter(event_name, filter_chat_msg)
end

-- -----------------
-- [ options frame ]
-- -----------------

local function setup_player_name_cases_frame(content_frame)
    local root = CreateFrame("Frame", nil, content_frame)
    root:SetPoint("BOTTOMLEFT", 0, 0)
    root:SetSize(1, 1)

    local cases = {
        { "н", "Називний — (Є) Хто? Що?" },
        { "р", "Родовий — (Немає) Кого? Чого?" },
        { "д", "Давальний — (Даю) Кому? Чому?" },
        { "з", "Знахідний — (Бачу) Кого? Що?" },
        { "о", "Орудний — (Пишаюся) Ким? Чим?" },
        { "м", "Місцевий — (Стою) На кому? На чому?" },
        { "к", "Кличний — (Звертання)" }
    }

    local x = 42
    local y = -8
    local edit_box_width = 230
    local prev_edit_box = nil

    for i, c in ipairs(cases) do
        local case_key = c[1]
        local case_name = c[2]

        local label = root:CreateFontString()
        label:SetPoint("TOPLEFT", x, y - 0)
        label:SetFont(asset_font2_path, 12)
        label:SetTextColor(0, 0, 0)
        label:SetText(case_name)

        local edit_box = CreateFrame("EditBox", nil, root, "InputBoxTemplate")
        edit_box:SetPoint("TOPLEFT", x, y - 4)
        edit_box:SetSize(edit_box_width, 40)
        edit_box:SetAutoFocus(false)
        edit_box:SetMaxLetters(40)

        edit_box:SetText(character_options.name_cases[case_key] or "")
        edit_box:SetCursorPosition(0)
        edit_box.case_key = case_key

        edit_box:SetScript("OnTextChanged", function (self, is_user_input)
            if is_user_input then
                local new_text = strtrim(self:GetText() or "")
                character_options.name_cases[self.case_key] = new_text
            end
        end)

        edit_box:SetScript("OnTabPressed", function (self)
            if edit_box.next_tab_focus then
                edit_box.next_tab_focus:SetFocus()
            end
        end)

        if prev_edit_box then
            prev_edit_box.next_tab_focus = edit_box
        end
        prev_edit_box = edit_box

        y = y - 40
        if i == 4 then
            y = -8
            x = x + edit_box_width + 30
        end
    end

    return root
end

StaticPopupDialogs["CLASSICUA_CONFIRM_DEV_LOG_RESET"] = {
    text = "Дійсно скинути всі накопичені дані?",
    button1 = "Так",
    button2 = "Ні",
    OnAccept = dev_log_reset,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true
}

StaticPopupDialogs["CLASSICUA_CONFIRM_SETTINGS_RESET"] = {
    text = "Дійсно скинути всі налаштування за замовчуванням?\n\n(Відмінювання імен персонажів скинуто не буде.)",
    button1 = "Так",
    button2 = "Ні",
    OnAccept = reset_options,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true
}

local function setup_dev_mode_frame(content_frame)
    local root = CreateFrame("Frame", nil, content_frame)
    root:SetPoint("BOTTOMLEFT", 0, 0)
    root:SetSize(1, 1)

    local dm_check = CreateFrame("CheckButton", nil, root, "InterfaceOptionsCheckButtonTemplate")
    dm_check:SetPoint("TOPLEFT", 24, 0)
    dm_check.Text:SetText("Режим розробки")
    dm_check:SetChecked(options.dev_mode)
    dm_check:SetScript("OnClick", function (self)
        options.dev_mode = self:GetChecked()
    end)

    local dm_na_check = CreateFrame("CheckButton", nil, root, "InterfaceOptionsCheckButtonTemplate")
    dm_na_check:SetPoint("TOPLEFT", 24, -28)
    dm_na_check.Text:SetText("Сповіщення активності")
    dm_na_check:SetChecked(options.dev_mode_notify_activity)
    dm_na_check:SetScript("OnClick", function (self)
        options.dev_mode_notify_activity = self:GetChecked()
    end)
    dm_na_check:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText("Сповіщати в чат кожен раз при знаходженні нового відсутнього запису.", nil, nil, nil, nil, true)
    end)
    dm_na_check:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    local stats_btn = CreateFrame("Button", nil, root, "UIPanelButtonTemplate")
    stats_btn:SetPoint("TOPLEFT", 24, -64)
    stats_btn:SetText("Статистика")
    stats_btn:SetSize(140, 28)
    stats_btn:SetScript("OnClick", function()
        dev_log_print_stats()
    end)

    local reset_btn = CreateFrame("Button", nil, root, "UIPanelButtonTemplate")
    reset_btn:SetPoint("TOPLEFT", 24 + 160, -64)
    reset_btn:SetText("Скинути")
    reset_btn:SetSize(140, 28)
    reset_btn:SetScript("OnClick", function()
        StaticPopup_Show("CLASSICUA_CONFIRM_DEV_LOG_RESET")
    end)

    options_frame.dev_mode_checkbox = dm_check
    options_frame.dev_mode_notify_activity_checkbox = dm_na_check

    return root
end

local function create_slider_frame(parent, point, x, y, width, height, min, max, step, tooltip_text, on_value_changed)
    local root = CreateFrame("Slider", nil, parent, "ClassicUA_UISliderTemplateWithLabels")

    root:SetPoint(point, x, y)
    root:SetWidth(width)
    root:SetHeight(height)
    root:SetObeyStepOnDrag(true)
    root:SetValueStep(step)
    root:SetMinMaxValues(min, max)
    root.Low:SetText(tostring(min))
    root.High:SetText(tostring(max))

    if tooltip_text then
        root.tooltip_text = tooltip_text
        root:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetText(self.tooltip_text, nil, nil, nil, nil, true)
        end)
        root:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
    end

    if on_value_changed then
        root:SetScript("OnValueChanged", on_value_changed)
    end

    return root
end

local function prepare_options_frame()
    local at_text = addonTable.text -- can not use glossary as its not prepared at this moment
    options_frame = CreateFrame("Frame")
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
    f:SetSize(88, 24)
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

    -- reset button

    f = CreateFrame("Button", nil, options_frame, "UIPanelButtonTemplate")
    f:SetPoint("TOPRIGHT", -48, -160)
    f:SetText("Скинути")
    f:SetSize(88, 24)
    f:SetScript("OnClick", function()
        StaticPopup_Show("CLASSICUA_CONFIRM_SETTINGS_RESET")
    end)
    f:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText(
            "Скинути всі налаштування за замовчуванням. Деякі зміни будуть помітні лише після перезавантаження інтерфейсу гри.",
            nil, nil, nil, nil, true
        )
    end)
    f:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    -- options.quest_text_size

    options_frame.quest_text_size_slider = create_slider_frame(
        options_frame, "TOPLEFT", 24, -80, 200, 20, 10, 20, 1,
        "Розмір шрифту в вікні завдання.",
        function (self, value)
            self.Text:SetText("Розмір тексту завдання: " .. value)
            options.quest_text_size = value
        end
    )

    -- options.book_text_size

    options_frame.book_text_size_slider = create_slider_frame(
        options_frame, "TOPLEFT", 24, -140, 200, 20, 10, 20, 1,
        "Розмір шрифту в вікні книжки.",
        function (self, value)
            self.Text:SetText("Розмір тексту книжки: " .. value)
            options.book_text_size = value
        end
    )

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
    options_frame.info_tab_child_frames = {}
    for tab_index, tab_data in ipairs({
        {
            title                   = "Персонаж",
            content_title           = "Персонаж: " .. UnitName("player"),
            content_text            = at_text["addon_player_character_desc"],
            child_frame_setup_func  = setup_player_name_cases_frame
        }, {
            title                   = "Розробка",
            content_title           = "Розробка",
            content_text            = at_text["addon_dev_mode_desc"]:gsub("@GAME_SUB_DIR", is_classic and "_classic_era_" or "_classic_"),
            child_frame_setup_func  = setup_dev_mode_frame
        }, {
            title           = "Оновлення",
            content_title   = "Оновлення",
            content_text    = at_text["addon_changelog"]
        }, {
            title           = "Причетні",
            content_title   = "Причетні",
            content_text    = at_text["addon_contributors"]
        }
    }) do
        f = CreateFrame("Button", nil, options_frame, "UIPanelButtonTemplate")
        table.insert(options_frame.info_tab_buttons, f)
        f.tab_index = tab_index
        f.tab_data = tab_data
        f:SetSize(100, 32)
        f:SetPoint("TOPLEFT", 24 + tab_index * f:GetWidth(), -200)
        f:SetText(f.tab_data.title)
        f:SetScript("OnClick", function(self)
            if self.tab_index == options_frame.info_tab_frame.current_tab_index then
                return
            end

            for _, btn_frame in ipairs(options_frame.info_tab_buttons) do
                if btn_frame.tab_index ~= self.tab_index then
                    btn_frame:UnlockHighlight()
                end
            end

            set_quest_content(options_frame.info_tab_frame, self.tab_data.content_title, self.tab_data.content_text)
            options_frame.info_tab_frame.current_tab_index = self.tab_index
            self:LockHighlight()

            for child_frame_index, child_frame in ipairs(options_frame.info_tab_child_frames) do
                if child_frame and child_frame_index ~= self.tab_index then
                    child_frame:Hide()
                end
            end

            if options_frame.info_tab_child_frames[self.tab_index] then
                options_frame.info_tab_child_frames[self.tab_index]:Show()
            end
        end)

        options_frame.info_tab_child_frames[tab_index] = nil
        if tab_data.child_frame_setup_func then
            options_frame.info_tab_child_frames[tab_index] = tab_data.child_frame_setup_func(options_frame.info_tab_frame.content)
            options_frame.info_tab_child_frames[tab_index]:Hide()
        end

        -- preselect 1st tab
        if tab_index == 1 then
            set_quest_content(options_frame.info_tab_frame, f.tab_data.content_title, f.tab_data.content_text)
            options_frame.info_tab_frame.current_tab_index = 1
            f:LockHighlight()

            if options_frame.info_tab_child_frames[1] then
                options_frame.info_tab_child_frames[1]:Show()
            end
        end
    end

    -- setup options frame details

    options_frame.name = "ClassicUA"
    options_frame.default = reset_options
    options_frame.refresh = function ()
        local f = options_frame
        f.quest_text_size_slider:SetValue(options.quest_text_size)
        f.book_text_size_slider:SetValue(options.book_text_size)
        f.dev_mode_checkbox:SetChecked(options.dev_mode)
        f.dev_mode_notify_activity_checkbox:SetChecked(options.dev_mode_notify_activity)
    end

    options_frame:SetScript("OnShow", function (self) self.refresh() end)

    -- add options frame to Options -> AddOns

    if Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory then
        local category = Settings.RegisterCanvasLayoutCategory(options_frame, options_frame.name)
        Settings.RegisterAddOnCategory(category)
        options_frame.category_id = category:GetID()
    elseif InterfaceOptions_AddCategory then
        InterfaceOptions_AddCategory(options_frame)
    else
        dev_log_issue("не визначено способу додати вікно налаштувань аддону")
    end
end

local function open_options()
    if Settings and Settings.OpenToCategory then
        Settings.OpenToCategory(options_frame.category_id)
    elseif InterfaceAddOnsList_Update and InterfaceOptionsFrame_OpenToCategory then
        InterfaceAddOnsList_Update()
        InterfaceOptionsFrame_OpenToCategory(options_frame)
    else
        dev_log_issue("не визначено способу відкрити вікно налаштувань аддону")
    end
end

local function prepare_slash_command()
    _G.SLASH_CLASSICUA_SETTINGS1 = "/ua"
    SlashCmdList.CLASSICUA_SETTINGS = function ()
        open_options()
    end
end

-- ----------
-- [ events ]
-- ----------

local event_frame = CreateFrame("Frame")

event_frame:RegisterEvent("ADDON_LOADED")
event_frame:RegisterEvent("PLAYER_LOGIN")
event_frame:RegisterEvent("PLAYER_TARGET_CHANGED")
event_frame:RegisterEvent("GOSSIP_SHOW")
event_frame:RegisterEvent("GOSSIP_CLOSED")
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
        prepare_slash_command()

        DEFAULT_CHAT_FRAME:AddMessage(
            asset_ua_code
            .. " ClassicUA v" .. GetAddOnMetadata("ClassicUA", "Version")
            .. " — |cffffbb22" .. _G.SLASH_CLASSICUA_SETTINGS1 .. "|r"
            .. (options.dev_mode and " — Режим розробки" or "")
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
        prepare_get_text_code_replace_seq(name)
        prepare_zone_text()
        prepare_world_map()

    elseif event == "PLAYER_TARGET_CHANGED" then
        update_target_frame_text()

    elseif event == "GOSSIP_SHOW" then
        show_gossip()

    elseif event == "GOSSIP_CLOSED" then
        hide_gossip()

    elseif event == "ITEM_TEXT_BEGIN" then
        if known_tooltips[1].classicua.entry_type == "item" then
            book_item_id = tonumber(known_tooltips[1].classicua.entry_id)
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
