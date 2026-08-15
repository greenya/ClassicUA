local _, addon_table = ...

local options        = addon_table.use("options") ---@class options_class
local utils          = addon_table.use("utils") ---@class utils_class

options.account = nil ---@class account_options_class
local default_account = { ---@class account_options_class
    dev_mode = false,
    dev_mode_notify_activity = false,
    override_system_fonts = true,

    disable_all_translation = false,
    translate_quest = true,
    translate_book = true,
    translate_gossip = true,
    translate_chat = true,
    translate_chat_bubble = true,
    chat_style = "replacement", -- key from chats.styles
    translate_item = true,
    translate_quest_item = true,
    translate_spell = true,
    translate_npc = true,
    translate_nameplates = true,
    translate_npc_tooltip = true,
    translate_npc_target_frame = true,
    translate_other_tooltips = true,
    translate_string = true,
    translate_zone = true,
}

options.character = nil ---@class character_options_class
local default_character = { ---@class character_options_class
    name_cases = {}
}

options.prepare = function ()
    ClassicUA_Options = ClassicUA_Options or utils.copy_table_deep({}, default_account)
    options.account = ClassicUA_Options
    utils.table_sync_keys(options.account, default_account)

    ClassicUA_Character_Options = ClassicUA_Character_Options or utils.copy_table_deep({}, default_character)
    options.character = ClassicUA_Character_Options
    utils.table_sync_keys(options.character, default_character)
end

options.can_translate = function (...)
    local oa = options.account

    if oa.disable_all_translation then
        return false
    end

    for i = 1, select("#", ...) do
        if not oa[(select(i, ...))] then
            return false
        end
    end

    return true
end

options.can_lookup = function (...)
    return options.account.dev_mode or options.can_translate(...)
end

options.reset = function ()
    ClassicUA_Options = utils.copy_table_deep({}, default_account)
    options.account = ClassicUA_Options
end

options.reset_character = function ()
    ClassicUA_Character_Options = utils.copy_table_deep({}, default_character)
    options.character = ClassicUA_Character_Options
end
