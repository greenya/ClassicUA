local _, addon_table = ...

local assets        = addon_table.use("assets") ---@class assets_class
local subtitles     = addon_table.use("subtitles") ---@class subtitles_class
local subtitles_ui  = addon_table.use("subtitles_ui") ---@class subtitles_ui_class

local CreateFrame               = _G.CreateFrame
local GameFontNormalLarge       = _G.GameFontNormalLarge
local InCombatLockdown          = _G.InCombatLockdown
local UIParent                  = _G.UIParent
local UISpecialFrames           = _G.UISpecialFrames

local button_height = 24
local button_gap = 4

local cinematics_frame -- cinematics_frame with movies list, that allows to play them

local function play(cinematic)
    cinematics_frame:Hide()
    if InCombatLockdown() then
        DEFAULT_CHAT_FRAME:AddMessage(assets.icon_ua_inline
            .. " |cffffbb22ClassicUA: відеоролик можна переглянути лише поза боєм.|r")
        return
    end
    cinematic.play()
end

local function create_frame()
    cinematics_frame = CreateFrame("Frame", "ClassicUA_Cinematics_Frame", UIParent, "BackdropTemplate")
    cinematics_frame:SetWidth(300)
    cinematics_frame:SetFrameStrata("DIALOG")
    cinematics_frame:SetToplevel(true)
    cinematics_frame:SetClampedToScreen(true)
    cinematics_frame:EnableMouse(true)
    cinematics_frame:Hide()

    cinematics_frame:SetBackdrop({
        bgFile      = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
        edgeFile    = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile        = true,
        tileSize    = 32,
        edgeSize    = 32,
        insets      = { left = 11, right = 12, top = 12, bottom = 11 }
    })

    -- the game closes every frame named in this list when escape is pressed
    UISpecialFrames[#UISpecialFrames + 1] = cinematics_frame:GetName()

    local title = cinematics_frame:CreateFontString("$parent.Title")
    title:SetPoint("TOPLEFT", 24, -20)
    title:SetFontObject(GameFontNormalLarge)
    title:SetText("Відеоролики")

    local close_button = CreateFrame("Button", "$parent.Close", cinematics_frame, "UIPanelCloseButton")
    close_button:SetPoint("TOPRIGHT", -8, -8)

    cinematics_frame.buttons = {}
end

-- the list is made anew at every opening, as the race intro is there only while the game can replay it
subtitles_ui.toggle = function (play_button)
    if not cinematics_frame then
        create_frame()
    end

    if cinematics_frame:IsShown() then
        cinematics_frame:Hide()
        return
    end

    local cinematics = subtitles.get_cinematics()
    for i, cinematic in ipairs(cinematics) do
        local button = cinematics_frame.buttons[i]
        if not button then
            button = CreateFrame("Button", nil, cinematics_frame, "UIPanelButtonTemplate")
            button:SetSize(252, button_height)
            button:SetPoint("TOP", 0, -48 - (i - 1) * (button_height + button_gap))
            cinematics_frame.buttons[i] = button
        end
        button:SetText(cinematic.name)
        button:SetScript("OnClick", function () play(cinematic) end)
        button:Show()
    end
    for i = #cinematics + 1, #cinematics_frame.buttons do
        cinematics_frame.buttons[i]:Hide()
    end

    cinematics_frame:SetHeight(48 + #cinematics * (button_height + button_gap) + 20)
    cinematics_frame:ClearAllPoints()
    cinematics_frame:SetPoint("TOPLEFT", play_button, "TOPRIGHT", 8, 0)
    cinematics_frame:Show()
end
