local _, addonTable = ...

local player_class = false
local player_race = false
local player_is_male = false
local player_is_alliance = false

local frame = CreateFrame("frame")

frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")

frame:SetScript("OnEvent", function (self, event, ...)
    if event == "ADDON_LOADED" then
        print("ClassicUA loaded.")
        self:UnregisterEvent("ADDON_LOADED")
    elseif event == "PLAYER_ENTERING_WORLD" then
        local guid = UnitGUID("player")
        local _, class, _, race, sex = GetPlayerInfoByGUID(guid)
        local faction = UnitFactionGroup("player")

        player_class = class
        player_race = race
        player_is_male = sex == 2
        player_is_alliance = faction == "Alliance"

        addonTable.quest = player_is_alliance and addonTable.quest_a or addonTable.quest_h
        addonTable[ player_is_alliance and "quest_h" or "quest_a" ] = nil
    end
end)

-- [ tooltips ]

local get_entry = function (type, id)
    id = tonumber(id)
    if type and id then
        if (addonTable[type]) and (addonTable[type][id]) then
            return addonTable[type][id]
        else
            return { type .. "|cff999999#|r" .. id }
        end
    end
    return false
end

local add_entry_to_tooltip = function (type, id, tt)
    if tt.ClassicUA_entry_shown then
        return
    end

    local entry = get_entry(type, id)
    if entry then
        tt:AddLine(" ")
        tt:AddLine("|TInterface\\AddOns\\ClassicUA\\ua:0|t " .. entry[1], 1, 1, 1)
        if entry[2] then
            tt:AddLine(entry[2], 1, 1, 1, true)
        end
        tt.ClassicUA_entry_shown = true
    end
end

local tt_set_item = function (tt)
    local _, link = tt:GetItem()
    if link then
        local _, _, id = link:find("Hitem:(%d+):")
        add_entry_to_tooltip("item", id, tt)
    end
end

local tt_set_spell = function (tt)
    local _, id = tt:GetSpell()
    add_entry_to_tooltip("spell", id, tt)
end

local tt_set_unit = function (tt)
    local _, unit = tt:GetUnit()
    local guid = UnitGUID(unit)
    local _, _, _, _, _, id, _ = strsplit("-", guid)
    add_entry_to_tooltip("npc", id, tt)
end

local tt_cleared = function (tt)
    tt.ClassicUA_entry_shown = nil
end

for _, tt in pairs { GameTooltip } do
    tt:HookScript("OnTooltipSetItem", tt_set_item)
    tt:HookScript("OnTooltipSetSpell", tt_set_spell)
    tt:HookScript("OnTooltipSetUnit", tt_set_unit)
    tt:HookScript("OnTooltipCleared", tt_cleared)
end
