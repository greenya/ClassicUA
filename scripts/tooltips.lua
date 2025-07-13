local _, addon_table = ...

local assets    = addon_table.use("assets") ---@class assets_class
local dev_log   = addon_table.use("dev_log") ---@class dev_log_class
local entries   = addon_table.use("entries") ---@class entries_class
local options   = addon_table.use("options") ---@class options_class
local tooltips  = addon_table.use("tooltips") ---@class tooltips_class
local utils     = addon_table.use("utils") ---@class utils_class

local math_max              = _G.math.max
local math_min              = _G.math.min
local GetBindLocation       = _G.GetBindLocation
local GetTalentInfo         = _G.GetTalentInfo
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

local function process_hearthstone_bind_location_code(entry)
    if not entry or not entry.use then
        return
    end

    local code = "{домівка}"
    local lines = type(entry.use) == "table" and entry.use or { entry.use }
    local home

    for i = 1, #lines do
        if type(lines[i]) == "string" and lines[i]:find(code) then
            if not home then
                local loc = GetBindLocation()
                home = entries.get_glossary_text(loc, loc, "zone")
            end
            lines[i] = lines[i]:gsub(code, home)
        end
    end

    -- we need only copy string value, in case of table its a ref and changes where made in place
    if type(entry.use) == "string" then
        entry.use = lines[1]
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

    process_hearthstone_bind_location_code(entry)

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

local function add_general_entry_to_tooltip(tooltip, entry)
    local heading = entries.make_entry_text(entry[1], tooltip)
    tooltip:AddLine(assets.icon_ua_inline .. " " .. utils.cap(heading), 1, 1, 1)

    add_line_to_tooltip(tooltip, entry[2], "TEXT", 1, 1, 1)
end

local function add_entry_to_tooltip(tooltip, entry_type, entry_id, is_aura)
    if tooltip.classicua.entry_type then
        return
    end

    local tt_title_line = utils.tooltip_title_line(tooltip)
    if tt_title_line == "Unknown" or tt_title_line == "Retrieving item information" then
        return
    end

    local updated = false
    local entry = entries.get_entry(entry_type, entry_id)

    if entry then
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
    elseif options.account.dev_mode then
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
        if found then
            local result_text = utils.cap(found)

            if tooltip:NumLines() > 1 then
                tooltip:AddLine(" ")
            end

            tooltip:AddLine(assets.icon_ua_inline .. " " .. result_text, 1, 1, 1, true)

            if tooltip:IsShown() then
                tooltip:Show()
            end
        elseif options.account.dev_mode and utils.mouse_hover_frame() == WorldFrame then
            dev_log.missing_object(glossary_key)
        end
    end

    tooltip.classicua.entry_type = "glossary"
    tooltip.classicua.entry_id = glossary_key
end

local function add_talent_entry_to_tooltip(tooltip, tab_index, tier, column, rank, max_rank)
    if tooltip.classicua.entry_type then
        return
    end

    local tal_tree = addon_table.talent_tree
    local talent =
        tal_tree and
        tal_tree[tab_index] and
        tal_tree[tab_index][tier] and
        tal_tree[tab_index][tier][column] or false

    if not talent then
        return
    end

    local rank_to_show = math_max(rank, 1)
    local next_rank_to_show = math_min(rank + 1, max_rank)

    if not talent[rank_to_show] or not talent[next_rank_to_show] then
        -- this should never be true (otherwise, bug in talent_tree)
        return
    end

    local entry = entries.get_entry("spell", talent[rank_to_show])
    if not entry then
        if options.account.dev_mode then
            dev_log.missing_spell(talent[rank_to_show], utils.tooltip_title_line(tooltip))
            entry = { "spell#" .. talent[rank_to_show] }
        else
            return
        end
    end

    tooltip:AddLine(" ")
    tooltip:AddLine(assets.icon_ua_inline .. " " .. entry[1], 1, 1, 1)

    if entry[2] then
        tooltip:AddLine(entries.make_entry_text(entry[2], tooltip), 1, 0.82, 0, true)
    end

    if rank_to_show ~= next_rank_to_show then
        local next_rank_desc = "spell#" .. talent[next_rank_to_show]

        local entry_next = entries.get_entry("spell", talent[next_rank_to_show])
        if entry_next and entry_next[2] then
            next_rank_desc = entries.make_entry_text(entry_next[2], tooltip, 1)
        end

        tooltip:AddLine(" ")
        tooltip:AddLine("Наступний ранг:", 1, 1, 1)
        tooltip:AddLine(next_rank_desc, 1, 0.82, 0, true)
    end

    if tooltip:IsShown() then
        tooltip:Show()
    end

    tooltip.classicua.entry_type = "spell"
    tooltip.classicua.entry_id = talent[rank_to_show]
end

local function tooltip_set_item(self)
    local id = utils.tooltip_item_id(self)
    if id then
        add_entry_to_tooltip(self, "item", id)
    end
end

local function tooltip_set_spell(self)
    local _, id = self:GetSpell()
    if id then
        add_entry_to_tooltip(self, "spell", id)
    end
end

local function tooltip_set_unit(self)
    local _, unit = self:GetUnit()
    if unit then
        local npc_id = utils.npc_id_from_unit_id(unit)
        if npc_id then
            add_entry_to_tooltip(self, "npc", npc_id)
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

    if addon_table.sod_engraving then
        local owner = self:GetOwner()
        if owner then
            local owner_name = owner:GetName()
            if owner_name and owner_name:find("^EngravingFrameScrollFrameButton") and owner.skillLineAbilityID then
                add_entry_to_tooltip(self, "sod_engraving", owner.skillLineAbilityID)
                return
            end
        end
    end

    local text = _G[self:GetName() .. "TextLeft1"]:GetText()
    if text == self.classicua.entry_id then
        return
    end

    add_glossary_entry_to_tooltip(self, text)
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
        tt:HookScript("OnTooltipSetItem", tooltip_set_item)
        tt:HookScript("OnTooltipSetSpell", tooltip_set_spell)
        tt:HookScript("OnTooltipSetUnit", tooltip_set_unit)
        tt:HookScript("OnUpdate", tooltip_updated)
        tt:HookScript("OnTooltipCleared", tooltip_cleared)

        if tt == ItemRefTooltip then
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

    hooksecurefunc(GameTooltip, "SetTalent", function (self, tab_index, talent_index, _, is_pet)
        if not is_pet then
            local _, _, tier, column, rank, max_rank = GetTalentInfo(tab_index, talent_index)
            add_talent_entry_to_tooltip(self, tab_index, tier, column, rank, max_rank)
        end
    end)

    hooksecurefunc(GameTooltip, "SetUnitAura", function (self, unit, index, filter)
        local id = select(10, UnitAura(unit, index, filter))
        if id then
            add_entry_to_tooltip(self, "spell", id, true)
        end
    end)

    hooksecurefunc(GameTooltip, "SetUnitBuff", function (self, unit, index)
        local id = select(10, UnitAura(unit, index, "HELPFUL"))
        if id then
            add_entry_to_tooltip(self, "spell", id, true)
        end
    end)

    hooksecurefunc(GameTooltip, "SetUnitDebuff", function (self, unit, index)
        local id = select(10, UnitAura(unit, index, "HARMFUL"))
        if id then
            add_entry_to_tooltip(self, "spell", id, true)
        end
    end)
end
