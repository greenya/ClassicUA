local frame = CreateFrame("frame")

frame:RegisterEvent("ADDON_LOADED")

frame:SetScript("OnEvent", function (self, event, ...)
    if event == "ADDON_LOADED" then
        print("ClassicUA loaded.")
        self:UnregisterEvent("ADDON_LOADED")
    end
end)

local get_entry = function (type, id)
    if type and id then
        print("lookup for " .. type .. " #" .. id)
        -- todo: item look up db[type][id], where type "item", "spell", "quest" etc.
        return {
            "Назва предмета",
            "Певний текст українською мовою який репрезентує переклад для цього предмета."
        }
    end
    return false
end

local add_entry_to_tooltip = function (type, id, tt)
    local entry = get_entry(type, id)
    if entry then
        tt:AddLine(" ")
        tt:AddLine("|TInterface\\AddOns\\ClassicUA\\ua:0|t " .. entry[1], 1, 1, 1)
        tt:AddLine(entry[2], 1, 1, 1, true)
    end
end

local tt_set_item = function (tt, ...)
    local _, link = tt:GetItem()
    if link then
        local _, _, id = link:find("Hitem:(%d+):")
        add_entry_to_tooltip("item", id, tt)
    end
end

local tt_set_spell = function (tt, ...)
    local _, id = tt:GetSpell()
    add_entry_to_tooltip("spell", id, tt)
end


for _, tt in pairs { GameTooltip } do
    tt:HookScript("OnTooltipSetItem", tt_set_item)
    tt:HookScript("OnTooltipSetSpell", tt_set_spell)
end
