local _, addon_table = ...

local assets        = addon_table.use("assets") ---@class assets_class
local data_hooks    = addon_table.use("data_hooks") ---@class data_hooks_class
local dev_log       = addon_table.use("dev_log") ---@class dev_log_class
local entries       = addon_table.use("entries") ---@class entries_class
local frame_hooks   = addon_table.use("frame_hooks") ---@class frame_hooks_class
local options       = addon_table.use("options") ---@class options_class
local utils         = addon_table.use("utils") ---@class utils_class

local string_format = _G.string.format
local string_gmatch = _G.string.gmatch

local is_set_text_hook_allowed = true

local hooked_labels = {
    { frame=CurrentQuestsText }, -- "Current Quests"
    { frame=AvailableQuestsText }, -- "Available Quests"
    { frame=QuestInfoDescriptionHeader }, -- "Description"
    { frame=QuestInfoObjectivesHeader }, -- "Quest Objectives"
    { frame=QuestInfoRewardsFrame.Header }, -- "Rewards"
    { frame=QuestInfoRewardsFrame.ItemChooseText }, -- "You will be able to choose one of these rewards:", "Choose your reward:"
    { frame=QuestInfoRewardsFrame.ItemReceiveText }, -- "You will receive:"
    { frame=QuestInfoRewardsFrame.PlayerTitleText }, -- "You shall be granted the title:"
    { frame=QuestInfoXPFrame.ReceiveText }, -- "Experience:"
    { frame=QuestProgressRequiredItemsText }, -- "Required items:"
    { frame=QuestProgressRequiredMoneyText }, -- "Required Money:"
    { frame=QuestLogDescriptionTitle }, -- "Description"
    { frame=QuestLogRewardTitleText }, -- "Rewards"
    { frame=QuestLogItemChooseText }, -- "You will be able to choose one of these rewards:"
    { frame=QuestLogItemReceiveText }, -- "You will receive:", "You will also receive:"
}

local lang_switchers = {
    -- quests
    { hd_type="quest", parent={ frame=QuestDetailScrollFrame, point="TOPRIGHT", x=-6, y=-10 } },
    { hd_type="quest", parent={ frame=QuestProgressScrollFrame, point="TOPRIGHT", x=-6, y=-10 } },
    { hd_type="quest", parent={ frame=QuestRewardScrollFrame, point="TOPRIGHT", x=-6, y=-10 } },
    { hd_type="quest", parent={ frame=QuestLogDetailScrollFrame, point="TOPRIGHT", x=-8, y=-12 } },
    { hd_type="quest", parent={ frame=QuestMapDetailsScrollFrame, point="TOPRIGHT", x=-2, y=-4 },
      extra_target=QuestMapFrame and QuestMapFrame.DetailsFrame and QuestMapFrame.DetailsFrame.RewardsFrame or nil },
    -- books (item texts)
    { hd_type="book", parent={ frame=ItemTextScrollFrame, point="TOPRIGHT", x=-2, y=-12 },
      extra_target=ItemTextFrame, post_update=function () utils.update_item_text_scrollbar() end },
}

local function on_hooked_label_set_text(self, text)
    if not is_set_text_hook_allowed then
        return
    end

    local at = addon_table

    -- we don't know the language of the "text" arg, as game could just pass value of
    -- a global string, e.g. REWARD_ITEMS_ONLY, which we already changed in string.lua
    self.classicua.en = at.string_back[text] or text
    self.classicua.uk = entries.get_glossary_text(text, text)

    local new_text = data_hooks.preferred_lang == "uk" and self.classicua.uk or self.classicua.en
    if new_text then
        is_set_text_hook_allowed = false
        self:SetText(new_text)
        is_set_text_hook_allowed = true
    end
end

local function prepare_hooked_labels()
    for _, l in ipairs(hooked_labels) do
        if l.frame then
            l.frame.classicua = {}
            hooksecurefunc(l.frame, "SetText", on_hooked_label_set_text)
        end
    end
end

local function update_hooked_labels()
    for _, l in ipairs(hooked_labels) do
        if l.frame then
            local text = l.frame:GetText()
            if text then
                l.frame:SetText(text)
            end
        end
    end
end

local function translate_hooked_data_text(data_type, data_key, text)
    local lookup_texts = { text }
    local post_formatting = {}

    if data_type == "quest" then
        -- try Leatrix Plus quest header format, e.g. [44+] Quest Title Goes Here
        local quest_prefix, quest_title = string_gmatch(text, "(%[.+%]) (.*)")()
        if quest_prefix and quest_title then
            lookup_texts[#lookup_texts + 1] = quest_title
            post_formatting[quest_title] = quest_prefix .. " %s"
        end
    elseif data_type == "book" then
        -- apparently, game prefixes text with "\n", and we do the same here for authenticity
        -- more at https://www.townlong-yak.com/framexml/era/Blizzard_UIPanels_Game/ItemTextFrame.lua#69
        if text:find("^\n") then
            post_formatting[text] = "\n%s"
        end
    end

    for _, t in ipairs(lookup_texts) do
        local found = data_hooks.get_translation(data_type, data_key, t)
        if found then
            if post_formatting[t] then
                found = string_format(post_formatting[t], found)
            end
            return found
        end
    end
end

local function update_lang_switcher_translation_for_frame(self, hd_type, hd_key, depth)
    depth = depth or 1
    if depth > 6 then
        if options.account.dev_mode then
            local issue_key = self:GetDebugName() or "???"
            dev_log.issue(issue_key, "переповнення глибини пошуку в update_lang_switcher_translation_for_frame")
        end
        return
    end

    local is_lang_uk = data_hooks.preferred_lang == "uk"

    for _, region in ipairs({ self:GetRegions() }) do
        if region.GetText and region.SetText then
            if region.classicua then
                region:SetText(is_lang_uk and region.classicua.uk or region.classicua.en)
            else
                local text = region:GetText()
                if type(text) == "string" and text ~= "" then
                    local found = translate_hooked_data_text(hd_type, hd_key, text)
                    if found then
                        region:SetText(found)
                    end
                end
            end
        end
    end

    for _, child in ipairs({ self:GetChildren() }) do
        if child:IsShown() then
            update_lang_switcher_translation_for_frame(child, hd_type, hd_key, depth + 1)
        end
    end
end

local function update_lang_switchers()
    is_set_text_hook_allowed = false

    for _, s in ipairs(lang_switchers) do
        if s.frame then
            s.frame:SetChecked(data_hooks.preferred_lang == "en")

            local hd_key
            if s.hd_type == "quest" then
                hd_key = utils.get_currently_viewed_quest_id()
            elseif s.hd_type == "book" then
                hd_key = utils.get_currently_viewed_book_id()
            end

            if s.hd_type and hd_key then
                update_lang_switcher_translation_for_frame(s.frame:GetParent(), s.hd_type, hd_key)

                if s.extra_target then
                    update_lang_switcher_translation_for_frame(s.extra_target, s.hd_type, hd_key)
                end

                if s.post_update then
                    s.post_update()
                end
            end
        end
    end

    is_set_text_hook_allowed = true
end

local function update_known_game_ui_places()
    if QuestLogFrameTrackButton and QuestLogFrameTrackButton.Click then
        -- this will effectively update all places, it is short but ugly,
        -- as we are actually clicking track/untrack for particular quest
        -- notes/issues:
        -- - the addons (which are tracking such state change) might do extra work
        -- - the quest track list order gets changed (obviously)
        --   (visible in default ui; Questie seems to be sorting quests and the state change is unnoticeable)
        -- - wrath+ has WatchFrame_Update(), works -- updates side tracker; but consistent way
        --   to update world map quest list is yet to be found (for now we do short and ugly below)

        QuestLogFrameTrackButton:Click() -- change state
        QuestLogFrameTrackButton:Click() -- revert state back
    else
        QuestLog_SetSelection(GetQuestLogSelection()) -- quest log, objective task list
        QuestLog_Update() -- quest log, quest list with headers
        if QuestWatch_Update then QuestWatch_Update() end -- classic quest tracker
        if WatchFrame_Update then WatchFrame_Update() end -- wrath+ quest tracker

        -- TODO: find a way to update wrath+ world map quest list:
        -- QuestMapFrame_UpdateAll is a candidate, but it seems doesn't refresh quest list
        -- if a way is found, use "else" branch for all clients, remove ugly "if" branch
    end
end

local function create_lang_switcher_frame(parent, point, x, y)
    local root = CreateFrame("CheckButton", nil, parent)
    root:SetPoint(point, parent, x, y)
    root:SetSize(40, 40)

    root:SetNormalTexture(assets.icon_scroll)
    root:GetNormalTexture():SetBlendMode("ADD")
    root:GetNormalTexture():SetGradient("VERTICAL", CreateColor(1, 1, 0, 1), CreateColor(0, 0, 0.8, 1))

    root:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")

    root:SetCheckedTexture(assets.icon_scroll)
    root:GetCheckedTexture():SetBlendMode("ADD")
    root:GetCheckedTexture():SetGradient("VERTICAL", CreateColor(1, 1, 0, 0.6), CreateColor(0, 0, 0.8, 0.6))

    root:SetScript("OnClick", function (self)
        data_hooks.preferred_lang = self:GetChecked() and "en" or "uk"
        update_lang_switchers()
        update_hooked_labels()
        update_known_game_ui_places()
    end)

    return root
end

local function prepare_lang_switchers()
    for _, switcher in ipairs(lang_switchers) do
        local p = switcher.parent
        if p.frame then
            switcher.frame = create_lang_switcher_frame(p.frame, p.point, p.x, p.y)
        end
    end
end

frame_hooks.prepare = function ()
    prepare_hooked_labels()
    update_hooked_labels() -- need this update to initially translate labels which never gets updated by the game
    prepare_lang_switchers()
end
