local _, addon_table = ...

local assets    = addon_table.use("assets") ---@class assets_class
local dev_log   = addon_table.use("dev_log") ---@class dev_log_class
local entries   = addon_table.use("entries") ---@class entries_class
local options   = addon_table.use("options") ---@class options_class
local tooltips  = addon_table.use("tooltips") ---@class tooltips_class
local utils     = addon_table.use("utils") ---@class utils_class

local GetBindLocation       = _G.GetBindLocation
local GameTooltipStatusBar  = _G.GameTooltipStatusBar
local UnitAura              = _G.UnitAura
local WorldFrame            = _G.WorldFrame

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
            local result = template:gsub("TEXT", text:gsub("%%", "%%%%"), 1)
            tooltip:AddLine(result, r, g, b, true)
        end
    end
end

local function use_text_with_bind_location(entry)
    local use = entry and entry.use
    if not use then
        return use
    end

    local code = "{домівка}"
    local lines = type(use) == "table" and use or { use }
    local result, home

    for i = 1, #lines do
        local line = lines[i]
        if type(line) == "string" and line:find(code) then
            if not home then
                local loc = GetBindLocation()
                home = entries.get_glossary_text(loc, loc, "zone")
                result = utils.copy_table({}, lines)
            end
            result[i] = line:gsub(code, home)
        end
    end

    if not result then
        return use
    end

    return type(use) == "table" and result or result[1]
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
        local item_name_en = tooltip:GetItem()
        local item_suffix_uk = entries.get_item_suffix(item_name_en)
        if item_suffix_uk then
            heading = heading .. " " .. item_suffix_uk
        end
    end

    tooltip:AddLine(prefix .. utils.cap(heading), 1, 1, 1)

    add_line_to_tooltip(tooltip, entry.desc, "TEXT", 1, 1, 1)
    add_line_to_tooltip(tooltip, entry.equip, "При спорядженні: TEXT", 0, 1, 0, true, entry_id)
    add_line_to_tooltip(tooltip, entry.hit, "Шанс при влучанні: TEXT", 0, 1, 0, true, entry_id)
    add_line_to_tooltip(tooltip, use_text_with_bind_location(entry), "Використання: TEXT", 0, 1, 0, true, entry_id)

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

local function add_general_entry_to_tooltip(tooltip, entry)
    local heading = entries.make_entry_text(entry[1], tooltip)
    tooltip:AddLine(assets.icon_ua_inline .. " " .. utils.cap(heading), 1, 1, 1)

    add_line_to_tooltip(tooltip, entry[2], "TEXT", 1, 1, 1)
end

local function add_entry_to_tooltip(tooltip, entry_type, entry_id, is_aura, is_translation_on)
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
        else
            add_general_entry_to_tooltip(tooltip, entry)
        end
    elseif not entry and options.account.dev_mode then
        updated = true
        tooltip:AddLine(" ")
        tooltip:AddLine(assets.icon_ua_inline .. " " .. entry_type .. "#" .. entry_id, 1, 1, 1)

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

    if updated and tooltip:IsShown() then
        tooltip:Show()
    end

    tooltip.classicua.entry_type = entry_type
    tooltip.classicua.entry_id = entry_id
end

local function add_glossary_entry_to_tooltip(tooltip, glossary_key)
    if tooltip.classicua.entry_type then
        return
    end

    glossary_key = utils.strip_color_codes(glossary_key)
    if glossary_key then
        local found = entries.get_glossary_text(glossary_key)
        if found and options.can_translate("translate_other_tooltips") then
            local result_text = utils.cap(found)

            if tooltip:NumLines() > 1 then
                tooltip:AddLine(" ")
            end

            tooltip:AddLine(assets.icon_ua_inline .. " " .. result_text, 1, 1, 1, true)

            if tooltip:IsShown() then
                tooltip:Show()
            end
        elseif not found and options.account.dev_mode and utils.mouse_hover_frame() == WorldFrame then
            dev_log.missing_object(glossary_key)
        end
    end

    tooltip.classicua.entry_type = "glossary"
    tooltip.classicua.entry_id = glossary_key
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
    local next_entry = rank and ranks[rank + 1] and entries.get_entry("spell", ranks[rank + 1])
    if not (next_entry and next_entry[2] and options.can_translate("translate_spell")) then
        return
    end

    tooltip:AddLine(" ")
    tooltip:AddLine("Наступний ранг:", 1, 1, 1)
    -- the values of the next rank are the second match in the tooltip, the first is the rank in use
    add_line_to_tooltip(tooltip, entries.make_entry_text(next_entry[2], tooltip, 1), "TEXT", 1, 0.82, 0)

    if tooltip:IsShown() then
        tooltip:Show()
    end
end

local function tooltip_set_item(self)
    local id = utils.tooltip_item_id(self)
    if not id then
        return
    end

    if options.can_lookup("translate_item") then
        add_entry_to_tooltip(self, "item", id, false, options.can_translate("translate_item"))
    else
        claim_tooltip(self, "item", id)
    end
end

local function tooltip_set_spell(self)
    local _, id = self:GetSpell()
    if not id then
        return
    end

    if options.can_lookup("translate_spell") then
        add_entry_to_tooltip(self, "spell", id, false, options.can_translate("translate_spell"))
    else
        claim_tooltip(self, "spell", id)
    end
end

local function tooltip_set_unit(self)
    local _, unit = self:GetUnit()
    if unit and options.can_lookup("translate_npc", "translate_npc_tooltip") then
        local npc_id = utils.npc_id_from_unit_id(unit)
        if npc_id then
            add_entry_to_tooltip(self, "npc", npc_id, false,
                options.can_translate("translate_npc", "translate_npc_tooltip"))
        end
    end
end

local function tooltip_updated(self)
    if self.classicua.entry_type then
        return
    end

    local name, unit = self:GetUnit()
    local has_status_bar = GameTooltipStatusBar and GameTooltipStatusBar:IsShown()
    if name or unit or has_status_bar then
        return
    end

    if addon_table.sod_engraving and options.can_lookup("translate_spell") then
        local owner = self:GetOwner()
        if owner then
            local owner_name = owner:GetName()
            if owner_name and owner_name:find("^EngravingFrameScrollFrameButton") and owner.skillLineAbilityID then
                add_entry_to_tooltip(self, "sod_engraving", owner.skillLineAbilityID, false,
                    options.can_translate("translate_spell"))
                return
            end
        end
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
end

tooltips.prepare = function ()
    local known_tooltips = {}

    for _, tt in pairs({
        GameTooltip,
        ShoppingTooltip1,
        ShoppingTooltip2,
        ItemRefTooltip,
        WorldMapTooltip, -- Note: WorldMapTooltip is deprecated in 8.1.5
    }) do
        if tt then
            known_tooltips[#known_tooltips + 1] = tt
            tt.classicua = { entry_type = false, entry_id = false }
        end
    end

    for _, tt in pairs(known_tooltips) do
        if not utils.is_forever then
            -- WoW: Forever runs the retail ui, where tooltips have no OnTooltipSet* scripts
            tt:HookScript("OnTooltipSetItem", tooltip_set_item)
            tt:HookScript("OnTooltipSetSpell", tooltip_set_spell)
            tt:HookScript("OnTooltipSetUnit", tooltip_set_unit)
        end
        tt:HookScript("OnUpdate", tooltip_updated)
        tt:HookScript("OnTooltipCleared", tooltip_cleared)

        -- WoW: Forever needs no such workaround, and it breaks the tooltip there: its OnUpdate is the game's own, which
        -- fills in the item data as it arrives and shows the comparisons. Replaced by SetScript() below, an item that is
        -- not cached yet needs a click per portion of its data: "Retrieving item information" first, then the name and
        -- basic stats, then the item effects; and Shift shows no comparison
        if tt == ItemRefTooltip and not utils.is_forever then
            -- ItemRefTooltip is "special" tooltip as it clears "OnUpdate" hook every time,
            -- making it work only once, so we reset it back.
            -- Some details here: https://github.com/arkayenro/arkinventory/issues/1337
            -- TODO: find better solution, check other addons on how they handle ItemRefTooltip
            tt:HookScript("OnShow", function (self)
                tooltip_updated(tt)
                if tt:GetScript("OnUpdate") ~= tooltip_updated then
                    tt:SetScript("OnUpdate", tooltip_updated)
                end
            end)
        end
    end

    -- we don't need to handle "SetTalent" for Mists as talent tooltip there is a spell tooltip hooked on "OnTooltipSetSpell"
    if utils.is_classic or utils.is_tbc or utils.is_wrath or utils.is_cata then
        hooksecurefunc(GameTooltip, "SetTalent", function (self, talent_id, is_inspect, is_pet)
            if not is_pet and options.can_lookup("translate_spell") then
                handle_talent_tooltip(self, talent_id)
            end
        end)
    end

    -- WoW: Forever has no UnitAura(), which the aura hooks below read the spell id from
    if not utils.is_forever then
        hooksecurefunc(GameTooltip, "SetUnitAura", function (self, unit, index, filter)
            local id = select(10, UnitAura(unit, index, filter))
            if id and options.can_lookup("translate_spell") then
                add_entry_to_tooltip(self, "spell", id, true, options.can_translate("translate_spell"))
            end
        end)

        hooksecurefunc(GameTooltip, "SetUnitBuff", function (self, unit, index)
            local id = select(10, UnitAura(unit, index, "HELPFUL"))
            if id and options.can_lookup("translate_spell") then
                add_entry_to_tooltip(self, "spell", id, true, options.can_translate("translate_spell"))
            end
        end)

        hooksecurefunc(GameTooltip, "SetUnitDebuff", function (self, unit, index)
            local id = select(10, UnitAura(unit, index, "HARMFUL"))
            if id and options.can_lookup("translate_spell") then
                add_entry_to_tooltip(self, "spell", id, true, options.can_translate("translate_spell"))
            end
        end)
    end
end
