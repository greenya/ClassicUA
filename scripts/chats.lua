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

chats.styles = {
    { key = "replacement", label = "Заміна" },      -- hand our text to the game and let it print the line as usual
    { key = "addition",    label = "Доповнення" },  -- let the game print the original, then add ours underneath
}

-- the game builds the npc chat line itself, prefixing it with the speaker name and a verb ("%s says: ")
-- the verb is swapped in the line right after the game adds it to a chat frame
local pending_line -- { prefix_en, prefix_uk }, created by chat filter handler, immediately used by chat frame handler
local hooked_frames = {}

local function on_chat_frame_add_message(frame, text)
    local line = pending_line
    if not line or utils.is_secret(text) or type(text) ~= "string" or not text:find(line.prefix_en, 1, true) then
        return
    end

    pending_line = nil
    frame:TransformMessages(function (message)
        return not utils.is_secret(message) and type(message) == "string" and message:find(text, 1, true) ~= nil
    end, function (message, ...)
        local from, to = message:find(line.prefix_en, 1, true)
        if from then
            message = message:sub(1, from - 1) .. line.prefix_uk .. message:sub(to + 1)
        end
        return message, ...
    end)
end

local function hook_chat_frames()
    for _, name in ipairs(CHAT_FRAMES) do
        local frame = _G[name]
        if frame and frame.TransformMessages and not hooked_frames[frame] then
            hooked_frames[frame] = true
            hooksecurefunc(frame, "AddMessage", on_chat_frame_add_message)
        end
    end
end

local function remember_line(event, npc_name)
    local key = "CHAT_" .. event:sub(10) .. "_GET" -- CHAT_MSG_MONSTER_YELL -> CHAT_MONSTER_YELL_GET
    local format_uk = addon_table.chat_string_globals[key]
    if not format_uk or type(_G[key]) ~= "string" then
        return
    end

    hook_chat_frames()
    pending_line = {
        prefix_en   = string_format(_G[key], npc_name),
        prefix_uk   = string_format(format_uk, npc_name),
    }
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

local function resolve_lang_name(chat_frame, lang_name)
    if lang_name == "" or lang_name == chat_frame.defaultLanguage then
        return lang_name
    end

    return entries.get_language_text(lang_name)
end

local function filter_chat_msg(self, event, chat_text, npc_name, lang_name, ...)
    pending_line = nil

    local known_event = known_chat_msg_events[event]
    if not known_event or not options.can_lookup("translate_chat") then
        return nil, chat_text, npc_name, lang_name, ...
    end

    -- WoW: Forever may keep the text or the speaker a secret (see utils.is_secret)
    if utils.is_secret(chat_text) or utils.is_secret(npc_name) then
        return nil, chat_text, npc_name, lang_name, ...
    end

    local npc_name_key = npc_name
    if npc_name == UnitName("player") then
        npc_name_key = "!player"
    end

    local npc_name_uk, chat_text_uk, chat_text_code = entries.get_chat_text(npc_name_key, chat_text)

    if not chat_text_uk and chat_text_code and options.account.dev_mode then
        dev_log.missing_chat_text(npc_name_key, chat_text_code, chat_text, lang_name)
    end

    if not options.can_translate("translate_chat") then
        return nil, chat_text, npc_name, lang_name, ...
    end

    local is_replacement = options.account.chat_style == "replacement"

    if not chat_text_uk then
        if is_replacement then
            local npc_name_shown = resolve_npc_name(npc_name, npc_name_uk)
            remember_line(event, npc_name_shown)
            return nil, chat_text, npc_name_shown, resolve_lang_name(self, lang_name), ...
        end
        return nil, chat_text, npc_name, lang_name, ...
    end

    if type(chat_text_uk) == 'string' then
        chat_text_uk = chat_text_uk:gsub("%%s", function () return npc_name_uk end)
    end

    if known_event.verb then
        translate_chat_bubble(chat_text, chat_text_uk)
    end

    if is_replacement then
        remember_line(event, npc_name_uk)
        return nil, (chat_text_uk:gsub("%%", "%%%%")), npc_name_uk, resolve_lang_name(self, lang_name), ...
    end

    if options.account.chat_style == "addition" then
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
    for event_name, _ in pairs(known_chat_msg_events) do
        ChatFrame_AddMessageEventFilter(event_name, filter_chat_msg)
    end
end
