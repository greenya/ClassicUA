local _, addon_table = ...

local options       = addon_table.use("options") ---@class options_class
local options_ui    = addon_table.use("options_ui") ---@class options_ui_class
local utils         = addon_table.use("utils") ---@class utils_class

options.account = nil ---@class account_options_class
local default_account = { ---@class account_options_class
    dev_mode = false,
    dev_mode_notify_activity = false,
    override_system_fonts = true,
    translate_nameplates = true,
}

options.character = nil ---@class character_options_class
local default_character = { ---@class character_options_class
    name_cases = {}
}

options.prepare = function ()
    ClassicUA_Options = ClassicUA_Options or utils.copy_table({}, default_account)
    options.account = ClassicUA_Options
    utils.table_sync_keys(options.account, default_account)

    ClassicUA_Character_Options = ClassicUA_Character_Options or utils.copy_table({}, default_character)
    options.character = ClassicUA_Character_Options
    utils.table_sync_keys(options.character, default_character)
end

options.reset = function ()
    ClassicUA_Options = copy_table({}, default_account)
    options.account = ClassicUA_Options

    if options_ui.frame then
        options_ui.frame.refresh()
    end
end
