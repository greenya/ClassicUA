local addon_name, addon_table = ...

local assets        = addon_table.use("assets") ---@class assets_class
local chats         = addon_table.use("chats") ---@class chats_class
local data_hooks    = addon_table.use("data_hooks") ---@class data_hooks_class
local dev_log       = addon_table.use("dev_log") ---@class dev_log_class
local entries       = addon_table.use("entries") ---@class entries_class
local fonts         = addon_table.use("fonts") ---@class fonts_class
local frame_hooks   = addon_table.use("frame_hooks") ---@class frame_hooks_class
local options       = addon_table.use("options") ---@class options_class
local options_ext_ui = addon_table.use("options_ext_ui") ---@class options_ext_ui_class
local options_ui    = addon_table.use("options_ui") ---@class options_ui_class
local strings       = addon_table.use("strings") ---@class strings_class
local tooltips      = addon_table.use("tooltips") ---@class tooltips_class
local utils         = addon_table.use("utils") ---@class utils_class

local GameTooltip       = _G.GameTooltip
local GossipFrame       = _G.GossipFrame
local ShouldShowName    = _G.ShouldShowName
local TargetFrame       = _G.TargetFrame
local UnitName          = _G.UnitName

-- -------------------
-- [ item text frame ]
-- -------------------

ItemTextFrame.classicua = {}

-- WoW: Forever runs the retail reader: it has the title on the frame itself
local function set_item_text_title(text)
    if utils.is_forever then
        ItemTextFrame:SetTitle(text)
    else
        ItemTextTitleText:SetText(text)
    end
end

local function set_item_text_page(text)
    -- WoW: Forever has no line break before a page
    ItemTextPageText:SetText(utils.is_forever and text or "\n" .. text)
    utils.update_item_text_scrollbar()
end

local function on_item_text_begin()
    local tt_meta = GameTooltip.classicua or {}
    local meta = ItemTextFrame.classicua
    if tt_meta.entry_type == "item" and tt_meta.entry_id then
        meta.entry_type = tt_meta.entry_type
        meta.entry_id = tonumber(tt_meta.entry_id)
    -- else if ItemTextGetCreator(): translate mail
    elseif not ItemTextGetCreator() then
        -- a readable world object: no item under the cursor and no creator; the name comes at ITEM_TEXT_READY
        meta.entry_type = "object"
        meta.entry_id = false
    end
    meta.pages = nil
end

local function on_item_text_closed()
    local meta = ItemTextFrame.classicua
    meta.entry_type = false
    meta.entry_id = false
    meta.pages = nil
end

local function on_item_text_ready()
    local meta = ItemTextFrame.classicua

    if meta.entry_type == "item" and meta.entry_id and options.can_lookup("translate_book") then
        local item_id = meta.entry_id

        local item_entry = entries.get_entry("item", item_id)
        if item_entry then
            local en = ItemTextGetItem()
            local uk = utils.cap(item_entry[1])
            set_item_text_title(data_hooks.set_translation("item_text", item_id, en, uk))
        end

        local item_text_entry = entries.get_entry("item_text", item_id)
        if item_text_entry then
            local page_num = ItemTextGetPage()
            if item_text_entry[page_num] then
                local en = ItemTextGetText()
                local uk = item_text_entry[page_num]
                set_item_text_page(data_hooks.set_translation("item_text", item_id, en, uk))
            end
        end

    elseif meta.entry_type == "object" and options.can_lookup("translate_book") then
        local name_en = ItemTextGetItem()
        if type(name_en) == "string" and name_en ~= "" then
            meta.entry_id = name_en

            local name_uk = entries.get_glossary_text(name_en, nil, "object")
            if name_uk then
                set_item_text_title(data_hooks.set_translation("item_text", name_en, name_en, utils.cap(name_uk)))
            end

            -- the pages are found once per reading: namesakes are told apart by the first page
            local en = ItemTextGetText()
            local page_num = ItemTextGetPage()
            if meta.pages == nil then
                meta.pages = entries.get_object_text_pages(name_en, en) or false
            end

            if meta.pages and meta.pages[page_num] then
                set_item_text_page(data_hooks.set_translation("item_text", name_en, en, meta.pages[page_num]))
            elseif not meta.pages and options.account.dev_mode then
                dev_log.missing_object_text(name_en, page_num, en)
            end
        end
    end
end

ItemTextFrame.classicua.refresh = on_item_text_ready

-- ----------------
-- [ gossip frame ]
-- ----------------

local function on_gossip_show()
    local npc_id = utils.npc_id_from_unit_id("npc")
    if not npc_id then
        return
    end

    frame_hooks.update_gossip_npc_name()

    if not options.can_lookup("translate_gossip") then
        return
    end

    local is_translation_on = options.can_translate("translate_gossip")

    local gossip_scroll_box = GossipFrame and GossipFrame.GreetingPanel and GossipFrame.GreetingPanel.ScrollBox
    if not gossip_scroll_box then
        return
    end

    local is_any_text_translated = false

    for _, child in gossip_scroll_box:EnumerateFrames() do
        local element_data = child.GetElementData and child:GetElementData()
        if element_data and element_data.buttonType == GOSSIP_BUTTON_TYPE_OPTION then
            local text_en = child:GetText()
            local text_ua = entries.get_gossip_text_for_player_reply(npc_id, text_en)
            if text_ua and is_translation_on then
                local translation = data_hooks.set_translation("gossip", npc_id, text_en, text_ua) or text_ua
                child:SetText(translation)
                child:Resize()
                element_data.info.name = translation
                element_data.titleOptionButton:Setup(element_data.info)
                is_any_text_translated = true
            end

        -- WoW: Forever has no data hooks for the npc text and the quest titles (see data_hooks.prepare)
        -- TODO: use for classic as well
        elseif utils.is_forever and element_data and element_data.buttonType == GOSSIP_BUTTON_TYPE_TITLE then
            local text_ua = entries.get_gossip_text_for_npc_talk(npc_id, element_data.text)
            if text_ua and is_translation_on then
                element_data.text = data_hooks.set_translation("gossip", npc_id, element_data.text, text_ua) or text_ua
                child:Setup(element_data.text)
                is_any_text_translated = true
            end

        elseif utils.is_forever and element_data and element_data.info and element_data.info.questID then
            local title_ua = entries.get_quest_title(element_data.info.questID)
            if title_ua and is_translation_on then
                local info = element_data.info
                info.title = data_hooks.set_translation("gossip", npc_id, info.title, title_ua) or title_ua
                child:Setup(info)
                is_any_text_translated = true
            end
        end
    end

    if is_any_text_translated then
        gossip_scroll_box:FullUpdate(true)
    end
end

local function on_quest_log_update()
    -- the gossip window redraws itself on this event while it has active quests,
    -- which puts the original npc name back into its header
    if GossipFrame:IsShown() then
        -- WoW: Forever, the redraw also puts back the original npc text and quest titles (see on_gossip_show)
        if utils.is_forever then
            on_gossip_show()
        else
            frame_hooks.update_gossip_npc_name()
        end
    end
end

-- ----------------
-- [ target frame ]
-- ----------------

local function on_player_target_changed()
    if not options.can_lookup("translate_npc", "translate_npc_target_frame") then
        return
    end

    local npc_id = utils.npc_id_from_unit_id("target")
    if npc_id then
        local entry = entries.get_entry("npc", npc_id)
        if not entry then
            if options.account.dev_mode then
                dev_log.missing_npc(npc_id, UnitName("target"))
            end
        elseif options.can_translate("translate_npc", "translate_npc_target_frame") then
            TargetFrame.name:SetText(utils.cap(entry[1]))
        end
    end
end

-- --------------
-- [ nameplates ]
-- --------------

local function prepare_nameplates()
    hooksecurefunc("CompactUnitFrame_UpdateName", function (self)
        if not options.can_lookup("translate_npc", "translate_nameplates") then
            return
        end

        if ShouldShowName(self) and not self:IsForbidden() then
            local npc_id = utils.npc_id_from_unit_id(self.unit)
            if npc_id then
                local entry = entries.get_entry("npc", npc_id)
                if not entry then
                    if options.account.dev_mode then
                        dev_log.missing_npc(npc_id, UnitName(self.unit))
                    end
                elseif options.can_translate("translate_npc", "translate_nameplates") then
                    self.name:SetText(utils.cap(entry[1]))
                end
            end
        end
    end)
end

-- ----------
-- [ events ]
-- ----------

local event_frame = CreateFrame("Frame")

event_frame:RegisterEvent("ADDON_LOADED")
event_frame:RegisterEvent("PLAYER_LOGIN")
event_frame:RegisterEvent("PLAYER_ENTERING_WORLD")
event_frame:RegisterEvent("PLAYER_TARGET_CHANGED")
event_frame:RegisterEvent("ITEM_TEXT_BEGIN")
event_frame:RegisterEvent("ITEM_TEXT_CLOSED")
event_frame:RegisterEvent("ITEM_TEXT_READY")
event_frame:RegisterEvent("GOSSIP_SHOW")
event_frame:RegisterEvent("QUEST_LOG_UPDATE")

event_frame:SetScript("OnEvent", function (self, event, ...)
    if event == "ADDON_LOADED" then
        local loaded_addon_name = ...
        if loaded_addon_name ~= addon_name then
            return
        end

        self:UnregisterEvent("ADDON_LOADED")
        utils.prepare()
        options.prepare()
        strings.prepare()
        dev_log.prepare()
        fonts.prepare()
        tooltips.prepare()
        chats.prepare()
        prepare_nameplates()

    elseif event == "PLAYER_LOGIN" then
        entries.prepare()
        data_hooks.prepare()
        options_ext_ui.prepare()
        options_ui.prepare()

        DEFAULT_CHAT_FRAME:AddMessage(
            assets.icon_ua_inline
            .. " ClassicUA v" .. utils.addon_version()
            .. " — |cffffbb22" .. _G.SLASH_CLASSICUA_SETTINGS1 .. "|r"
            .. (options.account.dev_mode and " — Режим розробки" or "")
        )

    elseif event == "PLAYER_ENTERING_WORLD" then
        -- the hooks on the game's frames are set once the player is in the world: WoW: Forever (since 1.60.1.70009)
        -- leaves the ones set earlier without effect, or even breaks the hooked methods
        self:UnregisterEvent("PLAYER_ENTERING_WORLD")
        frame_hooks.prepare()

    elseif event == "PLAYER_TARGET_CHANGED" then
        on_player_target_changed()

    elseif event == "ITEM_TEXT_BEGIN" then
        on_item_text_begin()

    elseif event == "ITEM_TEXT_CLOSED" then
        on_item_text_closed()

    elseif event == "ITEM_TEXT_READY" then
        on_item_text_ready()

    elseif (event=="GOSSIP_SHOW") then
        on_gossip_show()

    elseif event == "QUEST_LOG_UPDATE" then
        on_quest_log_update()
    end
end)
