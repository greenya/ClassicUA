local _, addon_table = ...

local options   = addon_table.use("options") ---@class options_class
local strings   = addon_table.use("strings") ---@class strings_class

strings.prepare = function ()
    if not addon_table.string_globals then
        return
    end

    if not options.can_translate("translate_string") then
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
