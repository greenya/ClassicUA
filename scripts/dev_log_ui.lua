local _, addon_table = ...

local assets        = addon_table.use("assets") ---@class assets_class
local dev_log       = addon_table.use("dev_log") ---@class dev_log_class
local dev_log_ui    = addon_table.use("dev_log_ui") ---@class dev_log_ui_class

local CreateFrame       = _G.CreateFrame
local UIParent          = _G.UIParent
local UISpecialFrames   = _G.UISpecialFrames
local strlenutf8        = _G.strlenutf8

dev_log_ui.frame = nil ---@class Frame

local fonts = {
    title   = GameFontNormalLarge,
    content = GameFontHighlight,
}

local text_font_path = assets.font_frizqt
local text_font_size = 11

local function create_frame()
    local frame = CreateFrame("Frame", "ClassicUA_Dev_Log_Frame", UIParent, "BackdropTemplate")
    dev_log_ui.frame = frame

    frame:SetSize(700, 200)
    frame:SetPoint("CENTER")
    frame:SetFrameStrata("DIALOG")
    frame:SetToplevel(true)
    frame:SetClampedToScreen(true)
    frame:Hide()

    frame:SetBackdrop({
        bgFile      = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
        edgeFile    = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile        = true,
        tileSize    = 32,
        edgeSize    = 32,
        insets      = { left = 11, right = 12, top = 12, bottom = 11 }
    })

    frame:EnableMouse(true)

    -- the game closes every frame named in this list when escape is pressed
    UISpecialFrames[#UISpecialFrames + 1] = frame:GetName()

    local title = frame:CreateFontString("$parent.Title")
    title:SetPoint("TOPLEFT", 26, -20)
    title:SetFontObject(fonts.title)
    title:SetText("Дані для розробників")

    local hint = frame:CreateFontString("$parent.Hint")
    hint:SetPoint("TOPLEFT", 26, -46)
    hint:SetWidth(620)
    hint:SetJustifyH("LEFT")
    hint:SetFontObject(fonts.content)
    hint:SetText("Текст уже виділено — натисніть Ctrl+C і надішліть скопійоване нам.")

    local close_button = CreateFrame("Button", "$parent.Close", frame, "UIPanelCloseButton")
    close_button:SetPoint("TOPRIGHT", -8, -8)

    -- text area

    local edit_box = CreateFrame("EditBox", "$parent.EditBox", frame, "InputBoxTemplate")
    edit_box:SetPoint("TOPLEFT", 32, -96)
    edit_box:SetSize(612, 28)
    edit_box:SetAutoFocus(false)
    edit_box:SetFont(text_font_path, text_font_size, "")
    edit_box:SetMaxLetters(0)
    edit_box:SetScript("OnEscapePressed", function (self) self:ClearFocus() end)

    -- a click anywhere selects everything
    edit_box:SetScript("OnMouseUp", function (self) self:HighlightText() end)
    edit_box:SetScript("OnEditFocusGained", function (self) self:HighlightText() end)

    -- undo any text changes
    edit_box:SetScript("OnTextChanged", function (self, is_user_input)
        if is_user_input then
            self:SetText(frame.text or "")
            self:HighlightText()
        end
    end)

    frame.edit_box = edit_box

    local size_label = frame:CreateFontString("$parent.Size_Label")
    size_label:SetPoint("BOTTOMLEFT", 26, 18)
    size_label:SetFontObject(fonts.content)
    size_label:SetTextColor(0.6, 0.6, 0.6)
    frame.size_label = size_label
end

dev_log_ui.open = function ()
    if not dev_log_ui.frame then
        create_frame()
    end

    local frame = dev_log_ui.frame

    local text = dev_log.serialize()
    frame.size_label:SetText(
        "Довжина: " .. tostring(#text)
        .. "     Символів: " .. tostring(strlenutf8(text))
    )

    frame:Show()
    frame.edit_box:SetText(text)
    frame.edit_box:SetCursorPosition(0)
    frame.edit_box:SetFocus()
    frame.edit_box:HighlightText()
end
