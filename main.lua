local frame = CreateFrame("frame")

frame:RegisterEvent("ADDON_LOADED")

frame:SetScript("OnEvent", function (self, event, ...)
    if event == "ADDON_LOADED" then
        print("ClassicUA loaded.")
        self:UnregisterEvent("ADDON_LOADED")
    end
end)
