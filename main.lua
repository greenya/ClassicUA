local _, addonTable = ...

-- -----------
-- [ globals ]
-- -----------

local wow = {
    C_ChatBubbles               = _G.C_ChatBubbles,
    C_GossipInfo                = _G.C_GossipInfo,
    C_Map                       = _G.C_Map,
    C_PvP                       = _G.C_PvP,
    C_Seasons                   = _G.C_Seasons,
    C_Timer                     = _G.C_Timer,
    ChatFrame_AddMessageEventFilter = _G.ChatFrame_AddMessageEventFilter,
    ChatTypeInfo                = _G.ChatTypeInfo,
    CreateFrame                 = _G.CreateFrame,
    DEFAULT_CHAT_FRAME          = _G.DEFAULT_CHAT_FRAME,
    DevTools_Dump               = _G.DevTools_Dump,
    Enum                        = _G.Enum,
    GameTooltip                 = _G.GameTooltip,
    GameTooltipStatusBar        = _G.GameTooltipStatusBar,
    GetAddOnInfo                = _G.GetAddOnInfo,
    GetAddOnMemoryUsage         = _G.GetAddOnMemoryUsage,
    GetAddOnMetadata            = _G.GetAddOnMetadata,
    GetBindLocation             = _G.GetBindLocation,
    GetBuildInfo                = _G.GetBuildInfo,
    GetMouseFoci                = _G.GetMouseFoci,
    GetMouseFocus               = _G.GetMouseFocus,
    GetNumAddOns                = _G.GetNumAddOns,
    GetQuestID                  = _G.GetQuestID,
    GetQuestLogSelection        = _G.GetQuestLogSelection,
    GetQuestLogSelectedID       = _G.GetQuestLogSelectedID,
    GetQuestLogTitle            = _G.GetQuestLogTitle,
    GetTalentInfo               = _G.GetTalentInfo,
    GossipFrame                 = _G.GossipFrame,
    hooksecurefunc              = _G.hooksecurefunc,
    InterfaceAddOnsList_Update  = _G.InterfaceAddOnsList_Update,
    InterfaceOptions_AddCategory = _G.InterfaceOptions_AddCategory,
    InterfaceOptionsFrame_OpenToCategory = _G.InterfaceOptionsFrame_OpenToCategory,
    ItemRefTooltip              = _G.ItemRefTooltip,
    ItemTextGetPage             = _G.ItemTextGetPage,
    ItemTextGetText             = _G.ItemTextGetText,
    ItemTextScrollFrame         = _G.ItemTextScrollFrame,
    Menu                        = _G.Menu,
    MenuUtil                    = _G.MenuUtil,
    Minimap_Update              = _G.Minimap_Update,
    QuestFrame                  = _G.QuestFrame,
    QuestFrameDetailPanel       = _G.QuestFrameDetailPanel,
    QuestFrameProgressPanel     = _G.QuestFrameProgressPanel,
    QuestFrameRewardPanel       = _G.QuestFrameRewardPanel,
    QuestLogDetailScrollFrame   = _G.QuestLogDetailScrollFrame,
    TargetFrame                 = _G.TargetFrame,
    UnitAura                    = _G.UnitAura,
    UnitClass                   = _G.UnitClass,
    UnitFactionGroup            = _G.UnitFactionGroup,
    UnitGUID                    = _G.UnitGUID,
    UnitName                    = _G.UnitName,
    UnitRace                    = _G.UnitRace,
    UnitSex                     = _G.UnitSex,
    UpdateAddOnMemoryUsage      = _G.UpdateAddOnMemoryUsage,
    ReloadUI                    = _G.ReloadUI,
    Settings                    = _G.Settings,
    ShoppingTooltip1            = _G.ShoppingTooltip1,
    ShoppingTooltip2            = _G.ShoppingTooltip2,
    ShouldShowName              = _G.ShouldShowName,
    SlashCmdList                = _G.SlashCmdList,
    StaticPopup_Show            = _G.StaticPopup_Show,
    StaticPopupDialogs          = _G.StaticPopupDialogs,
    WorldMapTooltip             = _G.WorldMapTooltip,
    WorldFrame                  = _G.WorldFrame,
}

local is_classic        = string.byte(wow.GetBuildInfo(), 1) == string.byte("1")
local is_classic_sod    = is_classic and wow.C_Seasons and wow.C_Seasons.HasActiveSeason() and wow.C_Seasons.GetActiveSeason() == wow.Enum.SeasonID.SeasonOfDiscovery
local is_tbc            = string.byte(wow.GetBuildInfo(), 1) == string.byte("2")
local is_wrath          = string.byte(wow.GetBuildInfo(), 1) == string.byte("3")
local is_cata           = string.byte(wow.GetBuildInfo(), 1) == string.byte("4")

local assets = {
    icon_ua         = "|TInterface\\AddOns\\ClassicUA\\assets\\ua:0|t",
    font_morpheus   = "Interface\\AddOns\\ClassicUA\\assets\\Morpheus_UA.ttf",
    font_frizqt     = "Interface\\AddOns\\ClassicUA\\assets\\FRIZQT_UA.ttf",
}

local fonts = {
    header  = QuestFont_Huge,
    content = SystemFont_Med2,
}

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
    if type(wow.DevTools_Dump) == "function" then
        wow.DevTools_Dump(value)
    else
        print("[dump]", value)
    end
end

local function copy_table(target, source)
    for k, v in pairs(source) do target[k] = v end
    return target
end

local function table_string_keys(tbl)
    local result = {}
    for k, _ in pairs(tbl) do
        if type(k) == "string" then
            result[#result + 1] = k
        end
    end
    return result
end

local function table_keys_count(tbl)
    local count = 0
    for _ in pairs(tbl) do count = count + 1 end
    return count
end

local function capitalize(text)
    local b1 = string.byte(text, 1)
    if b1 >= 208 and b1 <= 210 then -- this is utf8 character, 2 bytes long
        local b2 = string.byte(text, 2)
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
        local lines = { string.split("\n\r", text) }
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
    if text == CURRENTLY_EQUIPPED and num_lines > 1 then
        text = _G[tooltip:GetName() .. "TextLeft2"]:GetText()
    end

    return text
end

-- unit_id is one of https://warcraft.wiki.gg/wiki/UnitId
local function npc_id_from_unit_id(unit_id)
    if type(unit_id) == "string" then
        local guid = wow.UnitGUID(unit_id)
        if guid then
            local kind, _, _, _, _, id, _ = string.split("-", guid)
            if id and (kind == "Creature" or kind == "Vehicle") then
                return tonumber(id)
            end
        end
    end
end

local function chat_bubble_font_string_with_text(text)
    local bubbles = wow.C_ChatBubbles:GetAllChatBubbles()
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
    if wow.GetMouseFocus then
        return wow.GetMouseFocus()
    elseif wow.GetMouseFoci then
        return wow.GetMouseFoci()[1]
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
    wow.DEFAULT_CHAT_FRAME:AddMessage(assets.icon_ua .. " |cff4488aa[Розробка] " .. text .. "|r")
end

local function dev_log_init()
    dev_log.addon_version = wow.GetAddOnMetadata("ClassicUA", "Version")
    dev_log.game_version = wow.GetBuildInfo()
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
    key = string.trim(key or "???")

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

local function dev_log_missing_gossip(npc_id, gossip_code, gossip_text_en, is_reply)
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

    dev_log.missing_gossips[npc_id][gossip_code] = { gossip_text_en, is_reply=is_reply }
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
    zone_name = string.trim(zone_name or "???")

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
    object_name = string.trim(object_name or "???")

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
    override_system_fonts = true,
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

    for _, v in pairs({
        { options, default_options },
        { character_options, default_character_options },
        { dev_log, default_dev_log },
    }) do
        -- clean up unknown/deprecated keys
        for k, _ in pairs(v[1]) do
            if v[2][k] == nil then
                v[1][k] = nil
            end
        end

        -- add brand new keys with default values
        for k, _ in pairs(v[2]) do
            if v[1][k] == nil then
                v[1][k] = v[2][k]
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

    -- collect text-key entries: misc, string, object, zone
    for _, entry_type in pairs({ "misc", "string", "object", "zone" }) do
        for entry_key, entry_value in pairs(at[entry_type]) do
            local glossary_key = string.trim(entry_key:lower())
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

    -- collect id-key entries: spell, item, npc, quest
    for _, entry_type in pairs({ "spell", "item", "npc", "quest_faction", "quest_both" }) do
        for _, entry_value in pairs(at[entry_type]) do
            if entry_value.en then
                local glossary_key = string.trim(entry_value.en:lower())
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
    local sex = wow.UnitSex("player") == 2 and 1 or 2  -- UnitSex("player") == 2 - male

    if not translation then
        return nil
    end

    local translation_split = { string.split("#", translation) }
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
        local pattern_uk_split = { string.split(":", pattern_uk) }
        local pattern_uk_type = pattern_uk_split[1]
        local case = pattern_uk_split[2] or "н"
        pattern_uk = "{" .. pattern_uk .. "}"

        if lower(pattern_uk_type) == "ім'я" then
            local name_en = template_matches["name"]
            local name_uk
            if name_en == wow.UnitName("player") then
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
            if race_key == "undead" then
                -- Player's race called "scourge", but NPCs call them "undead"
                race_key = "scourge"
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
            if target_en == wow.UnitName("player") then
                target_uk = character_options.name_cases and character_options.name_cases[case]
            elseif at.class[target_en:upper():gsub(" ", "")] then
                target_uk = at.class[target_en:upper():gsub(" ", "")][case][sex]
            elseif at.race[target_en:lower():gsub(" ", "")] then
                local race_key = target_en:lower():gsub(" ", "")
                if race_key == "undead" then
                    race_key = "scourge"
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
    if entry_id == 0 then
        return
    end

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
            dev_log_missing_book_page(entry_id, wow.ItemTextGetPage(), wow.ItemTextGetText())
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
    text = { string.split("#", text) }

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

local function get_glossary_text(entry_key, fallback, hint_type)
    local at = addonTable

    if type(entry_key) ~= "string" or type(at.glossary) ~= "table" then
        return fallback
    end

    local original_entry_key = entry_key

    -- prepare entry_key
    entry_key = strip_color_codes(entry_key)
    entry_key = first_line_only(entry_key)
    entry_key = string.trim(entry_key)
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

    if options.dev_mode and hint_type then
        if hint_type == "zone" then
            dev_log_missing_zone(original_entry_key)
        else
            dev_log_issue("непідтримуваний тип даних в get_glossary_text()", { hint_type, original_entry_key })
        end
    end

    return fallback
end

local function get_gossip_text(npc_id, gossip_text)
    local at = addonTable

    if not npc_id or type(gossip_text) ~= "string" or #gossip_text < 1 or type(at.gossip) ~= "table" then
        return nil, nil
    end

    npc_id = tonumber(npc_id)
    local gossip_code = get_text_code(gossip_text)

    local minimum_match_ratio = 0.5 -- maybe we should just change text code generator algo
    if      #gossip_text <= 10 then minimum_match_ratio = 0.9
    elseif  #gossip_text <= 16 then minimum_match_ratio = 0.8
    elseif  #gossip_text <= 22 then minimum_match_ratio = 0.7
    elseif  #gossip_text <= 28 then minimum_match_ratio = 0.6 end

    for _, gossip_key in ipairs({ npc_id, '!common' }) do
        if at.gossip[gossip_key] then
            local known_gossip_keys = table_string_keys(at.gossip[gossip_key])
            local gossip_fuzzy_key = fuzzy_match_text_code(gossip_code, known_gossip_keys, minimum_match_ratio)
            if gossip_fuzzy_key then
                return make_text(at.gossip[gossip_key][gossip_fuzzy_key]), gossip_code
            end
        end
    end

    return nil, gossip_code
end

local function get_gossip_text_for_npc_talk(npc_id, gossip_text)
    local text_uk, gossip_code = get_gossip_text(npc_id, gossip_text)
    if text_uk then
        return text_uk
    end

    if options.dev_mode and gossip_code then
        dev_log_missing_gossip(npc_id, gossip_code, gossip_text, false)
    end
end

local function get_gossip_text_for_player_reply(npc_id, gossip_text)
    if type(gossip_text) ~= "string" then
        return
    end

    -- the replies can be very similar, for example: "The inn", "The inn.", "Inn.", "inn"
    -- we want to match it all, while having high minimum_match_ratio as its very short text,
    -- so we try couple of cases

    local gossip_text_list = { gossip_text }
    local gossip_text_lower = gossip_text:lower()

    if #gossip_text_lower > 6 then
        if gossip_text_lower:find("^the ") then
            table.insert(gossip_text_list, gossip_text_lower:sub(5))
        else
            table.insert(gossip_text_list, "the " .. gossip_text_lower)
        end
    end

    if #gossip_text_lower > 2 then
        if gossip_text_lower:find("%.$") then
            table.insert(gossip_text_list, gossip_text_lower:sub(1, #gossip_text_lower - 1))
        else
            table.insert(gossip_text_list, gossip_text_lower .. ".")
        end
    end

    for _, text_en in pairs(gossip_text_list) do
        local text_uk = get_gossip_text(npc_id, text_en)
        if text_uk then
            return text_uk
        end
    end

    -- replies are generally short, and also it can be class name, battleground name, dungeon name etc.
    local found_text = get_glossary_text(gossip_text)
    if found_text then
        return found_text
    end

    if options.dev_mode then
        local gossip_code = get_text_code(gossip_text)
        if gossip_code then
            dev_log_missing_gossip(npc_id, gossip_code, gossip_text, true)
        end
    end
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
                        npc_name_uk = get_glossary_text(npc_name, npc_name)
                    end

                    local chat_text_uk = safe_make_chat_text(chat_text, at.chat[char_key][chat_key])
                    return capitalize(npc_name_uk), chat_text_uk, chat_code
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
    wow.GameTooltip,
    wow.ShoppingTooltip1,
    wow.ShoppingTooltip2,
    wow.ItemRefTooltip,
    wow.WorldMapTooltip, -- Note: WorldMapTooltip is deprecated in 8.1.5
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

local function process_hearthstone_bind_location_code(entry)
    if not entry or not entry.use then
        return
    end

    local code = "{домівка}"
    local lines = type(entry.use) == "table" and entry.use or { entry.use }
    local home

    for i = 1, #lines do
        if type(lines[i]) == "string" and lines[i]:find(code) then
            if not home then
                local loc = wow.GetBindLocation()
                home = get_glossary_text(loc, loc, "zone")
            end
            lines[i] = lines[i]:gsub(code, home)
        end
    end

    -- we need only copy string value, in case of table its a ref and changes where made in place
    if type(entry.use) == "string" then
        entry.use = lines[1]
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

    process_hearthstone_bind_location_code(entry)

    local prefix = sub_item_depth == 1 and assets.icon_ua .. " " or ""
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
        tooltip:AddLine(assets.icon_ua .. " " .. capitalize(heading), 1, 1, 1)
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
    tooltip:AddLine(assets.icon_ua .. " " .. capitalize(heading), 1, 1, 1)

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
    tooltip:AddLine(assets.icon_ua .. " " .. capitalize(heading), 1, 1, 1)

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
        tooltip:AddLine(assets.icon_ua .. " " .. entry_type .. "#" .. entry_id, 1, 1, 1)

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

            tooltip:AddLine(assets.icon_ua .. " " .. result_text, 1, 1, 1, true)

            if tooltip:IsShown() then
                tooltip:Show()
            end
        elseif options.dev_mode and mouse_hover_frame() == wow.WorldFrame then
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
    tooltip:AddLine(assets.icon_ua .. " " .. entry[1], 1, 1, 1)

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
    local has_status_bar = wow.GameTooltipStatusBar and wow.GameTooltipStatusBar:IsShown()
    if name or unit or has_status_bar then
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

    if tt == wow.ItemRefTooltip then
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

wow.hooksecurefunc(wow.GameTooltip, "SetTalent", function (self, tab_index, talent_index, _, is_pet)
    if not is_pet then
        local _, _, tier, column, rank, max_rank = wow.GetTalentInfo(tab_index, talent_index)
        add_talent_entry_to_tooltip(self, tab_index, tier, column, rank, max_rank)
    end
end)

wow.hooksecurefunc(wow.GameTooltip, "SetUnitAura", function (self, unit, index, filter)
    local id = select(10, wow.UnitAura(unit, index, filter))
    if id then
        add_entry_to_tooltip(self, "spell", id, true)
    end
end)

wow.hooksecurefunc(wow.GameTooltip, "SetUnitBuff", function (self, unit, index)
    local id = select(10, wow.UnitAura(unit, index, "HELPFUL"))
    if id then
        add_entry_to_tooltip(self, "spell", id, true)
    end
end)

wow.hooksecurefunc(wow.GameTooltip, "SetUnitDebuff", function (self, unit, index)
    local id = select(10, wow.UnitAura(unit, index, "HARMFUL"))
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

-- areas: { area1={ font }, ... }
local function setup_frame_scrollbar_and_content(frame, areas, scrollframe_width_override)
    local scrollframe = wow.CreateFrame("ScrollFrame", nil, frame)
    scrollframe:SetPoint("TOPLEFT", 8, -9)
    scrollframe:SetPoint("BOTTOMRIGHT", -8, 9)
    frame.scrollframe = scrollframe
    local scrollframe_width = scrollframe_width_override or scrollframe:GetWidth()

    local content = wow.CreateFrame("Frame", nil, scrollframe)
    content:SetSize(scrollframe_width - 60, 0)
    scrollframe:SetScrollChild(content)
    frame.content = content

    for k, v in pairs(areas) do
        local a = content:CreateFontString(nil, "OVERLAY")
        a:SetWidth(frame:GetWidth() - 60)
        a:SetJustifyH("LEFT")
        a:SetJustifyV("TOP")
        a:SetTextColor(0, 0, 0)
        a:SetFontObject(v.font)
        frame[k] = a
    end

    local scrollbar = wow.CreateFrame("Slider", nil, scrollframe, "UIPanelScrollBarTemplate")
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

local function setup_frame_scrollbar_values(frame, height, preserve_current_scroll_pos)
    preserve_current_scroll_pos = preserve_current_scroll_pos or false

    local delta = height - frame:GetHeight() + 24
    if delta < 1 then
        delta = 1
    end

    frame.scrollbar:SetMinMaxValues(1, delta)
    if not preserve_current_scroll_pos then
        frame.scrollbar:SetValue(1)
    end

    frame.content:SetSize(frame.content:GetWidth(), height)
end

-- frame must have properties: title, text, more_title, more_text
local function set_text_frame_content(frame, title, text, more_title, more_text)
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

local function add_tooltip_for_frame(frame, anchor, text)
    frame.tooltip_text = text
    frame:SetScript("OnEnter", function (self)
        wow.GameTooltip:SetOwner(self, anchor)
        wow.GameTooltip:SetText(self.tooltip_text, nil, nil, nil, nil, true)
    end)
    frame:SetScript("OnLeave", function ()
        wow.GameTooltip:Hide()
    end)
end

local function create_checkbox_frame(parent, point, x, y, text, checked, tooltip_text, on_click)
    local root = wow.CreateFrame("CheckButton", nil, parent, "InterfaceOptionsCheckButtonTemplate")

    root:SetPoint(point, x, y)
    root.Text:SetText(text)
    root.Text:SetFontObject(SystemFont_Shadow_Med2)
    root:SetChecked(checked)

    if tooltip_text then
        add_tooltip_for_frame(root, "ANCHOR_RIGHT", tooltip_text)
    end

    if on_click then
        root:SetScript("OnClick", on_click)
    end

    return root
end

local function create_slider_frame(parent, point, x, y, width, height, min, max, step, tooltip_text, on_value_changed)
    local root = wow.CreateFrame("Slider", nil, parent, "ClassicUA_UISliderTemplateWithLabels")

    root:SetPoint(point, x, y)
    root:SetWidth(width)
    root:SetHeight(height)
    root:SetObeyStepOnDrag(true)
    root:SetValueStep(step)
    root:SetMinMaxValues(min, max)
    root.Low:SetText(tostring(min))
    root.High:SetText(tostring(max))

    if tooltip_text then
        add_tooltip_for_frame(root, "ANCHOR_RIGHT", tooltip_text)
    end

    if on_value_changed then
        root:SetScript("OnValueChanged", on_value_changed)
    end

    return root
end

-- ----------------
-- [ quest frames ]
-- ----------------

local quest_ui = {
    set_text_hook_allowed = true,
    labels = {
        { frame=CurrentQuestsText }, -- "Current Quests"
        { frame=AvailableQuestsText }, -- "Available Quests"
        { frame=QuestInfoDescriptionHeader }, -- "Description"
        { frame=QuestInfoObjectivesHeader }, -- "Quest Objectives"
        { frame=QuestInfoRewardsFrame.Header }, -- "Rewards"
        { frame=QuestInfoRewardsFrame.ItemChooseText }, -- "You will be able to choose one of these rewards:", "Choose your reward:"
        { frame=QuestInfoRewardsFrame.ItemReceiveText }, -- "You will receive:"
        { frame=QuestInfoRewardsFrame.PlayerTitleText }, -- "You shall be granted the title:"
        { frame=QuestInfoXPFrame.ReceiveText }, -- "Experience:"
        { frame=QuestProgressRequiredItemsText }, -- "Required items:"
        { frame=QuestProgressRequiredMoneyText }, -- "Required Money:"
        { frame=QuestLogDescriptionTitle }, -- "Description"
        { frame=QuestLogRewardTitleText }, -- "Rewards"
        { frame=QuestLogItemChooseText }, -- "You will be able to choose one of these rewards:"
        { frame=QuestLogItemReceiveText }, -- "You will receive:", "You will also receive:"
    }
}

local get_currently_viewed_quest_entry = function ()
    local npc_quest_id = wow.GetQuestID and wow.GetQuestID() or nil
    if npc_quest_id and npc_quest_id > 0 then
        return get_entry("quest", npc_quest_id)
    end

    local questlog_quest_id = wow.GetQuestLogSelectedID and wow.GetQuestLogSelectedID() or nil
    if questlog_quest_id and questlog_quest_id > 0 then
        return get_entry("quest", questlog_quest_id)
    end
end

local function translate_quest_objective_task(text)
    -- try parse "LEFT: RIGHT" and translate it
    local parts = { string.split(":", text, 2) }
    if #parts == 2 and #parts[1] > 0 then
        local found_left = get_glossary_text(parts[1])
        if found_left then
            parts[1] = found_left
        elseif #parts[1] > 1 and parts[1]:sub(#parts[1], #parts[1]) == "s" then
            -- try plural => singular, e.g. "Kobold Workers" => "Kobold Worker"
            local found_singular = get_glossary_text(parts[1]:sub(1, #parts[1] - 1))
            if found_singular then
                parts[1] = found_singular
            end
        end

        local found_right = get_glossary_text(parts[2])
        if found_right then
            parts[2] = " " .. found_right
        end

        text = parts[1] .. ":" .. parts[2]
    else
        text = get_glossary_text(text, text)
    end

    return text
end

local function on_quest_frames_set_text(self, text)
    if not quest_ui.set_text_hook_allowed then
        return
    end

    local new_text = get_glossary_text(text)
    if new_text then
        quest_ui.set_text_hook_allowed = false
        self:SetText(new_text)
        quest_ui.set_text_hook_allowed = true
    end
end

local function prepare_quest_frames()
    for _, label in ipairs(quest_ui.labels) do
        if label.frame then
            wow.hooksecurefunc(label.frame, "SetText", on_quest_frames_set_text)

            -- force update (trigger SetText() hook), because some static texts never get updated
            local text = label.frame:GetText()
            if text then label.frame:SetText(text) end
        end
    end
end

-- --------------
-- [ data hooks ]
-- --------------

local function prepare_data_hooks_for_quests()
    local original_get_quest_log_title = _G.GetQuestLogTitle
    _G.GetQuestLogTitle = function (...)
        local data = { original_get_quest_log_title(...) }
        if data and type(data[1]) == "string" then
            local is_header = data[4]
            if is_header then
                data[1] = get_glossary_text(data[1], data[1])
            else
                local quest_id = data[8]
                local quest_entry = get_entry("quest", quest_id)
                if quest_entry then
                    data[1] = quest_entry[1] or data[1]
                else
                    data[1] = get_glossary_text(data[1], data[1])
                end
            end
        end
        return unpack(data)
    end

    local original_get_title_text = _G.GetTitleText
    _G.GetTitleText = function (...)
        local title = original_get_title_text(...)
        local quest_id = wow.GetQuestID()
        local quest_entry = get_entry("quest", quest_id)
        if quest_entry and type(title) == "string" then
            title = quest_entry[1] or title
        end
        return title
    end

    local original_get_quest_text = _G.GetQuestText
    _G.GetQuestText = function (...)
        local text = original_get_quest_text(...)
        local quest_id = wow.GetQuestID()
        local quest_entry = get_entry("quest", quest_id)
        if quest_entry and type(text) == "string" then
            text = quest_entry[2] or text
        end
        return text
    end

    local original_get_objective_text = _G.GetObjectiveText
    _G.GetObjectiveText = function (...)
        local text = original_get_objective_text(...)
        local quest_id = wow.GetQuestID()
        local quest_entry = get_entry("quest", quest_id)
        if quest_entry and type(text) == "string" then
            text = quest_entry[3] or text
        end
        return text
    end

    local original_get_progress_text = _G.GetProgressText
    _G.GetProgressText = function (...)
        local text = original_get_progress_text(...)
        local quest_id = wow.GetQuestID()
        local quest_entry = get_entry("quest", quest_id)
        if quest_entry and type(text) == "string" then
            text = quest_entry[4] or text
        end
        return text
    end

    local original_get_reward_text = _G.GetRewardText
    _G.GetRewardText = function (...)
        local text = original_get_reward_text(...)
        local quest_id = wow.GetQuestID()
        local quest_entry = get_entry("quest", quest_id)
        if quest_entry and type(text) == "string" then
            text = quest_entry[5] or text
        end
        return text
    end

    local original_get_quest_log_quest_text = _G.GetQuestLogQuestText
    _G.GetQuestLogQuestText = function (...)
        local data = { original_get_quest_log_quest_text(...) }
        local quest_id = wow.GetQuestLogSelectedID()
        local quest_entry = get_entry("quest", quest_id)
        if quest_entry and data then
            if type(data[1]) == "string" then data[1] = quest_entry[2] or data[1] end
            if type(data[2]) == "string" then data[2] = quest_entry[3] or data[2] end
        end
        return unpack(data)
    end

    local original_get_quest_log_leader_board = _G.GetQuestLogLeaderBoard
    _G.GetQuestLogLeaderBoard = function (...)
        local data = { original_get_quest_log_leader_board(...) }
        if data and data[1] then
            data[1] = translate_quest_objective_task(data[1])
        end
        return unpack(data)
    end
end

local function prepare_data_hooks_for_quest_greetings()
    local original_get_greeting_text = _G.GetGreetingText
    _G.GetGreetingText = function (...)
        local text = original_get_greeting_text(...)
        if text then
            local npc_id = npc_id_from_unit_id("npc")
            if npc_id then
                local text_ua = get_gossip_text_for_npc_talk(npc_id, text)
                if text_ua then
                    text = text_ua
                end
            end
        end
        return text
    end

    local original_get_available_title = _G.GetAvailableTitle
    _G.GetAvailableTitle = function (...)
        local data = { original_get_available_title(...) }
        if data and type(data[1]) == "string" then
            data[1] = get_glossary_text(data[1], data[1])
        end
        return unpack(data)
    end

    local original_get_active_title = _G.GetActiveTitle
    _G.GetActiveTitle = function (...)
        local data = { original_get_active_title(...) }
        if data and type(data[1]) == "string" then
            data[1] = get_glossary_text(data[1], data[1])
        end
        return unpack(data)
    end
end

local function prepare_data_hooks_for_gossip()
    local original_c_gossip_info_get_text = wow.C_GossipInfo.GetText
    wow.C_GossipInfo.GetText = function (...)
        local text = original_c_gossip_info_get_text(...)
        if text then
            local npc_id = npc_id_from_unit_id("npc")
            if npc_id then
                local text_ua = get_gossip_text_for_npc_talk(npc_id, text)
                if text_ua then
                    text = text_ua
                end
            end
        end
        return text
    end

    local original_c_gossip_info_get_options = wow.C_GossipInfo.GetOptions
    wow.C_GossipInfo.GetOptions = function (...)
        local list = original_c_gossip_info_get_options(...)
        local npc_id = npc_id_from_unit_id("npc")
        for _, item in ipairs(list) do
            if item and item.name then
                local text_ua = get_gossip_text_for_player_reply(npc_id, item.name)
                if text_ua then
                    item.name = text_ua
                end
            end
        end
        return list
    end

    local original_c_gossip_info_get_poi_info = wow.C_GossipInfo.GetPoiInfo
    wow.C_GossipInfo.GetPoiInfo = function (...)
        local info = original_c_gossip_info_get_poi_info(...)
        if info and info.name then
            info.name = get_glossary_text(info.name, info.name)
        end
        return info
    end

    local original_c_gossip_info_get_available_quests = wow.C_GossipInfo.GetAvailableQuests
    wow.C_GossipInfo.GetAvailableQuests = function (...)
        local list = original_c_gossip_info_get_available_quests(...)
        for _, item in ipairs(list) do
            if item.questID then
                local quest_entry = get_entry("quest", item.questID)
                item.title = quest_entry[1]
            else
                item.title = get_glossary_text(item.title, item.title)
            end
        end
        return list
    end

    local original_c_gossip_info_get_active_quests = wow.C_GossipInfo.GetActiveQuests
    wow.C_GossipInfo.GetActiveQuests = function (...)
        local list = original_c_gossip_info_get_active_quests(...)
        for _, item in ipairs(list) do
            if item.questID then
                local quest_entry = get_entry("quest", item.questID)
                item.title = quest_entry[1]
            else
                item.title = get_glossary_text(item.title, item.title)
            end
        end
        return list
    end
end

local function prepare_data_hooks_for_zones()
    local original_c_map_get_map_info = wow.C_Map.GetMapInfo
    wow.C_Map.GetMapInfo = function (...)
        local info = original_c_map_get_map_info(...)
        if info and info.name then
            info.name = get_glossary_text(info.name, info.name, "zone")
        end
        return info
    end

    local original_c_map_get_map_children_info = wow.C_Map.GetMapChildrenInfo
    wow.C_Map.GetMapChildrenInfo = function (...)
        local infos = original_c_map_get_map_children_info(...)
        for _, info in ipairs(infos) do
            if info and info.name then
                info.name = get_glossary_text(info.name, info.name, "zone")
            end
        end
        return infos
    end

    local original_c_map_get_area_info = wow.C_Map.GetAreaInfo
    wow.C_Map.GetAreaInfo = function (...)
        local info = original_c_map_get_area_info(...)
        if type(info) == "string" then
            info = get_glossary_text(info, info, "zone")
        end
        return info
    end

    local original_c_map_get_map_info_at_position = wow.C_Map.GetMapInfoAtPosition
    wow.C_Map.GetMapInfoAtPosition = function (...)
        local info = original_c_map_get_map_info_at_position(...)
        if info and info.name then
            info.name = get_glossary_text(info.name, info.name, "zone")
        end
        return info
    end

    local original_c_pvp_get_zone_pvp_info = wow.C_PvP.GetZonePVPInfo
    wow.C_PvP.GetZonePVPInfo = function (...)
        local info = { original_c_pvp_get_zone_pvp_info(...) }
        if info and info[3] then
            info[3] = get_glossary_text(info[3]) or info[3]
        end
        return unpack(info)
    end

    local original_get_instance_info = _G.GetInstanceInfo
    _G.GetInstanceInfo = function (...)
        local info = { original_get_instance_info(...) }
        if info and info[1] then
            info[1] = get_glossary_text(info[1], info[1], "zone")
        end
        return unpack(info)
    end

    local original_get_zone_text = _G.GetZoneText
    _G.GetZoneText = function (...)
        local text = original_get_zone_text(...)
        if type(text) == "string" then
            text = get_glossary_text(text, text, "zone")
        end
        return text
    end

    local original_get_real_zone_text = _G.GetRealZoneText
    _G.GetRealZoneText = function (...)
        local text = original_get_real_zone_text(...)
        if type(text) == "string" then
            text = get_glossary_text(text, text, "zone")
        end
        return text
    end

    local original_get_sub_zone_text = _G.GetSubZoneText
    _G.GetSubZoneText = function (...)
        local text = original_get_sub_zone_text(...)
        if type(text) == "string" then
            text = get_glossary_text(text, text, "zone")
        end
        return text
    end

    local original_get_area_text = _G.GetAreaText
    _G.GetAreaText = function (...)
        local text = original_get_area_text(...)
        if type(text) == "string" then
            text = get_glossary_text(text, text, "zone")
        end
        return text
    end

    local original_get_minimap_zone_text = _G.GetMinimapZoneText
    _G.GetMinimapZoneText = function (...)
        local text = original_get_minimap_zone_text(...)
        if type(text) == "string" then
            text = get_glossary_text(text, text, "zone")
        end
        return text
    end

    -- force minimap update, otherwise it will show original zone name until player changes zone
    wow.Minimap_Update()
end

---@type integer?
local book_item_id = nil

local function prepare_data_hooks_for_item_texts()
    local original_item_text_get_text = _G.ItemTextGetText
    _G.ItemTextGetText = function (...)
        local text = original_item_text_get_text(...)
        local book = get_entry("book", book_item_id)
        if book then
            local page = wow.ItemTextGetPage()
            if book[page] then
                text = book[page]
            end
        end
        return text
    end

    local original_item_text_get_item = _G.ItemTextGetItem
    _G.ItemTextGetItem = function (...)
        local text = original_item_text_get_item(...)
        -- book_item_id is not ready at this moment, so we use last mouse hovered item
        if wow.GameTooltip.classicua.entry_type == "item" then
            local item_id = wow.GameTooltip.classicua.entry_id
            local item = get_entry("item", item_id)
            if item then
                text = capitalize(item[1])
            end
        end
        return text
    end
end

local function item_text_begin()
    -- we store last mouse hovered item in separate variable, because player can mouse over
    -- many items before closing the book, so we keep id of currently opened book for correct
    -- pages lookup in ItemTextGetText() hook
    if wow.GameTooltip.classicua.entry_type == "item" then
        book_item_id = wow.GameTooltip.classicua.entry_id
    end
end

local function item_text_closed()
    book_item_id = nil
end

-- ----------------
-- [ target frame ]
-- ----------------

local function update_target_frame_text()
    local npc_id = npc_id_from_unit_id("target")
    if npc_id then
        local entry = get_entry("npc", npc_id)
        if entry then
            wow.TargetFrame.name:SetText(capitalize(entry[1]))
        elseif options.dev_mode then
            dev_log_missing_npc(npc_id, wow.UnitName("target"))
        end
    end
end

-- ---------------
-- [ name plates ]
-- ---------------

wow.hooksecurefunc("CompactUnitFrame_UpdateName", function (self)
    if wow.ShouldShowName(self) and not self:IsForbidden() then
        local npc_id = npc_id_from_unit_id(self.unit)
        if npc_id then
            local entry = get_entry("npc", npc_id)
            if entry then
                self.name:SetText(capitalize(entry[1]))
            elseif options.dev_mode then
                dev_log_missing_npc(npc_id, wow.UnitName(self.unit))
            end
        end
    end
end)

-- --------
-- [ chat ]
-- --------

local known_chat_msg_events = {
    CHAT_MSG_MONSTER_EMOTE      = { info=wow.ChatTypeInfo.MONSTER_EMOTE,        verb=false },
    CHAT_MSG_MONSTER_PARTY      = { info=wow.ChatTypeInfo.MONSTER_PARTY,        verb="говорить" },
    CHAT_MSG_MONSTER_SAY        = { info=wow.ChatTypeInfo.MONSTER_SAY,          verb="говорить" },
    CHAT_MSG_MONSTER_WHISPER    = { info=wow.ChatTypeInfo.MONSTER_WHISPER,      verb="шепоче" },
    CHAT_MSG_MONSTER_YELL       = { info=wow.ChatTypeInfo.MONSTER_YELL,         verb="вигукує" },
    CHAT_MSG_RAID_BOSS_EMOTE    = { info=wow.ChatTypeInfo.RAID_BOSS_EMOTE,      verb=false },
    CHAT_MSG_RAID_BOSS_WHISPER  = { info=wow.ChatTypeInfo.RAID_BOSS_WHISPER,    verb="шепоче" },
}

local function filter_chat_msg(self, event, chat_text, npc_name, ...)
    local known_event = known_chat_msg_events[event]
    if not known_event then
        return nil, chat_text, npc_name, ...
    end

    if npc_name == wow.UnitName("player") then
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
        wow.C_Timer.After(0.01, function ()
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
        assets.icon_ua .. " " .. chat_message,
        known_event.info.r,
        known_event.info.g,
        known_event.info.b
    )

    return true
end

for event_name, _ in pairs(known_chat_msg_events) do
    wow.ChatFrame_AddMessageEventFilter(event_name, filter_chat_msg)
end

-- ---------
-- [ fonts ]
-- ---------

local function prepare_fonts()
    if not options.override_system_fonts then
        return
    end

    local font_overrides = {
        { name="GameFontNormal",        file=assets.font_frizqt },
        { name="GameFontNormalLarge",   file=assets.font_frizqt },
        { name="GameTooltipHeader",     file=assets.font_frizqt },
        { name="MailFont_Large",        file=assets.font_morpheus },
        { name="PVPInfoTextFont",       file=assets.font_frizqt },
        { name="QuestFont_Huge",        file=assets.font_morpheus },
        { name="QuestFont_Large",       file=assets.font_morpheus },
        { name="QuestFont_Larger",      file=assets.font_morpheus },
        { name="QuestFont",             file=assets.font_frizqt },
        { name="QuestFontNormalSmall",  file=assets.font_frizqt },
        { name="SubZoneTextFont",       file=assets.font_frizqt },
        { name="Tooltip_Med",           file=assets.font_frizqt },
        { name="Tooltip_Small",         file=assets.font_frizqt },
        { name="WorldMapTextFont",      file=assets.font_frizqt },
        { name="ZoneTextFont",          file=assets.font_frizqt },
    }

    for _, f in ipairs(font_overrides) do
        local font = _G[f.name]
        if font then
            local _, font_height, font_flags = font:GetFont()
            font:SetFont(f.file, font_height, font_flags)
        end
    end
end

-- -----------------
-- [ options frame ]
-- -----------------

wow.StaticPopupDialogs["CLASSICUA_CONFIRM_DEV_LOG_RESET"] = {
    text = "Дійсно скинути всі накопичені дані?",
    button1 = "Так",
    button2 = "Ні",
    OnAccept = dev_log_reset,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true
}

wow.StaticPopupDialogs["CLASSICUA_CONFIRM_RELOAD_UI"] = {
    text = "Дійсно перезавантажити інтерфейс гри?",
    button1 = "Так",
    button2 = "Ні",
    OnAccept = wow.ReloadUI,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true
}

wow.StaticPopupDialogs["CLASSICUA_CONFIRM_SETTINGS_RESET"] = {
    text = "Дійсно скинути всі налаштування за замовчуванням?\n\n(Відмінювання імен персонажів скинуто не буде.)",
    button1 = "Так",
    button2 = "Ні",
    OnAccept = reset_options,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true
}

local function setup_player_name_cases_frame(content_frame)
    local root = wow.CreateFrame("Frame", "ClassicUA_Player_Options", content_frame)
    root:SetPoint("BOTTOMLEFT", 0, 0)

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
        label:SetFontObject(fonts.content)
        label:SetTextColor(0, 0, 0)
        label:SetText(case_name)

        local edit_box = wow.CreateFrame("EditBox", nil, root, "InputBoxTemplate")
        edit_box:SetPoint("TOPLEFT", x, y - 4)
        edit_box:SetSize(edit_box_width, 40)
        edit_box:SetAutoFocus(false)
        edit_box:SetMaxLetters(40)

        edit_box:SetText(character_options.name_cases[case_key] or "")
        edit_box:SetCursorPosition(0)
        edit_box.case_key = case_key

        edit_box:SetScript("OnTextChanged", function (self, is_user_input)
            if is_user_input then
                local new_text = string.trim(self:GetText() or "")
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

    root:SetSize(content_frame:GetWidth(), 16 + 4 * 40)
    return root
end

local function setup_dev_mode_frame(content_frame)
    local root = wow.CreateFrame("Frame", "ClassicUA_Dev_Mode_Options", content_frame)
    root:SetPoint("BOTTOMLEFT", 0, 0)

    options_frame.dev_mode_checkbox = create_checkbox_frame(
        root, "TOPLEFT", 24, 0,
        "Режим розробки",
        options.dev_mode,
        nil,
        function (self) options.dev_mode = self:GetChecked() end
    )

    options_frame.dev_mode_notify_activity_checkbox = create_checkbox_frame(
        root, "TOPLEFT", 24, -24,
        "Сповіщення активності",
        options.dev_mode_notify_activity,
        "Сповіщати в чат кожен раз при знаходженні нового відсутнього запису.",
        function (self) options.dev_mode_notify_activity = self:GetChecked() end
    )

    local stats_btn = wow.CreateFrame("Button", nil, root, "UIPanelButtonTemplate")
    stats_btn:SetPoint("TOPLEFT", 24, -64)
    stats_btn:SetText("Статистика")
    stats_btn:SetSize(140, 28)
    stats_btn:SetScript("OnClick", function()
        dev_log_print_stats()
    end)

    local reset_btn = wow.CreateFrame("Button", nil, root, "UIPanelButtonTemplate")
    reset_btn:SetPoint("TOPLEFT", 24 + 160, -64)
    reset_btn:SetText("Скинути")
    reset_btn:SetSize(140, 28)
    reset_btn:SetScript("OnClick", function()
        wow.StaticPopup_Show("CLASSICUA_CONFIRM_DEV_LOG_RESET")
    end)

    root:SetSize(content_frame:GetWidth(), 16 + 64 + 28)
    return root
end

local function prepare_options_frame()
    local at_info = addonTable.info
    options_frame = wow.CreateFrame("Frame", "ClassicUA_Options_Frame")
    local f = nil

    -- title

    f = options_frame:CreateFontString()
    f:SetPoint("TOPLEFT", 26, -20)
    f:SetFontObject(SystemFont_Huge2)
    f:SetText("|cff1177eeClassic|r|cffffdd00UA|r")

    -- version & stats

    f = options_frame:CreateFontString()
    f:SetPoint("TOPRIGHT", -24, -20)
    f:SetFontObject(SystemFont_Med2)
    f:SetJustifyH("LEFT")
    local stats = get_stats()
    f:SetText(
        "Версія: " .. wow.GetAddOnMetadata("ClassicUA", "Version") .. "\n"
        .. "— завдань: " .. stats.quest_alliance + stats.quest_horde + stats.quest_both .. "\n"
        .. "— книжок: " .. stats.book .. "\n"
        .. "— локацій: " .. stats.zone .. "\n"
        .. "— персонажів: " .. stats.npc .. "\n"
        .. "— предметів: " .. stats.item .. "\n"
        .. "— об'єктів: " .. stats.object .. "\n"
        .. "— заклять: " .. stats.spell
    )

    -- reload button

    f = wow.CreateFrame("Button", "$parent.Reload", options_frame, "UIPanelButtonTemplate")
    f:SetPoint("TOPRIGHT", -46, -130)
    f:SetText("/reload")
    f:SetSize(100, 24)
    f:SetScript("OnClick", function()
        wow.StaticPopup_Show("CLASSICUA_CONFIRM_RELOAD_UI")
    end)
    f:SetScript("OnEnter", function(self)
        local memory_usage_text = ""
        wow.UpdateAddOnMemoryUsage()
        for i = 1, wow.GetNumAddOns() do
            local name = wow.GetAddOnInfo(i)
            if name == "ClassicUA" then
                local megabytes = wow.GetAddOnMemoryUsage(i) / 1024
                memory_usage_text = string.format("\n\nВикористання пам'яті: %.1f Мб", megabytes)
            end
        end
        wow.GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        wow.GameTooltip:SetText(
            "Перезавантажити інтерфейс гри. Деякі зміни в налаштуваннях будуть помітні лише після такої операції."
            .. memory_usage_text,
            nil, nil, nil, nil, true
        )
    end)
    f:SetScript("OnLeave", function()
        wow.GameTooltip:Hide()
    end)

    -- reset button

    f = wow.CreateFrame("Button", "$parent.Reset", options_frame, "UIPanelButtonTemplate")
    f:SetPoint("TOPRIGHT", -46, -158)
    f:SetText("Скинути")
    f:SetSize(100, 24)
    f:SetScript("OnClick", function()
        wow.StaticPopup_Show("CLASSICUA_CONFIRM_SETTINGS_RESET")
    end)
    add_tooltip_for_frame(f, "ANCHOR_RIGHT",
        "Скинути всі налаштування за замовчуванням. Деякі зміни будуть помітні лише після перезавантаження інтерфейсу гри."
    )

    -- options.override_system_fonts

    options_frame.override_system_fonts_checkbox = create_checkbox_frame(
        options_frame, "TOPLEFT", 24, -80,
        "Заміняти стандартні шрифти",
        options.override_system_fonts,
        "Заміняти стандартні шрифти на аналогічні з українськими літерами. Інакше деякі літери можуть відображатися некоректно.\n\nРекомендовано вимкнути при використанні іншого аддону для заміни шрифтів.",
        function (self) options.override_system_fonts = self:GetChecked() end
    )

    -- tabs

    options_frame.current_tab = wow.CreateFrame("Frame", "$parent.Current_Tab", options_frame, "BackdropTemplate")
    options_frame.current_tab:SetPoint("TOPLEFT", 24, -224)
    options_frame.current_tab:SetSize(600, 340)
    setup_frame_background_and_border(options_frame.current_tab)
    setup_frame_scrollbar_and_content(options_frame.current_tab, {
        title = { font=fonts.header },
        text = { font=fonts.content },
    }, options_frame.current_tab:GetWidth() - 16)

    options_frame.current_tab_index = -1
    options_frame.tab_buttons = {}
    options_frame.tab_child_frames = {}

    for tab_index, tab_data in ipairs({
        {
            title                   = "Персонаж",
            content_title           = "Персонаж: " .. wow.UnitName("player"),
            content_text            = at_info.player_character_desc,
            child_frame_setup_func  = setup_player_name_cases_frame
        }, {
            title                   = "Розробка",
            content_title           = "Розробка",
            content_text            = at_info.dev_mode_desc:gsub("@GAME_SUB_DIR", is_classic and "_classic_era_" or "_classic_"),
            child_frame_setup_func  = setup_dev_mode_frame
        }, {
            title                   = "Оновлення",
            content_title           = "Оновлення",
            content_text            = at_info.changelog
        }, {
            title                   = "Причетні",
            content_title           = "Причетні",
            content_text            = at_info.contributors
        }
    }) do
        local f = wow.CreateFrame("Button", "$parent.Tab_Button_" .. tab_index, options_frame, "UIPanelButtonTemplate")
        table.insert(options_frame.tab_buttons, f)
        f.tab_index = tab_index
        f.tab_data = tab_data
        f:SetSize(100, 32)
        f:SetPoint("TOPLEFT", 24 + tab_index * f:GetWidth(), -200)
        f:SetText(f.tab_data.title)
        f:SetScript("OnClick", function (self)
            options_frame.select_tab(self.tab_index)
        end)

        options_frame.tab_child_frames[tab_index] = nil
        if tab_data.child_frame_setup_func then
            options_frame.tab_child_frames[tab_index] = tab_data.child_frame_setup_func(options_frame.current_tab.content)
            options_frame.tab_child_frames[tab_index]:Hide()
        end
    end

    options_frame.update_tab_scrollbar = function ()
        local of = options_frame

        if of.current_tab_index == -1 then
            return
        end

        local child_frame = of.tab_child_frames[of.current_tab_index]
        if child_frame then
            local h = of.current_tab.content_tab_base_height + child_frame:GetHeight()
            setup_frame_scrollbar_values(of.current_tab, h, true)
        end
    end

    options_frame.select_tab = function (tab_index, force_refresh)
        local of = options_frame

        if tab_index == of.current_tab_index and not force_refresh then
            return
        end

        local tab_button = of.tab_buttons[tab_index]

        for _, btn_frame in ipairs(of.tab_buttons) do
            if btn_frame.tab_index ~= tab_button.tab_index then
                btn_frame:UnlockHighlight()
            end
        end

        set_text_frame_content(of.current_tab, tab_button.tab_data.content_title, tab_button.tab_data.content_text)
        of.current_tab.content_tab_base_height = of.current_tab.content:GetHeight()
        of.current_tab_index = tab_button.tab_index
        tab_button:LockHighlight()

        for child_frame_index in pairs(of.tab_child_frames) do
            child_frame = of.tab_child_frames[child_frame_index]
            if child_frame and child_frame_index ~= tab_button.tab_index then
                child_frame:Hide()
            end
        end

        local child_frame = of.tab_child_frames[tab_button.tab_index]
        if child_frame then
            child_frame:Show()
            of.update_tab_scrollbar()
        end
    end

    options_frame.select_tab(1)

    -- setup options frame details

    options_frame.name = "ClassicUA"
    options_frame.default = reset_options
    options_frame.refresh = function ()
        local of = options_frame
        of.override_system_fonts_checkbox:SetChecked(options.override_system_fonts)
        of.dev_mode_checkbox:SetChecked(options.dev_mode)
        of.dev_mode_notify_activity_checkbox:SetChecked(options.dev_mode_notify_activity)
    end

    options_frame.refresh()

    -- force tab reselection to fix font rendering issue on game cold start
    options_frame.was_shown_once = false
    options_frame:SetScript("OnShow", function (self)
        if not options_frame.was_shown_once then
            options_frame.was_shown_once = true
            options_frame.select_tab(options_frame.current_tab_index, true)
        end
    end)

    -- add options frame to Options -> AddOns

    if wow.Settings and wow.Settings.RegisterCanvasLayoutCategory and wow.Settings.RegisterAddOnCategory then
        local category = wow.Settings.RegisterCanvasLayoutCategory(options_frame, options_frame.name)
        wow.Settings.RegisterAddOnCategory(category)
        options_frame.category_id = category:GetID()
    elseif wow.InterfaceOptions_AddCategory then
        wow.InterfaceOptions_AddCategory(options_frame)
    else
        dev_log_issue("не визначено способу додати вікно налаштувань аддону")
    end
end

local function open_options()
    if wow.Settings and wow.Settings.OpenToCategory then
        wow.Settings.OpenToCategory(options_frame.category_id)
    elseif wow.InterfaceAddOnsList_Update and wow.InterfaceOptionsFrame_OpenToCategory then
        wow.InterfaceAddOnsList_Update()
        wow.InterfaceOptionsFrame_OpenToCategory(options_frame)
    else
        dev_log_issue("не визначено способу відкрити вікно налаштувань аддону")
    end
end

local function prepare_slash_command()
    _G.SLASH_CLASSICUA_SETTINGS1 = "/ua"
    wow.SlashCmdList.CLASSICUA_SETTINGS = function ()
        open_options()
    end
end

-- ----------
-- [ events ]
-- ----------

local event_frame = wow.CreateFrame("Frame")

event_frame:RegisterEvent("ADDON_LOADED")
event_frame:RegisterEvent("PLAYER_LOGIN")
event_frame:RegisterEvent("PLAYER_TARGET_CHANGED")
event_frame:RegisterEvent("ITEM_TEXT_BEGIN")
event_frame:RegisterEvent("ITEM_TEXT_CLOSED")

event_frame:SetScript("OnEvent", function (self, event, ...)
    if event == "ADDON_LOADED" then
        self:UnregisterEvent("ADDON_LOADED")

        prepare_options()
        prepare_options_frame()
        prepare_slash_command()
        prepare_fonts()

        wow.DEFAULT_CHAT_FRAME:AddMessage(
            assets.icon_ua
            .. " ClassicUA v" .. wow.GetAddOnMetadata("ClassicUA", "Version")
            .. " — |cffffbb22" .. _G.SLASH_CLASSICUA_SETTINGS1 .. "|r"
            .. (options.dev_mode and " — Режим розробки" or "")
        )

    elseif event == "PLAYER_LOGIN" then
        local name = wow.UnitName("player")
        local _, class = wow.UnitClass("player")
        local _, race = wow.UnitRace("player")
        local sex = wow.UnitSex("player")
        local faction = wow.UnitFactionGroup("player")

        prepare_talent_tree(class)
        prepare_quests(faction == "Alliance")
        prepare_glossary()
        prepare_codes(name, race, class, sex == 2) -- 2 for male
        prepare_get_text_code_replace_seq(name)
        prepare_quest_frames()
        prepare_data_hooks_for_quests()
        prepare_data_hooks_for_quest_greetings()
        prepare_data_hooks_for_gossip()
        prepare_data_hooks_for_zones()
        prepare_data_hooks_for_item_texts()

    elseif event == "PLAYER_TARGET_CHANGED" then
        update_target_frame_text()

    elseif event == "ITEM_TEXT_BEGIN" then
        item_text_begin()

    elseif event == "ITEM_TEXT_CLOSED" then
        item_text_closed()

    end
end)
