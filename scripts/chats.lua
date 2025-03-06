local _, addon_table = ...

local assets    = addon_table.use("assets") ---@class assets_class
local chats     = addon_table.use("chats") ---@class chats_class
local dev_log   = addon_table.use("dev_log") ---@class dev_log_class
local entries   = addon_table.use("entries") ---@class entries_class
local utils     = addon_table.use("utils") ---@class utils_class

local math_min          = _G.math.min
local string_format     = _G.string.format
local C_Timer           = _G.C_Timer
local UnitName          = _G.UnitName

local known_chat_msg_events = {
    CHAT_MSG_MONSTER_EMOTE      = { info=ChatTypeInfo.MONSTER_EMOTE,        verb=false },
    CHAT_MSG_MONSTER_PARTY      = { info=ChatTypeInfo.MONSTER_PARTY,        verb="говорить" },
    CHAT_MSG_MONSTER_SAY        = { info=ChatTypeInfo.MONSTER_SAY,          verb="говорить" },
    CHAT_MSG_MONSTER_WHISPER    = { info=ChatTypeInfo.MONSTER_WHISPER,      verb="шепоче" },
    CHAT_MSG_MONSTER_YELL       = { info=ChatTypeInfo.MONSTER_YELL,         verb="вигукує" },
    CHAT_MSG_RAID_BOSS_EMOTE    = { info=ChatTypeInfo.RAID_BOSS_EMOTE,      verb=false },
    CHAT_MSG_RAID_BOSS_WHISPER  = { info=ChatTypeInfo.RAID_BOSS_WHISPER,    verb="шепоче" },
}

local function filter_chat_msg(self, event, chat_text, npc_name, lang_name, ...)
    local known_event = known_chat_msg_events[event]
    if not known_event then
        return nil, chat_text, npc_name, lang_name, ...
    end

    if npc_name == UnitName("player") then
        npc_name = "!player"
    end

    local npc_name_uk, chat_text_uk, chat_text_code = entries.get_chat_text(npc_name, chat_text)
    if (not npc_name_uk or not chat_text_uk) and chat_text_code then
        dev_log.missing_chat_text(npc_name, chat_text_code, chat_text, lang_name)
        return nil, chat_text, npc_name, lang_name, ...
    end

    if type(chat_text_uk) == 'string' and chat_text_uk:match("%%s") then
        chat_text_uk = string_format(chat_text_uk, npc_name_uk)
    end

    local chat_message = nil

    if known_event.verb then
        -- format: say, yell, whisper or party
        chat_message = string_format("%s %s: %s", npc_name_uk, known_event.verb, chat_text_uk)

        -- chat bubble is not spawned just yet, so we wait a moment
        C_Timer.After(0.01, function ()
            local font_string = utils.chat_bubble_font_string_with_text(chat_text)
            if font_string then
                local MAX_CHAT_BUBBLE_WIDTH = 314 -- value observed from default chat bubbles.
                font_string:SetText(chat_text_uk)
                font_string:SetWidth(math_min(font_string:GetStringWidth(), MAX_CHAT_BUBBLE_WIDTH))
            end
        end)
    else
        -- format: emote
        chat_message = chat_text_uk
    end

    self:AddMessage(
        assets.icon_ua_inline .. " " .. chat_message,
        known_event.info.r,
        known_event.info.g,
        known_event.info.b
    )

    return true
end

chats.prepare = function()
    for event_name, _ in pairs(known_chat_msg_events) do
        ChatFrame_AddMessageEventFilter(event_name, filter_chat_msg)
    end
end
