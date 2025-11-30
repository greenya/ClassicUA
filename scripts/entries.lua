local _, addon_table = ...

local dev_log   = addon_table.use("dev_log") ---@class dev_log_class
local entries   = addon_table.use("entries") ---@class entries_class
local options   = addon_table.use("options") ---@class options_class
local utils     = addon_table.use("utils") ---@class utils_class

local pcall         = _G.pcall
local string_format = _G.string.format
local string_gmatch = _G.string.gmatch
local string_split  = _G.string.split
local string_trim   = _G.string.trim
local UnitName      = _G.UnitName
local UnitSex       = _G.UnitSex

local function prepare_talent_tree(class)
    local at = addon_table
    -- keep only player class tree
    at.talent_tree = at.talent_tree[class]
end

local function prepare_quests(is_alliance)
    local at = addon_table
    -- init faction quests reference
    at.quest_faction = is_alliance and at.quest_alliance or at.quest_horde
    -- drop opposite faction quests
    at[ is_alliance and "quest_horde" or "quest_alliance" ] = nil
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

    for _, c in ipairs(cases) do
        local t = at.race[race_key][c][sex]
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

    for _, c in ipairs(cases) do
        local t = at.class[class_key][c][sex]
        push_code_group_to_table(codes, "клас", c, t)
        if c == "н" then
            push_code_group_to_table(codes, "клас", nil, t)
        end
    end

    -- sex

    -- only "стать" is needed, but we make possible to use any letter casing
    -- (even if it has nothing to do with the letter case of the result, as text gets shown as is)
    codes["{стать:(.-):(.-)}"] = function (a, b) return is_male and a or b end
    codes["{Стать:(.-):(.-)}"] = function (a, b) return is_male and a or b end
    codes["{СТАТЬ:(.-):(.-)}"] = function (a, b) return is_male and a or b end

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

    prepare_talent_tree(class)
    prepare_quests(is_alliance)
    prepare_codes(name, options.character.name_cases, race, class, is_male)
    prepare_glossary()
end

local function make_text(text)
    if not text then
        return
    end

    for k, v in pairs(addon_table.codes) do
        text = text:gsub(k, v)
    end

    return text
end

local function make_text_array(array)
    if not array then
        return
    end

    local result = {}
    for i = 1, #array do
        result[i] = make_text(array[i])
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
        local quest = nil

        if at.quest_faction[entry_id] then
            quest = at.quest_faction[entry_id]
        elseif at.quest_both[entry_id] then
            quest = at.quest_both[entry_id]
        end

        if quest then
            return make_text_array(quest)
        elseif options.account.dev_mode then
            dev_log.missing_quest(entry_id)
        end

        return
    end

    if entry_type == "book" then
        local book = at.book[entry_id]

        if book then
            return make_text_array(book)
        elseif options.account.dev_mode and entry_id ~= 8383 then -- #8383 is a saved letter inventory item
            dev_log.missing_book_page(entry_id, ItemTextGetPage(), ItemTextGetText())
        end

        return
    end

    return resolve_entry_with_possible_ref(entry_type, entry_id)
end

local function resolve_optional_entry_text(text, tt_lines, tooltip_matches_to_skip)
    return text:gsub("%[(.-)#(.-)%]", function(translation, condition)
        local values = {}
        local conditions = { string_split("#", condition) }
        for i = 1, #conditions do
            local pattern = utils.esc(conditions[i]):gsub("{(%d+)}", function () return "([%d,\.]*%d)" end)
            local match_number = 0
            for j = 1, #tt_lines do
                local matches = { tt_lines[j]:match(pattern) }
                if #matches > 0 then
                    match_number = match_number + 1
                    if match_number > tooltip_matches_to_skip then
                        if #matches > 0 and not (matches[1] == pattern) then
                            for k = 1, #matches do
                                values[#values + 1] = utils.fix_float_number(matches[k])
                            end
                        end
                        break
                    end
                end
            end
            if match_number <= tooltip_matches_to_skip then
                return ""
            end
        end
        return translation:gsub("{(%d+)}", function (a) return values[tonumber(a)] end)
    end)
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
    local tt_lines = utils.tooltip_lines(tooltip)

    text = resolve_optional_entry_text(text, tt_lines, tooltip_matches_to_skip)
    text = { string_split("#", text) }

    local values = {}
    for i = 2, #text do
        local pattern = utils.esc(text[i]:lower()):gsub("{(%d+)}", function () return "([%d,\.]*%d)" end)
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

entries.get_glossary_text = function (entry_key, fallback, hint_type)
    local at = addon_table

    if type(entry_key) ~= "string" or type(at.glossary) ~= "table" then
        return fallback
    end

    local original_entry_key = entry_key

    -- prepare entry_key
    entry_key = utils.strip_color_codes(entry_key)
    entry_key = utils.first_line_only(entry_key)
    entry_key = string_trim(entry_key)
    entry_key = entry_key:lower()

    -- check directly
    if at.glossary[entry_key] then
        return utils.cap(at.glossary[entry_key])
    end

    local key, key1, key2

    -- check using Questie' quest format: [57+] Feathermoon Stronghold
    key = string_gmatch(entry_key, "%[.+%] (.*)")()
    if key then
        if at.glossary[key] then
            return utils.cap(at.glossary[key])
        end
    end

    -- check using Questie' quest format: [57+] Feathermoon Stronghold (12345)
    key = string_gmatch(entry_key, "%[.+%] (.*) %((.*)%)")()
    if key then
        if at.glossary[key] then
            return utils.cap(at.glossary[key])
        end
    end

    -- check using Questie' npc format: John Smith (Wind Rider Master)
    key1, key2 = string_gmatch(entry_key, "(.*) %((.*)%)")()
    if key1 and key2 then
        if at.glossary[key1] then
            if at.glossary[key2] then
                return utils.cap(at.glossary[key1]) .. " (" .. utils.cap(at.glossary[key2]) .. ")"
            else
                return utils.cap(at.glossary[key1])
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
            return make_text(npc_strings[gossip_text_hash]), nil
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
                    return make_text(npc_strings[hash]), gossip_code
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

entries.translate_quest_objective_task = function (text)
    -- try parse "LEFT: RIGHT"
    local parts = { string_split(":", text, 2) }
    if #parts == 2 and #parts[1] > 0 then
        local found_left = entries.get_glossary_text(parts[1])
        if found_left then
            parts[1] = found_left
        elseif #parts[1] > 1 and parts[1]:sub(#parts[1], #parts[1]) == "s" then
            -- try plural => singular, e.g. "Kobold Workers" => "Kobold Worker"
            local found_singular = entries.get_glossary_text(parts[1]:sub(1, #parts[1] - 1))
            if found_singular then
                parts[1] = found_singular
            end
        end

        local found_right = entries.get_glossary_text(parts[2])
        if found_right then
            parts[2] = " " .. found_right
        end

        text = parts[1] .. ":" .. parts[2]
    else
        text = entries.get_glossary_text(text, text)
    end

    return text
end

entries.translate_taxi_node_name = function (text)
    -- try parse: "NAME1, NAME2"
    local key1, key2 = string_gmatch(text, "(.*), (.*)")()
    if key1 and key2 then
        key1_text = entries.get_glossary_text(key1, key1, "zone")
        key2_text = entries.get_glossary_text(key2, key2, "zone")
        text = string_format("%s, %s", key1_text, key2_text)
    else
        text = entries.get_glossary_text(text, text)
    end

    return text
end
