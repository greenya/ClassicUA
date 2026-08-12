local _, addon_table = ...

local dev_log           = addon_table.use("dev_log") ---@class dev_log_class
local dev_log_ui        = addon_table.use("dev_log_ui") ---@class dev_log_ui_class
local frames            = addon_table.use("frames") ---@class frames_class
local options           = addon_table.use("options") ---@class options_class
local options_ext_ui    = addon_table.use("options_ext_ui") ---@class options_ext_ui_class
local options_ui        = addon_table.use("options_ui") ---@class options_ui_class
local utils             = addon_table.use("utils") ---@class utils_class

local CreateFrame       = _G.CreateFrame
local math_ceil         = _G.math.ceil

local fonts = {
    page_title      = GameFontNormalLarge,
    page_desc       = GameFontHighlight,
    group           = GameFontNormal,
    content         = GameFontHighlight,
    master_checkbox = SystemFont_Shadow_Large,
}

local layout = {
    pad_x               = 26,
    pad_y               = -20,
    text_width          = 620,
    list_width          = 648,
    column_width        = 324,
    dropdown_width      = 170,
    indent              = 24,
    group_height        = 26,
    group_gap           = 8,
    checkbox_height     = 24,
    dropdown_height     = 32,
}

-- how a translated chat line reaches the frame; the order matches chat_styles in chats.lua
local chat_style_values = { "Заміна", "Доповнення" }

-- Rows are rendered top to bottom; a row is a group header ({ group=... }), a checkbox
-- ({ key=... }), a dropdown ({ dropdown=... }) or { column_break=true }, which continues
-- the list in the next column.
-- "option_key" names the field in options.account the row reads and writes.
-- "parent_key" dims the row while the named checkbox is unchecked.
-- "reload" marks switches which are only applied on interface reload, because the module
-- they belong to overwrites game data once, at load time.
local option_rows = {
    { group = "Шрифти" },
    {
        key         = "font",
        option_key  = "override_system_fonts",
        name        = "Заміняти стандартні шрифти",
        reload      = true,
        tooltip     = "Заміняти стандартні шрифти на аналогічні з українськими літерами."
            .. "\n\nРекомендовано вимкнути при використанні іншого аддону для заміни шрифтів."
    },

    { group = "Інтерфейс гри" },
    {
        key         = "string",
        option_key  = "translate_string",
        name        = "Стандартні рядки інтерфейсу",
        reload      = true,
        tooltip     = "Написи самої гри: комірки спорядження, заголовки вікон, системні повідомлення."
            .. "\n\nРекомендовано вимкнути, якщо переклад цих рядків заважає іншим аддонам."
    },
    {
        key         = "zone",
        option_key  = "translate_zone",
        name        = "Назви локацій",
        -- the minimap keeps the old name until the player changes zone, so nudge it
        on_changed  = function () Minimap_Update() end,
        tooltip     = "Назви локацій на мапі, мінімапі, підказках, точках польоту."
            .. "\n\nПереклад може підхоплюватись іншими аддонами."
    },

    { group = "Сюжетні тексти" },
    {
        key         = "quest",
        option_key  = "translate_quest",
        name        = "Завдання",
        tooltip     = "Тексти завдань, а також журнал і відстежувач завдань."
            .. "\n\nПеремикач у вікні завдання має аналогічний ефект."
    },
    {
        key         = "book",
        option_key  = "translate_book",
        name        = "Книжки",
        tooltip     = "Тексти предметів-книг."
            .. "\n\nПеремикач у вікні книги має аналогічний ефект."
    },
    {
        key         = "gossip",
        option_key  = "translate_gossip",
        name        = "Плітки",
        tooltip     = "Репліки у вікні розмови з персонажами та варіанти відповідей."
            .. "\n\nПеремикач у вікні розмови має аналогічний ефект."
    },
    {
        key         = "chat",
        option_key  = "translate_chat",
        name        = "Чат",
        reload      = false, -- chat translation functionality itself does not require reload, but system strings replacement does (see chat_string_globals)
        tooltip     = "Фрази персонажів у світі: розмова, вигуки, шепіт, емоції."
            .. "\n\nЗміна може потребувати перезавантаження інтерфейсу."
    },
    {
        dropdown    = "chat_style",
        option_key  = "chat_style",
        parent_key  = "chat",
        label       = "Стиль",
        values      = chat_style_values,
        tooltip     = "Як відображати переклад у чаті."
            .. "\n\nЗаміна — замість оригіналу, як звичайне повідомлення."
            .. "\nДоповнення — окремим рядком після оригіналу."
            .. "\n\nЗміна може потребувати перезавантаження інтерфейсу."
    },
    {
        key         = "chat_bubble",
        option_key  = "translate_chat_bubble",
        parent_key  = "chat",
        sub         = true,
        name        = "Бульбашки",
        tooltip     = "Текст у бульбашках над персонажами."
    },

    { column_break = true },

    { group = "Назви та підказки" },
    {
        key         = "item",
        option_key  = "translate_item",
        name        = "Предмети",
        tooltip     = "Назви та описи предметів у підказках."
    },
    {
        key         = "spell",
        option_key  = "translate_spell",
        name        = "Закляття й таланти",
        tooltip     = "Назви та описи заклять, здібностей і талантів."
    },
    {
        key         = "npc",
        option_key  = "translate_npc",
        name        = "Персонажі",
        tooltip     = "Імена та теги персонажів."
    },
    {
        key         = "npc_nameplate",
        option_key  = "translate_nameplates",
        parent_key  = "npc",
        sub         = true,
        name        = "Плаваючі фрейми",
        tooltip     = "Імена над головами персонажів."
            .. "\n\nНаявні на екрані фрейми оновляться при наведенні або повторному відображенні."
    },
    {
        key         = "npc_tooltip",
        option_key  = "translate_npc_tooltip",
        parent_key  = "npc",
        sub         = true,
        name        = "Підказки",
        tooltip     = "Ім'я та тег у підказці."
    },
    {
        key         = "npc_target_frame",
        option_key  = "translate_npc_target_frame",
        parent_key  = "npc",
        sub         = true,
        name        = "Фрейм цілі",
        tooltip     = "Ім'я у фреймі цілі."
    },
    {
        key         = "other_tooltip",
        option_key  = "translate_other_tooltips",
        name        = "Решта підказок",
        tooltip     = "Доповнюваний переклад будь-яких розпізнаних написів на підказках: об'єктів, локацій, вказівників тощо."
    },
}

local rows_by_key = {}
for _, row in ipairs(option_rows) do
    if row.key then
        rows_by_key[row.key] = row
    end
end

-- creates an unparented canvas frame with a title and a description;
-- returns the frame and the y offset right below the description
local function create_page_frame(frame_name, page_title, page_desc)
    local l = layout

    local frame = CreateFrame("Frame", frame_name)
    frame.name = page_title
    -- the settings panel re-anchors the frame to fill its canvas, but an explicit size
    -- is needed here so text measuring below works before the frame is ever shown
    frame:SetSize(700, 600)

    local title = frame:CreateFontString("$parent.Title")
    title:SetPoint("TOPLEFT", l.pad_x, l.pad_y)
    title:SetFontObject(fonts.page_title)
    title:SetText(page_title)

    local y = l.pad_y - title:GetHeight() - 8

    local desc = frame:CreateFontString("$parent.Desc")
    desc:SetPoint("TOPLEFT", l.pad_x, y)
    desc:SetWidth(l.text_width)
    desc:SetJustifyH("LEFT")
    desc:SetFontObject(fonts.page_desc)
    desc:SetText(page_desc)

    y = y - desc:GetHeight() - 14

    return frame, y
end

-- a scrollable list area filling the page
local function create_scroll_area(frame, top_y)
    local l = layout

    local scroll = CreateFrame("ScrollFrame", "$parent.Scroll", frame)
    scroll:SetPoint("TOPLEFT", l.pad_x, top_y)
    scroll:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -(l.pad_x + 20), 20)

    local content = CreateFrame("Frame", "$parent.Content", scroll)
    content:SetSize(l.list_width, 10)
    scroll:SetScrollChild(content)

    local scrollbar = CreateFrame("Slider", "$parent.ScrollBar", scroll, "UIPanelScrollBarTemplate")
    scrollbar:SetPoint("TOPLEFT", scroll, "TOPRIGHT", 6, -16)
    scrollbar:SetPoint("BOTTOMLEFT", scroll, "BOTTOMRIGHT", 6, 16)
    scrollbar:SetWidth(16)
    scrollbar:SetValueStep(20)
    scrollbar.scrollStep = 60
    scrollbar:SetValue(0)
    scrollbar:SetScript("OnValueChanged", function (self, value)
        scroll:SetVerticalScroll(value)
    end)

    scroll:EnableMouseWheel(true)
    scroll:SetScript("OnMouseWheel", function (self, delta)
        scrollbar:SetValue(scrollbar:GetValue() - delta * scrollbar.scrollStep)
    end)

    -- the canvas is resized by the settings panel, so the range is recalculated on the fly
    scroll.update_range = function ()
        local range = content:GetHeight() - scroll:GetHeight()
        if range < 0 then
            range = 0
        end
        scrollbar:SetMinMaxValues(0, range)
        if scrollbar:GetValue() > range then
            scrollbar:SetValue(range)
        end
        scrollbar:SetShown(range > 0)
    end
    scroll:SetScript("OnSizeChanged", scroll.update_range)

    return scroll, content
end

local function dropdown_selected(row)
    return options.account[row.option_key] or 1
end

local function set_dropdown_selected(row, index)
    options.account[row.option_key] = index
end

local function checkbox_text(row)
    return row.reload and (row.name .. " |cff808080(/reload)|r") or row.name
end

local function checkbox_checked(row)
    return options.account[row.option_key]
end

local extra_page_frame = nil
local needs_reload = false

local function update_reload_button()
    if extra_page_frame then
        if needs_reload then
            extra_page_frame.reload_button:LockHighlight()
            extra_page_frame.reload_warning:Show()
        else
            extra_page_frame.reload_button:UnlockHighlight()
            extra_page_frame.reload_warning:Hide()
        end
    end

    local main_page_button = options_ui.frame and options_ui.frame.reload_button
    if main_page_button then
        if needs_reload then
            main_page_button:LockHighlight()
        else
            main_page_button:UnlockHighlight()
        end
    end
end

options_ext_ui.mark_needs_reload = function ()
    needs_reload = true
    update_reload_button()
end

local function set_checkbox_value(row, value)
    local is_changed = checkbox_checked(row) ~= value

    options.account[row.option_key] = value

    if row.on_changed then
        row.on_changed()
    end

    if is_changed and row.reload then
        options_ext_ui.mark_needs_reload()
    end
end

local function on_checkbox_click(self)
    set_checkbox_value(rows_by_key[self.row_key], self:GetChecked())
    self.update_row_states()
end

-- rows nest more than one level deep (npc > tooltips > style), so the whole chain is walked
local function is_parent_chain_checked(parent_key)
    local row = parent_key and rows_by_key[parent_key]
    if not row then
        return true
    end
    return checkbox_checked(row) and is_parent_chain_checked(row.parent_key)
end

local function set_widget_dimmed(widget, dimmed)
    if widget.is_dropdown then
        if dimmed then
            UIDropDownMenu_DisableDropDown(widget)
        else
            UIDropDownMenu_EnableDropDown(widget)
        end
        local c = dimmed and 0.4 or 0.6
        widget.label:SetTextColor(c, c, c)
    elseif dimmed then
        widget:Disable()
        widget.Text:SetTextColor(0.5, 0.5, 0.5)
    else
        widget:Enable()
        widget.Text:SetTextColor(1, 1, 1)
    end
end

local function create_extra_page()
    local l = layout

    local frame, y = create_page_frame(
        "ClassicUA_Options_Extra_Frame",
        "Налаштування",
        "Тут можна вимкнути окремі частини перекладу."
    )

    extra_page_frame = frame
    frame.widgets = {}

    -- reload button, sitting on the title line

    local reload_button = CreateFrame("Button", "$parent.Reload", frame, "UIPanelButtonTemplate")
    reload_button:SetPoint("TOPRIGHT", -l.pad_x, l.pad_y)
    reload_button:SetSize(92, 24)
    reload_button:SetText("/reload")
    reload_button:SetScript("OnClick", function ()
        StaticPopup_Show("CLASSICUA_CONFIRM_RELOAD_UI")
    end)
    frames.add_tooltip_for_frame(reload_button, "ANCHOR_LEFT",
        "Перезавантажити інтерфейс гри."
        .. "\n\nНалаштування з позначкою (/reload) діють лише після перезавантаження."
    )
    frame.reload_button = reload_button

    local reload_warning = frame:CreateFontString("$parent.Reload_Warning")
    reload_warning:SetPoint("RIGHT", reload_button, "LEFT", -10, 0)
    reload_warning:SetJustifyH("RIGHT")
    reload_warning:SetFontObject(fonts.content)
    reload_warning:SetTextColor(1, 0.7, 0.2)
    reload_warning:SetText("Потрібне перезавантаження")
    reload_warning:Hide()
    frame.reload_warning = reload_warning

    local function update_row_states()
        for _, w in pairs(frame.widgets) do
            set_widget_dimmed(w, options.account.disable_all_translation
                or not is_parent_chain_checked(w.parent_key))
        end
    end

    -- master switch

    local master_checkbox = frames.create_checkbox_frame(
        frame, "TOPLEFT", l.pad_x, y,
        "Вимкнути переклад",
        options.account.disable_all_translation,
        "Тимчасово вимкнути весь переклад."
            .. "\n\nДеякі зміни будуть помітні лише після перезавантаження.",
        function (self)
            options.account.disable_all_translation = self:GetChecked()
            update_row_states()
            -- fonts and the game' own strings are applied once, at load
            options_ext_ui.mark_needs_reload()
        end
    )
    master_checkbox:SetSize(28, 28)
    master_checkbox.Text:SetFontObject(fonts.master_checkbox)
    frame.master_checkbox = master_checkbox

    y = y - 32

    local separator = frame:CreateTexture(nil, "BACKGROUND")
    separator:SetPoint("TOPLEFT", l.pad_x, y)
    separator:SetSize(l.text_width, 2)
    separator:SetColorTexture(1, 1, 1, 0.15)

    y = y - 10

    -- scrollable option list

    local scroll, content = create_scroll_area(frame, y)

    local column_x, row_y, lowest_y = 0, 0, 0

    for _, row in ipairs(option_rows) do
        if row.column_break then
            if row_y < lowest_y then
                lowest_y = row_y
            end
            column_x, row_y = column_x + l.column_width, 0
        elseif row.group then
            -- breathing room above every group but the first one in its column
            if row_y < 0 then
                row_y = row_y - l.group_gap
            end

            local group_label = content:CreateFontString()
            group_label:SetPoint("TOPLEFT", column_x, row_y - 6)
            group_label:SetFontObject(fonts.group)
            group_label:SetText(row.group)

            row_y = row_y - l.group_height
        elseif row.dropdown then
            -- a dropdown under a sub option is indented one level deeper than one under a group
            local label_x = column_x + (row.sub and 2 * l.indent or l.indent) + 4

            local label = content:CreateFontString()
            label:SetPoint("TOPLEFT", label_x, row_y - 8)
            label:SetFontObject(fonts.content)
            label:SetTextColor(0.6, 0.6, 0.6)
            label:SetText(row.label)

            local dropdown_x = label_x + label:GetStringWidth() + 10

            local dropdown = frames.create_dropdown_frame(
                content, "ClassicUA_Options_Extra_" .. row.dropdown .. "_Dropdown",
                "TOPLEFT", dropdown_x, row_y,
                l.dropdown_width,
                row.values, dropdown_selected(row),
                row.tooltip,
                function (self, index) set_dropdown_selected(row, index) end
            )
            dropdown.is_dropdown = true
            dropdown.label = label
            dropdown.parent_key = row.parent_key
            frame.widgets[row.dropdown] = dropdown

            row_y = row_y - l.dropdown_height
        else
            local checkbox = frames.create_checkbox_frame(
                content, "TOPLEFT", column_x + (row.sub and l.indent or 0), row_y,
                checkbox_text(row),
                checkbox_checked(row),
                row.tooltip,
                on_checkbox_click
            )
            checkbox.row_key = row.key
            checkbox.parent_key = row.parent_key
            checkbox.update_row_states = update_row_states
            frame.widgets[row.key] = checkbox

            row_y = row_y - l.checkbox_height
        end
    end

    if row_y < lowest_y then
        lowest_y = row_y
    end

    content:SetHeight(-lowest_y + 12)
    scroll.update_range()

    -- "OnRefresh" is the Settings api name, "refresh" the legacy InterfaceOptions one
    frame.OnRefresh = function ()
        frame.master_checkbox:SetChecked(options.account.disable_all_translation)
        for _, row in ipairs(option_rows) do
            if row.key then
                frame.widgets[row.key]:SetChecked(checkbox_checked(row))
            elseif row.dropdown then
                local dropdown = frame.widgets[row.dropdown]
                dropdown.selected_index = dropdown_selected(row)
                UIDropDownMenu_SetText(dropdown, row.values[dropdown.selected_index])
            end
        end
        update_row_states()
        scroll.update_range()
    end
    frame.refresh = frame.OnRefresh

    update_row_states()
    update_reload_button()
    return frame
end

-- a label with a read only box next to it, so the value can be selected and copied
local function create_copyable_row(frame, y, label_text, value_text, box_width)
    local l = layout
    local label_width = 160

    local label = frame:CreateFontString()
    label:SetPoint("TOPLEFT", l.pad_x, y - 6)
    label:SetWidth(label_width)
    label:SetJustifyH("LEFT")
    label:SetFontObject(fonts.content)
    label:SetText(label_text)

    local edit_box = CreateFrame("EditBox", nil, frame, "InputBoxTemplate")
    edit_box:SetPoint("TOPLEFT", l.pad_x + label_width, y)
    edit_box:SetSize(box_width or 340, 28)
    edit_box:SetAutoFocus(false)
    edit_box:SetText(value_text)
    edit_box:SetCursorPosition(0)
    edit_box:SetScript("OnEscapePressed", edit_box.ClearFocus)
    edit_box:SetScript("OnEditFocusGained", function (self) self:HighlightText() end)
    -- read only: revert any edit, so the value is always safe to copy
    edit_box:SetScript("OnTextChanged", function (self, is_user_input)
        if is_user_input then
            self:SetText(value_text)
            self:HighlightText()
        end
    end)

    return y - 30
end

local function create_info_page()
    local frame, y = create_page_frame(
        "ClassicUA_Options_Info_Frame",
        "Посилання",
        "Клацніть на посилання, щоб виділити його, а тоді натисніть Ctrl+C."
    )

    local links = {
        { "Словник",                "https://greenya.github.io/ClassicUA/terms/" },
        { "Код аддону",             "https://github.com/greenya/ClassicUA" },
        { "CurseForge",             "https://www.curseforge.com/wow/addons/classicua" },
        { "Переклад (Crowdin)",     "https://crowdin.com/project/classicua" },
        { "Спільнота в Discord",    "https://discord.gg/uGG83AaY3k" },
    }

    for _, link in ipairs(links) do
        y = create_copyable_row(frame, y, link[1], link[2], 460)
    end

    return frame
end

local function create_dev_page()
    local l = layout

    local game_sub_dir_name =
        utils.is_classic and    "_classic_era_" or
        utils.is_tbc and        "_anniversary_" or
                                "_classic_"

    local frame, y = create_page_frame(
        "ClassicUA_Options_Dev_Frame",
        "Розробка",
        addon_table.info.dev_mode_desc
    )

    y = create_copyable_row(frame, y, "Ваш файл з даними:",
        "[тека гри]\\" .. game_sub_dir_name .. "\\WTF\\Account\\[акаунт]\\SavedVariables\\ClassicUA.lua", 460)
    y = create_copyable_row(frame, y, "Наш Discord:", "https://discord.gg/uGG83AaY3k", 460)

    y = y - 8

    frame.dev_mode_checkbox = frames.create_checkbox_frame(
        frame, "TOPLEFT", l.pad_x, y,
        "Режим розробки",
        options.account.dev_mode,
        "Запам'ятовувати відсутні переклади сутностей, які трапляються під час гри."
            .. "\n\nТакож відображає ID у підказках за відсутності перекладу.",
        function (self) options.account.dev_mode = self:GetChecked() end
    )

    y = y - 24

    frame.dev_mode_notify_activity_checkbox = frames.create_checkbox_frame(
        frame, "TOPLEFT", l.pad_x, y,
        "Сповіщення активності",
        options.account.dev_mode_notify_activity,
        "Повідомляти в чат про кожен новий запис.",
        function (self) options.account.dev_mode_notify_activity = self:GetChecked() end
    )

    y = y - 40

    local show_button = CreateFrame("Button", "$parent.Show", frame, "UIPanelButtonTemplate")
    show_button:SetPoint("TOPLEFT", l.pad_x, y)
    show_button:SetSize(140, 26)
    show_button:SetText("Показати дані")
    show_button:SetScript("OnClick", dev_log_ui.open)
    frames.add_tooltip_for_frame(show_button, "ANCHOR_RIGHT",
        "Показати накопичені дані для копіювання з гри."
        .. "\n\nЗа великого обсягу даних може спричинити короткочасне зависання."
    )

    local reset_button = CreateFrame("Button", "$parent.Reset", frame, "UIPanelButtonTemplate")
    reset_button:SetPoint("LEFT", show_button, "RIGHT", 8, 0)
    reset_button:SetSize(110, 26)
    reset_button:SetText("Скинути")
    reset_button:SetScript("OnClick", function ()
        StaticPopup_Show("CLASSICUA_CONFIRM_DEV_LOG_RESET")
    end)
    frames.add_tooltip_for_frame(reset_button, "ANCHOR_RIGHT", "Забути всі накопичені дані.")

    y = y - 42

    -- what has been collected so far, laid out in three columns

    local stats_title = frame:CreateFontString()
    stats_title:SetPoint("TOPLEFT", l.pad_x, y)
    stats_title:SetFontObject(fonts.group)
    stats_title:SetText("Накопичені дані")

    y = y - 24

    local stats = dev_log.get_stats()
    local rows_per_column = math_ceil(#stats / 3)
    frame.stat_values = {}

    for i, stat in ipairs(stats) do
        local column = math_ceil(i / rows_per_column) - 1
        local row = i - column * rows_per_column
        local x = l.pad_x + column * 210
        local row_y = y - (row - 1) * 20

        local name = frame:CreateFontString()
        name:SetPoint("TOPLEFT", x, row_y)
        name:SetFontObject(fonts.content)
        name:SetTextColor(0.6, 0.6, 0.6)
        name:SetText(stat.name)

        local value = frame:CreateFontString()
        value:SetPoint("TOPLEFT", x + 120, row_y)
        value:SetWidth(70)
        value:SetJustifyH("RIGHT")
        value:SetFontObject(fonts.content)
        frame.stat_values[i] = value
    end

    frame.OnRefresh = function ()
        frame.dev_mode_checkbox:SetChecked(options.account.dev_mode)
        frame.dev_mode_notify_activity_checkbox:SetChecked(options.account.dev_mode_notify_activity)

        for i, stat in ipairs(dev_log.get_stats()) do
            local value = frame.stat_values[i]
            if value then
                value:SetText(stat.count > 0 and tostring(stat.count) or "|cff808080—|r")
            end
        end
    end
    frame.refresh = frame.OnRefresh

    return frame
end

local pages = {
    { create_func = create_extra_page },
    { create_func = create_dev_page },
    { create_func = create_info_page },
}

-- opens a subcategory by its index in "pages"
options_ext_ui.open = function (page_index)
    local page = pages[page_index or 1]

    if page.category_id and Settings and Settings.OpenToCategory then
        Settings.OpenToCategory(page.category_id)
    elseif InterfaceAddOnsList_Update and InterfaceOptionsFrame_OpenToCategory then
        InterfaceAddOnsList_Update()
        InterfaceOptionsFrame_OpenToCategory(page.frame)
    else
        dev_log.issue("не визначено способу відкрити вікно додаткових налаштувань аддону")
    end
end

options_ext_ui.refresh = function ()
    for _, page in ipairs(pages) do
        if page.frame and page.frame.OnRefresh then
            page.frame.OnRefresh()
        end
    end
end

-- registers every page as a subcategory of the addon' options category;
-- "parent_category" is nil on clients without the Settings api
options_ext_ui.register_subcategories = function (parent_category, parent_name)
    for _, page in ipairs(pages) do
        if parent_category and Settings and Settings.RegisterCanvasLayoutSubcategory then
            local subcategory = Settings.RegisterCanvasLayoutSubcategory(parent_category, page.frame, page.frame.name)
            page.category_id = subcategory:GetID()
        elseif InterfaceOptions_AddCategory then
            page.frame.parent = parent_name
            InterfaceOptions_AddCategory(page.frame)
        else
            dev_log.issue("не визначено способу додати вікно додаткових налаштувань аддону")
        end
    end
end

options_ext_ui.prepare = function ()
    for _, page in ipairs(pages) do
        page.frame = page.create_func()
    end
end
