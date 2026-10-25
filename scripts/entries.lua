local _, addon_table = ...

local dev_log   = addon_table.use("dev_log") ---@class dev_log_class
local entries   = addon_table.use("entries") ---@class entries_class
local options   = addon_table.use("options") ---@class options_class
local utils     = addon_table.use("utils") ---@class utils_class

local pcall         = _G.pcall
local C_Item        = _G.C_Item
local COMPLETE      = _G.COMPLETE
local string_find   = _G.string.find
local string_format = _G.string.format
local string_gmatch = _G.string.gmatch
local string_gsub   = _G.string.gsub
local string_match  = _G.string.match
local string_split  = _G.string.split
local string_trim   = _G.string.trim
local table_concat  = _G.table.concat
local table_sort    = _G.table.sort
local UnitName      = _G.UnitName
local UnitSex       = _G.UnitSex

local function prepare_quests(is_alliance)
    local at = addon_table
    -- init faction quests reference
    at.quest_faction = is_alliance and at.quest_alliance or at.quest_horde
    -- drop opposite faction quests
    at[ is_alliance and "quest_horde" or "quest_alliance" ] = nil
    -- drop AI translated quests if option is disabled
    if not options.account.translate_ai then
        for _, quests in ipairs({ at.quest_faction, at.quest_both }) do
            for quest_id, quest in pairs(quests) do
                if quest.ai then
                    quests[quest_id] = nil
                end
            end
        end
    end
end

-- pushes codes "xxx", "Xxx", "XXX" to given table
-- all string args are expected to be lowercased; case_key is optional
local push_code_group_to_table = function (tbl, name_key, case_key, text)
    if case_key then
        tbl["{"             .. name_key  .. ":" .. case_key .. "}"] = text              -- {клас:о} = "магом"
        tbl["{" ..   utils.cap(name_key) .. ":" .. case_key .. "}"] = utils.cap(text)   -- {Клас:о} = "Магом"
        tbl["{" .. utils.upper(name_key) .. ":" .. case_key .. "}"] = utils.upper(text) -- {КЛАС:о} = "МАГОМ"
    else
        tbl["{"             .. name_key  ..                    "}"] = text              -- {клас} = "маг"
        tbl["{" ..   utils.cap(name_key) ..                    "}"] = utils.cap(text)   -- {Клас} = "Маг"
        tbl["{" .. utils.upper(name_key) ..                    "}"] = utils.upper(text) -- {КЛАС} = "МАГ"
    end
end

local function prepare_codes(name, name_cases, race, class, is_male)
    local at = addon_table
    local sex = is_male and 1 or 2
    local cases = { "н", "р", "д", "з", "о", "м", "к" }
    local codes = {}

    -- name

    for _, c in ipairs(cases) do
        local t = name_cases[c] or ""
        if t == "" then
            t = name_cases["н"] or ""
            if t == "" then
                t = name
            end
        end

        push_code_group_to_table(codes, "ім'я", c, t)
        if c == "н" then
            push_code_group_to_table(codes, "ім'я", nil, t)
        end
    end

    -- race

    local race_key = race:lower()
    if not at.race[race_key] then
        -- use some default value in case race is unknown/unsupported
        race_key = "human"
    end

    for c, race_case in pairs(at.race[race_key]) do
        local t = race_case[sex]
        push_code_group_to_table(codes, "раса", c, t)
        if c == "н" then
            push_code_group_to_table(codes, "раса", nil, t)
        end
    end

    -- class

    local class_key = class:lower()
    if not at.class[class_key] then
        -- use some default value in case class is unknown/unsupported
        class_key = "warrior"
    end

    for c, class_case in pairs(at.class[class_key]) do
        local t = class_case[sex]
        push_code_group_to_table(codes, "клас", c, t)
        if c == "н" then
            push_code_group_to_table(codes, "клас", nil, t)
        end
    end

    at.player_sex = sex
    at.codes = codes
end

local function prepare_glossary()
    local at = addon_table
    local glossary = {}

    -- collect text-key entries: misc, string, object, zone
    for _, entry_type in pairs({ "misc", "string", "object", "zone" }) do
        for entry_key, entry_value in pairs(at[entry_type]) do
            local glossary_key = string_trim(entry_key:lower())
            if not glossary[glossary_key] then
                glossary[glossary_key] = entry_value
            end

            -- if key starts with "the " part, add key without it
            if glossary_key:find("^the ") and #glossary_key > 8 then
                local glossary_key_no_the = glossary_key:sub(5)
                if not glossary[glossary_key_no_the] then
                    glossary[glossary_key_no_the] = entry_value
                end
            else
                -- if key doesn't start with "the ", add key that does
                local glossary_key_with_the = "the " .. glossary_key
                if not glossary[glossary_key_with_the] then
                    glossary[glossary_key_with_the] = entry_value
                end
            end
        end
    end

    -- collect id-key entries: spell, item, npc, quest
    for _, entry_type in pairs({ "spell", "item", "npc", "quest_faction", "quest_both" }) do
        for _, entry_value in pairs(at[entry_type]) do
            if entry_value.en then
                local glossary_key = string_trim(entry_value.en:lower())
                if not glossary[glossary_key] then
                    glossary[glossary_key] = entry_value[1]
                end
            end
        end
    end

    at.glossary = glossary
end

entries.prepare = function ()
    -- todo: handle faction update when panda-player chooses faction (mop+)
    -- note: if we expect to update faction at runtime then prepare_quests() needs rework

    local name          = UnitName("player")
    local sex           = UnitSex("player")
    local is_male       = sex == 2
    local race          = select(2, UnitRace("player"))
    local class         = select(2, UnitClass("player"))
    local faction       = UnitFactionGroup("player")
    local is_alliance   = faction == "Alliance"

    prepare_quests(is_alliance)
    prepare_codes(name, options.character.name_cases, race, class, is_male)
    prepare_glossary()
end

-- the text of an inline code: a prepared one, e.g. "{клас:о}", or a form of the sex one, "{стать:знайшов:знайшла}";
-- nil keeps an unknown code
local function expand_code(code)
    local at = addon_table
    local text = at.codes[code]
    if text then
        return text
    end

    local male, female = string_match(code, "^{стать:(.-):(.*)}$")
    if male then
        return at.player_sex == 1 and male or female
    end
end

-- expands the inline codes in one pass
entries.make_text = function (text)
    if not text or not string_find(text, "{", 1, true) then
        return text
    end

    return (string_gsub(text, "{[^{}]+}", expand_code))
end

local function make_text_array(array)
    if not array then
        return
    end

    local result = {}
    for i = 1, #array do
        result[i] = entries.make_text(array[i])
    end

    return result
end

local function make_chat_text(original, translation)
    local known_templates = { name=true, race=true, class=true, target=true }
    local at = addon_table
    local sex = UnitSex("player") == 2 and 1 or 2
    local player_name = UnitName("player")

    if not translation then
        return nil
    end

    local translation_split = { string_split("#", translation) }
    local template_matches = {}
    if #translation_split > 1 then
        local text_templates = {}
        for i = 2, #translation_split do
            local template = translation_split[i]
            local template_type = template:match("<(.+)>")
            if known_templates[template_type] then
                text_templates[template_type] = template
            elseif template_type:match("/") then
                local match_male, match_female = template_type:match("^(.+)/(.+)$")
                if original:match(utils.esc(template:gsub("<"..utils.esc(template_type)..">", match_male))) then
                    sex = 1
                elseif original:match(utils.esc(template:gsub("<"..utils.esc(template_type)..">", match_female))) then
                    sex = 2
                else
                    error("Error. Unknown sex.")
                end
            else
                error("Error. Unknown template type: " .. tostring(template_type))
            end
        end

        for template_type, template in pairs(text_templates) do
            local template_expression = utils.esc(template):gsub("<" .. template_type .. ">", "(.-)")
            local match = original:match(template_expression)
            template_matches[template_type] = match
        end
    end

    translation = translation_split[1]

    for pattern_uk in translation:gmatch("{(.-)}") do
        local pattern_uk_split = { string_split(":", pattern_uk) }
        local pattern_uk_type = pattern_uk_split[1]
        local case = pattern_uk_split[2] or "н"
        pattern_uk = "{" .. utils.esc(pattern_uk) .. "}"

        if utils.lower(pattern_uk_type) == "ім'я" then
            local name_en = template_matches["name"]
            local name_uk
            if name_en == player_name then
                name_uk = options.character.name_cases and options.character.name_cases[case] or name_en
            else
                name_uk = name_en
            end
            name_uk = name_uk and pattern_uk_type == "Ім'я" and utils.cap(name_uk) or name_uk
            name_uk = name_uk and pattern_uk_type == "ІМ'Я" and utils.upper(name_uk) or name_uk
            translation = translation:gsub(pattern_uk, name_uk)
        end

        if pattern_uk_type:lower() == "раса" then
            local race_en = template_matches["race"]
            local race_key = race_en:lower():gsub(" ", "")
            local race_uk = at.race[race_key] and at.race[race_key][case][sex]
            race_uk = race_uk and pattern_uk_type == "Раса" and utils.cap(race_uk) or race_uk
            race_uk = race_uk and pattern_uk_type == "РАСА" and utils.upper(race_uk) or race_uk
            translation = translation:gsub(pattern_uk, race_uk or race_en)
        end

        if pattern_uk_type:lower() == "клас" then
            local class_en = template_matches["class"]
            local class_key = class_en:lower():gsub(" ", "")
            local class_uk = at.class[class_key] and at.class[class_key][case][sex]
            class_uk = class_uk and pattern_uk_type == "Клас" and utils.cap(class_uk) or class_uk
            class_uk = class_uk and pattern_uk_type == "КЛАС" and utils.upper(class_uk) or class_uk
            translation = translation:gsub(pattern_uk, class_uk or class_en)
        end

        if utils.lower(pattern_uk_type) == "ціль" then
            local target_en = template_matches["target"]
            local target_uk
            if target_en == player_name then
                target_uk = options.character.name_cases and options.character.name_cases[case]
            elseif at.class[target_en:lower():gsub(" ", "")] then
                target_uk = at.class[target_en:lower():gsub(" ", "")][case][sex]
            elseif at.race[target_en:lower():gsub(" ", "")] then
                local race_key = target_en:lower():gsub(" ", "")
                target_uk = at.race[race_key][case][sex]
            elseif at.glossary[target_en:lower()] then
                target_uk = at.glossary[target_en:lower()]
            end
            target_uk = target_uk and pattern_uk_type == "Ціль" and utils.cap(target_uk) or target_uk
            target_uk = target_uk and pattern_uk_type == "ЦІЛЬ" and utils.upper(target_uk) or target_uk
            translation = translation:gsub(pattern_uk, target_uk or target_en)
        end

        if pattern_uk_type:lower() == "стать" then
            translation = translation:gsub(pattern_uk, pattern_uk_split[sex+1])
        end

    end

    return translation
end

local function safe_make_chat_text(original, translation)
    local success, result = pcall(make_chat_text, original, translation)

    if success then
        return result
    else
        dev_log.issue("Помилка перекладу чату \"" .. tostring(original) .. "\"", tostring(result))
        return nil
    end
end

local function resolve_entry_with_possible_ref(entry_type, entry_id, depth)
    depth = depth or 1
    if depth > 4 then
        if options.account.dev_mode then
            dev_log.issue_entry(entry_type, entry_id, "переповнення глибини пошуку ref")
        end
        return
    end

    if not entry_type or not entry_id then
        return
    end

    local at = addon_table

    if not at[entry_type] then
        if options.account.dev_mode then
            dev_log.issue_entry(entry_type, entry_id, "невірний тип запису \"" .. entry_type .. "\"")
        end
        return
    end

    local entry = at[entry_type][entry_id]

    if entry and entry.ref then
        if entry_type == "spell" or entry_type == "item" then
            local entry_ref = resolve_entry_with_possible_ref(entry_type, entry.ref, depth + 1)
            if entry_ref then
                return utils.copy_table(utils.copy_table({}, entry_ref), entry)
            elseif options.account.dev_mode then
                dev_log.issue_entry(entry_type, entry_id, "невірне значення ref для " .. entry_type .. '#' .. tostring(entry_ref))
                return utils.copy_table({ entry_type .. "#" .. entry_id .. "=>#" .. entry.ref }, entry)
            end
        elseif options.account.dev_mode then
            dev_log.issue_entry(entry_type, entry_id, "невірне використання ref; дозволено лише для типів запису spell та item")
        end
    end

    return entry
end

entries.get_object_text_pages = function (name, first_page_text)
    local entry = addon_table.object_text and addon_table.object_text[name]
    if not entry then
        return
    end

    if type(entry[1]) == "table" then
        local hash = utils.get_text_hash(first_page_text)
        for _, variant in ipairs(entry) do
            if variant.h1 == hash then
                return make_text_array(variant)
            end
        end
        return
    end

    return make_text_array(entry)
end

-- a quest of the player's faction or of both factions; a missing one is logged in dev mode
local function find_quest(quest_id)
    quest_id = tonumber(quest_id)
    if not quest_id or quest_id == 0 then
        return
    end

    local at = addon_table
    local quest = at.quest_faction[quest_id] or at.quest_both[quest_id]
    if not quest and options.account.dev_mode then
        dev_log.missing_quest(quest_id)
    end

    return quest
end

local function get_quest_text(quest_id, field)
    local quest = find_quest(quest_id)
    return quest and entries.make_text(quest[field])
end

entries.get_quest_title = function (quest_id)
    return get_quest_text(quest_id, 1)
end

entries.get_quest_description = function (quest_id)
    return get_quest_text(quest_id, 2)
end

entries.get_quest_objective = function (quest_id)
    return get_quest_text(quest_id, 3)
end

entries.get_quest_progress = function (quest_id)
    return get_quest_text(quest_id, 4)
end

entries.get_quest_completion = function (quest_id)
    return get_quest_text(quest_id, 5)
end

-- whether AI translated a text of the quest, not proofread yet
entries.is_quest_ai = function (quest_id)
    local at = addon_table
    quest_id = tonumber(quest_id)
    local quest = quest_id and (at.quest_faction[quest_id] or at.quest_both[quest_id])
    return quest and quest.ai or false
end

entries.get_entry = function (entry_type, entry_id)
    if not entry_type or not entry_id then
        return
    end

    local at = addon_table

    entry_id = tonumber(entry_id)
    if entry_id == 0 then
        return
    end

    if entry_type == "quest" then
        local quest = find_quest(entry_id)
        return quest and make_text_array(quest)
    end

    if entry_type == "item_text" then
        local item_text = at.item_text[entry_id]

        if item_text then
            return make_text_array(item_text)
        elseif options.account.dev_mode and entry_id ~= 8383 then -- #8383 is a saved letter inventory item
            dev_log.missing_item_text(entry_id, ItemTextGetPage(), ItemTextGetText())
        end

        return
    end

    return resolve_entry_with_possible_ref(entry_type, entry_id)
end

entries.get_npc_name_and_tag = function (entry, unit)
    if entry.feminine and unit then
        local sex = UnitSex(unit)
        if not utils.is_secret(sex) and sex == 3 then
            return entry.feminine, entry.feminine_tag or entry[2]
        end
    end

    return entry[1], entry[2]
end

-- Resolves a single variant of an optional block, e.g. "від {1} до {2}#target for {1} to {2}", "{1}#target for {1}"
-- Returns nil when the variant does not satisfy its conditions.
-- Conditions within a variant are separated by "#" and must all match.
local function resolve_optional_variant(translation, condition, tt_lines, tooltip_matches_to_skip)
    if not condition then
        return translation
    end

    local values = {}
    local conditions = { string_split("#", condition) }
    for i = 1, #conditions do
        local pattern = utils.esc(conditions[i]):gsub("{(%d+)}", function () return "([%d,.]*%d)" end)
        local match_number = 0
        for j = 1, #tt_lines do
            local matches = { tt_lines[j]:match(pattern) }
            if #matches > 0 then
                match_number = match_number + 1
                if match_number > tooltip_matches_to_skip then
                    if not (matches[1] == pattern) then
                        for k = 1, #matches do
                            values[#values + 1] = utils.fix_float_number(matches[k])
                        end
                    end
                    break
                end
            end
        end
        if match_number <= tooltip_matches_to_skip then
            return nil
        end
    end

    return (translation:gsub("{(%d+)}", function (a) return values[tonumber(a)] end))
end

-- Handles "[text#condition]" block that renders "text" when the tooltip matches "condition".
-- Variants are separated by "||" and the first matching one wins, so the most specific variant must come first:
--     [від {1} до {2}#target for {1} to {2}||{1}#target for {1}]
-- A trailing variant with no "#" is a default that always matches:
--     [a#cond1||b#cond2||default text]
local function resolve_optional_entry_text(text, tt_lines, tooltip_matches_to_skip)
    return (text:gsub("%[(.-)%]", function (block)
        if not block:find("#", 1, true) then
            return nil -- no conditions: not an optional block, leave it as is
        end

        local variants = utils.split_by_text("||", block)
        for i = 1, #variants do
            local translation, condition = variants[i]:match("^(.-)#(.*)$")
            local resolved = resolve_optional_variant(translation or variants[i], condition,tt_lines, tooltip_matches_to_skip)
            if resolved then
                return resolved
            end
        end

        return ""
    end))
end

-- Resolves optional "[text#condition]" blocks against the original text
entries.make_optional_text = function (text, text_en, matches_to_skip)
    if type(text) ~= "string" or type(text_en) ~= "string" then
        return text
    end

    if not text:find("[", 1, true) then
        -- no optional blocks
        return text
    end

    return resolve_optional_entry_text(text, { text_en }, matches_to_skip or 0)
end

entries.make_entry_text = function (text, tooltip, tooltip_matches_to_skip)
    if not text then
        return
    end
    if not text:find("#") or not tooltip then
        return text
    end

    if not tooltip_matches_to_skip then
        tooltip_matches_to_skip = 0
    end
    local tt_lines = tooltip.NumLines and utils.tooltip_lines(tooltip) or tooltip

    text = resolve_optional_entry_text(text, tt_lines, tooltip_matches_to_skip)
    text = { string_split("#", text) }

    local values = {}
    for i = 2, #text do
        local pattern = utils.esc(text[i]:lower()):gsub("{(%d+)}", function () return "([%d,.]*%d)" end)
        local pattern_numbers = {}
        for pattern_number in text[i]:lower():gmatch("{(%d+)}") do
            pattern_numbers[#pattern_numbers + 1] = tonumber(pattern_number)
        end
        local match_number = 0
        for j = 1, #tt_lines do
            local matches = { tt_lines[j]:lower():match(pattern) }
            if #matches > 0 and #matches == #pattern_numbers then
                match_number = match_number + 1
                if match_number > tooltip_matches_to_skip then
                    for k = 1, #matches do
                        values[pattern_numbers[k]] = utils.fix_float_number(matches[k])
                    end
                    break
                end
            end
        end
    end

    local result = text[1]:gsub("{(%d+)}", function (a) return values[tonumber(a)] end)

    --if result:match("{%d}") and options.account.dev_mode and #tt_lines > 0 then
    --    dev_log.issue("незаповнені значення шаблону [" .. tt_lines[1] .. "] " .. text[1])
    --end

    result = string_trim(result)

    return result
end

entries.get_language_text = function (language_name)
    local at = addon_table

    if type(at.language) ~= "table" then
        return language_name
    end

    return at.language[language_name] or language_name
end

entries.get_glossary_text = function (entry_key, fallback, hint_type)
    local at = addon_table

    if type(entry_key) ~= "string" or type(at.glossary) ~= "table" then
        return fallback
    end

    local original_entry_key = entry_key

    -- prepare entry_key
    entry_key = utils.strip_color_codes(entry_key)
    entry_key = utils.strip_icons(entry_key)
    entry_key = utils.first_line_only(entry_key)
    entry_key = string_trim(entry_key)
    entry_key = entry_key:lower()

    -- check directly
    if at.glossary[entry_key] then
        return utils.cap(at.glossary[entry_key])
    end

    local key, key1, key2

    -- the formats below need a "[" or a "(": a plain find is much cheaper than a pattern that fails
    if string_find(entry_key, "[", 1, true) then
        -- check using Questie' quest format: [57+] Feathermoon Stronghold
        key = string_match(entry_key, "%[.+%] (.*)")
        if key then
            if at.glossary[key] then
                return utils.cap(at.glossary[key])
            end
        end

        -- check using Questie' quest format: [57+] Feathermoon Stronghold (12345)
        key = string_match(entry_key, "%[.+%] (.*) %((.*)%)")
        if key then
            if at.glossary[key] then
                return utils.cap(at.glossary[key])
            end
        end
    end

    -- check using Questie' npc format: John Smith (Wind Rider Master)
    if string_find(entry_key, "(", 1, true) then
        key1, key2 = string_match(entry_key, "(.*) %((.*)%)")
        if key1 and key2 then
            if at.glossary[key1] then
                if at.glossary[key2] then
                    return utils.cap(at.glossary[key1]) .. " (" .. utils.cap(at.glossary[key2]) .. ")"
                else
                    return utils.cap(at.glossary[key1])
                end
            end
        end
    end

    if options.account.dev_mode and hint_type then
        if hint_type == "zone" then
            dev_log.missing_zone(original_entry_key)
        else
            dev_log.issue("непідтримуваний тип даних в get_glossary_text()", { hint_type, original_entry_key })
        end
    end

    return fallback
end

local function get_gossip_text(npc_id, gossip_text)
    local at = addon_table

    if not npc_id or type(gossip_text) ~= "string" or #gossip_text < 1 or type(at.gossip) ~= "table" then
        return nil, nil
    end

    npc_id = tonumber(npc_id)

    -- check text hash hit

    local gossip_text_hash = utils.get_text_hash(gossip_text)

    for _, gossip_key in ipairs({ npc_id, '!common' }) do
        local npc_strings = at.gossip[gossip_key]
        if npc_strings and npc_strings[gossip_text_hash] then
            return entries.make_text(entries.make_optional_text(npc_strings[gossip_text_hash], gossip_text)), nil
        end
    end

    -- check text code hit

    local gossip_code = utils.get_text_code(gossip_text)

    if gossip_code and #gossip_code > 0 then
        for _, gossip_key in ipairs({ npc_id, '!common' }) do
            local npc_strings = at.gossip[gossip_key]
            if npc_strings and npc_strings['!code'] then
                local known_gossip_keys = utils.table_string_keys(npc_strings['!code'])
                local gossip_key = utils.match_text_code(gossip_code, known_gossip_keys)
                if gossip_key then
                    local hash = npc_strings['!code'][gossip_key]
                    return entries.make_text(entries.make_optional_text(npc_strings[hash], gossip_text)), gossip_code
                end
            end
        end
    end

    return nil, gossip_code
end

entries.get_gossip_text_for_npc_talk = function (npc_id, gossip_text)
    if not npc_id or type(gossip_text) ~= "string" then
        return
    end

    local text_uk, gossip_code = get_gossip_text(npc_id, gossip_text)
    if text_uk then
        return text_uk
    end

    if options.account.dev_mode and gossip_code then
        dev_log.missing_gossip(npc_id, gossip_code, gossip_text, false)
    end
end

entries.get_gossip_text_for_player_reply = function (npc_id, gossip_text)
    if not npc_id or type(gossip_text) ~= "string" then
        return
    end

    local match_list = utils.get_match_list_of_equal_meaning_english_texts_for_phrase(gossip_text)
    for _, text_en in pairs(match_list) do
        local text_uk = get_gossip_text(npc_id, text_en)
        if text_uk then
            return text_uk
        end
    end

    -- replies are generally short, and also it can be class name, battleground name, dungeon name etc.
    local found_text = entries.get_glossary_text(gossip_text)
    if found_text then
        return found_text
    end

    if options.account.dev_mode then
        local gossip_code = utils.get_text_code(gossip_text)
        if gossip_code then
            dev_log.missing_gossip(npc_id, gossip_code, gossip_text, true)
        end
    end
end

entries.get_chat_text = function (npc_name, chat_text)
    local at = addon_table

    if not npc_name or not chat_text or type(at.chat) ~= "table" then
        return
    end

    -- check text hash hit

    local chat_hash = utils.get_text_hash(chat_text)
    for _, npc_key in ipairs({ npc_name, '!common' }) do
        local npc_strings = at.chat[npc_key]
        if npc_strings and npc_strings[chat_hash] then
            local npc_name_uk = at.chat[npc_key][1]
            if not npc_name_uk then
                npc_name_uk = entries.get_glossary_text(npc_name, npc_name)
            end
            local chat_text_uk = safe_make_chat_text(chat_text, at.chat[npc_key][chat_hash])
            return utils.cap(npc_name_uk), chat_text_uk, nil
        end
    end

    -- check text code hit

    local chat_code = utils.get_text_code(chat_text)

    if chat_code and #chat_code > 0 then
        for _, npc_key in ipairs({ npc_name, '!common' }) do
            local npc_strings = at.chat[npc_key]
            if npc_strings and npc_strings['!code'] then
                local known_chat_keys = utils.table_string_keys(npc_strings['!code'])
                local chat_key = utils.match_text_code(chat_code, known_chat_keys)
                if chat_key then
                    local npc_name_uk = npc_strings[1]
                    if not npc_name_uk then
                        npc_name_uk = entries.get_glossary_text(npc_name, npc_name)
                    end
                    local hash = npc_strings['!code'][chat_key]
                    local chat_text_uk = safe_make_chat_text(chat_text, npc_strings[hash])
                    return utils.cap(npc_name_uk), chat_text_uk, chat_code
                end
            end
        end
    end

    return nil, nil, chat_code
end

entries.get_item_suffix = function (item_name_en)
    local at = addon_table
    local item_suffix_en = item_name_en:match(".+ (of .-)$")
    return at.item_suffix[item_suffix_en]
end

-- the set the game puts an item in, if the set's entry lists the item: WoW: Forever gave some classic set ids to its own sets
entries.get_item_set = function (item_id)
    local set_id = select(16, C_Item.GetItemInfo(item_id))
    local item_set = set_id and addon_table.item_set[set_id]
    if not item_set then
        return
    end

    for _, id in ipairs(item_set.items) do
        if id == item_id then
            return item_set
        end
    end
end

-- our wording of a kill line, from the game's "Kobold Vermin slain: 3/8"
local QUEST_MONSTERS_KILLED_UK = "%s: %d/%d вбито"

local function translate_objective_line(text, quest_id, is_count_first)
    local at = addon_table

    local complete_en = " (" .. COMPLETE .. ")"
    local complete_uk = ""
    if text:sub(-#complete_en) == complete_en then
        text = text:sub(1, -#complete_en - 1)
        complete_uk = " (" .. (at.string[COMPLETE] or COMPLETE) .. ")"
    end

    local task, done, total
    if is_count_first then
        done, total, task = string_match(text, "^(%d+)/(%d+) (.+)$")
    else
        task, done, total = string_match(text, "^(.+): (%d+)/(%d+)$")
    end

    local quest = find_quest(quest_id)
    local text_uk = quest and quest.tasks and entries.make_text(quest.tasks[task or text])

    -- a task first, as some are worded as kills ("Gnolls slain")
    if not done then
        text_uk = text_uk or entries.get_glossary_text(text)
    elseif text_uk then
        text_uk = text_uk .. ": " .. done .. "/" .. total
    else
        local monster = string_match(task, "^(.+) slain$")
        local name_uk = entries.get_glossary_text(monster or task)
        if monster and name_uk then
            text_uk = string_format(QUEST_MONSTERS_KILLED_UK, name_uk, done, total)
        elseif name_uk then
            text_uk = name_uk .. ": " .. done .. "/" .. total
        end
    end

    return text_uk and text_uk .. complete_uk
end

entries.translate_quest_objective = function (text, quest_id)
    return translate_objective_line(text, quest_id, utils.is_forever)
end

entries.translate_taxi_node_name = function (text)
    -- try parse: "NAME1, NAME2"
    local key1, key2 = string_gmatch(text, "(.*), (.*)")()
    if key1 and key2 then
        local key1_text = entries.get_glossary_text(key1, key1, "zone")
        local key2_text = entries.get_glossary_text(key2, key2, "zone")
        text = string_format("%s, %s", key1_text, key2_text)
    else
        text = entries.get_glossary_text(text, text)
    end

    return text
end

-- ----------------------
-- [ the game's phrases ]
-- ----------------------

-- A line of the game's phrases is looked up in our names of enchantments (entries/*/enchant.lua) and strings (entries/*/string.lua):
-- first as a whole text, then against the formats ("Requires Level %d", "+%d Agility and +%d Stamina").
-- Enchantments go first, then tooltip texts, then interface strings, then zones
-- Formats come from enchantments and tooltip texts only, for finer coverage:
--   else "%s completed." would take unexpected lines ("This was not available until ... completed.")
-- Their values are translated in turn: numbers stay, names and nested phrases become translated.
-- "Requires Level 60" -> "Потрібний рівень: 60", "Classes: Warrior, Mage" -> "Класи: Воїн, Маг"

-- Every line of an item's tooltip is tried against the formats, so they are grouped by the first 4 characters of their english text.
-- A format that starts with a value goes by its last 3 ("%c%d Stamina"), and a line is only tried against its own groups.
local FORMAT_HEAD_LENGTH = 4
local FORMAT_TAIL_LENGTH = 3
local formats

-- how deep a value may be one of our phrases in turn: "Socket Bonus: +4 Strength" has "+4 Strength" inside it
local MAX_NESTED_FORMATS = 3
local nested_formats = 0

local function prepare_formats()
    local at = addon_table
    local groups = { by_head = {}, by_tail = {}, others = {} }
    local is_known = {}
    for _, texts in ipairs({ at.enchant, at.string_tooltip_text }) do
        for text_en, text_uk in pairs(texts) do
            -- a text with a "%" is a format; the same english met again in a later lookup is skipped
            if not is_known[text_en] and string_find(text_en, "%", 1, true) then
                is_known[text_en] = true
                for _, format in ipairs(utils.format_patterns(text_en)) do
                    format.text_en, format.text_uk = text_en, text_uk
                    local list
                    if format.text_length == 0 then
                        -- values alone ("%s") make any text
                    elseif #format.head >= FORMAT_HEAD_LENGTH then
                        local key = format.head:sub(1, FORMAT_HEAD_LENGTH)
                        list = groups.by_head[key] or {}
                        groups.by_head[key] = list
                    elseif #format.tail >= FORMAT_TAIL_LENGTH then
                        local key = format.tail:sub(-FORMAT_TAIL_LENGTH)
                        list = groups.by_tail[key] or {}
                        groups.by_tail[key] = list
                    else
                        -- too little text at either end to group by: every line tries these
                        list = groups.others
                    end
                    if list then
                        list[#list + 1] = format
                    end
                end
            end
        end
    end

    -- of two formats that could both make a text, the one with more text of its own is tried first ("Requires Level %d" before "Requires %s")
    local function longer_first(a, b)
        if a.text_length ~= b.text_length then
            return a.text_length > b.text_length
        end
        -- the same length of text: the longer english, then the alphabet, so the order doesn't depend on pairs()
        return #a.text_en > #b.text_en or #a.text_en == #b.text_en and a.text_en < b.text_en
    end
    for _, group in ipairs({ groups.by_head, groups.by_tail }) do
        for _, list in pairs(group) do
            table_sort(list, longer_first)
        end
    end
    table_sort(groups.others, longer_first)
    return groups
end

-- items list classes in "Classes:" and races in "Races:"
-- "Tauren" -> "таурен", "Death Knight" -> "лицар смерті"
local function get_class_or_race_name(name_en)
    local at = addon_table
    -- class.lua and race.lua key them lowercase with no spaces: "Night Elf" -> "nightelf"
    local key = name_en:lower():gsub(" ", "")
    local class = at.class[key]
    if class then
        return class["н"][1]
    end

    local race = at.race[key]
    -- humans use neutral_singular: "людина", not "чоловік"
    return race and (race["н"].neutral_singular or race["н"][1])
end

-- our name for an english one: a class or a race, an enchantment or a text of our strings (a reputation standing), or a name the glossary knows (a skill, a faction, an item)
-- The count of a recipe's reagent stays after it: "Linen Cloth (2)" -> "Лляна тканина (2)"
local function translate_name(name)
    local bare, count = string_match(name, "^(.-)( %(%d+%))$")
    if bare then
        local bare_uk = translate_name(bare)
        return bare_uk and bare_uk .. count
    end

    -- the glossary is read by its own key: get_glossary_text() also reads Questie's forms ("Name (Title)")
    local glossary = addon_table.glossary
    local glossary_uk = glossary and glossary[string_trim(name):lower()]
    return get_class_or_race_name(name) or entries.translate_string_text(name) or glossary_uk and utils.cap(glossary_uk)
end

-- a name we have no translation of stays english inside the translated line, so one unknown name doesn't leave the whole line english:
--   "Unique-Equipped: Black Blood of Y'Shaarj (1)" -> "Унікальний у спорядженні: Black Blood of Y'Shaarj (1)"
-- A value that is not a name keeps the whole line original rather than half translated.
-- - "Increases attack power by 117 when fighting Demons.", not "Збільшує силу атаки на 117 when fighting Demons.":
--     tbc's "Increases attack power by %s." takes "117 when fighting Demons"
-- - "Set: Your Feint ability has a chance to reset your threat.": a set's bonus
-- is_strict keeps no name, for find_format() to prefer a format whose values are all translated
local function keep_english_name(name, is_strict)
    local bare = string_match(name, "^(.-) %(%d+%)$") or name
    return not is_strict and not string_find(bare, "%d") and not string_find(bare, "%.$") and name or nil
end

-- a value the game filled a format with: a number stays, a name becomes translated, and so does each of several names joined by commas
-- nil for a sentence we have no translation of
-- "Warrior, Mage" (in "Classes: %s") -> "воїн, маг"
local function translate_value(value, is_strict)
    if not string_find(value, "%a") then
        return value
    end

    -- the whole value first, as a name may have a comma of its own ("Sulfuras, Hand of Ragnaros")
    local value_uk = translate_name(value)
    if value_uk or not string_find(value, ", ", 1, true) then
        return value_uk or keep_english_name(value, is_strict)
    end

    local names = utils.split_by_text(", ", value)
    for i, name in ipairs(names) do
        names[i] = translate_name(name) or keep_english_name(name, is_strict)
        if not names[i] then
            return
        end
    end
    return table_concat(names, ", ")
end

-- the format that makes a text, and the values it was filled with, keyed by their argument numbers
-- First format whose values are all translated wins over the first that merely makes the text.
-- Nested value may only be a number, or else a name like "Shadowcraft Armor" would be read as "%s Armor".
-- Values side by side only make a text when they are all translated: "+%s %s Damage" splits "+30 Healing and Spell Damage" too.
local function find_format(text, groups)
    local first_format, first_values
    for k = 1, 3 do
        local list
        if k == 1 then
            list = groups.by_head[text:sub(1, FORMAT_HEAD_LENGTH)]
        elseif k == 2 then
            list = groups.by_tail[text:sub(-FORMAT_TAIL_LENGTH)]
        else
            list = groups.others
        end

        for i = 1, list and #list or 0 do
            local format = list[i]
            -- most formats tried don't match: those make no table of captures
            if string_find(text, format.pattern) then
                local captures = { string_match(text, format.pattern) }
                local is_translated = true
                if nested_formats > 0 then
                    -- inside another phrase's value, a format's values may only be numbers: "+4 Strength" in "Socket Bonus: %s"
                    for _, value in ipairs(captures) do
                        is_translated = is_translated and not string_find(value, "%a")
                    end
                else
                    -- each value must have a translation; a phrase in a value is looked up one level down
                    nested_formats = nested_formats + 1
                    for _, value in ipairs(captures) do
                        is_translated = is_translated and translate_value(value, true) ~= nil
                    end
                    nested_formats = nested_formats - 1
                end

                -- all values translated: this format at once; else the first match at the top is kept, unless its values sit side by side
                if is_translated or nested_formats == 0 and not first_format and not format.is_side_by_side then
                    local values = {}
                    for j, value in ipairs(captures) do
                        values[format.order[j]] = value
                    end
                    if is_translated then
                        return format, values
                    end
                    first_format, first_values = format, values
                end
            end
        end
    end
    return first_format, first_values
end

-- "друїд, шаман" (in "Класи: %S") -> "Друїд, Шаман"
local function cap_names(value)
    local names = utils.split_by_text(", ", value)
    for i, name in ipairs(names) do
        names[i] = utils.cap(name)
    end
    return table_concat(names, ", ")
end

-- our format filled with the game's values, nil when a value has no translation and can't stay as it is
-- "%2$s (комірок: %1$d)" with "16", "Bag" -> "сумка (комірок: 16)"
local function fill_format(format_uk, values)
    local index = 0
    local is_failed = false
    local text_uk = string_gsub(format_uk, utils.FORMAT_CONVERSION, function (spec, kind)
        if kind == "%" then
            return "%"
        end

        -- a numbered conversion ("%2$s") takes its own value, a plain one the next in turn
        local number = spec:match("^(%d+)%$")
        if number then
            spec = spec:sub(#number + 2)
        else
            index = index + 1
        end

        local value = values[number and tonumber(number) or index]
        if value == nil then
            -- the translation asks for a value the game's text has none of
            return ""
        elseif kind == "N" then
            -- "%N" is in translations only: a player's own text (a character's name, an equipment set's) stays as the game wrote it
            return value
        elseif kind == "s" or kind == "S" then
            -- "%S", also in translations only: each name capitalized
            local value_uk = translate_value(value)
            is_failed = is_failed or not value_uk
            return value_uk and (kind == "S" and cap_names(value_uk) or value_uk) or ""
        elseif kind == "c" then
            -- the game's sign of a number
            return value
        end

        -- "%d" and "%f": a number keeps the game's own writing unless our format asks for another
        -- The game's "%s" takes any text: a value that is no number fails the line (mists' "%c%s Stamina" reads "+5 Agility and +7 Stamina")
        if not string_find(value, "^%-?%d[%d,%.]*$") then
            is_failed = true
            return value
        end
        local number_value = tonumber(value)
        if not number_value or kind == "d" and number_value % 1 ~= 0 then
            return value
        end
        return string_format("%" .. spec .. kind, number_value)
    end)
    -- our plural codes take the forms of the numbers just filled in
    return not is_failed and utils.render_plurals_uk(text_uk) or nil
end

-- our text for one of the game's phrases, nil when nothing fits:
-- the whole text: "Soulbound" -> "Прив'язаний до персонажа";
-- a format filled with the text's values: "Durability 16 / 16" -> "Міцність: 16 / 16";
-- a label before a value with no words in it: "Sell Price: 12 [copper icon]" -> "Ціна продажу: 12 [copper icon]"
entries.translate_string_text = function (text)
    local at = addon_table
    local text_uk = at.enchant[text] or at.string_tooltip_text[text] or at.string[text] or at.zone[text]
    if text_uk then
        return text_uk
    end

    formats = formats or prepare_formats()
    local format, values = find_format(text, formats)

    if format and nested_formats < MAX_NESTED_FORMATS then
        nested_formats = nested_formats + 1
        text_uk = fill_format(format.text_uk, values)
        nested_formats = nested_formats - 1
        return text_uk
    elseif format then
        return
    end

    local label, value
    if string_find(text, ":", 1, true) then
        label, value = string_match(text, "^([^:]+):(.*)$")
    end
    local label_uk = label and (at.string_tooltip_text[label] or at.string[label])
    if label_uk and not string_find(utils.strip_icons(utils.strip_color_codes(value)), "%a") then
        return label_uk .. ":" .. value
    end
end
