local _, addon_table = ...

local options   = addon_table.use("options") ---@class options_class
local strings   = addon_table.use("strings") ---@class strings_class
local utils     = addon_table.use("utils") ---@class utils_class

-- builds lookups by the game's english text:
-- at.string, the interface strings (global_strings of entries/*/string.lua, by global name), which the glossary reads too;
-- at.string_tooltip_text, the tooltip texts (tooltip_texts by english text, tooltip_strings by global name), which only tooltips read
-- and which are never written into globals
local function prepare_lookups()
    local at = addon_table
    at.string = {}
    at.string_back = {}
    for key, val_uk in pairs(at.string_tooltip) do
        local val_en = _G[key]
        if type(val_en) == "string" then
            at.string_tooltip_text[val_en] = val_uk
        end
    end
    for key, val_uk in pairs(at.string_globals) do
        local val_en = _G[key]
        if type(val_en) == "string" then
            at.string[val_en] = val_uk
            at.string_back[val_uk] = val_en
        else
            -- A global the client doesn't have is dropped.
            at.string_globals[key] = nil
        end
    end
end

strings.prepare = function ()
    if not addon_table.string_globals then
        return
    end

    prepare_lookups()

    if not options.can_translate("translate_string") then
        return
    end

    -- WoW: Forever runs the retail ui, where secure code reads these globals
    if utils.is_forever then
        return
    end

    for key, val_uk in pairs(addon_table.string_globals) do
        _G[key] = val_uk
    end

    -- rebuild the table the game filled in with the original strings while it was loading
    -- https://www.townlong-yak.com/framexml/era/Blizzard_UIPanels_Game/QuestInfo.lua#405
    QUEST_INFO_SPELL_REWARD_TO_HEADER = {
        [QUEST_SPELL_REWARD_TYPE_FOLLOWER] = REWARD_FOLLOWER,
        [QUEST_SPELL_REWARD_TYPE_TRADESKILL_SPELL] = REWARD_TRADESKILL_SPELL,
        [QUEST_SPELL_REWARD_TYPE_ABILITY] = REWARD_ABILITY,
        [QUEST_SPELL_REWARD_TYPE_AURA] = REWARD_AURA,
        [QUEST_SPELL_REWARD_TYPE_SPELL] = REWARD_SPELL,
        [QUEST_SPELL_REWARD_TYPE_UNLOCK] = REWARD_UNLOCK,
    }
end
