local _, addon_table = ...

local frames = addon_table.use("frames") ---@class frames_class

local fonts = {
    checkbox = SystemFont_Shadow_Med2,
}

frames.add_tooltip_for_frame = function (frame, anchor, text)
    frame.tooltip_text = text
    frame:SetScript("OnEnter", function (self)
        GameTooltip:SetOwner(self, anchor)
        GameTooltip:SetText(self.tooltip_text, nil, nil, nil, nil, true)
    end)
    frame:SetScript("OnLeave", function ()
        GameTooltip:Hide()
    end)
end

frames.setup_frame_background_and_border = function (frame)
    local texture = frame:CreateTexture(nil, "BACKGROUND")
    texture:SetTexture("Interface\\QuestFrame\\QuestBG")
    texture:SetTexCoord(0.0, 0.58, 0.0, 0.65)
    texture:SetPoint("TOPLEFT", 4, -8)
    texture:SetPoint("BOTTOMRIGHT", -4, 8)

    frame:SetBackdrop({
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        edgeSize = 24
    })
end

-- areas: { area1={ font }, ... }
frames.setup_frame_scrollbar_and_content = function (frame, areas, scrollframe_width_override)
    local scrollframe = CreateFrame("ScrollFrame", nil, frame)
    scrollframe:SetPoint("TOPLEFT", 8, -9)
    scrollframe:SetPoint("BOTTOMRIGHT", -8, 9)
    frame.scrollframe = scrollframe
    local scrollframe_width = scrollframe_width_override or scrollframe:GetWidth()

    local content = CreateFrame("Frame", nil, scrollframe)
    content:SetSize(scrollframe_width, 0)
    scrollframe:SetScrollChild(content)
    frame.content = content

    for k, v in pairs(areas) do
        local a = content:CreateFontString(nil, "OVERLAY")
        a:SetWidth(frame:GetWidth() - 78)
        a:SetJustifyH("LEFT")
        a:SetJustifyV("TOP")
        a:SetTextColor(0, 0, 0)
        a:SetFontObject(v.font)
        frame[k] = a
    end

    local scrollbar = CreateFrame("Slider", nil, scrollframe, "UIPanelScrollBarTemplate")
    scrollbar:SetPoint("TOPLEFT", frame, "TOPRIGHT", -26, -27)
    scrollbar:SetPoint("BOTTOMLEFT", frame, "BOTTOMRIGHT", 0, 26)
    scrollbar:SetValueStep(40)
    scrollbar.scrollStep = 100
    scrollbar:SetValue(1)
    scrollbar:SetWidth(16)
    scrollbar:SetScript("OnValueChanged", function (self, value)
        self:GetParent():SetVerticalScroll(value)
    end)
    frame.scrollbar = scrollbar

    frame:EnableMouse(true)
    frame:EnableMouseWheel(true)
    frame:SetScript("OnMouseWheel", function(self, delta)
        local v = self.scrollbar:GetValue()
        self.scrollbar:SetValue(v - delta * self.scrollbar.scrollStep)
    end)
end

frames.setup_frame_scrollbar_values = function (frame, height, preserve_current_scroll_pos)
    preserve_current_scroll_pos = preserve_current_scroll_pos or false

    local delta = height - frame:GetHeight() + 24
    if delta < 1 then
        delta = 1
    end

    frame.scrollbar:SetMinMaxValues(1, delta)
    if not preserve_current_scroll_pos then
        frame.scrollbar:SetValue(1)
    end

    frame.content:SetSize(frame.content:GetWidth(), height)
end

-- frame must have properties: title, text, more_title, more_text
frames.set_text_frame_content = function (frame, title, text, more_title, more_text)
    local h = 16
    local pad_x = 24

    frame.title:SetPoint("TOPLEFT", frame.content, pad_x, -h)
    frame.title:SetText(title)
    h = h + frame.title:GetHeight() + 12

    if text then
        frame.text:SetPoint("TOPLEFT", frame.content, pad_x, -h)
        frame.text:SetText(text)
        h = h + frame.text:GetHeight() + 12
    else
        frame.text:SetText("")
    end

    if more_title and more_text then
        frame.more_title:SetPoint("TOPLEFT", frame.content, pad_x, -h)
        frame.more_title:SetText(more_title)
        h = h + frame.more_title:GetHeight() + 12

        frame.more_text:SetPoint("TOPLEFT", frame.content, pad_x, -h)
        frame.more_text:SetText(more_text)
        h = h + frame.more_text:GetHeight() + 12
    else
        if frame.more_title then
            frame.more_title:SetText("")
        end
        if frame.more_text then
            frame.more_text:SetText("")
        end
    end

    frames.setup_frame_scrollbar_values(frame, h)
end

frames.create_checkbox_frame = function (parent, point, x, y, text, checked, tooltip_text, on_click)
    local root = CreateFrame("CheckButton", nil, parent, "InterfaceOptionsCheckButtonTemplate")

    root:SetPoint(point, x, y)
    root.Text:SetText(text)
    root.Text:SetFontObject(fonts.checkbox)
    root:SetChecked(checked)

    if tooltip_text then
        frames.add_tooltip_for_frame(root, "ANCHOR_RIGHT", tooltip_text)
    end

    if on_click then
        root:SetScript("OnClick", on_click)
    end

    return root
end

frames.create_slider_frame = function (parent, point, x, y, width, height, min, max, step, tooltip_text, on_value_changed)
    local root = CreateFrame("Slider", nil, parent, "ClassicUA_UISliderTemplateWithLabels")

    root:SetPoint(point, x, y)
    root:SetWidth(width)
    root:SetHeight(height)
    root:SetObeyStepOnDrag(true)
    root:SetValueStep(step)
    root:SetMinMaxValues(min, max)
    root.Low:SetText(tostring(min))
    root.High:SetText(tostring(max))

    if tooltip_text then
        frames.add_tooltip_for_frame(root, "ANCHOR_RIGHT", tooltip_text)
    end

    if on_value_changed then
        root:SetScript("OnValueChanged", on_value_changed)
    end

    return root
end
