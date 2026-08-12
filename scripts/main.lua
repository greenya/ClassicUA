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

local function on_item_text_begin()
    local tt_meta = GameTooltip.classicua or {}
    if tt_meta.entry_type == "item" and tt_meta.entry_id then
        local meta = ItemTextFrame.classicua
        meta.entry_type = tt_meta.entry_type
        meta.entry_id = tonumber(tt_meta.entry_id)
    end
end

local function on_item_text_closed()
    local meta = ItemTextFrame.classicua
    meta.entry_type = false
    meta.entry_id = false
end

local function on_item_text_ready()
    local meta = ItemTextFrame.classicua

    if meta.entry_type == "item" and meta.entry_id and options.can_lookup("translate_book") then
        local item_id = meta.entry_id

        local item_entry = entries.get_entry("item", item_id)
        if item_entry then
            local en = ItemTextGetItem()
            local uk = utils.cap(item_entry[1])
            local translation = data_hooks.set_translation("book", item_id, en, uk)
            ItemTextTitleText:SetText(translation)
        end

        local book_entry = entries.get_entry("book", item_id)
        if book_entry then
            local page_num = ItemTextGetPage()
            if book_entry[page_num] then
                local en = ItemTextGetText()
                local uk = book_entry[page_num]
                local translation = data_hooks.set_translation("book", item_id, en, uk)
                ItemTextPageText:SetText("\n" .. translation)
                utils.update_item_text_scrollbar()
            end
        end
    end
end

-- ----------------
-- [ gossip frame ]
-- ----------------

local function on_gossip_show()
    if not options.can_lookup("translate_gossip") then
        return
    end

    local is_translation_on = options.can_translate("translate_gossip")
    local npc_id = utils.npc_id_from_unit_id("npc")
    if not npc_id then
        return
    end

    local gossip_scroll_box = GossipFrame and GossipFrame.GreetingPanel and GossipFrame.GreetingPanel.ScrollBox
    if not gossip_scroll_box then
        return
    end

    local is_any_reply_translated = false

    for _, child in gossip_scroll_box:EnumerateFrames() do
        local element_data = child:GetElementData()
        if element_data.buttonType == GOSSIP_BUTTON_TYPE_OPTION then
            local text_en = child:GetText()
            local text_ua = entries.get_gossip_text_for_player_reply(npc_id, text_en)
            if text_ua and is_translation_on then
                local translation = data_hooks.set_translation("gossip", npc_id, text_en, text_ua) or text_ua
                child:SetText(translation)
                child:Resize()
                element_data.info.name = translation
                element_data.titleOptionButton:Setup(element_data.info)
                is_any_reply_translated = true
            end
        end
    end

    if is_any_reply_translated then
        gossip_scroll_box:FullUpdate(true)
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
event_frame:RegisterEvent("PLAYER_TARGET_CHANGED")
event_frame:RegisterEvent("ITEM_TEXT_BEGIN")
event_frame:RegisterEvent("ITEM_TEXT_CLOSED")
event_frame:RegisterEvent("ITEM_TEXT_READY")
event_frame:RegisterEvent("GOSSIP_SHOW")

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
        frame_hooks.prepare()
        options_ext_ui.prepare()
        options_ui.prepare()

        DEFAULT_CHAT_FRAME:AddMessage(
            assets.icon_ua_inline
            .. " ClassicUA v" .. utils.addon_version()
            .. " — |cffffbb22" .. _G.SLASH_CLASSICUA_SETTINGS1 .. "|r"
            .. (options.account.dev_mode and " — Режим розробки" or "")
        )

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
    end
end)
