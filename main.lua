local frame = CreateFrame("frame")

frame:RegisterEvent("ADDON_LOADED")

frame:SetScript("OnEvent", function (self, event, ...)
    if event == "ADDON_LOADED" then
        print("ClassicUA loaded.")
        self:UnregisterEvent("ADDON_LOADED")
    end
end)

local get_entry = function (type, id)
    print("lookup for " .. type .. " #" .. id)
    -- todo: item look up db[type][id], where type "item", "spell", "quest" etc.
    return {
        "Назва предмета",
        "Певний текст українською мовою який репрезентує переклад для цього предмета."
    }
end

local OnTooltipSetItem = function (tt, ...)
    local entry = false

    local _, link = tt:GetItem()
    if link then
        local _, _, id = link:find("Hitem:(%d+):")
        if id then
            entry = get_entry("item", id)
        end
    end

    if entry then
        tt:AddLine(" ")
        tt:AddLine("|TInterface\\AddOns\\ClassicUA\\ua:0|t " .. entry[1], 1, 1, 1)
        tt:AddLine(entry[2], 1, 1, 1, true)
        tt:AddLine(" ")
    end
end


for _, tt in pairs { GameTooltip } do
    local prev = tt:GetScript("OnTooltipSetItem")
    tt:SetScript("OnTooltipSetItem", function (tt, ...)
        OnTooltipSetItem(tt, ...)
        if prev then
            return prev(tt, ...)
        end
    end)
end
