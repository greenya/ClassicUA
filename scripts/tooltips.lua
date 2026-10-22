local _, addon_table = ...

local assets    = addon_table.use("assets") ---@class assets_class
local dev_log   = addon_table.use("dev_log") ---@class dev_log_class
local entries   = addon_table.use("entries") ---@class entries_class
local options   = addon_table.use("options") ---@class options_class
local tooltips  = addon_table.use("tooltips") ---@class tooltips_class
local utils     = addon_table.use("utils") ---@class utils_class

local C_UnitAuras           = _G.C_UnitAuras
local Enum                  = _G.Enum
local GetBindLocation       = _G.GetBindLocation
local GameTooltipStatusBar  = _G.GameTooltipStatusBar
local TooltipUtil           = _G.TooltipUtil
local UnitAura              = _G.UnitAura
local UnitTokenFromGUID     = _G.UnitTokenFromGUID
local WorldFrame            = _G.WorldFrame

local HOME_CODE = "{домівка}"

local known_tooltips = {}

local function resolve_hearthstone_location(text)
    if not text:find(HOME_CODE, 1, true) then
        return text
    end

    local home = GetBindLocation()
    return (text:gsub(HOME_CODE, entries.get_glossary_text(home, home, "zone")))
end

local function add_line_to_tooltip(tooltip, content, template, r, g, b, content_can_be_spell_id, parent_item_id)
    if not content then
        return
    end

    local lines = type(content) == "table" and content or { content }
    for i = 1, #lines do
        local text = lines[i]

        if content_can_be_spell_id and type(text) == "number" then
            local spell_id = text
            local spell_entry = entries.get_entry("spell", spell_id)
            if spell_entry then
                text = false
                local spell_desc = entries.make_entry_text(spell_entry[2], tooltip)
                if spell_desc then
                    text = entries.make_entry_text(spell_desc, tooltip)
                    text = utils.cap(text)
                end
            elseif options.account.dev_mode and parent_item_id then
                dev_log.issue_entry("item", parent_item_id, "невірне id закляття " .. tostring(spell_id))
                text = "spell#" .. tostring(spell_id)
            else
                text = false
            end
        else
            text = entries.make_entry_text(text, tooltip)
            text = utils.cap(text)
        end

        if text then
            text = resolve_hearthstone_location(text)
            local result = template:gsub("TEXT", text:gsub("%%", "%%%%"), 1)
            tooltip:AddLine(result, r, g, b, true)
        end
    end
end

local function add_item_entry_to_tooltip(tooltip, entry, entry_id, sub_item_depth)
    sub_item_depth = sub_item_depth or 1
    if sub_item_depth > 4 then
        if options.account.dev_mode then
            local msg = "переповнення sub_item_depth"
            dev_log.issue_entry("item", entry_id, msg)
            tooltip:AddLine("ПОМИЛКА: " .. msg, 1, 1, .25)
        end
        return
    end

    local prefix = sub_item_depth == 1 and assets.icon_ua_inline .. " " or ""
    local heading = entries.make_entry_text(entry[1], tooltip)

    if utils.tooltip_item_suffix_id(tooltip) then
        local item_name_en = utils.tooltip_item(tooltip)
        local item_suffix_uk = entries.get_item_suffix(item_name_en)
        if item_suffix_uk then
            heading = heading .. " " .. item_suffix_uk
        end
    end

    tooltip:AddLine(prefix .. utils.cap(heading), 1, 1, 1)

    add_line_to_tooltip(tooltip, entry.desc, "TEXT", 1, 1, 1)
    add_line_to_tooltip(tooltip, entry.equip, "При спорядженні: TEXT", 0, 1, 0, true, entry_id)
    add_line_to_tooltip(tooltip, entry.hit, "Шанс при влучанні: TEXT", 0, 1, 0, true, entry_id)
    add_line_to_tooltip(tooltip, entry.use, "Використання: TEXT", 0, 1, 0, true, entry_id)

    if entry.recipe_result_item then
        if tonumber(entry_id) ~= tonumber(entry.recipe_result_item) then
            local rr_item = entries.get_entry("item", entry.recipe_result_item)
            if rr_item then
                tooltip:AddLine(" ")
                add_item_entry_to_tooltip(tooltip, rr_item, entry.recipe_result_item, sub_item_depth + 1)
            elseif options.account.dev_mode then
                dev_log.issue_entry("item", entry_id, "невірне значення recipe_result_item " .. tostring(entry.recipe_result_item))
                tooltip:AddLine("recipe_result_item#" .. tostring(entry.recipe_result_item), 1, 1, 1)
            end
        elseif options.account.dev_mode then
            local msg = "значення recipe_result_item ідентичне entry_id"
            dev_log.issue_entry("item", entry_id, msg)
            tooltip:AddLine("recipe_result_item#" .. tostring(entry_id), 1, 1, 1)
            tooltip:AddLine("ПОМИЛКА: " .. msg, 1, 1, .25)
        end
    end

    add_line_to_tooltip(tooltip, entry.flavor, "\"TEXT\"", 1, 0.82, 0)
end

local function add_spell_entry_to_tooltip(tooltip, entry, spell_id, is_aura, skip_title)
    if not skip_title then
        local heading = entries.make_entry_text(entry[1], tooltip)
        tooltip:AddLine(assets.icon_ua_inline .. " " .. utils.cap(heading), 1, 1, 1)
    end

    if is_aura then
        add_line_to_tooltip(tooltip, entry[3], "TEXT", 1, 1, 1)
    else
        add_line_to_tooltip(tooltip, entry[2], "TEXT", 1, 0.82, 0)

        if entry.rune then
            local rune_spells = type(entry.rune) == "table" and entry.rune or { entry.rune }
            for _, rune_spell_id in pairs(rune_spells) do
                tooltip:AddLine(" ")
                local rune_spell = entries.get_entry("spell", rune_spell_id)
                if rune_spell and rune_spell[1] and rune_spell[2] then
                    add_line_to_tooltip(tooltip, utils.cap(entries.make_entry_text(rune_spell[1], tooltip)), "TEXT", 1, 1, 1)
                    add_line_to_tooltip(tooltip, utils.cap(entries.make_entry_text(rune_spell[2], tooltip)), "TEXT", 1, 0.82, 0)
                elseif options.account.dev_mode then
                    dev_log.issue_entry("spell", spell_id, "невірне значення rune, невірне id закляття " .. tostring(rune_spell_id))
                    tooltip:AddLine("rune_spell#" .. tostring(rune_spell_id), 1, 1, 1)
                end
            end
        end
    end
end

local function add_sod_engraving_entry_to_tooltip(tooltip, entry, sod_engraving_id)
    local heading = entries.make_entry_text(entry[1], tooltip)
    tooltip:AddLine(assets.icon_ua_inline .. " " .. utils.cap(heading), 1, 1, 1)

    if entry.spell then
        local spell = entries.get_entry("spell", entry.spell)
        if spell then
            add_spell_entry_to_tooltip(tooltip, spell, entry.spell, false, true)
        elseif options.account.dev_mode then
            dev_log.issue_entry("sod_engraving", sod_engraving_id, "невірне значення spell " .. tostring(entry.spell))
            tooltip:AddLine("engraving.spell#" .. tostring(entry.spell), 1, 1, 1)
        end
    end
end

local function add_unit_quest_lines_to_tooltip(tooltip)
    local data = tooltip:GetPrimaryTooltipData()
    if not (data and data.lines and options.can_translate("translate_quest")) then
        return
    end

    local line_types = Enum.TooltipDataLineType
    local quest_id, title_uk
    for _, line in ipairs(data.lines) do
        local text = line.leftText
        if type(text) == "string" and not utils.is_secret(text) then
            if line.type == line_types.QuestTitle then
                quest_id = not utils.is_secret(line.id) and tonumber(line.id)
                title_uk = quest_id and entries.get_quest_title(quest_id) or entries.get_glossary_text(text)
                if title_uk then
                    tooltip:AddLine(title_uk, 1, 0.82, 0)
                end
            elseif line.type == line_types.QuestObjective and title_uk then
                local text_uk = entries.translate_quest_objective(text, quest_id)
                if text_uk then
                    tooltip:AddLine(" - " .. text_uk, 1, 1, 1)
                end
            end
        end
    end
end

local function add_npc_entry_to_tooltip(tooltip, entry, unit)
    local name, tag = entries.get_npc_name_and_tag(entry, unit)
    local heading = entries.make_entry_text(name, tooltip)
    tooltip:AddLine(assets.icon_ua_inline .. " " .. utils.cap(heading), 1, 1, 1)

    add_line_to_tooltip(tooltip, tag, "TEXT", 1, 1, 1)

    if utils.is_forever then
        add_unit_quest_lines_to_tooltip(tooltip)
    end
end

local function add_entry_to_tooltip(tooltip, entry_type, entry_id, is_aura, is_translation_on, unit)
    if tooltip.classicua.entry_type then
        return
    end

    local tt_title_line = utils.tooltip_title_line(tooltip)
    if tt_title_line == "Unknown" or tt_title_line == "Retrieving item information" then
        return
    end

    local updated = false
    local entry = entries.get_entry(entry_type, entry_id)

    if entry and is_translation_on then
        updated = true
        tooltip:AddLine(" ")

        if entry_type == "item" then
            add_item_entry_to_tooltip(tooltip, entry, entry_id)
        elseif entry_type == "spell" then
            add_spell_entry_to_tooltip(tooltip, entry, entry_id, is_aura, false)
        elseif entry_type == "sod_engraving" then
            add_sod_engraving_entry_to_tooltip(tooltip, entry, entry_id)
        elseif entry_type == "npc" then
            add_npc_entry_to_tooltip(tooltip, entry, unit)
        end
    elseif not entry and options.account.dev_mode then
        -- a missing entry is logged either way, its id is shown only where its translation is on
        if is_translation_on then
            updated = true
            tooltip:AddLine(" ")
            tooltip:AddLine(assets.icon_ua_inline .. " " .. entry_type .. "#" .. entry_id, 1, 1, 1)
        end

        if entry_type == "npc" then
            dev_log.missing_npc(entry_id, tt_title_line)
        elseif entry_type == "item" then
            dev_log.missing_item(entry_id, tt_title_line)
        elseif entry_type == "spell" then
            dev_log.missing_spell(entry_id, tt_title_line)
        elseif entry_type == "sod_engraving" then
            dev_log.missing_sod_engraving(entry_id, tt_title_line)
        end
    end

    -- WoW: Forever shows (and sizes) the tooltip itself right after the post calls, see tooltips.prepare()
    if updated and tooltip:IsShown() and not utils.is_forever then
        tooltip:Show()
    end

    tooltip.classicua.entry_type = entry_type
    tooltip.classicua.entry_id = entry_id
end

local function add_glossary_entry_to_tooltip(tooltip, glossary_key, is_processing)
    if tooltip.classicua.entry_type then
        return
    end

    -- a miss is not claimed, only remembered by the key it was looked up for
    tooltip.classicua.entry_id = glossary_key

    glossary_key = utils.strip_color_codes(glossary_key)
    if glossary_key then
        local found = entries.get_glossary_text(glossary_key)
        if found then
            tooltip.classicua.entry_type = "glossary"
        end

        if found and options.can_translate("translate_other_tooltips") then
            local result_text = utils.cap(found)

            if tooltip:NumLines() > 1 then
                tooltip:AddLine(" ")
            end

            tooltip:AddLine(assets.icon_ua_inline .. " " .. result_text, 1, 1, 1, true)

            if tooltip:IsShown() and not is_processing then
                tooltip:Show()
            end
        elseif not found and options.account.dev_mode and utils.mouse_hover_frame() == WorldFrame then
            dev_log.missing_object(glossary_key)
        end
    end
end

local function claim_tooltip(tooltip, entry_type, entry_id)
    tooltip.classicua.entry_type = entry_type
    tooltip.classicua.entry_id = entry_id
end

-- the rank of a talent a spell is, nil when it is none of them
local function get_talent_rank(ranks, spell_id)
    for rank = 1, #ranks do
        if ranks[rank] == spell_id then
            return rank
        end
    end
end

-- the next rank of a talent; the values of its text are the second match in the tooltip, the first is the rank in use
local function add_next_rank_to_tooltip(tooltip, spell_id)
    local entry = entries.get_entry("spell", spell_id)
    if not (entry and entry[2] and options.can_translate("translate_spell")) then
        return false
    end

    tooltip:AddLine(" ")
    tooltip:AddLine("Наступний ранг:", 1, 1, 1)
    add_line_to_tooltip(tooltip, entries.make_entry_text(entry[2], tooltip, 1), "TEXT", 1, 0.82, 0)
    return true
end

-- adds the rank in use and the next rank of a talent to its tooltip
local function handle_talent_tooltip(tooltip, talent_id)
    local ranks = addon_table.talent_tree[talent_id]
    if not ranks then
        return
    end

    -- the game fires OnTooltipSetSpell inside SetTalent, so the spell path has put the rank in use on
    -- the tooltip already; a talent with no point spent gets no spell tooltip and shows its first rank
    local claim = tooltip.classicua
    if not claim.entry_type then
        add_entry_to_tooltip(tooltip, "spell", ranks[1], false, options.can_translate("translate_spell"))
        return
    end

    local rank = claim.entry_type == "spell" and get_talent_rank(ranks, claim.entry_id)
    local next_rank_id = rank and ranks[rank + 1]
    if not next_rank_id then
        return
    end

    local is_added = add_next_rank_to_tooltip(tooltip, next_rank_id)
    if is_added and tooltip:IsShown() then
        tooltip:Show()
    end
end

local function tooltip_set_item(self, data)
    local id
    if utils.is_forever then
        -- WoW: Forever hands the item id over with the tooltip data
        id = not utils.is_secret(data.id) and data.id
    else
        id = utils.tooltip_item_id(self)
    end

    if not id then
        return
    end

    if options.can_lookup("translate_item") then
        add_entry_to_tooltip(self, "item", id, false, options.can_translate("translate_item"))
    else
        claim_tooltip(self, "item", id)
    end
end

local function tooltip_set_spell(self, data)
    local id
    if utils.is_forever then
        -- WoW: Forever hands the spell id over with the tooltip data
        id = not utils.is_secret(data.id) and data.id
    else
        id = select(2, self:GetSpell())
    end

    if not id then
        return
    end

    -- WoW: Forever, talent tooltip shows talent ranks as spells
    if utils.is_forever then
        local info = self:GetProcessingTooltipInfo()
        if info and info.getterName == "GetTraitEntry" then
            local claim = self.classicua
            if claim.talent_rank_id then
                if options.can_lookup("translate_spell") then
                    add_entry_to_tooltip(self, "spell", claim.talent_rank_id, false, options.can_translate("translate_spell"))
                    add_next_rank_to_tooltip(self, id)
                else
                    claim_tooltip(self, "spell", claim.talent_rank_id)
                end
                claim.talent_rank_id = nil
                return
            end

            local node = self:GetOwner() and self:GetOwner().nodeInfo
            if not claim.entry_type and node and node.nextEntry and node.ranksPurchased > 0 then
                claim.talent_rank_id = id
                return
            end
        end
    end

    if options.can_lookup("translate_spell") then
        add_entry_to_tooltip(self, "spell", id, false, options.can_translate("translate_spell"))
    else
        claim_tooltip(self, "spell", id)
    end
end

local function tooltip_set_unit(self, data)
    if not options.can_lookup("translate_npc", "translate_npc_tooltip") then
        return
    end

    local _, unit, npc_id
    if utils.is_forever then
        -- WoW: Forever hands the unit's guid over with the tooltip data
        npc_id = utils.npc_id_from_guid(data.guid)
        unit = npc_id and UnitTokenFromGUID(data.guid)
    else
        _, unit = self:GetUnit()
        npc_id = utils.npc_id_from_unit_id(unit)
    end

    if npc_id then
        add_entry_to_tooltip(self, "npc", npc_id, false,
            options.can_translate("translate_npc", "translate_npc_tooltip"), unit)
    end
end

-- the tooltip of an aura (a buff or debuff)
local function add_aura_to_tooltip(tooltip, spell_id)
    if spell_id and options.can_lookup("translate_spell") then
        add_entry_to_tooltip(tooltip, "spell", spell_id, true, options.can_translate("translate_spell"))
    end
end

-- WoW: Forever, the tooltip of an aura, with the spell id in the tooltip data
local function tooltip_set_unit_aura(self, data)
    add_aura_to_tooltip(self, not utils.is_secret(data.id) and data.id)
end

-- WoW: Forever builds the tooltip of a world object, a corpse or a minimap point from tooltip data: added here, the
-- line comes with the game's own lines, not a frame after the tooltip shows (tooltip_updated), and stays on rebuilds
local function tooltip_set_world_name(self)
    if options.can_lookup("translate_other_tooltips") then
        add_glossary_entry_to_tooltip(self, _G[self:GetName() .. "TextLeft1"]:GetText(), true)
    end
end

local function tooltip_updated(self)
    if self.classicua.entry_type or self.classicua.skipped then
        return
    end

    -- a secret line or a unit stays until the tooltip is cleared, so such a tooltip is checked once, not every frame
    if utils.tooltip_has_secret(self) then
        self.classicua.skipped = true
        return
    end

    -- WoW: Forever has GetUnit() on GameTooltip only (not on the comparison tooltips), TooltipUtil works for any tooltip
    -- TODO: TooltipUtil.GetDisplayedUnit() exists on the other clients too, check it there and drop the split
    local name, unit
    if utils.is_forever then
        name, unit = TooltipUtil.GetDisplayedUnit(self)
    else
        name, unit = self:GetUnit()
    end
    if name or unit then
        self.classicua.skipped = true
        return
    end

    local has_status_bar = GameTooltipStatusBar and GameTooltipStatusBar:IsShown()
    if has_status_bar then
        return
    end

    local text = _G[self:GetName() .. "TextLeft1"]:GetText()
    if text == self.classicua.entry_id then
        return
    end

    if options.can_lookup("translate_other_tooltips") then
        add_glossary_entry_to_tooltip(self, text)
    end
end

local function tooltip_cleared(self)
    self.classicua.entry_type = false
    self.classicua.entry_id = false
    self.classicua.talent_rank_id = nil
    self.classicua.skipped = nil
end

-- --------------------------
-- [ hooks, by tooltip kind ]
-- --------------------------

-- Each kind of tooltip is hooked in its own function, which splits by client inside:
-- classic clients tell us what a tooltip shows by its scripts (OnTooltipSetItem...) and GameTooltip's methods
-- WoW: Forever runs retail ui, where the tooltip data processor uses callbacks after it fills a tooltip.

local function prepare_known_tooltips()
    for _, tt in pairs({
        GameTooltip,
        ShoppingTooltip1,
        ShoppingTooltip2,
        ItemRefTooltip,
        ItemRefShoppingTooltip1, -- the comparisons of an item linked in chat
        ItemRefShoppingTooltip2,
        WorldMapTooltip, -- Note: WorldMapTooltip is deprecated in 8.1.5
    }) do
        if tt then
            known_tooltips[#known_tooltips + 1] = tt
            tt.classicua = { entry_type = false, entry_id = false }
            tt:HookScript("OnTooltipCleared", tooltip_cleared)
        end
    end
end

local function hook_tooltip_script(script, handler)
    for _, tt in ipairs(known_tooltips) do
        tt:HookScript(script, handler)
    end
end

local function for_known_tooltips(handler)
    return function (tooltip, data)
        if not tooltip:IsForbidden() and tooltip.classicua and not utils.tooltip_has_secret(tooltip) then
            handler(tooltip, data)
        end
    end
end

local function hook_item_tooltips()
    if utils.is_forever then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, for_known_tooltips(tooltip_set_item))
    else
        hook_tooltip_script("OnTooltipSetItem", tooltip_set_item)
    end
end

local function hook_spell_tooltips()
    if utils.is_forever then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Spell, for_known_tooltips(tooltip_set_spell))
    else
        hook_tooltip_script("OnTooltipSetSpell", tooltip_set_spell)
    end
end

-- WoW: Forever has no UnitAura(): its auras come as tooltip data
local function hook_aura_tooltips()
    if utils.is_forever then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.UnitAura, for_known_tooltips(tooltip_set_unit_aura))
        return
    end

    hooksecurefunc(GameTooltip, "SetUnitAura", function (self, unit, index, filter)
        add_aura_to_tooltip(self, select(10, UnitAura(unit, index, filter)))
    end)

    hooksecurefunc(GameTooltip, "SetUnitBuff", function (self, unit, index)
        add_aura_to_tooltip(self, select(10, UnitAura(unit, index, "HELPFUL")))
    end)

    hooksecurefunc(GameTooltip, "SetUnitDebuff", function (self, unit, index)
        add_aura_to_tooltip(self, select(10, UnitAura(unit, index, "HARMFUL")))
    end)

    -- party frames, compact raid frames and nameplates show an aura by its instance id
    for _, method in ipairs({
        "SetUnitAuraByAuraInstanceID", "SetUnitBuffByAuraInstanceID", "SetUnitDebuffByAuraInstanceID",
    }) do
        if GameTooltip[method] then
            hooksecurefunc(GameTooltip, method, function (self, unit, aura_instance_id)
                local aura = C_UnitAuras.GetAuraDataByAuraInstanceID(unit, aura_instance_id)
                add_aura_to_tooltip(self, aura and aura.spellId)
            end)
        end
    end
end

-- Mists' talent tooltip is a spell tooltip, and WoW: Forever's talent ranks come as spells (tooltip_set_spell)
local function hook_talent_tooltips()
    if not (utils.is_classic or utils.is_tbc or utils.is_wrath or utils.is_cata) then
        return
    end

    hooksecurefunc(GameTooltip, "SetTalent", function (self, talent_id, is_inspect, is_pet)
        if not is_pet and options.can_lookup("translate_spell") then
            handle_talent_tooltip(self, talent_id)
        end
    end)
end

-- season of discovery: the rune list (EngravingFrame) shows a rune by SetEngravingRune()
local function hook_engraving_tooltips()
    if not utils.is_classic_sod then
        return
    end

    hooksecurefunc(GameTooltip, "SetEngravingRune", function (self, skill_line_ability_id)
        if options.can_lookup("translate_spell") then
            add_entry_to_tooltip(self, "sod_engraving", skill_line_ability_id, false, options.can_translate("translate_spell"))
        end
    end)
end

local function hook_unit_tooltips()
    if utils.is_forever then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Unit, for_known_tooltips(tooltip_set_unit))
    else
        hook_tooltip_script("OnTooltipSetUnit", tooltip_set_unit)
    end
end

-- on the classic clients these are looked up like other tooltips (hook_other_tooltips)
local function hook_world_tooltips()
    if not utils.is_forever then
        return
    end

    for _, data_type in ipairs({ "Object", "Corpse", "MinimapMouseover" }) do
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType[data_type],
            for_known_tooltips(tooltip_set_world_name))
    end
end

local function hook_other_tooltips()
    hook_tooltip_script("OnUpdate", tooltip_updated)
    if utils.is_forever then
        return
    end

    -- ItemRefTooltip is "special" tooltip as it clears "OnUpdate" hook every time,
    -- making it work only once, so we reset it back.
    -- Some details here: https://github.com/arkayenro/arkinventory/issues/1337
    -- TODO: find better solution, check other addons on how they handle ItemRefTooltip
    --
    -- WoW: Forever needs no such workaround, and it breaks the tooltip there: its OnUpdate is the game's own, which
    -- fills in the item data as it arrives and shows the comparisons. Replaced by SetScript() below, an item that is
    -- not cached yet needs a click per portion of its data: "Retrieving item information" first, then the name and
    -- basic stats, then the item effects; and Shift shows no comparison
    ItemRefTooltip:HookScript("OnShow", function (self)
        tooltip_updated(self)
        if self:GetScript("OnUpdate") ~= tooltip_updated then
            self:SetScript("OnUpdate", tooltip_updated)
        end
    end)
end

tooltips.prepare = function ()
    prepare_known_tooltips()
    hook_item_tooltips()
    hook_spell_tooltips()
    hook_aura_tooltips()
    hook_talent_tooltips()
    hook_engraving_tooltips()
    hook_unit_tooltips()
    hook_world_tooltips()
    hook_other_tooltips()
end
