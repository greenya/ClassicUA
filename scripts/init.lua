local _, addon_table = ...

-- we use this file to define all script tables, so they can be parsed
-- in any order; actual order is defined by index.xml

local function init_script_tables()
    for _, script_table in ipairs({
        "assets",
        "chats",
        "data_hooks",
        "dev_log",
        "entries",
        "fonts",
        "frame_hooks",
        "frames",
        "options",
        "options_ui",
        "tooltips",
        "utils",
    }) do
        if addon_table[script_table] then
            -- player should never see this; this might happen only while developing,
            -- when adding new entity types or refactoring scripts; for example such
            -- error is expected if entry files would define "addon_table.utils" table,
            -- or if we add script which would want to define "addon_table.race" table
            print("[ClassicUA] Fatal Error: Script table \"" .. script_table .. "\" is already in use")
        else
            addon_table[script_table] = {}
        end
    end
end

init_script_tables()
