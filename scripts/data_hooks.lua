local _, addon_table = ...

local data_hooks = addon_table.data_hooks ---@class data_hooks_class
local entries = addon_table.entries ---@class entries_class
local utils = addon_table.utils ---@class utils_class

local string_trim           = _G.string.trim
local GetQuestID            = _G.GetQuestID
local GetQuestLogSelectedID = _G.GetQuestLogSelectedID

data_hooks.preferred_lang = "uk" -- "en" or "uk" only
data_hooks.original = {
    -- quests
    GetQuestLogTitle                = _G.GetQuestLogTitle,
    GetTitleText                    = _G.GetTitleText,
    GetQuestText                    = _G.GetQuestText,
    GetObjectiveText                = _G.GetObjectiveText,
    GetProgressText                 = _G.GetProgressText,
    GetRewardText                   = _G.GetRewardText,
    GetQuestLogQuestText            = _G.GetQuestLogQuestText,
    GetQuestLogLeaderBoard          = _G.GetQuestLogLeaderBoard,
    -- quest greetings
    GetGreetingText                 = _G.GetGreetingText,
    GetAvailableTitle               = _G.GetAvailableTitle,
    GetActiveTitle                  = _G.GetActiveTitle,
    -- gossips
    C_GossipInfo_GetText            = _G.C_GossipInfo.GetText,
    C_GossipInfo_GetPoiInfo         = _G.C_GossipInfo.GetPoiInfo,
    C_GossipInfo_GetAvailableQuests = _G.C_GossipInfo.GetAvailableQuests,
    C_GossipInfo_GetActiveQuests    = _G.C_GossipInfo.GetActiveQuests,
    -- zones
    C_Map_GetMapInfo                = _G.C_Map.GetMapInfo,
    C_Map_GetMapChildrenInfo        = _G.C_Map.GetMapChildrenInfo,
    C_Map_GetAreaInfo               = _G.C_Map.GetAreaInfo,
    C_Map_GetMapInfoAtPosition      = _G.C_Map.GetMapInfoAtPosition,
    C_PvP_GetZonePVPInfo            = _G.C_PvP.GetZonePVPInfo,
    GetInstanceInfo                 = _G.GetInstanceInfo,
    GetZoneText                     = _G.GetZoneText,
    GetRealZoneText                 = _G.GetRealZoneText,
    GetSubZoneText                  = _G.GetSubZoneText,
    GetAreaText                     = _G.GetAreaText,
    GetMinimapZoneText              = _G.GetMinimapZoneText,
    TaxiNodeName                    = _G.TaxiNodeName,
}

local translations_cache = {}

data_hooks.set_translation = function (data_type, data_key, text_en, text_uk)
    local cache = translations_cache

    if not text_en or not text_uk or text_en == text_uk then
        return
    end

    if not cache[data_type] then
        cache[data_type] = {}
    end

    if not cache[data_type][data_key] then
        cache[data_type][data_key] = {}
    end

    local data = cache[data_type][data_key]
    local text_en_hash = utils.string_hash(string_trim(text_en))
    local text_uk_hash = utils.string_hash(string_trim(text_uk))
    data[text_en_hash] = { en=text_en, uk=text_uk }
    data[text_uk_hash] = data[text_en_hash]

    return data_hooks.preferred_lang == "uk" and text_uk or text_en
end

data_hooks.get_translation = function (data_type, data_key, text, fallback)
    local cache = translations_cache

    if not text or not cache[data_type] or not cache[data_type][data_key] then
        return fallback
    end

    local data = cache[data_type][data_key]
    local hash = utils.string_hash(string_trim(text))

    return data[hash] and data[hash][data_hooks.preferred_lang] or fallback
end

local function get_quest_log_quest_id(quest_idx_maybe)
    if quest_idx_maybe and quest_idx_maybe > 0 then
        return select(8, data_hooks.original.GetQuestLogTitle(quest_idx_maybe))
    else
        return GetQuestLogSelectedID()
    end
end

local function prepare_data_hooks_for_quests()
    _G.GetQuestLogTitle = function (...)
        local data = { data_hooks.original.GetQuestLogTitle(...) }
        if data and type(data[1]) == "string" then
            local is_header = data[4]
            if is_header then
                local header_title = entries.get_glossary_text(data[1])
                if header_title then
                    data[1] = data_hooks.set_translation("header", "_", data[1], header_title)
                end
            else
                local quest_id = data[8]
                local quest_entry = entries.get_entry("quest", quest_id)
                local quest_title = quest_entry and quest_entry[1] or entries.get_glossary_text(data[1])
                if quest_title then
                    data[1] = data_hooks.set_translation("quest", quest_id, data[1], quest_title)
                end
            end
        end
        return unpack(data)
    end

    _G.GetTitleText = function (...)
        local text = data_hooks.original.GetTitleText(...)
        if type(text) == "string" then
            local quest_id = GetQuestID()
            local quest_entry = entries.get_entry("quest", quest_id)
            if quest_entry and quest_entry[1] then
                text = data_hooks.set_translation("quest", quest_id, text, quest_entry[1])
            end
        end
        return text
    end

    _G.GetQuestText = function (...)
        local text = data_hooks.original.GetQuestText(...)
        if type(text) == "string" then
            local quest_id = GetQuestID()
            local quest_entry = entries.get_entry("quest", quest_id)
            if quest_entry and quest_entry[2] then
                text = data_hooks.set_translation("quest", quest_id, text, quest_entry[2])
            end
        end
        return text
    end

    _G.GetObjectiveText = function (...)
        local text = data_hooks.original.GetObjectiveText(...)
        if type(text) == "string" then
            local quest_id = GetQuestID()
            local quest_entry = entries.get_entry("quest", quest_id)
            if quest_entry and quest_entry[3] then
                text = data_hooks.set_translation("quest", quest_id, text, quest_entry[3])
            end
        end
        return text
    end

    _G.GetProgressText = function (...)
        local text = data_hooks.original.GetProgressText(...)
        if type(text) == "string" then
            local quest_id = GetQuestID()
            local quest_entry = entries.get_entry("quest", quest_id)
            if quest_entry and quest_entry[4] then
                text = data_hooks.set_translation("quest", quest_id, text, quest_entry[4])
            end
        end
        return text
    end

    _G.GetRewardText = function (...)
        local text = data_hooks.original.GetRewardText(...)
        if type(text) == "string" then
            local quest_id = GetQuestID()
            local quest_entry = entries.get_entry("quest", quest_id)
            if quest_entry and quest_entry[5] then
                text = data_hooks.set_translation("quest", quest_id, text, quest_entry[5])
            end
        end
        return text
    end

    _G.GetQuestLogQuestText = function (...)
        local data = { data_hooks.original.GetQuestLogQuestText(...) }
        if data and type(data[1]) == "string" and type(data[2]) == "string" then
            local quest_idx = ...
            local quest_id = get_quest_log_quest_id(quest_idx)
            local quest_entry = entries.get_entry("quest", quest_id)
            if quest_entry then
                if quest_entry[2] then
                    data[1] = data_hooks.set_translation("quest", quest_id, data[1], quest_entry[2])
                end
                if quest_entry[3] then
                    data[2] = data_hooks.set_translation("quest", quest_id, data[2], quest_entry[3])
                end
            end
        end
        return unpack(data)
    end

    _G.GetQuestLogLeaderBoard = function (...)
        local data = { data_hooks.original.GetQuestLogLeaderBoard(...) }
        if data and type(data[1]) == "string" then
            local _, quest_idx = ...
            local quest_id = get_quest_log_quest_id(quest_idx)
            local quest_task_uk = entries.translate_quest_objective_task(data[1])
            if quest_task_uk ~= data[1] then
                data[1] = data_hooks.set_translation("quest", quest_id, data[1], quest_task_uk)
            end
        end
        return unpack(data)
    end
end

local function prepare_data_hooks_for_quest_greetings()
    _G.GetGreetingText = function (...)
        local text = data_hooks.original.GetGreetingText(...)
        if text then
            local npc_id = utils.npc_id_from_unit_id("npc")
            if npc_id then
                local text_ua = entries.get_gossip_text_for_npc_talk(npc_id, text)
                if text_ua then
                    text = text_ua
                end
            end
        end
        return text
    end

    _G.GetAvailableTitle = function (...)
        local data = { data_hooks.original.GetAvailableTitle(...) }
        if data and type(data[1]) == "string" then
            data[1] = entries.get_glossary_text(data[1], data[1])
        end
        return unpack(data)
    end

    _G.GetActiveTitle = function (...)
        local data = { data_hooks.original.GetActiveTitle(...) }
        if data and type(data[1]) == "string" then
            data[1] = entries.get_glossary_text(data[1], data[1])
        end
        return unpack(data)
    end
end

local function prepare_data_hooks_for_gossip()
    _G.C_GossipInfo.GetText = function (...)
        local text = data_hooks.original.C_GossipInfo_GetText(...)
        if text then
            -- the gossip window can be opened for objects, for example for "Hero's Call Board"
            -- (object id 206111) and npc_id will not be resolved; when in gossip with such object,
            -- the UnitGUID() actually returns valid result "GameObject-...-206111-...", so technically
            -- we can support such gossip-able objects in future
            local npc_id = utils.npc_id_from_unit_id("npc")
            if npc_id then
                local text_ua = entries.get_gossip_text_for_npc_talk(npc_id, text)
                if text_ua then
                    text = text_ua
                end
            end
        end
        return text
    end

    _G.C_GossipInfo.GetPoiInfo = function (...)
        local info = data_hooks.original.C_GossipInfo_GetPoiInfo(...)
        if info and info.name then
            info.name = entries.get_glossary_text(info.name, info.name)
        end
        return info
    end

    _G.C_GossipInfo.GetAvailableQuests = function (...)
        local list = data_hooks.original.C_GossipInfo_GetAvailableQuests(...)
        for _, item in ipairs(list) do
            if item.questID then
                local quest_entry = entries.get_entry("quest", item.questID)
                if quest_entry then
                    item.title = quest_entry[1]
                end
            else
                item.title = entries.get_glossary_text(item.title, item.title)
            end
        end
        return list
    end

    _G.C_GossipInfo.GetActiveQuests = function (...)
        local list = data_hooks.original.C_GossipInfo_GetActiveQuests(...)
        for _, item in ipairs(list) do
            if item.questID then
                local quest_entry = entries.get_entry("quest", item.questID)
                if quest_entry then
                    item.title = quest_entry[1]
                end
            else
                item.title = entries.get_glossary_text(item.title, item.title)
            end
        end
        return list
    end
end

local function prepare_data_hooks_for_zones()
    _G.C_Map.GetMapInfo = function (...)
        local info = data_hooks.original.C_Map_GetMapInfo(...)
        if info and info.name then
            info.name = entries.get_glossary_text(info.name, info.name, "zone")
        end
        return info
    end

    _G.C_Map.GetMapChildrenInfo = function (...)
        local infos = data_hooks.original.C_Map_GetMapChildrenInfo(...)
        for _, info in ipairs(infos) do
            if info and info.name then
                info.name = entries.get_glossary_text(info.name, info.name, "zone")
            end
        end
        return infos
    end

    _G.C_Map.GetAreaInfo = function (...)
        local info = data_hooks.original.C_Map_GetAreaInfo(...)
        if type(info) == "string" then
            info = entries.get_glossary_text(info, info, "zone")
        end
        return info
    end

    _G.C_Map.GetMapInfoAtPosition = function (...)
        local info = data_hooks.original.C_Map_GetMapInfoAtPosition(...)
        if info and info.name then
            info.name = entries.get_glossary_text(info.name, info.name, "zone")
        end
        return info
    end

    _G.C_PvP.GetZonePVPInfo = function (...)
        local info = { data_hooks.original.C_PvP_GetZonePVPInfo(...) }
        if info and info[3] then
            info[3] = entries.get_glossary_text(info[3]) or info[3]
        end
        return unpack(info)
    end

    _G.GetInstanceInfo = function (...)
        local info = { data_hooks.original.GetInstanceInfo(...) }
        if info and info[1] then
            info[1] = entries.get_glossary_text(info[1], info[1], "zone")
        end
        return unpack(info)
    end

    _G.GetZoneText = function (...)
        local text = data_hooks.original.GetZoneText(...)
        if type(text) == "string" then
            text = entries.get_glossary_text(text, text, "zone")
        end
        return text
    end

    _G.GetRealZoneText = function (...)
        local text = data_hooks.original.GetRealZoneText(...)
        if type(text) == "string" then
            text = entries.get_glossary_text(text, text, "zone")
        end
        return text
    end

    _G.GetSubZoneText = function (...)
        local text = data_hooks.original.GetSubZoneText(...)
        if type(text) == "string" then
            text = entries.get_glossary_text(text, text, "zone")
        end
        return text
    end

    _G.GetAreaText = function (...)
        local text = data_hooks.original.GetAreaText(...)
        if type(text) == "string" then
            text = entries.get_glossary_text(text, text, "zone")
        end
        return text
    end

    _G.GetMinimapZoneText = function (...)
        local text = data_hooks.original.GetMinimapZoneText(...)
        if type(text) == "string" then
            text = entries.get_glossary_text(text, text, "zone")
        end
        return text
    end

    _G.TaxiNodeName = function (...)
        local name = data_hooks.original.TaxiNodeName(...)
        if type(name) == "string" then
            name = entries.translate_taxi_node_name(name)
        end
        return name
    end

    -- force minimap update, otherwise it will show original zone name until player changes zone
    Minimap_Update()
end

data_hooks.prepare = function ()
    prepare_data_hooks_for_quests()
    prepare_data_hooks_for_quest_greetings()
    prepare_data_hooks_for_gossip()
    prepare_data_hooks_for_zones()
end
