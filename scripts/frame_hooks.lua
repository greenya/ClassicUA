local _, addon_table = ...

local assets        = addon_table.use("assets") ---@class assets_class
local data_hooks    = addon_table.use("data_hooks") ---@class data_hooks_class
local dev_log       = addon_table.use("dev_log") ---@class dev_log_class
local entries       = addon_table.use("entries") ---@class entries_class
local frame_hooks   = addon_table.use("frame_hooks") ---@class frame_hooks_class
local frames        = addon_table.use("frames") ---@class frames_class
local options       = addon_table.use("options") ---@class options_class
local utils         = addon_table.use("utils") ---@class utils_class

local string_format        = _G.string.format
local string_gmatch        = _G.string.gmatch
local C_QuestLog           = _G.C_QuestLog
local GetQuestID           = _G.GetQuestID
local GetQuestLogQuestText = _G.GetQuestLogQuestText
local UnitName             = _G.UnitName

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

local function npc_name_in_preferred_lang(unit_id)
    if not options.can_translate("translate_npc") then
        return
    end

    local npc_id = utils.npc_id_from_unit_id(unit_id)
    local entry = npc_id and entries.get_entry("npc", npc_id)
    if not entry then
        return
    end

    return data_hooks.preferred_lang == "uk" and utils.cap(entry[1]) or UnitName(unit_id)
end

local function update_gossip_npc_name()  -- todo: move from frame_hooks?
    local name = GossipFrame.SetGossipTitle and npc_name_in_preferred_lang("npc")
    if name then
        GossipFrame:SetGossipTitle(name)
    end
end

local function update_quest_npc_name()
    local name = npc_name_in_preferred_lang("questnpc")
    if not name then
        return
    end

    -- WoW: Forever runs the retail quest window, which shows the npc name as its title
    if utils.is_forever then
        QuestFrame:SetTitle(name)
    elseif QuestFrameNpcNameText then
        QuestFrameNpcNameText:SetText(name)
    end
end

local function set_quest_item_name(font_string, item_link)
    local item_entry = item_link and entries.get_entry("item", utils.item_id_from_link(item_link))
    if not font_string or not item_entry then
        return
    end

    local name = data_hooks.preferred_lang == "uk"
        and utils.cap(item_entry[1])
        or item_link:match("%[(.-)%]") -- the link carries the original name

    if name then
        font_string:SetText(name)
    end
end

-- the rewards a quest offers, in the talk windows and in the quest log alike
local function update_quest_reward_names()
    if not options.can_translate("translate_item", "translate_quest_item") then
        return
    end

    local rewards_frame = QuestInfoFrame and QuestInfoFrame.rewardsFrame
    local buttons = rewards_frame and rewards_frame.RewardButtons
    local get_item_link = QuestInfoFrame and QuestInfoFrame.questLog and GetQuestLogItemLink or GetQuestItemLink

    if not buttons or not get_item_link then
        return
    end

    for _, button in ipairs(buttons) do
        if button:IsShown() and button.objectType == "item" and button.type then
            set_quest_item_name(button.Name, get_item_link(button.type, button:GetID()))
        end
    end
end

local function update_numbered_item_buttons(name_prefix, get_item_link)
    local i = 1
    local button = _G[name_prefix .. i]

    while button do
        if button:IsShown() and button.type and button.objectType ~= "currency" then
            set_quest_item_name(_G[name_prefix .. i .. "Name"], get_item_link(button.type, button:GetID()))
        end

        i = i + 1
        button = _G[name_prefix .. i]
    end
end

local function update_quest_required_item_names()
    if not options.can_translate("translate_item", "translate_quest_item") or not GetQuestItemLink then
        return
    end

    update_numbered_item_buttons("QuestProgressItem", GetQuestItemLink)
end

local function update_quest_frame_item_names(quest_state)
    if not options.can_translate("translate_item", "translate_quest_item") or type(quest_state) ~= "string" then
        return
    end

    local get_item_link = quest_state == "QuestLog" and GetQuestLogItemLink or GetQuestItemLink
    if not get_item_link then
        return
    end

    update_numbered_item_buttons(quest_state .. "Item", get_item_link)
end

local function update_gossip_scroll_box()
    local npc_id = utils.npc_id_from_unit_id("npc")
    local scroll_box = GossipFrame and GossipFrame.GreetingPanel and GossipFrame.GreetingPanel.ScrollBox

    if not npc_id or not scroll_box then
        return
    end

    local is_any_text_translated = false

    for _, child in scroll_box:EnumerateFrames() do
        local element_data = child.GetElementData and child:GetElementData()
        local info = element_data and element_data.info

        if info then
            -- a player reply ("name") or a quest title ("title")
            for _, key in ipairs({ "name", "title" }) do
                local found = info[key] and data_hooks.get_translation("gossip", npc_id, info[key])
                if found then
                    info[key] = found
                    is_any_text_translated = true
                end
            end

            if child.Setup then
                child:Setup(info)
            end

        elseif element_data and element_data.text then
            local found = data_hooks.get_translation("gossip", npc_id, element_data.text)
            if found then
                element_data.text = found
                is_any_text_translated = true
                if child.Setup then
                    child:Setup(found)
                end
            end
        end
    end

    if is_any_text_translated then
        scroll_box:FullUpdate(true)
    end
end

local lang_switchers = {
    -- quests
    { hd_type="quest", parent={ frame=QuestDetailScrollFrame, point="TOPRIGHT", x=-6, y=-10 },
      post_update=function ()
          update_quest_npc_name()
          update_quest_reward_names()
      end },
    { hd_type="quest", parent={ frame=QuestProgressScrollFrame, point="TOPRIGHT", x=-6, y=-10 },
      post_update=function ()
          update_quest_npc_name()
          update_quest_required_item_names()
      end },
    { hd_type="quest", parent={ frame=QuestRewardScrollFrame, point="TOPRIGHT", x=-6, y=-10 },
      post_update=function ()
          update_quest_npc_name()
          update_quest_reward_names()
      end },
    { hd_type="quest", parent={ frame=QuestLogDetailScrollFrame, point="TOPRIGHT", x=-8, y=-12 },
      post_update=function ()
          update_quest_reward_names()
          update_quest_frame_item_names("QuestLog")
      end },
    { hd_type="quest", parent={ frame=QuestMapDetailsScrollFrame, point="TOPRIGHT", x=-2, y=-4 },
      extra_target=QuestMapFrame and QuestMapFrame.DetailsFrame and QuestMapFrame.DetailsFrame.RewardsFrame or nil,
      post_update=function () update_quest_reward_names() end },

    -- item texts (books, notes, scrolls)
    { hd_type="item_text", parent={ frame=ItemTextScrollFrame, point="TOPRIGHT", x=-2, y=-12 },
      extra_target=ItemTextFrame,
      post_update=function ()
          if ItemTextFrame.classicua.refresh then
              ItemTextFrame.classicua.refresh()
          end
          utils.update_item_text_scrollbar()
      end },

    -- gossips (npc talk and player replies)
    { hd_type="gossip", parent={ frame=GossipFrameInset, relative_to=GossipFrame.GreetingPanel.ScrollBox,
                                 point="TOPRIGHT", x=-12, y=-10 },
      post_update=function ()
          update_gossip_scroll_box()
          update_gossip_npc_name()
      end },
    { hd_type="gossip", parent={ frame=QuestGreetingScrollFrame, point="TOPRIGHT", x=-6, y=-10 },
      post_update=function () update_quest_npc_name() end },
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
    elseif data_type == "item_text" then
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

local function update_lang_switcher_tooltip(frame)
    frame.tooltip_text = data_hooks.preferred_lang == "uk" and "Показати оригінал" or "Показати переклад"

    if GameTooltip:IsShown() and GameTooltip:GetOwner() == frame then
        GameTooltip:SetText(frame.tooltip_text, nil, nil, nil, nil, true)
    end
end

local function update_lang_switchers()
    is_set_text_hook_allowed = false

    for _, s in ipairs(lang_switchers) do
        if s.frame then
            s.frame:SetChecked(data_hooks.preferred_lang == "en")
            update_lang_switcher_tooltip(s.frame)

            local hd_key
            if s.hd_type == "quest" then
                hd_key = utils.get_currently_viewed_quest_id()
            elseif s.hd_type == "item_text" then
                hd_key = utils.get_currently_viewed_text_id()
            elseif s.hd_type == "gossip" then
                hd_key = utils.npc_id_from_unit_id("npc")
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

-- WoW: Forever shows a finished quest with its completion text, which is often the objectives text of the quest
local function translate_forever_quest_completion_text(quest_id, text)
    local _, objectives_en = GetQuestLogQuestText(C_QuestLog.GetLogIndexForQuestID(quest_id))
    local quest_entry = text == objectives_en and entries.get_entry("quest", quest_id)
    return quest_entry and quest_entry[3]
end

-- WoW: Forever, the quest tracker lays out its blocks by the heights of the english texts, so the heights a translation
-- adds are added to its line, its block and the module (after the game sets the module height, see prepare)
local forever_quest_tracker_added_height = 0

-- a text of the quest tracker is kept in both languages, so the language switchers swap it in place (laying the
-- tracker out again from here would taint it); a text the game has set anew since is left alone.
-- Returns the height the switch added
local function switch_forever_quest_tracker_text(font_string)
    local texts = font_string.classicua
    if not texts or font_string:GetText() ~= texts.shown then
        return 0
    end

    local height = font_string:GetHeight()
    -- like the game, the height is cleared before the text, or GetHeight() may report the previous one
    font_string:SetHeight(0)
    font_string:SetText(data_hooks.preferred_lang == "uk" and texts.uk or texts.en)
    texts.shown = font_string:GetText()

    return font_string:GetHeight() - height
end

local function switch_forever_quest_tracker_block(block)
    local block_added_height = switch_forever_quest_tracker_text(block.HeaderText)

    for _, line in pairs(block.usedLines) do
        local added_height = switch_forever_quest_tracker_text(line.Text)
        line:SetHeight(line:GetHeight() + added_height)
        block_added_height = block_added_height + added_height
    end

    block:SetHeight(block:GetHeight() + block_added_height)
    forever_quest_tracker_added_height = forever_quest_tracker_added_height + block_added_height
end

local function forever_quest_tracker_blocks()
    return QuestObjectiveTracker.usedBlocks[QuestObjectiveTracker.blockTemplate] or {}
end

-- WoW: Forever, the quest tracker has just set the texts of its blocks (keyed by quest id): the header, the objective
-- lines (keyed by their index) and the completion text (keyed "QuestComplete")
local function update_forever_quest_tracker()
    forever_quest_tracker_added_height = 0

    if not options.can_translate("translate_quest") then
        return
    end

    for quest_id, block in pairs(forever_quest_tracker_blocks()) do
        if block.used then
            local title_en = C_QuestLog.GetTitleForQuestID(quest_id)
            local title_uk = entries.get_quest_title(quest_id)
            local text = block.HeaderText:GetText()
            -- the title is shown with the quest level before it
            local from, to
            if title_en and text then
                from, to = text:find(title_en, 1, true)
            end
            if title_uk and from then
                block.HeaderText.classicua = { en=text, uk=text:sub(1, from - 1) .. title_uk .. text:sub(to + 1), shown=text }
            end

            for key, line in pairs(block.usedLines) do
                local text_en = line.Text:GetText()
                local text_uk = type(key) == "number" and entries.translate_forever_quest_objective(text_en)
                    or key == "QuestComplete" and translate_forever_quest_completion_text(quest_id, text_en)
                if text_uk then
                    line.Text.classicua = { en=text_en, uk=text_uk, shown=text_en }
                end
            end

            switch_forever_quest_tracker_block(block)
        end
    end
end

-- the game sets the height of the module by the english texts, the height the translations added comes on top
local function update_forever_quest_tracker_height(module)
    module:SetHeight(module:GetHeight() + forever_quest_tracker_added_height)
end

-- the language switchers swap the tracker texts in place, and the module takes the height that changed
local function switch_forever_quest_tracker()
    local added_height = forever_quest_tracker_added_height

    for _, block in pairs(forever_quest_tracker_blocks()) do
        if block.used then
            switch_forever_quest_tracker_block(block)
        end
    end

    QuestObjectiveTracker:SetHeight(QuestObjectiveTracker:GetHeight() + forever_quest_tracker_added_height - added_height)
end

local function update_known_game_ui_places()
    -- WoW: Forever, the tracker texts are switched in place (see switch_forever_quest_tracker), as the classic quest
    -- log and tracker functions refreshed below don't exist there
    if utils.is_forever then
        switch_forever_quest_tracker()
        return
    end

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

local function create_lang_switcher_frame(parent, relative_to, point, x, y)
    local root = CreateFrame("CheckButton", nil, parent)
    root:SetPoint(point, relative_to or parent, x, y)
    root:SetSize(40, 40)

    root:SetNormalTexture(assets.icon_scroll)
    root:GetNormalTexture():SetBlendMode("ADD")
    root:GetNormalTexture():SetGradient("VERTICAL", CreateColor(1, 1, 0, 1), CreateColor(0, 0, 0.8, 1))

    root:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")

    root:SetCheckedTexture(assets.icon_scroll)
    root:GetCheckedTexture():SetBlendMode("ADD")
    root:GetCheckedTexture():SetGradient("VERTICAL", CreateColor(1, 1, 0, 0.6), CreateColor(0, 0, 0.8, 0.6))

    frames.add_tooltip_for_frame(root, "ANCHOR_RIGHT", nil)
    update_lang_switcher_tooltip(root)

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
            switcher.frame = create_lang_switcher_frame(p.frame, p.relative_to, p.point, p.x, p.y)
        end
    end
end

local function prepare_quest_window_hooks()
    -- NPC name in quest window
    if QuestFrame_SetPortrait then
        hooksecurefunc("QuestFrame_SetPortrait", update_quest_npc_name)
    end

    -- rewards in the quest talk windows, in the wrath+ world map, in cata+ quest logs
    if QuestInfo_Display then
        hooksecurefunc("QuestInfo_Display", update_quest_reward_names)
    end

    -- QUEST_ITEM_UPDATE repaints the rewards, without going through QuestInfo_Display
    if QuestInfo_ShowRewards then
        hooksecurefunc("QuestInfo_ShowRewards", update_quest_reward_names)
    end

    -- required quest items in progress window
    if QuestFrameProgressItems_Update then
        hooksecurefunc("QuestFrameProgressItems_Update", update_quest_required_item_names)
    end

    -- rewards in pre-cata quest log
    if QuestFrameItems_Update then
        hooksecurefunc("QuestFrameItems_Update", update_quest_frame_item_names)
    end
end

-- the game decorates a quest title (e.g. a dungeon icon, "Failed"), so only the english title in it is swapped
local function splice_quest_title(text, quest_id, title_uk)
    local title_en = C_QuestLog.GetTitleForQuestID(quest_id) or GetTitleText()
    local from, to
    if title_en and title_en ~= "" then
        from, to = text:find(title_en, 1, true)
    end
    return from and text:sub(1, from - 1) .. title_uk .. text:sub(to + 1) or title_uk
end

-- WoW: Forever runs the retail ui, where the quest texts can not be translated by data_hooks (see data_hooks.prepare)
-- So now we set text as its widget gets it; it goes through data_hooks.set_translation(), so the language switcher serves it as on the other clients
local function hook_quest_text(widget, entry_field, get_quest_id)
    hooksecurefunc(widget, "SetText", function (self, text)
        if not is_set_text_hook_allowed or type(text) ~= "string" or not options.can_lookup("translate_quest") then
            return
        end

        local quest_id = get_quest_id()
        local quest_entry = entries.get_entry("quest", quest_id)
        if quest_entry and quest_entry[entry_field] then
            local text_uk = quest_entry[entry_field]
            if entry_field == 1 then
                text_uk = splice_quest_title(text, quest_id, text_uk)
            end
            local text_new = data_hooks.set_translation("quest", quest_id, text, text_uk)

            is_set_text_hook_allowed = false
            self:SetText(text_new)
            is_set_text_hook_allowed = true
        end
    end)
end

-- the quest window shows either the quest log's selected quest or the one an npc offers
local function quest_info_quest_id()
    return QuestInfoFrame.questLog and C_QuestLog.GetSelectedQuest() or GetQuestID()
end

-- WoW: Forever, the quest list of the map: the game sizes every quest button by its title right after setting it,
-- so once the list is built, each title is swapped, its button resized by the height the title changed, and the
-- list laid out again
local function update_forever_quest_log_list()
    if data_hooks.preferred_lang ~= "uk" or not options.can_translate("translate_quest") then
        return
    end

    local is_resized = false
    local buttons_by_quest_id = {}

    for button in QuestScrollFrame.titleFramePool:EnumerateActive() do
        buttons_by_quest_id[button.questID] = button
        local title_uk = entries.get_quest_title(button.questID)
        local text = button.Text:GetText()
        -- the title is shown with the quest level and icons around it
        local from, to = text:find(button.info.title, 1, true)
        if title_uk and from then
            local height = button.Text:GetHeight()
            button.Text:SetText(text:sub(1, from - 1) .. title_uk .. text:sub(to + 1))

            -- the list is rebuilt on every hover of a quest on the map, so it is laid out again only when needed
            local height_change = button.Text:GetHeight() - height
            if height_change ~= 0 then
                button:SetHeight(button:GetHeight() + height_change)
                is_resized = true
            end
        end
    end

    -- the objectives (or the completion text) are under the title, and make its button taller
    for objective in QuestScrollFrame.objectiveFramePool:EnumerateActive() do
        local text = objective.Text:GetText()
        local text_uk = entries.translate_forever_quest_objective(text)
            or translate_forever_quest_completion_text(objective.questID, text)
        if text_uk then
            local height = objective.Text:GetStringHeight()
            objective.Text:SetText(text_uk)

            local height_change = objective.Text:GetStringHeight() - height
            if height_change ~= 0 then
                objective:SetHeight(objective:GetHeight() + height_change)
                local button = buttons_by_quest_id[objective.questID]
                button:SetHeight(button:GetHeight() + height_change)
                is_resized = true
            end
        end
    end

    for button in QuestScrollFrame.headerFramePool:EnumerateActive() do
        local text_uk = entries.get_glossary_text(button:GetText(), nil, "zone")
        if text_uk then
            button:SetText(text_uk)
        end
    end

    if is_resized then
        QuestScrollFrame.Contents:Layout()
    end
end

-- WoW: Forever, the objectives of a quest in the quest window, a text each
local function update_forever_quest_info_objectives()
    if not options.can_lookup("translate_quest") then
        return
    end

    local quest_id = quest_info_quest_id()
    for _, objective in ipairs(QuestInfoObjectivesFrame.Objectives) do
        local text = objective:GetText()
        local text_uk = objective:IsShown() and text and entries.translate_forever_quest_objective(text)
        if text_uk then
            objective:SetText(data_hooks.set_translation("quest", quest_id, text, text_uk))
        end
    end
end

-- WoW: Forever, the zone names the game shows: the zone and subzone on entering them, the minimap zone and the zone
-- under the cursor on the world map, which comes with its levels: "Durotar|cffffff00 (1-10)|r"
local function hook_forever_zone_text(font_string)
    hooksecurefunc(font_string, "SetText", function (self, text)
        if not is_set_text_hook_allowed or type(text) ~= "string" then
            return
        end

        local name, levels = text:match("^(.-)(|c.*)$")
        name = name or text
        local name_uk = data_hooks.translate_zone_text(name)
        if name_uk ~= name then
            is_set_text_hook_allowed = false
            self:SetText(name_uk .. (levels or ""))
            is_set_text_hook_allowed = true
        end
    end)
end

-- WoW: Forever, the buttons of the world map above it, one per map from the continent down: "Kalimdor", "Durotar";
-- each is as wide as its text. The first one is the home button ("World"), an interface text, not a zone
local function update_forever_world_map_nav_bar(nav_bar)
    for i = 2, #nav_bar.navList do
        local button = nav_bar.navList[i]
        local text = button:GetText()
        local text_uk = data_hooks.translate_zone_text(text)
        if text_uk ~= text then
            local width = button.text:GetStringWidth()
            button:SetText(text_uk)
            button:SetWidth(button:GetWidth() + button.text:GetStringWidth() - width)
        end
    end
end

-- WoW: Forever, a flight point hovered on the flight master's map: its name ("Crossroads, The Barrens") is the first
-- line of the tooltip, which is shown again to fit the translation
local function update_forever_taxi_node_tooltip()
    if not options.can_lookup("translate_zone") then
        return
    end

    local text = GameTooltipTextLeft1:GetText()
    local text_uk = text and entries.translate_taxi_node_name(text)
    if options.can_translate("translate_zone") and text_uk ~= text then
        GameTooltipTextLeft1:SetText(text_uk)
        GameTooltip:Show()
    end
end

local function prepare_forever_zone_texts()
    hook_forever_zone_text(ZoneTextString)
    hook_forever_zone_text(SubZoneTextString)
    hook_forever_zone_text(MinimapZoneText)

    for provider in pairs(WorldMapFrame.dataProviders) do
        if provider.OnSetAreaLabel then
            hook_forever_zone_text(provider.Label.Name)
        end
    end

    hooksecurefunc(WorldMapFrame.NavBar, "Refresh", update_forever_world_map_nav_bar)
    hooksecurefunc("TaxiNodeOnButtonEnter", update_forever_taxi_node_tooltip)

    -- the list of sibling maps behind the arrow of such button; every navigation bar (e.g. the dungeon journal) has
    -- this menu tag
    Menu.ModifyMenu("MENU_MINIMAP_BATTLEFIELD", function (owner, root_description)
        if owner:GetParent():GetParent() ~= WorldMapFrame.NavBar then
            return
        end

        -- a button shows the text its initializer got, so one more initializer shows the translation
        for _, element in root_description:EnumerateElementDescriptions() do
            local text = MenuUtil.GetElementText(element)
            local text_uk = data_hooks.translate_zone_text(text)
            if text_uk ~= text then
                element:AddInitializer(function (button)
                    button.fontString:SetTextToFit(text_uk)
                end)
            end
        end
    end)

    -- the minimap got its zone while the game was loading, the next one comes with a zone change
    MinimapZoneText:SetText(MinimapZoneText:GetText())
end

local function prepare_forever_quest_texts()
    hook_quest_text(QuestInfoTitleHeader,       1, quest_info_quest_id)
    hook_quest_text(QuestInfoDescriptionText,   2, quest_info_quest_id)
    hook_quest_text(QuestInfoObjectivesText,    3, quest_info_quest_id)
    hook_quest_text(QuestInfoRewardText,        5, quest_info_quest_id)
    hook_quest_text(QuestProgressTitleText,     1, GetQuestID)
    hook_quest_text(QuestProgressText,          4, GetQuestID)

    hooksecurefunc("QuestInfo_Display", update_forever_quest_info_objectives)
    hooksecurefunc("QuestLogQuests_Update", update_forever_quest_log_list)
    hooksecurefunc(QuestObjectiveTracker, "LayoutContents", update_forever_quest_tracker)
    hooksecurefunc(QuestObjectiveTracker, "UpdateHeight", update_forever_quest_tracker_height)
end

frame_hooks.update_gossip_npc_name = update_gossip_npc_name

frame_hooks.prepare = function ()
    prepare_hooked_labels()
    update_hooked_labels() -- need this update to initially translate labels which never gets updated by the game
    prepare_lang_switchers()
    prepare_quest_window_hooks()

    if utils.is_forever then
        prepare_forever_quest_texts()
        prepare_forever_zone_texts()
    end
end
