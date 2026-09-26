local _, addon_table = ...

local assets    = addon_table.use("assets") ---@class assets_class
local dev_log   = addon_table.use("dev_log") ---@class dev_log_class
local options   = addon_table.use("options") ---@class options_class
local utils     = addon_table.use("utils") ---@class utils_class

local string_match  = _G.string.match
local string_trim   = _G.string.trim
local table_concat  = _G.table.concat

local log ---@class dev_log_state_class
local default_log = {
    addon_version = "???",
    game_version = "???",
    game_expansion = "???",
    missing_quests = {},
    missing_npcs = {},
    missing_items = {},
    missing_spells = {},
    missing_item_texts = {},
    missing_gossips = {},
    missing_chats = {},
    missing_zones = {},
    missing_objects = {},
    missing_object_texts = {},
    missing_sod_engravings = {},
    issues = {}
}

local function dev_print(text)
    DEFAULT_CHAT_FRAME:AddMessage(assets.icon_ua_inline .. " |cff4488aa[Розробка] " .. text .. "|r")
end

local function log_init()
    log.addon_version = utils.addon_version()
    log.game_version = GetBuildInfo()
    log.game_expansion = utils.expansion_key

    if not log.missing_quests           then log.missing_quests = {} end
    if not log.missing_npcs             then log.missing_npcs = {} end
    if not log.missing_items            then log.missing_items = {} end
    if not log.missing_spells           then log.missing_spells = {} end
    if not log.missing_item_texts       then log.missing_item_texts = {} end
    if not log.missing_gossips          then log.missing_gossips = {} end
    if not log.missing_chats            then log.missing_chats = {} end
    if not log.missing_zones            then log.missing_zones = {} end
    if not log.missing_objects          then log.missing_objects = {} end
    if not log.missing_object_texts     then log.missing_object_texts = {} end
    if not log.missing_sod_engravings   then log.missing_sod_engravings = {} end
    if not log.issues                   then log.issues = {} end
end

-- an error raised with ClassicUA mentioned goes to the issues in dev mode
-- otherwise the player is asked, once per session, to turn dev mode on, and the errors are kept in memory until then
local is_error_notice_shown = false
local unrecorded_errors = {} -- [message] = stack, or false without one

-- a chat link to the dev page - opened by options_ext_ui
dev_log.page_link_id = "addon:ClassicUA:dev"
dev_log.page_link = "|cff4488ff|H" .. dev_log.page_link_id .. "|h[Розробка]|h|r"

local function on_lua_error(message, stack)
    if type(message) ~= "string" or utils.is_secret(message) or not message:find("ClassicUA", 1, true) then
        return
    end

    -- WoW: Forever may hand out the stack as a secret, which could not be shown with the data later
    if utils.is_secret(stack) then
        stack = nil
    end

    if options.account.dev_mode then
        dev_log.issue(message, stack)
        return
    end

    unrecorded_errors[message] = unrecorded_errors[message] or stack or false

    if not is_error_notice_shown then
        is_error_notice_shown = true
        DEFAULT_CHAT_FRAME:AddMessage(assets.icon_ua_inline .. " |cffff8844ClassicUA: сталася помилка. Щоб допомогти"
            .. " нам її виправити, увімкніть режим розробки на сторінці|r " .. dev_log.page_link)
    end
end

dev_log.prepare = function ()
    ClassicUA_DevLog = ClassicUA_DevLog or utils.copy_table_deep({}, default_log)
    log = ClassicUA_DevLog
    utils.table_sync_keys(log, default_log)
    log_init()

    local game_error_handler = geterrorhandler()
    seterrorhandler(function (message, ...)
        -- the stack from the error on: level 1 is this handler, level 2 the game calling it, level 3 the error itself
        pcall(on_lua_error, message, debugstack(3))
        return game_error_handler(message, ...)
    end)

    -- BugGrabber disables seterrorhandler() above, but announces every error it catches; its users see the errors, so
    -- ours are only recorded in dev mode
    if BugGrabber then
        EventRegistry:RegisterCallback("BugGrabber.BugGrabbed", function (_, error_id)
            local is_found, error_object = pcall(BugGrabber.GetErrorByID, BugGrabber, error_id)
            if options.account.dev_mode and is_found and error_object then
                pcall(on_lua_error, error_object.message, error_object.stack)
            end
        end)
    end
end

-- called once dev mode is turned on
dev_log.record_unrecorded_errors = function ()
    for message, stack in pairs(unrecorded_errors) do
        dev_log.issue(message, stack)
    end
    unrecorded_errors = {}
end

dev_log.reset = function ()
    ClassicUA_DevLog = utils.copy_table_deep({}, default_log)
    log = ClassicUA_DevLog
    log_init()
    dev_print("Всі накопичені дані очищено.")
end

local stat_entries = {
    { key = "missing_quests",           name = "Завдання" },
    { key = "missing_npcs",             name = "Персонажі" },
    { key = "missing_items",            name = "Предмети" },
    { key = "missing_spells",           name = "Закляття" },
    { key = "missing_item_texts",       name = "Тексти предметів" },
    { key = "missing_gossips",          name = "Плітки" },
    { key = "missing_chats",            name = "Чати" },
    { key = "missing_zones",            name = "Локації" },
    { key = "missing_objects",          name = "Об'єкти" },
    { key = "missing_object_texts",     name = "Тексти об'єктів" },
    { key = "missing_sod_engravings",   name = "Гравіювання", sod_only = true },
    { key = "issues",                   name = "Помилки" },
}

dev_log.get_stats = function ()
    local stats = {}

    for _, entry in ipairs(stat_entries) do
        if not entry.sod_only or utils.is_classic_sod then
            stats[#stats + 1] = {
                name = entry.name,
                count = log and utils.table_keys_count(log[entry.key]) or 0,
            }
        end
    end

    return stats
end

local function quote_string(text)
    text = text:gsub("\\", "\\\\"):gsub("\"", "\\\""):gsub("\n", "\\n"):gsub("\r", "\\r"):gsub("|", "\\124")
    return "\"" .. text .. "\""
end

local serialize_value

local function serialize_table(t, out)
    out[#out + 1] = "{"

    local array_len = #t
    for i = 1, array_len do
        serialize_value(t[i], out)
        out[#out + 1] = ","
    end

    for key, value in pairs(t) do
        local is_array_index = type(key) == "number" and key >= 1 and key <= array_len
        if not is_array_index then
            if type(key) == "number" then
                out[#out + 1] = "[" .. key .. "]="
            else
                out[#out + 1] = "[" .. quote_string(key) .. "]="
            end
            serialize_value(value, out)
            out[#out + 1] = ","
        end
    end

    out[#out + 1] = "}"
end

serialize_value = function (value, out)
    local value_type = type(value)

    if value_type == "string" then
        out[#out + 1] = quote_string(value)
    elseif value_type == "number" or value_type == "boolean" then
        out[#out + 1] = tostring(value)
    elseif value_type == "table" then
        serialize_table(value, out)
    else
        out[#out + 1] = "nil"
    end
end

dev_log.serialize = function ()
    local out = { "ClassicUA_DevLog = " }
    serialize_value(ClassicUA_DevLog or {}, out)
    return table_concat(out)
end

dev_log.issue = function (key, data)
    key = string_trim(key or "???")

    if not options.account.dev_mode or log.issues[key] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Помилка: " .. key)
    end

    log.issues[key] = data and data or true
end

dev_log.issue_entry = function (entry_type, entry_id, key, data)
    dev_log.issue(entry_type .. "#" .. tostring(entry_id) .. ": " .. key, data)
end

dev_log.missing_quest = function (quest_id)
    quest_id = tonumber(quest_id)
    if not quest_id then
        return
    end

    if log.missing_quests[quest_id] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутнє завдання #" .. tostring(quest_id))
    end

    log.missing_quests[quest_id] = true
end

dev_log.missing_npc = function (npc_id, npc_name)
    npc_id = tonumber(npc_id)
    if not npc_id then
        return
    end

    if log.missing_npcs[npc_id] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутній персонаж #" .. tostring(npc_id) .. " " .. npc_name)
    end

    log.missing_npcs[npc_id] = npc_name
end

dev_log.missing_item = function (item_id, item_name)
    item_id = tonumber(item_id)
    if not item_id then
        return
    end

    if log.missing_items[item_id] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутній предмет #" .. tostring(item_id) .. " " .. item_name)
    end

    log.missing_items[item_id] = item_name
end

dev_log.missing_spell = function (spell_id, spell_name)
    spell_id = tonumber(spell_id)
    if not spell_id then
        return
    end

    if log.missing_spells[spell_id] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутнє закляття #" .. tostring(spell_id) .. " " .. spell_name)
    end

    log.missing_spells[spell_id] = spell_name
end

dev_log.missing_sod_engraving = function (sod_engraving_id, sod_engraving_name)
    sod_engraving_id = tonumber(sod_engraving_id)
    if not sod_engraving_id then
        return
    end

    if log.missing_sod_engravings[sod_engraving_id] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутнє SOD гравіювання #" .. tostring(sod_engraving_id) .. " " .. sod_engraving_name)
    end

    log.missing_sod_engravings[sod_engraving_id] = sod_engraving_name
end

dev_log.missing_item_text = function (item_id, page_number, page_text)
    item_id = tonumber(item_id)
    if not item_id then
        return
    end

    if not log.missing_item_texts[item_id] then
        log.missing_item_texts[item_id] = {}
    end

    local page_number_text = tostring(page_number)
    local page_key = "page_" .. page_number_text

    if log.missing_item_texts[item_id][page_key] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутня сторінка " .. page_number_text .. " книги #" .. item_id)
    end

    log.missing_item_texts[item_id][page_key] = page_text
end

dev_log.missing_gossip = function (npc_id, gossip_code, gossip_text_en, is_reply)
    npc_id = tonumber(npc_id)
    if not npc_id then
        return
    end

    if not log.missing_gossips[npc_id] then
        log.missing_gossips[npc_id] = {}
    end

    if log.missing_gossips[npc_id][gossip_code] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутня плітка \"" .. gossip_code:sub(0,20) .. "\" для персонажа #" .. npc_id)
    end

    log.missing_gossips[npc_id][gossip_code] = { string_trim(gossip_text_en), is_reply=is_reply }
end

dev_log.missing_chat_text = function (npc_name, chat_code, chat_text_en, lang_name)
    if not log.missing_chats[npc_name] then
        log.missing_chats[npc_name] = {}
    end

    if log.missing_chats[npc_name][chat_code] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутній чат \"" .. chat_code:sub(0,20) .. "\" для " .. npc_name)
    end

    log.missing_chats[npc_name][chat_code] = { string_trim(chat_text_en), lang_name=lang_name }
end

dev_log.missing_zone = function (zone_name)
    zone_name = string_trim(zone_name or "???")

    if not string_match(zone_name, "%w") then
        -- skip non-English zone name
        return
    end

    if log.missing_zones[zone_name] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутня зона \"" .. zone_name .. "\"")
    end

    log.missing_zones[zone_name] = true
end

dev_log.missing_object = function (object_name)
    object_name = string_trim(object_name or "???")

    if log.missing_objects[object_name] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутній об'єкт \"" .. object_name .. "\"")
    end

    log.missing_objects[object_name] = true
end

dev_log.missing_object_text = function (object_name, page_number, page_text)
    object_name = string_trim(object_name or "???")

    if not log.missing_object_texts[object_name] then
        log.missing_object_texts[object_name] = {}
    end

    local page_key = "page_" .. tostring(page_number)
    if log.missing_object_texts[object_name][page_key] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутній текст об'єкта \"" .. object_name .. "\" (сторінка " .. tostring(page_number) .. ")")
    end

    log.missing_object_texts[object_name][page_key] = page_text or true
end
