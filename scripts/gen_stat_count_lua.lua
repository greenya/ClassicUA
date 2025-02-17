local known_expansions = { "classic", "sod", "tbc", "wrath", "cata" }
local known_entity_types = {
    {
        name = "quests",
        expansions = known_expansions,
        addon_table_keys = { "quest_alliance", "quest_horde", "quest_both" },
        files = {
            "quest_alliance.lua",
            "quest_horde.lua",
            "quest_both.lua",
        },
    },
    {
        name = "books",
        expansions = known_expansions,
        addon_table_keys = { "book" },
        files = { "book.lua" },
    },
    {
        name = "npcs",
        expansions = known_expansions,
        addon_table_keys = { "npc" },
        files = { "npc.lua" },
    },
    {
        name = "items",
        expansions = known_expansions,
        addon_table_keys = { "item" },
        files = { "item.lua" },
    },
    {
        name = "spells",
        expansions = known_expansions,
        addon_table_keys = { "spell" },
        files = {
            "spell.lua",
            "spell_deathknight.lua",
            "spell_druid.lua",
            "spell_hunter.lua",
            "spell_mage.lua",
            "spell_paladin.lua",
            "spell_pet.lua",
            "spell_priest.lua",
            "spell_rogue.lua",
            "spell_shaman.lua",
            "spell_warlock.lua",
            "spell_warrior.lua",
        },
    },
    {
        name = "sod_engravings",
        expansions = { "sod" },
        addon_table_keys = { "sod_engraving" },
        files = { "engraving.lua" },
    },
    {
        name = "objects",
        expansions = known_expansions,
        addon_table_keys = { "object" },
        files = { "object.lua" },
    },
    {
        name = "zones",
        addon_table_keys = { "zone" },
        files = { "zone.lua" },
    },
    {   -- todo: count phrases, not npcs
        name = "chats",
        expansions = known_expansions,
        addon_table_keys = { "chat" },
        files = { "chat.lua" },
    },
    {   -- todo: count phrases, not npcs
        name = "gossips",
        expansions = known_expansions,
        addon_table_keys = { "gossip" },
        files = { "gossip.lua" },
    },
    -- todo: count strings
    -- note: this doesn't work at the moment, as string.lua checks _G[key] inside;
    --       maybe we can add some special key to addonTable and strings.lua would
    --       check it; might consider something later
    -- {
    --     name = "strings",
    --     addon_table_keys = { "string" },
    --     files = { "string.lua" },
    -- },
    {
        name = "misc",
        addon_table_keys = { "misc" },
        files = { "misc.lua" },
    },
}

local function table_keys_count(tbl)
    local count = 0
    for _ in pairs(tbl) do count = count + 1 end
    return count
end

local function count_in_file(filename, addon_table_keys)
    local script = loadfile(filename)
    if script then
        local addon_table = {}
        for _, k in ipairs(addon_table_keys) do
            addon_table[k] = {}
        end

        script("ClassicUA", addon_table)

        local c = 0
        for _, k in ipairs(addon_table_keys) do
            c = c + table_keys_count(addon_table[k])
        end

        print(string.format("%i\t-- %s", c, filename))
        return c
    else
        print(string.format("0\t-- %s -- file not found", filename))
        return 0
    end
end

local function collect_stats(path)
    print("Processing " .. path)
    local line = "--------------------------------------------------------"
    local stats = { total={} }

    for _, et in ipairs(known_entity_types) do
        print(line .. "[ " .. et.name .. " ]")

        stats.total[et.name] = 0

        if et.expansions then
            for _, exp in ipairs(et.expansions) do
                if not stats[exp] then
                    stats[exp] = {}
                end

                stats[exp][et.name] = 0
                for _, file in ipairs(et.files) do
                    local count = count_in_file(path .. "/" .. exp .. "/" .. file, et.addon_table_keys)
                    stats[exp][et.name] = stats[exp][et.name] + count
                    stats.total[et.name] = stats.total[et.name] + count
                end

                if #et.files > 1 then
                    print(string.format("%i\t-- total %s %s", stats[exp][et.name], exp, et.name))
                end
            end
        else
            for _, file in ipairs(et.files) do
                local count = count_in_file(path .. "/" .. file, et.addon_table_keys)
                stats.total[et.name] = stats.total[et.name] + count
            end
        end

        print(string.format("%i\t-- total %s", stats.total[et.name], et.name))
    end

    print(line)
    return stats
end

local function write_lua_stats_file(filename, var, stats)
    print("Writing " .. filename)

    local f = io.open(filename, "w")
    if not f then
        error("Failed to open file for writing.")
    end

    f:write("-- -------------------------------- --\n")
    f:write("-- AUTOGENERATED FILE. DO NOT EDIT. --\n")
    f:write("-- -------------------------------- --\n\n")
    f:write("local _, addonTable = ...\n\n")
    f:write("addonTable." .. var .. " = {\n")

    local cats = { "total" }
    for _, exp in ipairs(known_expansions) do table.insert(cats, exp) end

    for _, cat in ipairs(cats) do
        f:write(cat .. " = {\n")
        for _, et in ipairs(known_entity_types) do
            local n = stats[cat][et.name]
            if n then
                f:write("    " .. et.name .. " = " .. tostring(n) .. ",\n")
            end
        end
        f:write("},\n")
    end

    f:write("}\n")
    f:close()
end

local function main()
    local stats = collect_stats("../entries")
    write_lua_stats_file("../entries/stat_count.lua", "stat_count", stats)
    print("All done.")
end

main()
