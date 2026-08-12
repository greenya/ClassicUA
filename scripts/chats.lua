local _, addon_table = ...

local assets    = addon_table.use("assets") ---@class assets_class
local chats     = addon_table.use("chats") ---@class chats_class
local dev_log   = addon_table.use("dev_log") ---@class dev_log_class
local entries   = addon_table.use("entries") ---@class entries_class
local options   = addon_table.use("options") ---@class options_class
local utils     = addon_table.use("utils") ---@class utils_class

local math_min          = _G.math.min
local string_format     = _G.string.format
local C_Timer           = _G.C_Timer
local UnitName          = _G.UnitName

local known_chat_msg_events = {
    CHAT_MSG_MONSTER_EMOTE      = { info=ChatTypeInfo.MONSTER_EMOTE,        verb=false },
    CHAT_MSG_MONSTER_PARTY      = { info=ChatTypeInfo.MONSTER_PARTY,        verb="каже" },
    CHAT_MSG_MONSTER_SAY        = { info=ChatTypeInfo.MONSTER_SAY,          verb="каже" },
    CHAT_MSG_MONSTER_WHISPER    = { info=ChatTypeInfo.MONSTER_WHISPER,      verb="шепоче" },
    CHAT_MSG_MONSTER_YELL       = { info=ChatTypeInfo.MONSTER_YELL,         verb="вигукує" },
    CHAT_MSG_RAID_BOSS_EMOTE    = { info=ChatTypeInfo.RAID_BOSS_EMOTE,      verb=false },
    CHAT_MSG_RAID_BOSS_WHISPER  = { info=ChatTypeInfo.RAID_BOSS_WHISPER,    verb="шепоче" },
}

-- How a translated line reaches the chat frame. The values are stored in options.chat_style
-- and must match the order of chat_style_values in options_ext_ui.lua.
local chat_styles = {
    replacement = 1, -- hand our text to the game and let it print the line as usual
    addition    = 2, -- let the game print the original, then add ours underneath
}

-- the game builds the npc chat line itself, prefixing it with the speaker name and a verb;
-- like the interface strings, these are written once and only put back by a reload
local function replace_chat_prefixes()
    if not options.can_translate("translate_chat")
        or options.account.chat_style ~= chat_styles.replacement then
        return
    end

    for key, val_uk in pairs(addon_table.chat_string_globals) do
        if type(_G[key]) == "string" then
            _G[key] = val_uk
        end
    end
end

local function resolve_npc_name(npc_name, npc_name_uk)
    if npc_name_uk then
        return npc_name_uk
    end

    return utils.cap(entries.get_glossary_text(npc_name, npc_name))
end

local function translate_chat_bubble(chat_text, chat_text_uk)
    if not options.can_translate("translate_chat_bubble") then
        return
    end

    -- chat bubble is not spawned just yet, so we wait a moment
    C_Timer.After(0.01, function ()
        local font_string = utils.chat_bubble_font_string_with_text(chat_text)
        if font_string then
            local MAX_CHAT_BUBBLE_WIDTH = 314 -- value observed from default chat bubbles.
            font_string:SetText(chat_text_uk)
            font_string:SetWidth(math_min(font_string:GetStringWidth(), MAX_CHAT_BUBBLE_WIDTH))
        end
    end)
end

local function filter_chat_msg(self, event, chat_text, npc_name, lang_name, ...)
    local known_event = known_chat_msg_events[event]
    if not known_event or not options.can_lookup("translate_chat") then
        return nil, chat_text, npc_name, lang_name, ...
    end

    local npc_name_key = npc_name
    if npc_name == UnitName("player") then
        npc_name_key = "!player"
    end

    local npc_name_uk, chat_text_uk, chat_text_code = entries.get_chat_text(npc_name_key, chat_text)

    if not chat_text_uk and chat_text_code then
        dev_log.missing_chat_text(npc_name_key, chat_text_code, chat_text, lang_name)
    end

    if not options.can_translate("translate_chat") then
        return nil, chat_text, npc_name, lang_name, ...
    end

    local is_replacement = options.account.chat_style == chat_styles.replacement

    if not chat_text_uk then
        if is_replacement then
            return nil, chat_text, resolve_npc_name(npc_name, npc_name_uk), lang_name, ...
        end
        return nil, chat_text, npc_name, lang_name, ...
    end

    if type(chat_text_uk) == 'string' and chat_text_uk:match("%%s") then
        chat_text_uk = string_format(chat_text_uk, npc_name_uk)
    end

    if known_event.verb then
        translate_chat_bubble(chat_text, chat_text_uk)
    end

    if is_replacement then
        return nil, chat_text_uk, npc_name_uk, lang_name, ...
    end

    if options.account.chat_style == chat_styles.addition then
        local chat_message = assets.icon_ua_inline .. " " .. (known_event.verb
            and string_format("%s %s: %s", npc_name_uk, known_event.verb, chat_text_uk)
            or chat_text_uk) -- emote
        local info = known_event.info

        C_Timer.After(0, function ()
            self:AddMessage(chat_message, info.r, info.g, info.b)
        end)
    end

    return nil, chat_text, npc_name, lang_name, ...
end

chats.prepare = function()
    replace_chat_prefixes()

    for event_name, _ in pairs(known_chat_msg_events) do
        ChatFrame_AddMessageEventFilter(event_name, filter_chat_msg)
    end
end
