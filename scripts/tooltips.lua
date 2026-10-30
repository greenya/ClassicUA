local _, addon_table = ...

local assets    = addon_table.use("assets") ---@class assets_class
local dev_log   = addon_table.use("dev_log") ---@class dev_log_class
local entries   = addon_table.use("entries") ---@class entries_class
local options   = addon_table.use("options") ---@class options_class
local tooltips  = addon_table.use("tooltips") ---@class tooltips_class
local utils     = addon_table.use("utils") ---@class utils_class

local C_Item                = _G.C_Item
local C_Spell               = _G.C_Spell
local C_UnitAuras           = _G.C_UnitAuras
local CreateFrame           = _G.CreateFrame
local Enum                  = _G.Enum
local GameTooltip           = _G.GameTooltip
local GetBindLocation       = _G.GetBindLocation
local hooksecurefunc        = _G.hooksecurefunc
local IsAltKeyDown          = _G.IsAltKeyDown
local IsControlKeyDown      = _G.IsControlKeyDown
local IsShiftKeyDown        = _G.IsShiftKeyDown
local ItemRefTooltip        = _G.ItemRefTooltip
local NORMAL_FONT_COLOR     = _G.NORMAL_FONT_COLOR
local RETRIEVING_ITEM_INFO  = _G.RETRIEVING_ITEM_INFO
local table_concat          = _G.table.concat
local TooltipDataProcessor  = _G.TooltipDataProcessor
local TooltipUtil           = _G.TooltipUtil
local UIParent              = _G.UIParent
local UnitExists            = _G.UnitExists
local UnitTokenFromGUID     = _G.UnitTokenFromGUID
local WorldFrame            = _G.WorldFrame
local wipe                  = _G.wipe

local HOME_CODE = "{домівка}"

tooltips.styles = {
    { key = "replacement", label = "Заміна" },
    { key = "addition",    label = "Доповнення" },
}

tooltips.original_keys = {
    { key = "ALT",      label = "Alt" },
    { key = "CTRL",     label = "Ctrl" },
    { key = "SHIFT",    label = "Shift" },
}

local is_original_key_down = { ALT = IsAltKeyDown, CTRL = IsControlKeyDown, SHIFT = IsShiftKeyDown }

local item_effects = {
    { field = "equip",  prefix = _G.ITEM_SPELL_TRIGGER_ONEQUIP .. " ",  template = "При спорядженні: TEXT" },
    { field = "hit",    prefix = _G.ITEM_SPELL_TRIGGER_ONPROC .. " ",   template = "Шанс при влучанні: TEXT" },
    { field = "use",    prefix = _G.ITEM_SPELL_TRIGGER_ONUSE .. " ",    template = "Використання: TEXT" },
}

local known_tooltips = {}

local function resolve_hearthstone_location(text)
    if not text:find(HOME_CODE, 1, true) then
        return text
    end

    local home = GetBindLocation()
    return (text:gsub(HOME_CODE, entries.get_glossary_text(home, home, "zone")))
end

local function get_entry_texts(tooltip, content, content_can_be_spell_id, parent_item_id)
    local texts = {}
    if not content then
        return texts
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

        texts[i] = text and resolve_hearthstone_location(text) or false
    end
    return texts
end

local function fill_template(template, text)
    return (template:gsub("TEXT", text:gsub("%%", "%%%%"), 1))
end

local function add_line_to_tooltip(tooltip, content, template, r, g, b, content_can_be_spell_id, parent_item_id)
    for _, text in ipairs(get_entry_texts(tooltip, content, content_can_be_spell_id, parent_item_id)) do
        if text then
            tooltip:AddLine(fill_template(template, text), r, g, b, true)
        end
    end
end

local function get_item_heading(tooltip, entry, lines)
    local heading = entries.make_entry_text(entry[1], lines or tooltip)

    if heading and utils.tooltip_item_suffix_id(tooltip) then
        -- WoW: Forever gives no name of an item it hasn't cached yet
        local item_name_en = utils.tooltip_item(tooltip)
        local item_suffix_uk = item_name_en and entries.get_item_suffix(item_name_en)
        if item_suffix_uk then
            heading = heading .. " " .. item_suffix_uk
        end
    end

    return heading and utils.cap(heading)
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
    tooltip:AddLine(prefix .. get_item_heading(tooltip, entry), 1, 1, 1)

    add_line_to_tooltip(tooltip, entry.desc, "TEXT", 1, 1, 1)
    for _, effect in ipairs(item_effects) do
        add_line_to_tooltip(tooltip, entry[effect.field], effect.template, 0, 1, 0, true, entry_id)
    end

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

-- ---------------------
-- [ the replace style ]
-- ---------------------

-- Our texts go into the game's own lines
-- Each line we change is kept in tooltip.classicua.lines as { game's text, our text }, so the modifier key can show original text
local style_options = { item = "tooltip_style_item", spell = "tooltip_style_spell" }
local style_kinds = { item = "item", spell = "spell", sod_engraving = "spell" }
local line_sides = { "TextLeft", "TextRight" }

local function is_replacement_style(kind)
    return options.account[style_options[kind]] == "replacement"
end

-- whether any kind of tooltip uses the replace style, so the modifier key has lines to switch
local function is_any_replacement_style()
    return is_replacement_style("item") or is_replacement_style("spell")
end

local function is_original_shown()
    local is_down = is_original_key_down[options.account.tooltip_original_key]
    return is_down and is_down() or false
end

local function is_line_replaced(tooltip, font_string)
    local texts = tooltip.classicua.lines[font_string]
    if not texts then
        return false
    end

    -- WoW: Forever adds its lines anew on every build
    if utils.is_forever then
        return true
    end

    local text = font_string:GetText()
    if text == texts[2] or text == texts[1] and is_original_shown() then
        return true
    end
    tooltip.classicua.lines[font_string] = nil
    return false
end

local function replace_line(tooltip, font_string, text_uk)
    local text_en = font_string and font_string:GetText()
    -- a translation with a value left unfilled ("{1}": none in the game's line) leaves the game's line as it is
    if not text_uk or text_uk:find("{%d+}") or not text_en or text_en == text_uk or is_line_replaced(tooltip, font_string) then
        return false
    end

    tooltip.classicua.lines[font_string] = { text_en, text_uk }
    if not is_original_shown() then
        font_string:SetText(text_uk)
    end
    return true
end

local function get_title_line_index(lines_en)
    return #lines_en > 1 and lines_en[1] == _G.CURRENTLY_EQUIPPED and 2 or 1
end

-- the game's text of every line: a line we replaced keeps it in tooltip.classicua.lines, for a pass over lines the game added later
local function get_lines_en(tooltip)
    local lines = {}
    local name = tooltip:GetName()
    local replaced = tooltip.classicua.lines
    for i = 1, tooltip:NumLines() do
        local font_string = _G[name .. "TextLeft" .. i]
        local text = font_string:GetText() or ""
        local texts = replaced[font_string]
        lines[i] = texts and (text == texts[2] or text == texts[1]) and texts[1] or text
    end
    return lines
end

local function replace_lines(tooltip, texts)
    local name = tooltip:GetName()
    local is_replaced = false
    for i, text_uk in pairs(texts) do
        is_replaced = replace_line(tooltip, _G[name .. "TextLeft" .. i], text_uk) or is_replaced
    end
    return is_replaced
end

-- a stat change under a comparison: the colored number stays. A socket keeps its icon (tbc).
-- "|cff20ff20+25|r Armor" -> "|cff20ff20+25|r броня", "|cff20ff20+1|r [icon] Yellow Socket" -> "|cff20ff20+1|r [icon] жовте гніздо"
local function translate_stat_change(text)
    -- the number's color is a hex code, or a named one ("|cnGREEN_FONT_COLOR:+25|r")
    local number, stat = text:match("^(|c%x%x%x%x%x%x%x%x[%+%-][%d%.,]+|r) (.+)$")
    if not number then
        number, stat = text:match("^(|cn[%w_]+:[%+%-][%d%.,]+|r) (.+)$")
    end
    if not stat then
        return
    end

    local icon, name = stat:match("^(|T.-|t%s*)(.+)$")
    local stat_uk = entries.translate_string_text(name or stat)
    return stat_uk and number .. " " .. (icon or "") .. stat_uk
end

-- an item's effect that is one of the game's phrases; an effect from the item's entry is translated already (add_effect_texts)
-- "Equip: Improves hit rating by 10." (tbc) -> "При спорядженні: Збільшує показник влучності на 10."
local function translate_effect_line(text)
    for _, effect in ipairs(item_effects) do
        if text:sub(1, #effect.prefix) == effect.prefix then
            local text_uk = entries.translate_string_text(text:sub(#effect.prefix + 1))
            return text_uk and fill_template(effect.template, utils.cap(text_uk))
        end
    end
end

-- tooltip_texts are lowercase as inside a line: "Sword" -> "Меч", "Requires Level 60" -> "Потрібний рівень: 60"
-- The spaces and line breaks a line starts with stay before the translation: tbc spaces a recipe's reagents from the lines above with "\n".
-- A color around the whole line stays around the translation too; the line is tried with it first, as a phrase may have its own ("|cff00ff00<Made by %s>|r").
-- tbc colors a socketed gem's line: "|cffffffff+5 Agility and +7 Stamina|r"; a tag of SoD items has a space for a zero in its color: "|cFFFFAC 0Core Forged|r"
local function translate_line(text)
    local space, rest = text:match("^(%s+)(.+)$")
    if space then
        local rest_uk = translate_line(rest)
        return rest_uk and space .. rest_uk
    end

    -- a whole line before the "Equip:" rule: forever's own phrases include "Equip:" ("Equip: +%1$d Attack Power."), tbc's don't
    local text_uk = translate_stat_change(text) or entries.translate_string_text(text) or translate_effect_line(text)
    if text_uk then
        return utils.cap(text_uk)
    end

    -- several lines in one, each translated on its own: meta gems list conditions that way:
    --   "|cff808080Requires at least 2 Red gems|r\n  |cff808080Requires at least 2 Yellow gems|r"
    local first, others
    if text:find("\n", 1, true) then
        first, others = text:match("^([^\n]+)\n(.+)$")
    end
    if first then
        local first_uk, others_uk = translate_line(first), translate_line(others)
        return (first_uk or others_uk) and (first_uk or first) .. "\n" .. (others_uk or others) or nil
    end

    local color, colored = text:match("^(|c[%x ][%x ][%x ][%x ][%x ][%x ][%x ][%x ])(.+)|r$")
    if color and not colored:find("|r", 1, true) then
        local colored_uk = translate_line(colored)
        return colored_uk and color .. colored_uk .. "|r"
    end

    -- a phrase after a phrase, in brackets: a poison's charges after its time, "Instant Poison (30 min) (40 Charges)"
    local head, tail
    if text:sub(-1) == ")" then
        head, tail = text:match("^(.+) %(([^()]+)%)$")
    end
    local tail_uk = head and entries.translate_string_text(tail)
    local head_uk = tail_uk and translate_line(head)
    return head_uk and head_uk .. " (" .. tail_uk .. ")" or nil
end

local function replace_string_lines(tooltip, first_line)
    local name = tooltip:GetName()
    local is_replaced = false
    for i = first_line, tooltip:NumLines() do
        for _, side in ipairs(line_sides) do
            local font_string = _G[name .. side .. i]
            local text = font_string and font_string:GetText()
            if text and text ~= "" and not is_line_replaced(tooltip, font_string) then
                is_replaced = replace_line(tooltip, font_string, translate_line(text)) or is_replaced
            end
        end
    end
    return is_replaced
end

-- --------------------------------
-- [ the replace style: item sets ]
-- --------------------------------

-- a set's bonus it doesn't give yet names its pieces, "(4) Set: ...", one it gives doesn't, "Set: ..."
local set_bonus_keys = { "ITEM_SET_BONUS_GRAY", "ITEM_SET_BONUS" }
local set_bonus_patterns

-- the bonus a set's line shows: a gray one is the first with its pieces, a green one the next in the set's order
local function find_set_bonus(item_set, next_bonus, pieces)
    for i = next_bonus, pieces and #item_set.bonuses or 0 do
        if item_set.bonuses[i][1] == pieces then
            return i
        end
    end
    return next_bonus
end

-- the set's lines from first to last: its name with the pieces worn, its pieces' names, each bonus as its spell's description
-- Names keep indents and colors the game put around them
-- "Dreamwalker Raiment (2/9)" -> "Вбрання сноходця (2/9)", "(4) Set: ..." -> "(4) Комплект: ..."
local function add_item_set_texts(texts, item_set, lines_en, first, last)
    if not set_bonus_patterns then
        set_bonus_patterns = {}
        for i, key in ipairs(set_bonus_keys) do
            set_bonus_patterns[i] = utils.format_patterns(_G[key])[1]
        end
    end

    local names = { [item_set.en] = utils.cap(item_set[1]) }
    for _, id in ipairs(item_set.items) do
        local item = entries.get_entry("item", id)
        if item and item[1] and item.en then
            names[item.en] = utils.cap(item[1])
        end
    end

    local next_bonus = 1
    for i = first, last do
        local text = lines_en[i]
        local bare = utils.strip_color_codes(text):match("^%s*(.-)%s*$")
        local name_en = bare:match("^(.-) %(%d+/%d+%)$") or bare
        local from, to = text:find(name_en, 1, true)
        if names[name_en] and from then
            texts[i] = text:sub(1, from - 1) .. names[name_en] .. text:sub(to + 1)
        else
            for kind, pattern in ipairs(set_bonus_patterns) do
                local captures = { text:match(pattern.pattern) }
                if #captures == #pattern.order then
                    local pieces = kind == 1 and tonumber(captures[1]) or nil
                    local index = find_set_bonus(item_set, next_bonus, pieces)
                    next_bonus = index + 1
                    local bonus = item_set.bonuses[index]
                    local spell = bonus and entries.get_entry("spell", bonus[2])
                    local text_uk = spell and get_entry_texts({ text }, spell[2])[1]
                    local format_uk = addon_table.string_tooltip[set_bonus_keys[kind]]
                    if text_uk and format_uk then
                        texts[i] = pieces and format_uk:format(pieces, text_uk) or format_uk:format(text_uk)
                    end
                    break
                end
            end
        end
    end
end

-- ----------------------------
-- [ the replace style: items ]
-- ----------------------------

-- "Use: ... (30 Secs Cooldown)" -> " (Відновлення: 30 с)", the game's when we have none
local function get_cooldown_text(text)
    local cooldown = text:match(" (%([^()]+%))$")
    local cooldown_uk = cooldown and entries.translate_string_text(cooldown)
    return cooldown and " " .. (cooldown_uk or cooldown) or ""
end

-- Toy's use line is the game's "Use: Adds this toy to your Toy Box.". Its actual effect comes later and checked against item's spell description.
local function get_toy_effect(item_id)
    local _, spell_id = C_Item.GetItemSpell(item_id)
    local description = spell_id and C_Spell.GetSpellDescription(spell_id)
    if description and not utils.is_secret(description) and description ~= "" then
        return description
    end
end

-- The entry lists an item's effects in the game's order, so the n-th "Equip:" line gets the n-th equip text
local function add_effect_texts(texts, entry, entry_id, lines_en, first, last)
    local effects = {}
    for _, effect in ipairs(item_effects) do
        effects[effect] = { texts = get_entry_texts(lines_en, entry[effect.field], true, entry_id), count = 0 }
    end
    local flavor = get_entry_texts(lines_en, entry.flavor)[1]
    local toy_effect

    for i = first, last do
        local text = lines_en[i]
        if text == _G.ITEM_TOY_ONUSE then
            toy_effect = get_toy_effect(entry_id)
        else
            local is_toy_effect = toy_effect and text:sub(1, #toy_effect) == toy_effect
            for _, effect in ipairs(item_effects) do
                local is_toy_use = is_toy_effect and effect.field == "use"
                if is_toy_use or text:sub(1, #effect.prefix) == effect.prefix then
                    local found = effects[effect]
                    found.count = found.count + 1
                    local text_uk = found.texts[found.count]
                    local template = is_toy_use and "TEXT" or effect.template
                    texts[i] = text_uk and fill_template(template, text_uk) .. get_cooldown_text(text)
                end
            end
        end
        if flavor and text:find('^".*"$') then
            texts[i] = '"' .. flavor .. '"'
        end
    end
end

-- the line with the made item's name in recipes, with everything around the name: color, tbc's line break before it
local function find_result_item_line(lines_en, first_line, name_en)
    for i = first_line, #lines_en do
        local text = lines_en[i]
        local from, to = text:find(name_en, 1, true)
        if from and utils.strip_color_codes(text):match("^%s*(.-)%s*$") == name_en then
            return i, text:sub(1, from - 1), text:sub(to + 1)
        end
    end
end

local function add_item_texts(texts, entry, entry_id, lines_en, first, last)
    if entry then
        add_effect_texts(texts, entry, entry_id, lines_en, first, last)
    end
    local item_set = entries.get_item_set(entry_id)
    if item_set then
        add_item_set_texts(texts, item_set, lines_en, first, last)
    end
end

-- our texts by line index, made from the english lines: our texts take their numbers from them
local function get_item_texts(tooltip, entry, entry_id, lines_en, title_index)
    local texts = {}
    local first_line = (title_index or 0) + 1

    -- not cached yet: the game builds the tooltip anew once it has the item
    if title_index and lines_en[title_index] == RETRIEVING_ITEM_INFO then
        texts[title_index] = translate_line(RETRIEVING_ITEM_INFO)
        return texts
    end

    if entry and title_index then
        texts[title_index] = get_item_heading(tooltip, entry, lines_en)
    end

    local result_id = entry and entry.recipe_result_item
    local result = result_id and result_id ~= entry_id and entries.get_entry("item", result_id)
    local result_line, before_name, after_name
    if result then
        -- the client's own name: later clients corrected some items ("Alchemists' Stone" -> "Alchemist's Stone")
        local result_name_en = C_Item.GetItemNameByID(result_id) or result.en
        result_line, before_name, after_name = find_result_item_line(lines_en, first_line, result_name_en)
    elseif result_id and options.account.dev_mode then
        dev_log.issue_entry("item", entry_id, result_id == entry_id and "значення recipe_result_item ідентичне entry_id"
            or "невірне значення recipe_result_item " .. tostring(result_id))
    end

    -- Recipe tooltip shows both own lines and the made item's lines starting from its name. Each part takes the texts of its own entry.
    local last_own_line = result_line and result_line - 1 or #lines_en
    add_item_texts(texts, entry, entry_id, lines_en, first_line, last_own_line)
    if result_line then
        local name_uk = get_item_heading(tooltip, result, lines_en)
        texts[result_line] = name_uk and before_name .. name_uk .. after_name
        add_item_texts(texts, result, result_id, lines_en, result_line + 1, #lines_en)
    end
    return texts
end

local function replace_item_lines(tooltip, entry, entry_id, first_phrase_line)
    local lines_en = get_lines_en(tooltip)
    local title_index = get_title_line_index(lines_en)
    local is_replaced = replace_lines(tooltip, get_item_texts(tooltip, entry, entry_id, lines_en, title_index))
    return replace_string_lines(tooltip, first_phrase_line or title_index + 1) or is_replaced
end

-- -----------------------------
-- [ the replace style: spells ]
-- -----------------------------

-- a spell's description as its tooltip shows it, plural codes chosen, nil when it is secret
local function get_spell_description(spell_id)
    local description = C_Spell.GetSpellDescription(spell_id)
    return type(description) == "string" and not utils.is_secret(description) and utils.render_plurals(description) or nil
end

-- a spell whose description's line holds other spells' descriptions too, a paragraph each: the runes of season of discovery, some headed by the rune's icon
-- Cata and mists have a few such spells too, as Conjure Refreshment's note on conjured items.
-- Each one's translation joins the description the same way, its numbers from that spell's own description.
local function add_rune_paragraphs(text_uk, line_en, entry, spell_id)
    -- WoW: Forever's Feral Charge (1238122) has no text of its own, only its runes'
    local paragraphs = text_uk ~= "" and { text_uk } or {}
    local rune_spells = type(entry.rune) == "table" and entry.rune or { entry.rune }
    for _, rune_spell_id in ipairs(rune_spells) do
        local rune_spell = entries.get_entry("spell", rune_spell_id)
        local rune_text_en = (get_spell_description(rune_spell_id) or ""):gsub("%s+$", "")
        local rune_text = rune_spell and rune_spell[2]
            and utils.cap(entries.make_entry_text(rune_spell[2], { rune_text_en ~= "" and rune_text_en or line_en }))
        if rune_text then
            local start = rune_text_en ~= "" and line_en:find(rune_text_en, 1, true)
            local icon = start and line_en:sub(1, start - 1):match("|T[^|]+|t%s*$")
            paragraphs[#paragraphs + 1] = (icon or "") .. rune_text
        elseif options.account.dev_mode then
            dev_log.issue_entry("spell", spell_id, "невірне значення rune, невірне id закляття " .. tostring(rune_spell_id))
        end
    end
    return table_concat(paragraphs, "\n\n")
end

-- the translated texts for a spell's lines, keyed by line index: its name (in the line name_index, if given) and its description
-- The description's line is the one WoW: Forever's data marks (description_index), else the line equal to the game's description.
-- An aura's text is the first line under its name, unless that line is one of the game's phrases ("29 min remaining").
-- The description takes its numbers from its own line, so a cast time "1.5 sec cast" above it can't fill "{1} sec".
local function get_spell_texts(entry, spell_id, is_aura, heading, lines_en, name_index, description_index)
    local texts = {}
    if name_index then
        texts[name_index] = heading or entry and entry[1] and utils.cap(entries.make_entry_text(entry[1], lines_en))
    end
    local description_uk = entry and entry[is_aura and 3 or 2]
    if not description_uk then
        return texts
    end

    if not description_index then
        local description = not is_aura and get_spell_description(spell_id)
        for i = (name_index or 0) + 1, #lines_en do
            local text = lines_en[i]
            if text ~= "" and (is_aura or text == description) then
                description_index = not (is_aura and entries.translate_string_text(text)) and i or nil
                break
            end
        end
    end
    local line_en = description_index and lines_en[description_index]
    local text_uk = line_en and line_en ~= "" and get_entry_texts({ line_en }, description_uk)[1]
    if not text_uk then
        return texts
    end

    if not is_aura and entry.rune then
        text_uk = add_rune_paragraphs(text_uk, line_en, entry, spell_id)
    end
    texts[description_index] = text_uk
    return texts
end

-- the classic clients: a spell's tooltip gets the translated texts (get_spell_texts), then the rank on the right of the name and the game's phrases
-- The name itself is never a phrase: a spell named "Shadowflame" isn't the item tag.
local function replace_spell_lines(tooltip, entry, spell_id, is_aura, heading)
    local is_replaced = replace_lines(tooltip, get_spell_texts(entry, spell_id, is_aura, heading, get_lines_en(tooltip), 1))
    local rank = _G[tooltip:GetName() .. "TextRight1"]
    local rank_text = rank and rank:GetText()
    if rank_text and rank_text ~= "" then
        is_replaced = replace_line(tooltip, rank, translate_line(rank_text)) or is_replaced
    end
    return replace_string_lines(tooltip, 2) or is_replaced
end

-- a talent's next rank, in the game's line found by its text (the spell's description), which its numbers come from
local function replace_next_rank_line(tooltip, spell_id)
    local entry = entries.get_entry("spell", spell_id)
    local description = get_spell_description(spell_id)
    if not (entry and entry[2] and description and description ~= "") then
        return false
    end

    local name = tooltip:GetName()
    for i = 2, tooltip:NumLines() do
        local font_string = _G[name .. "TextLeft" .. i]
        if font_string:GetText() == description then
            local text_uk = entries.make_entry_text(entry[2], { description })
            return replace_line(tooltip, font_string, text_uk and utils.cap(text_uk))
        end
    end
    return false
end

-- -----------------------------
-- [ the replace style: sizing ]
-- -----------------------------

-- A tooltip is sized by its Show().
-- Where our Show() isn't safe (can_show), its width changes by as much as its widest line did (fit_width).

-- not for a world tooltip on classic clients (GameTooltip owned by UIParent): or else is stays on the screen forever
-- WoW: Forever: only for a tooltip with no game data, whose layout may touch secret values
local function can_show(tooltip)
    if utils.is_forever then
        return not tooltip.classicua.style_kind and not utils.tooltip_has_secret(tooltip)
    end
    return tooltip ~= GameTooltip or tooltip:GetOwner() ~= UIParent
end

-- nil when the lines can't tell: a secret line, a right text (the gap before it is unknown), or a wrapped line (its string width is the unwrapped text's)
local function get_lines_width(tooltip)
    if utils.tooltip_has_secret(tooltip) then
        return nil
    end

    local name = tooltip:GetName()
    local width = 0
    for i = 1, tooltip:NumLines() do
        local left, right = _G[name .. "TextLeft" .. i], _G[name .. "TextRight" .. i]
        if right and right:IsShown() and (right:GetText() or "") ~= "" then
            return nil
        end
        if left:IsShown() then
            local rows, line_width = left:GetNumLines(), left:GetStringWidth()
            if utils.is_secret(rows) or utils.is_secret(line_width) or rows > 1 then
                return nil
            end
            width = math.max(width, line_width)
        end
    end
    return width
end

local function fit_width(tooltip, width_before)
    local width = width_before and get_lines_width(tooltip)
    if width and width ~= width_before then
        tooltip:SetWidth(tooltip:GetWidth() + width - width_before)
    end
end

local function lay_out(tooltip, width_before)
    if can_show(tooltip) then
        tooltip:Show()
    else
        fit_width(tooltip, width_before)
    end
end

-- the classic clients: the lines the game adds after we translated an item's tooltip:
-- stat changes under comparison, recipe reagents, set bonuses whose spells hadn't loaded yet, get the item's texts and our phrases, as the first lines did
local function replace_late_lines(tooltip)
    local claim = tooltip.classicua
    local replaced_lines = claim.replaced_lines
    if replaced_lines and tooltip:NumLines() > replaced_lines then
        claim.replaced_lines = tooltip:NumLines()
        -- the width before translating: lay_out() fits the box by the change where it can't call Show()
        local width = get_lines_width(tooltip)
        local id = claim.entry_id
        -- the game's phrases only in the new lines, as the lines before them have been tried
        if replace_item_lines(tooltip, entries.get_entry("item", id), id, replaced_lines + 1) and tooltip:IsShown() then
            lay_out(tooltip, width)
        end
    end
end

-- -----------------------------------
-- [ replace style: the modifier key ]
-- -----------------------------------

-- the mouse has left its unit or object: Show() would cancel the fade and keep it on the screen
local function is_fading(tooltip)
    if utils.is_forever then
        return false
    end
    local _, unit = tooltip:GetUnit()
    return tooltip:GetAlpha() < 1 or unit ~= nil and not UnitExists(unit)
end

local function switch_lines(tooltip, is_original)
    for font_string, texts in pairs(tooltip.classicua.lines) do
        local text = font_string:GetText()
        if utils.is_forever or text == texts[1] or text == texts[2] then
            font_string:SetText(is_original and texts[1] or texts[2])
        else
            tooltip.classicua.lines[font_string] = nil
        end
    end
end

local function on_modifier_state_changed(key)
    if not is_any_replacement_style() or not key:find(options.account.tooltip_original_key, 1, true) then
        return
    end

    local is_original = is_original_shown()
    for _, tooltip in ipairs(known_tooltips) do
        if tooltip:IsShown() and next(tooltip.classicua.lines) and not is_fading(tooltip) then
            local width = get_lines_width(tooltip)
            switch_lines(tooltip, is_original)
            lay_out(tooltip, width)
        end
    end
end

-- ---------------------------------
-- [ replace style on WoW: Forever ]
-- ---------------------------------

-- WoW: Forever builds its tooltips from tooltip data, and a line rewritten after that loses its color on the next layout.
-- So our lines planned from english lines first (plan_tooltip), and each goes in as game adds it (add_planned_line).

-- the line types the game adds in their post-call (sell price, socket icon): they are translated once added (replace_added_line)
local kept_line_types = {}
-- the kinds of data planned, by the option that translates them
local kind_options = { item = "translate_item", spell = "translate_spell" }

local function plan_line(plan, line, left_uk, right_uk)
    -- a translation with a value left unfilled ("{1}": none in the game's line) leaves the game's line as it is
    left_uk = left_uk and not left_uk:find("{%d+}") and left_uk or nil
    if not line or not (left_uk or right_uk) or kept_line_types[line.type] then
        return
    end

    local planned = plan[line] or {}
    planned.left = planned.left or left_uk or nil
    planned.right = planned.right or right_uk or nil
    plan[line] = planned
end

local function plan_texts(plan, lines, texts)
    for i, text_uk in pairs(texts) do
        plan_line(plan, lines[i], text_uk)
    end
end

local function find_line(lines, line_type)
    for i, line in ipairs(lines) do
        if line.type == line_type then
            return i
        end
    end
end

-- a tooltip pre-call: plans the translations for the lines of an item's or a spell's data (an aura's too) before the game adds them
local function plan_tooltip(tooltip, data)
    local lines = type(data) == "table" and data.lines
    if type(lines) ~= "table" then
        return
    end

    -- the kind of the data, which also tells can_show() that game builds this tooltip from data
    local data_types, line_types = Enum.TooltipDataType, Enum.TooltipDataLineType
    local is_aura = data.type == data_types.UnitAura
    local kind = data.type == data_types.Item and "item" or (data.type == data_types.Spell or is_aura) and "spell" or "other"
    local claim = tooltip.classicua
    claim.style_kind = kind
    local id = not utils.is_secret(data.id) and data.id
    if not (id and kind_options[kind] and is_replacement_style(kind) and options.can_translate(kind_options[kind])) then
        return
    end

    local lines_en = {}
    for i, line in ipairs(lines) do
        if utils.is_secret(line.leftText) or utils.is_secret(line.rightText) then
            return
        end
        lines_en[i] = type(line.leftText) == "string" and utils.render_plurals(line.leftText) or ""
    end

    -- name line is the one the data marks, else line 1, unless the data is appended to a tooltip with lines (talent's next rank)
    local name_index = find_line(lines, kind == "item" and line_types.ItemName or line_types.SpellName) or tooltip:NumLines() == 0 and 1 or nil

    claim.plan = claim.plan or {}
    local plan = claim.plan
    local entry = entries.get_entry(kind, id)
    if kind == "item" then
        plan_texts(plan, lines, get_item_texts(tooltip, entry, id, lines_en, name_index))
    else -- spell or aura
        plan_texts(plan, lines, get_spell_texts(entry, id, is_aura, nil, lines_en, name_index,
            find_line(lines, line_types.SpellDescription)))
    end

    for i, line in ipairs(lines) do
        local planned = plan[line]
        if i ~= name_index and lines_en[i] ~= "" and not (planned and planned.left) then
            plan_line(plan, line, translate_line(lines_en[i]))
        end
        local right = line.rightText
        if type(right) == "string" and right ~= "" and not (planned and planned.right) then
            plan_line(plan, line, nil, translate_line(utils.render_plurals(right)))
        end
    end
end

local function color_code(r, g, b)
    return ("|cff%02x%02x%02x"):format(math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5), math.floor(b * 255 + 0.5))
end

-- a color given to AddLine() alone doesn't last on this client, so it goes into the text too
local function color_text(text, color)
    if utils.is_secret(color) or type(color) ~= "table" or not color.GetRGB then
        color = NORMAL_FONT_COLOR
    end
    local r, g, b = color:GetRGB()
    return color_code(r, g, b) .. text .. "|r", r, g, b
end

-- a line pre-call: returning true skips game's line, as the translated one is added in its place
local function add_planned_line(tooltip, line)
    if tooltip:IsForbidden() or not tooltip.classicua then
        return
    end
    local claim = tooltip.classicua
    local planned = claim.plan and claim.plan[line]
    local left_text = planned and (planned.left or line.leftText)

    -- the game spaces the name of an item linked in chat for the close button (TooltipDataRules)
    if type(left_text) ~= "string"
        or tooltip == ItemRefTooltip and line.type == Enum.TooltipDataLineType.ItemName and line.rightText then
        -- The game adds this line itself, and replace_added_line() puts the planned text into it (a linked item's name) or leaves it, as the plan has tried it already (a name with no entry is no phrase).
        -- A kept line still gets the game's phrases there, as no plan can take its place.
        claim.data_text = claim.plan and not utils.is_secret(line.leftText) and not kept_line_types[line.type] and line.leftText or nil
        claim.data_uk = planned and planned.left
        return
    end

    local left, r, g, b = color_text(left_text, line.leftColor)
    local left_en = color_text(line.leftText or "", line.leftColor)
    local wrap = line.wrapText or false
    -- our own lines: the AddLine hooks leave them, see replace_added_line()
    claim.is_adding = true
    if line.rightText == nil then
        tooltip:AddLine(left, r, g, b, wrap, line.leftOffset)
    else
        local right, right_r, right_g, right_b = color_text(planned.right or line.rightText, line.rightColor)
        tooltip:AddDoubleLine(left, right, r, g, b, right_r, right_g, right_b, wrap, line.leftOffset)
        claim.lines[_G[tooltip:GetName() .. "TextRight" .. tooltip:NumLines()]] =
            { color_text(line.rightText, line.rightColor), right }
    end
    claim.is_adding = false
    claim.lines[_G[tooltip:GetName() .. "TextLeft" .. tooltip:NumLines()]] = { left_en, left }
    return true
end

local function get_talent_owner(tooltip)
    local owner = tooltip:GetOwner()
    return not utils.is_secret(owner) and type(owner) == "table" and owner.nodeInfo and owner or nil
end

-- lines the game's Lua adds after item/spell data (sell price, stat changes under comparison)
-- or talent's title and rank, added before any data
local function replace_added_line(tooltip, side, text)
    local claim = tooltip.classicua
    if claim.is_adding or type(text) ~= "string" or utils.is_secret(text) or text == "" then
        return
    end
    local talent = not claim.plan and is_replacement_style("spell") and options.can_translate("translate_spell") and get_talent_owner(tooltip)
    if not (claim.plan or talent) then
        return
    end
    -- a data line our pre-call left to the game (add_planned_line): the plan already tried it, and gave its text if it had one
    local text_uk
    if side == "TextLeft" and text == claim.data_text then
        text_uk = claim.data_uk
        claim.data_text, claim.data_uk = nil, nil
        if not text_uk then
            return
        end
    end

    -- the line just added is the last one
    local index = tooltip:NumLines()
    local font_string = not utils.is_secret(index) and _G[tooltip:GetName() .. side .. index]
    if not font_string then
        return
    end

    if talent and index == 1 then
        -- the title is always a talent's spell name
        local spell_id = talent.definitionInfo and talent.definitionInfo.spellID
        local entry = spell_id and entries.get_entry("spell", spell_id)
        text_uk = entry and entry[1] and utils.cap(entries.make_entry_text(entry[1], { text }))
    elseif not text_uk then
        text_uk = translate_line(text)
    end

    if text_uk then
        -- forever's GetText() has no color codes: the line's color goes inline, so either text keeps it on Alt
        local code = color_code(font_string:GetTextColor())
        claim.lines[font_string] = { code .. text .. "|r", code .. text_uk .. "|r" }
        font_string:SetText(code .. text_uk .. "|r")
    end
end

-- the label over a comparison, which the game sizes its frame for right after setting it: "Equipped" -> "Споряджено"
local function replace_compare_label(tooltip, label, text)
    local texts = tooltip.classicua.lines[label]
    if type(text) ~= "string" or utils.is_secret(text) or texts and text == texts[1]
        or not is_replacement_style("item") or not options.can_translate("translate_item") then
        return
    end

    local text_uk = translate_line(text)
    if text_uk then
        tooltip.classicua.lines[label] = { text, text_uk }
        label:SetText(text_uk)
    end
end

-- a tooltip built while the modifier key is held got translated: it switches to the game's texts now, sized by fit_width() as Show() is already running
local function tooltip_shown(tooltip)
    if is_any_replacement_style() and is_original_shown() and next(tooltip.classicua.lines) then
        local width = get_lines_width(tooltip)
        switch_lines(tooltip, true)
        fit_width(tooltip, width)
    end
end

-- ------------------------------------
-- [ entries in tooltips, both styles ]
-- ------------------------------------

-- the replace style
local function replace_entry_lines(tooltip, entry_type, entry, entry_id, is_aura)
    if utils.is_forever then
        return false
    elseif entry_type == "item" then
        -- an item with no entry gets the game's phrases too
        return replace_item_lines(tooltip, entry, entry_id)
    elseif entry_type == "spell" then
        return replace_spell_lines(tooltip, entry, entry_id, is_aura)
    end

    -- SoD engraving shows its spell's tooltip under the engraving's name
    local spell_id = entry and entry.spell
    local heading = entry and utils.cap(entries.make_entry_text(entry[1], tooltip))
    return replace_spell_lines(tooltip, spell_id and entries.get_entry("spell", spell_id), spell_id, false, heading)
end

-- the addition style
local function add_entry_lines(tooltip, entry_type, entry, entry_id, is_aura, unit)
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
end

local function add_entry_to_tooltip(tooltip, entry_type, entry_id, is_aura, is_translation_on, unit)
    if tooltip.classicua.entry_type then
        return
    end

    local tt_title_line = utils.tooltip_title_line(tooltip)
    if tt_title_line == "Unknown" or tt_title_line == RETRIEVING_ITEM_INFO then
        if tt_title_line == RETRIEVING_ITEM_INFO and is_translation_on and not utils.is_forever and is_replacement_style("item") then
            replace_string_lines(tooltip, 1)
        end
        return
    end

    local updated = false
    local entry = entries.get_entry(entry_type, entry_id)
    local is_replacement = is_replacement_style(style_kinds[entry_type])

    if is_replacement then
        updated = is_translation_on and replace_entry_lines(tooltip, entry_type, entry, entry_id, is_aura)
    elseif entry and is_translation_on then
        add_entry_lines(tooltip, entry_type, entry, entry_id, is_aura, unit)
        updated = true
    end

    if not entry and options.account.dev_mode then
        -- a missing entry is logged either way, its id is shown only where its translation is on
        if is_translation_on then
            updated = true
            tooltip:AddLine(" ")
            tooltip:AddLine(assets.icon_ua_inline .. " " .. entry_type .. "#" .. entry_id, 1, 1, 1)
        end

        dev_log.missing_entry(entry_type, entry_id, tt_title_line)
    end

    -- Game resizes tooltip itself after OnTooltipSetItem in Classic, and after post calls of any kind in Forever.
    local is_sized_by_game = utils.is_forever or entry_type == "item" or entry_type == "sod_engraving"
    if updated and tooltip:IsShown() and not is_sized_by_game then
        tooltip:Show()
    end

    tooltip.classicua.entry_type = entry_type
    tooltip.classicua.entry_id = entry_id
    if is_replacement and entry_type == "item" and is_translation_on and not utils.is_forever then
        -- lines past this count are the ones the game adds later, see replace_late_lines()
        tooltip.classicua.replaced_lines = tooltip:NumLines()
    end
end

local function add_glossary_entry_to_tooltip(tooltip, glossary_key, is_processing, is_world)
    if tooltip.classicua.entry_type then
        return
    end

    -- a miss is not claimed, only remembered by the key it was looked up for
    tooltip.classicua.entry_id = glossary_key

    glossary_key = utils.strip_color_codes(glossary_key)
    if glossary_key then
        local found = is_world and entries.get_object_text(glossary_key) or entries.get_glossary_text(glossary_key)
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

-- with the lookup off, the tooltip is only claimed: else tooltip_updated would look its name up in the glossary
local function handle_entry(tooltip, entry_type, entry_id, option_key)
    if options.can_lookup(option_key) then
        add_entry_to_tooltip(tooltip, entry_type, entry_id, false, options.can_translate(option_key))
    else
        tooltip.classicua.entry_type = entry_type
        tooltip.classicua.entry_id = entry_id
    end
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
        handle_entry(tooltip, "spell", ranks[1], "translate_spell")
        return
    end

    local rank = claim.entry_type == "spell" and get_talent_rank(ranks, claim.entry_id)
    local next_rank_id = rank and ranks[rank + 1]

    if is_replacement_style("spell") then
        if options.can_translate("translate_spell") then
            local is_replaced = next_rank_id and replace_next_rank_line(tooltip, next_rank_id)
            is_replaced = replace_string_lines(tooltip, 2) or is_replaced
            if is_replaced and tooltip:IsShown() then
                tooltip:Show()
            end
        end
        return
    end

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

    -- the classic clients fire OnTooltipSetItem for a recipe again, after adding its reagents
    if self.classicua.entry_type == "item" and self.classicua.entry_id == id then
        replace_late_lines(self)
        return
    end

    handle_entry(self, "item", id, "translate_item")
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
                handle_entry(self, "spell", claim.talent_rank_id, "translate_spell")
                if not is_replacement_style("spell") then
                    add_next_rank_to_tooltip(self, id)
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

    handle_entry(self, "spell", id, "translate_spell")
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
        add_glossary_entry_to_tooltip(self, _G[self:GetName() .. "TextLeft1"]:GetText(), true, true)
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

    -- WoW: Forever has GetUnit() on GameTooltip only (not on the comparison tooltips), TooltipUtil works for any tooltip.
    -- The classic clients have no TooltipUtil
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

    -- a unit's health bar (each tooltip has its own)
    local status_bar = _G[self:GetName() .. "StatusBar"]
    if status_bar and status_bar:IsShown() then
        return
    end

    local text = _G[self:GetName() .. "TextLeft1"]:GetText()
    if text == self.classicua.entry_id then
        return
    end

    if options.can_lookup("translate_other_tooltips") then
        add_glossary_entry_to_tooltip(self, text, false, self == GameTooltip and self:GetOwner() == UIParent)
    end
end

local function tooltip_cleared(self)
    self.classicua.entry_type = false
    self.classicua.entry_id = false
    self.classicua.talent_rank_id = nil
    self.classicua.skipped = nil
    self.classicua.replaced_lines = nil
    self.classicua.plan = nil
    self.classicua.data_text = nil
    self.classicua.data_uk = nil
    self.classicua.is_adding = nil
    self.classicua.style_kind = nil
    wipe(self.classicua.lines)
end

-- --------------------------
-- [ hooks, by tooltip kind ]
-- --------------------------

-- Each kind of tooltip is hooked in its own function, which splits by client inside:
-- classic clients tell us what a tooltip shows by its scripts (OnTooltipSetItem...) and GameTooltip's methods
-- WoW: Forever runs retail ui, where the tooltip data processor uses callbacks before and after it fills a tooltip.

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
            tt.classicua = { entry_type = false, entry_id = false, lines = {} }
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
        return
    end

    hook_tooltip_script("OnTooltipSetItem", tooltip_set_item)

    -- the replace style: a comparison gets its stat changes inside SetCompareItem(), for both of its tooltips at once
    -- Translated there, they are shown sized for the translation, see replace_late_lines()
    for _, tt in ipairs(known_tooltips) do
        if tt.SetCompareItem then
            hooksecurefunc(tt, "SetCompareItem", function (self, other)
                replace_late_lines(self)
                if type(other) == "table" and other.classicua then
                    replace_late_lines(other)
                end
            end)
        end
    end
end

local function hook_spell_tooltips()
    if utils.is_forever then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Spell, for_known_tooltips(tooltip_set_spell))
    else
        hook_tooltip_script("OnTooltipSetSpell", tooltip_set_spell)
    end
end

-- WoW: Forever's auras come as tooltip data
local function hook_aura_tooltips()
    if utils.is_forever then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.UnitAura, for_known_tooltips(tooltip_set_unit_aura))
        return
    end

    -- each setter's own getter with the caller's filter: the target of target's debuffs pass "RAID"
    for method, getter in pairs({
        SetUnitAura = "GetAuraDataByIndex", SetUnitBuff = "GetBuffDataByIndex", SetUnitDebuff = "GetDebuffDataByIndex",
    }) do
        hooksecurefunc(GameTooltip, method, function (self, unit, index, filter)
            local aura = C_UnitAuras[getter](unit, index, filter)
            add_aura_to_tooltip(self, aura and aura.spellId)
        end)
    end

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
        handle_entry(self, "sod_engraving", skill_line_ability_id, "translate_spell")
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
    for _, tt in ipairs(known_tooltips) do
        -- the classic clients' ItemRefTooltip (a link clicked in chat) resets its OnUpdate script on enter, leave and hide (ItemRef.xml), dropping our hook.
        -- The game fills it by SetHyperlink() only: a quest link on Wrath, Cata and Mists.
        if tt == ItemRefTooltip and not utils.is_forever then
            hooksecurefunc(tt, "SetHyperlink", tooltip_updated)
        else
            tt:HookScript("OnUpdate", tooltip_updated)
        end
    end
end

-- WoW: Forever: hooks on the tooltips' methods work only when set at the first entering of the world
local function hook_forever_tooltip_methods()
    local event_frame = CreateFrame("Frame")
    event_frame:RegisterEvent("PLAYER_ENTERING_WORLD")
    event_frame:SetScript("OnEvent", function (self)
        self:UnregisterEvent("PLAYER_ENTERING_WORLD")
        for _, tt in ipairs(known_tooltips) do
            -- SetText() replaces the whole tooltip: else the modifier key would write an old item's lines into it
            hooksecurefunc(tt, "SetText", tooltip_cleared)

            hooksecurefunc(tt, "AddLine", function (tooltip, text)
                replace_added_line(tooltip, "TextLeft", text)
            end)
            hooksecurefunc(tt, "AddDoubleLine", function (tooltip, text_left, text_right)
                replace_added_line(tooltip, "TextLeft", text_left)
                replace_added_line(tooltip, "TextRight", text_right)
            end)

            -- only the comparison tooltips have a header ("Equipped") over them
            local header = tt.CompareHeader
            if header then
                hooksecurefunc(header.Label, "SetText", function (_, text)
                    replace_compare_label(tt, header.Label, text)
                end)
            end

            -- a comparison is shown again by SetShown() after the game adds its stat changes
            hooksecurefunc(tt, "Show", tooltip_shown)
            hooksecurefunc(tt, "SetShown", function (tooltip, is_shown)
                if not utils.is_secret(is_shown) and is_shown then
                    tooltip_shown(tooltip)
                end
            end)
        end
    end)
end

local function hook_replace_style()
    local event_frame = CreateFrame("Frame")
    event_frame:RegisterEvent("MODIFIER_STATE_CHANGED")
    event_frame:SetScript("OnEvent", function (_, _, key)
        on_modifier_state_changed(key)
    end)

    if not utils.is_forever then
        return
    end

    local line_types = Enum.TooltipDataLineType
    for _, kept in ipairs({ "SellPrice", "GemSocket", "Separator", "UnitThreat", "LearnableSpell", "AzeriteEssenceSlot", "AzeriteEssencePower" }) do
        if line_types[kept] then
            kept_line_types[line_types[kept]] = true
        end
    end
    TooltipDataProcessor.AddTooltipPreCall(TooltipDataProcessor.AllTypes, for_known_tooltips(plan_tooltip))
    TooltipDataProcessor.AddLinePreCall(TooltipDataProcessor.AllTypes, add_planned_line)
    hook_forever_tooltip_methods()
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
    hook_replace_style()
end
