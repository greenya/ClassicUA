local _, addon_table = ...

local assets    = addon_table.use("assets") ---@class assets_class
local fonts     = addon_table.use("fonts") ---@class fonts_class
local options   = addon_table.use("options") ---@class options_class

-- Since 2.5.6 (and corresponding builds for other versions) GetFont() reports internal font attributes (e.g. FILTER, FIXEDHEIGHT) among flags.
-- Passing FIXEDHEIGHT back into SetFont() breaks rendering of pooled combat text font strings,
-- so only real render flags are kept when reapplying.
local allowed_font_flags = { OUTLINE = true, THICKOUTLINE = true, MONOCHROME = true }

local function sanitize_font_flags(font_flags)
    if not font_flags or font_flags == "" then
        return ""
    end
    local result = {}
    for token in font_flags:gmatch("[^,%s]+") do
        if allowed_font_flags[token] then
            result[#result + 1] = token
        end
    end
    return table.concat(result, ", ")
end

fonts.prepare = function ()
    if not options.account.override_system_fonts then
        return
    end

    local font_overrides = {
        { name="CombatTextFont",                    file=assets.font_frizqt, height=25 },
        { name="CombatTextFontOutline",             file=assets.font_frizqt, height=25 },
        { name="GameTooltipHeader",                 file=assets.font_frizqt },
        { name="MailFont_Large",                    file=assets.font_morpheus },
        { name="PVPInfoTextFont",                   file=assets.font_frizqt },
        { name="QuestFont_Huge",                    file=assets.font_morpheus },
        { name="QuestFont_Large",                   file=assets.font_morpheus },
        { name="QuestFont_Larger",                  file=assets.font_morpheus },
        { name="QuestFont",                         file=assets.font_frizqt },
        { name="QuestFontNormalSmall",              file=assets.font_frizqt },
        { name="SubZoneTextFont",                   file=assets.font_frizqt },
        { name="SystemFont_Shadow_Large",           file=assets.font_frizqt },
        { name="SystemFont_Shadow_Large_Outline",   file=assets.font_frizqt },
        { name="SystemFont_Shadow_Large2",          file=assets.font_frizqt },
        { name="SystemFont_Shadow_Large2_Outline",  file=assets.font_frizqt },
        { name="SystemFont_Shadow_Med1",            file=assets.font_frizqt },
        { name="SystemFont_Shadow_Med1_Outline",    file=assets.font_frizqt },
        { name="SystemFont_Shadow_Med2",            file=assets.font_frizqt },
        { name="SystemFont_Shadow_Med2_Outline",    file=assets.font_frizqt },
        { name="SystemFont_Shadow_Small",           file=assets.font_frizqt },
        { name="SystemFont_Shadow_Small_Outline",   file=assets.font_frizqt },
        { name="SystemFont_Shadow_Small2",          file=assets.font_frizqt },
        { name="SystemFont_Shadow_Small2_Outline",  file=assets.font_frizqt },
        { name="Tooltip_Med",                       file=assets.font_frizqt },
        { name="Tooltip_Small",                     file=assets.font_frizqt },
        { name="WorldMapTextFont",                  file=assets.font_frizqt },
        { name="ZoneTextFont",                      file=assets.font_frizqt },
    }

    for _, f in ipairs(font_overrides) do
        local font = _G[f.name]
        if font then
            local _, font_height, font_flags = font:GetFont()
            if font_height > 120 and f.height then
                -- 120 is a maximum font height. But, as example, for CombatTextFont:GetFont() height is ~100256, though actual height in CombatText1..20 frames is 25
                font_height = f.height
            end
            font:SetFont(f.file, font_height, sanitize_font_flags(font_flags))
        end
    end
end
