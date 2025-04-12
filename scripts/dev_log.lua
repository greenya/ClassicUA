local _, addon_table = ...

local assets    = addon_table.use("assets") ---@class assets_class
local dev_log   = addon_table.use("dev_log") ---@class dev_log_class
local options   = addon_table.use("options") ---@class options_class
local utils     = addon_table.use("utils") ---@class utils_class

local string_match  = _G.string.match
local string_trim   = _G.string.trim

local log ---@class dev_log_state_class
local default_log = {
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

local function dev_print(text)
    DEFAULT_CHAT_FRAME:AddMessage(assets.icon_ua_inline .. " |cff4488aa[Розробка] " .. text .. "|r")
end

local function log_init()
    log.addon_version = GetAddOnMetadata("ClassicUA", "Version")
    log.game_version = GetBuildInfo()
    log.game_expansion = utils.expansion_key

    if not log.missing_quests           then log.missing_quests = {} end
    if not log.missing_npcs             then log.missing_npcs = {} end
    if not log.missing_items            then log.missing_items = {} end
    if not log.missing_spells           then log.missing_spells = {} end
    if not log.missing_books            then log.missing_books = {} end
    if not log.missing_gossips          then log.missing_gossips = {} end
    if not log.missing_chats            then log.missing_chats = {} end
    if not log.missing_zones            then log.missing_zones = {} end
    if not log.missing_objects          then log.missing_objects = {} end
    if not log.missing_sod_engravings   then log.missing_sod_engravings = {} end
    if not log.issues                   then log.issues = {} end
end

dev_log.prepare = function ()
    ClassicUA_DevLog = ClassicUA_DevLog or utils.copy_table({}, default_log)
    log = ClassicUA_DevLog
    utils.table_sync_keys(log, default_log)
    log_init()
end

dev_log.reset = function ()
    ClassicUA_DevLog = utils.copy_table({}, default_log)
    log = ClassicUA_DevLog
    log_init()
    dev_print("Всі накопичені дані скинуто.")
end

dev_log.print_stats = function ()
    dev_print("-------- Статистика накопичених даних --------")
    dev_print("Відсутні завдання: "     .. utils.table_keys_count(log.missing_quests))
    dev_print("Відсутні персонажі: "    .. utils.table_keys_count(log.missing_npcs))
    dev_print("Відсутні предмети: "     .. utils.table_keys_count(log.missing_items))
    dev_print("Відсутні закляття: "     .. utils.table_keys_count(log.missing_spells))
    dev_print("Відсутні книжки: "       .. utils.table_keys_count(log.missing_books))
    dev_print("Відсутні плітки: "       .. utils.table_keys_count(log.missing_gossips))
    dev_print("Відсутні чати: "         .. utils.table_keys_count(log.missing_chats))
    dev_print("Відсутні зони: "         .. utils.table_keys_count(log.missing_zones))
    dev_print("Відсутні об'єкти: "      .. utils.table_keys_count(log.missing_objects))
    if utils.is_classic_sod then
        dev_print("Відсутні SOD гравіювання: " .. utils.table_keys_count(log.missing_sod_engravings))
    end
    dev_print("Помилки: "               .. utils.table_keys_count(log.issues))
    dev_print("----------------------------------------------")
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

dev_log.missing_book_page = function (book_id, page_number, page_text)
    book_id = tonumber(book_id)
    if not book_id then
        return
    end

    if not log.missing_books[book_id] then
        log.missing_books[book_id] = {}
    end

    local page_number_text = tostring(page_number)
    local page_key = "page_" .. page_number_text

    if log.missing_books[book_id][page_key] then
        return
    end

    if options.account.dev_mode_notify_activity then
        dev_print("Відсутня сторінка " .. page_number_text .. " книги #" .. book_id)
    end

    log.missing_books[book_id][page_key] = page_text
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

    log.missing_gossips[npc_id][gossip_code] = { gossip_text_en, is_reply=is_reply }
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

    log.missing_chats[npc_name][chat_code] = { chat_text_en, lang_name=lang_name }
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
