local _, addon_table = ...

local assets        = addon_table.use("assets") ---@class assets_class
local dev_log       = addon_table.use("dev_log") ---@class dev_log_class
local frames        = addon_table.use("frames") ---@class frames_class
local options       = addon_table.use("options") ---@class options_class
local options_ui    = addon_table.use("options_ui") ---@class options_ui_class
local utils         = addon_table.use("utils") ---@class utils_class

---@class Frame
options_ui.frame = nil

local fonts = {
    header          = QuestFont_Huge,
    content         = SystemFont_Med2,
    addon_title     = SystemFont_Huge2,
    addon_version   = SystemFont_Med3,
}

local function register_static_popup_dialogs()
    StaticPopupDialogs.CLASSICUA_CONFIRM_DEV_LOG_RESET = {
        text        = "Дійсно скинути всі накопичені дані?",
        button1     = "Так",
        button2     = "Ні",
        OnAccept    = dev_log.reset,
        timeout     = 0,
        whileDead   = true,
        hideOnEscape= true
    }

    StaticPopupDialogs.CLASSICUA_CONFIRM_RELOAD_UI = {
        text        = "Дійсно перезавантажити інтерфейс гри?",
        button1     = "Так",
        button2     = "Ні",
        OnAccept    = _G.ReloadUI,
        timeout     = 0,
        whileDead   = true,
        hideOnEscape= true
    }

    StaticPopupDialogs.CLASSICUA_CONFIRM_SETTINGS_RESET = {
        text        = "Дійсно скинути всі налаштування за замовчуванням?\n\n(Відмінювання імен персонажів скинуто не буде.)",
        button1     = "Так",
        button2     = "Ні",
        OnAccept    = options.reset,
        timeout     = 0,
        whileDead   = true,
        hideOnEscape= true
    }
end

-- add options frame to Game' Options -> AddOns
local function register_game_options_category()
    if Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory then
        local category = Settings.RegisterCanvasLayoutCategory(options_ui.frame, options_ui.frame.name)
        Settings.RegisterAddOnCategory(category)
        options_ui.frame.category_id = category:GetID()
    elseif InterfaceOptions_AddCategory then
        InterfaceOptions_AddCategory(options_ui.frame)
    else
        dev_log.issue("не визначено способу додати вікно налаштувань аддону")
    end
end

options_ui.open = function ()
    if Settings and Settings.OpenToCategory then
        Settings.OpenToCategory(options_ui.frame.category_id)
    elseif InterfaceAddOnsList_Update and InterfaceOptionsFrame_OpenToCategory then
        InterfaceAddOnsList_Update()
        InterfaceOptionsFrame_OpenToCategory(options_ui.frame)
    else
        dev_log.issue("не визначено способу відкрити вікно налаштувань аддону")
    end
end

local function register_slash_command()
    _G.SLASH_CLASSICUA_SETTINGS1 = "/ua"
    SlashCmdList.CLASSICUA_SETTINGS = options_ui.open
end

local tree_view_options = {
    row_height          = 20,
    row_offset_x        = 26,
    font_path           = assets.font_frizqt,
    font_size           = 14,
    line_height         = 2,
    progress_bar_width  = 180,
}

local function update_tree_view(row)
    local tvo = tree_view_options

    if row.is_expandable then
        if row.is_expanded then
            local rows_height = 0
            for i, sub_row in ipairs(row.rows) do
                local sub_row_height = update_tree_view(sub_row)
                sub_row.frame:SetPoint("TOPLEFT", 0, -rows_height)
                rows_height = rows_height + sub_row_height
            end

            row.frame.button:SetText("-")
            row.frame.rows:SetHeight(rows_height)
            row.frame.rows:Show()
            row.frame:SetHeight(tvo.row_height + rows_height)
        else
            row.frame.button:SetText("+")
            row.frame.rows:Hide()
            row.frame:SetHeight(tvo.row_height)
        end
    end

    if type(row.on_updated) == "function" then
        row.on_updated(row)
    end

    return row.frame:GetHeight()
end

local function create_tree_view_row(row, root_row, parent_rows_frame)
    local tvo = tree_view_options

    local row_frame = CreateFrame("Frame", "$parent.Row", parent_rows_frame)
    row_frame:SetPoint("TOPLEFT", 0, 0)
    row_frame:SetSize(parent_rows_frame:GetWidth(), tvo.row_height)

    row_frame.root_row = root_row
    row_frame.row = row
    row.frame = row_frame
    row.is_expandable = row.rows and #row.rows > 0

    row_frame.name = row_frame:CreateFontString("$parent.Name")
    row_frame.name:SetPoint("TOPLEFT", 0, -4)
    row_frame.name:SetTextColor(0, 0, 0)
    row_frame.name:SetFont(tvo.font_path, tvo.font_size)
    row_frame.name:SetText(row.name)

    row_frame.line = row_frame:CreateTexture("$parent.Line", "BACKGROUND")
    row_frame.line:SetPoint("TOPLEFT", 0, -tvo.row_height + tvo.line_height)
    row_frame.line:SetPoint("TOPRIGHT", 0, -tvo.row_height + tvo.line_height)
    row_frame.line:SetHeight(tvo.line_height)
    row_frame.line:SetColorTexture(0, 0, 0, 0.11)

    if row.count and row.total then
        row_frame.progress_text = row_frame:CreateFontString("$parent.Count_And_Total")
        row_frame.progress_text:SetPoint("TOPRIGHT", -8, -4)
        row_frame.progress_text:SetTextColor(0, 0, 0)
        row_frame.progress_text:SetFont(tvo.font_path, tvo.font_size-2)
        row_frame.progress_text:SetText(string.format("%i / %i", row.count, row.total))
    end

    if row.total and row.total > 0 then
        local ratio = row.count/row.total

        row_frame.progress_bar = row_frame:CreateTexture("$parent.Progress_Bar", "BACKGROUND")
        row_frame.progress_bar:SetPoint("TOPLEFT", -1 + row_frame:GetWidth() - tvo.progress_bar_width, -tvo.row_height + tvo.line_height)
        row_frame.progress_bar:SetSize(1 + tvo.progress_bar_width * ratio, -tvo.row_height + tvo.line_height)
        row_frame.progress_bar:SetColorTexture(0, 0, 0, 0.08)

        local percent_text = string.format("%.0f%%", 100 * ratio)
        if row.count < row.total and percent_text == "100%" then
            percent_text = "99%"
        end

        row_frame.progress_percent = row_frame:CreateFontString("$parent.Progress_Percent")
        row_frame.progress_percent:SetPoint("TOPRIGHT", -tvo.progress_bar_width + 44, -4)
        row_frame.progress_percent:SetTextColor(0, 0, 0, 0.33)
        row_frame.progress_percent:SetFont(tvo.font_path, tvo.font_size-2)
        row_frame.progress_percent:SetText(percent_text)
    end

    if row == root_row then
        row_frame.root_line = row_frame:CreateTexture("$parent.Root_Line", "BACKGROUND")
        row_frame.root_line:SetPoint("TOPLEFT", -1 + row_frame:GetWidth() - tvo.progress_bar_width, -tvo.row_height)
        row_frame.root_line:SetSize(1 + tvo.progress_bar_width, -tvo.line_height)
        row_frame.root_line:SetColorTexture(0, 0, 0, 0.33)
    end

    if row.is_expandable then
        row.is_expanded = false

        row_frame.name:SetPoint("TOPLEFT", tvo.row_offset_x, -4)
        row_frame.line:SetPoint("TOPLEFT", tvo.row_offset_x, -tvo.row_height + tvo.line_height)

        row_frame.button = CreateFrame("Button", "$parent.Button", row_frame, "UIPanelButtonTemplate")
        row_frame.button:SetPoint("TOPLEFT", 0, 0)
        row_frame.button:SetText("+")
        row_frame.button:SetSize(tvo.row_height + 1, tvo.row_height)

        row_frame.button:SetScript("OnClick", function(self)
            local row_frame = self:GetParent()
            row_frame.row.is_expanded = not row_frame.row.is_expanded
            update_tree_view(row_frame.root_row)
        end)

        row_frame.rows = CreateFrame("Frame", "$parent.Rows", row_frame, "BackdropTemplate")
        row_frame.rows:SetPoint("TOPLEFT", tvo.row_offset_x, -tvo.row_height)
        row_frame.rows:SetSize(parent_rows_frame:GetWidth() - tvo.row_offset_x, 0)

        local y = 0
        for _, sub_row in ipairs(row.rows) do
            create_tree_view_row(sub_row, root_row, row_frame.rows)
        end
    end
end

local function setup_stat_quest_frame(content_frame)
    local root_frame = CreateFrame("Frame", "ClassicUA_Stat_Quest", content_frame)
    root_frame:SetPoint("BOTTOMLEFT", 0, -12)
    root_frame:SetWidth(content_frame:GetWidth() - 42)

    local root_row = addon_table.stat_quest
    create_tree_view_row(root_row, root_row, root_frame)

    root_row.is_expanded = true
    root_row.frame.button:Hide()
    root_row.frame.name:Hide()
    root_row.frame.line:Hide()

    root_row.on_updated = function (row)
        local tvo = tree_view_options

        local row_h = row.frame:GetHeight()
        root_frame:SetPoint("BOTTOMLEFT", 24 - tvo.row_offset_x, tvo.row_height)
        root_frame:SetHeight(row_h - 8)

        if options_ui._update_tab_scrollbar then
            options_ui._update_tab_scrollbar()
        end
    end

    update_tree_view(root_row)
    return root_frame
end

local function setup_stat_count_frame(content_frame)
    local root = CreateFrame("Frame", "ClassicUA_Stat_Count", content_frame)
    root:SetPoint("BOTTOMLEFT", 0, -12)
    root:SetWidth(content_frame:GetWidth())

    local stat_count = addon_table.stat_count
    local rows = {
        col_sizes = { 128 },
        col_aligns= { "LEFT", "RIGHT", "RIGHT",   "RIGHT", "RIGHT", "RIGHT", "RIGHT", "RIGHT" },
                    { "",     "total", "classic", "sod",   "tbc",   "wrath", "cata", "mists", size=112, vert=true },
                    { "quests" },
                    { "books" },
                    { "npcs" },
                    { "items" },
                    { "spells" },
                    { "sod_engravings" },
                    { "objects" },
                    { "zones" },
                    { "chats" },
                    { "gossips" },
                    { "misc" },
        display_text = {
            classic         = "Класична\n(Classic)",
            sod             = "Сезон Відкриттів\n(SOD)",
            tbc             = "Палаючий Похід\n(TBC)",
            wrath           = "Гнів Короля-ліча\n(WOTLK)",
            cata            = "Катаклізм\n(Cataclysm)",
            mists           = "Тумани Пандарії\n(MOP)",

            total           = "Всього",
            quests          = "Завдання",
            books           = "Книжки",
            npcs            = "Персонажі",
            items           = "Предмети",
            spells          = "Заклинання",
            sod_engravings  = "Гравіювання (SOD)",
            objects         = "Об'єкти",
            zones           = "Локації *",
            chats           = "Чати **",
            gossips         = "Плітки **",
            misc            = "Додаткові фрази *",
        },
        display_delta_pos = {
            total   = {-2,12},
            classic = {-6,4},
            sod     = {-6,4},
            tbc     = {-6,4},
            wrath   = {-6,4},
            cata    = {-6,4},
            mists   = {-6,4},
        },
    }

    local default_row_size, default_col_size, default_col_align = 20, 56, "LEFT"
    local start_x, start_y = 24, 0
    local x, y = 0, start_y

    for row_idx, row in ipairs(rows) do
        local row_size = row.size or default_row_size
        x = start_x
        y = y - row_size

        for col_idx, _ in ipairs(rows[1]) do
            local col_size = rows.col_sizes[col_idx] or default_col_size
            local col_align = not row.vert and rows.col_aligns[col_idx] or default_col_align
            local col_name = row[col_idx]
            local col_text = col_name

            if rows.display_text[col_text] then
                col_text = rows.display_text[col_text]
            end

            if not col_text then
                local row_key = rows[1][col_idx]
                local col_key = rows[row_idx][1]
                if stat_count[row_key] and stat_count[row_key][col_key] then
                    col_text = tostring(stat_count[row_key][col_key])
                end
            end

            if col_text and col_text ~= "0" then
                local label = root:CreateFontString()
                label:SetPoint("TOPLEFT", x, y)
                label:SetSize(col_size, row_size)
                label:SetJustifyH(col_align)
                label:SetJustifyV("MIDDLE")
                label:SetFontObject(fonts.content)
                label:SetTextColor(0, 0, 0)
                label:SetText(col_text)

                if row.vert then
                    label:SetRotation(math.rad(90))
                    label:SetSize(row_size, col_size)
                    label:SetJustifyH("CENTER")
                    label:SetPoint("TOPLEFT", x-col_size/2, y+row_size/2)
                end

                if rows.display_delta_pos[col_name] then
                    local _, _, _, px, py = label:GetPoint(1)
                    local delta_pos = rows.display_delta_pos[col_name]
                    label:SetPoint("TOPLEFT", px + delta_pos[1], py + delta_pos[2])
                end
            end

            if row_idx == #rows and col_idx > 3 then
                local vertical_line = root:CreateTexture(nil, "BACKGROUND")
                vertical_line:SetPoint("TOPLEFT", 4 + x, start_y)
                vertical_line:SetSize(2, -y - start_y + row_size)
                vertical_line:SetColorTexture(0, 0, 0, 0.11)
            end

            x = x + col_size
        end

        if row_idx > 1 then
            local horizontal_line = root:CreateTexture(nil, "BACKGROUND")
            horizontal_line:SetPoint("TOPLEFT", start_x, y+1)
            horizontal_line:SetSize(x - start_x, 2)
            horizontal_line:SetColorTexture(0, 0, 0, 0.22)
        end
    end

    local total_column_bar = root:CreateTexture(nil, "BACKGROUND")
    total_column_bar:SetPoint("TOPLEFT", start_x + rows.col_sizes[1], start_y)
    total_column_bar:SetSize(4 + (rows.col_sizes[2] or default_col_size), -y + (rows[#rows].size or default_row_size))
    total_column_bar:SetColorTexture(0, 0, 0, 0.11)

    y = y - default_row_size - 20

    local foot_note = root:CreateFontString()
    foot_note:SetPoint("TOPLEFT", start_x, y)
    foot_note:SetWidth(root:GetWidth() - 2*start_x - 16)
    foot_note:SetFontObject(fonts.content)
    foot_note:SetJustifyH("LEFT")
    foot_note:SetTextColor(0, 0, 0)
    foot_note:SetText(
        "* Локації та додаткові фрази не прив'язані до конкретних доповнень.\n" ..
        "** Чати та плітки відображають кількість персонажів для яких є фрази, а не загальну кількість фраз."
    )

    y = y - foot_note:GetHeight() - 20

    root:SetHeight(-y + 8)
    return root
end

local function setup_player_name_cases_frame(content_frame)
    local root = CreateFrame("Frame", "ClassicUA_Player_Options", content_frame)
    root:SetPoint("BOTTOMLEFT", 0, 0)

    local cases = {
        { "н", "Називний — (Є) Хто? Що?" },
        { "р", "Родовий — (Немає) Кого? Чого?" },
        { "д", "Давальний — (Даю) Кому? Чому?" },
        { "з", "Знахідний — (Бачу) Кого? Що?" },
        { "о", "Орудний — (Пишаюся) Ким? Чим?" },
        { "м", "Місцевий — (Стою) На кому? На чому?" },
        { "к", "Кличний — (Звертання)" }
    }

    local start_x, start_y = 32, -12
    local x, y = start_x, start_y
    local edit_box_width = 236
    local prev_edit_box = nil

    for i, c in ipairs(cases) do
        local case_key = c[1]
        local case_name = c[2]

        local label = root:CreateFontString()
        label:SetPoint("TOPLEFT", x, y - 0)
        label:SetFontObject(fonts.content)
        label:SetTextColor(0, 0, 0)
        label:SetText(case_name)

        local edit_box = CreateFrame("EditBox", nil, root, "InputBoxTemplate")
        edit_box:SetPoint("TOPLEFT", x, y - 4)
        edit_box:SetSize(edit_box_width, 40)
        edit_box:SetAutoFocus(false)
        edit_box:SetMaxLetters(40)

        edit_box:SetText(options.character.name_cases[case_key] or "")
        edit_box:SetCursorPosition(0)
        edit_box.case_key = case_key

        edit_box:SetScript("OnTextChanged", function (self, is_user_input)
            if is_user_input then
                local new_text = string.trim(self:GetText() or "")
                options.character.name_cases[self.case_key] = new_text
            end
        end)

        edit_box:SetScript("OnTabPressed", function (self)
            if edit_box.next_tab_focus then
                edit_box.next_tab_focus:SetFocus()
            end
        end)

        if prev_edit_box then
            prev_edit_box.next_tab_focus = edit_box
        end
        prev_edit_box = edit_box

        y = y - 40
        if i == 4 then
            y = start_y
            x = x + edit_box_width + 32
        end
    end

    root:SetSize(content_frame:GetWidth(), 16 + 4 * 40)
    return root
end

local function setup_dev_mode_frame(content_frame)
    local root = CreateFrame("Frame", "ClassicUA_Dev_Mode_Options", content_frame)
    root:SetPoint("BOTTOMLEFT", 0, 0)

    options_ui.frame.dev_mode_checkbox = frames.create_checkbox_frame(
        root, "TOPLEFT", 24, -8,
        "Режим розробки",
        options.account.dev_mode,
        nil,
        function (self) options.account.dev_mode = self:GetChecked() end
    )

    options_ui.frame.dev_mode_notify_activity_checkbox = frames.create_checkbox_frame(
        root, "TOPLEFT", 24, -32,
        "Сповіщення активності",
        options.account.dev_mode_notify_activity,
        "Сповіщати в чат кожен раз при знаходженні нового відсутнього запису.",
        function (self) options.account.dev_mode_notify_activity = self:GetChecked() end
    )

    local stats_btn = CreateFrame("Button", nil, root, "UIPanelButtonTemplate")
    stats_btn:SetPoint("TOPLEFT", 24, -76)
    stats_btn:SetText("Статистика")
    stats_btn:SetSize(100, 28)
    stats_btn:SetScript("OnClick", function()
        dev_log.print_stats()
    end)

    local reset_btn = CreateFrame("Button", nil, root, "UIPanelButtonTemplate")
    reset_btn:SetPoint("LEFT", stats_btn, "RIGHT", 12, 0)
    reset_btn:SetText("Скинути")
    reset_btn:SetSize(100, 28)
    reset_btn:SetScript("OnClick", function()
        StaticPopup_Show("CLASSICUA_CONFIRM_DEV_LOG_RESET")
    end)

    root:SetSize(content_frame:GetWidth(), 16 + 64 + 28)
    return root
end

options_ui._update_tab_scrollbar = function ()
    local of = options_ui.frame

    if of.current_tab_index == -1 then
        return
    end

    local child_frame = of.tab_child_frames[of.current_tab_index]
    if child_frame then
        local h = of.current_tab.content_tab_base_height + child_frame:GetHeight()
        frames.setup_frame_scrollbar_values(of.current_tab, h, true)
    end
end

options_ui.select_tab = function (tab_index, force_refresh)
    local of = options_ui.frame

    if tab_index == of.current_tab_index and not force_refresh then
        return
    end

    local tab_button = of.tab_buttons[tab_index]

    for _, btn_frame in ipairs(of.tab_buttons) do
        if btn_frame.tab_index ~= tab_button.tab_index then
            btn_frame:UnlockHighlight()
        end
    end

    frames.set_text_frame_content(of.current_tab, tab_button.tab_data.content_title, tab_button.tab_data.content_text)
    of.current_tab.content_tab_base_height = of.current_tab.content:GetHeight()
    of.current_tab_index = tab_button.tab_index
    tab_button:LockHighlight()

    for child_frame_index in pairs(of.tab_child_frames) do
        child_frame = of.tab_child_frames[child_frame_index]
        if child_frame and child_frame_index ~= tab_button.tab_index then
            child_frame:Hide()
        end
    end

    local child_frame = of.tab_child_frames[tab_button.tab_index]
    if child_frame then
        child_frame:Show()
        options_ui._update_tab_scrollbar()
    end
end

local function prepare_options_frame()
    local info = addon_table.info

    options_ui.frame = CreateFrame("Frame", "ClassicUA_Options_Frame")

    -- title & version

    local title_string = options_ui.frame:CreateFontString("$parent.Title")
    title_string:SetPoint("TOPLEFT", 26, -20)
    title_string:SetFontObject(fonts.addon_title)
    title_string:SetText("|cff1177eeClassic|r|cffffdd00UA|r")

    local version_string = options_ui.frame:CreateFontString("$parent.Version")
    version_string:SetPoint("BOTTOMLEFT", title_string, "BOTTOMRIGHT", 10, 1.5)
    version_string:SetFontObject(fonts.addon_version)
    version_string:SetTextColor(.5, .6, .7)
    version_string:SetText(utils.addon_version())

    -- reload button

    local reload_button = CreateFrame("Button", "$parent.Reload", options_ui.frame, "UIPanelButtonTemplate")
    reload_button:SetPoint("TOPRIGHT", -46, -18)
    reload_button:SetText("/reload")
    reload_button:SetSize(92, 24)
    reload_button:SetScript("OnClick", function()
        StaticPopup_Show("CLASSICUA_CONFIRM_RELOAD_UI")
    end)
    reload_button:SetScript("OnEnter", function(self)
        local memory_usage_text = ""
        UpdateAddOnMemoryUsage()
        for i = 1, GetNumAddOns() do
            local name = GetAddOnInfo(i)
            if name == "ClassicUA" then
                local megabytes = GetAddOnMemoryUsage(i) / 1024
                memory_usage_text = string.format("\n\nВикористання пам'яті: %.1f Мб", megabytes)
            end
        end
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText(
            "Перезавантажити інтерфейс гри. Деякі зміни в налаштуваннях будуть помітні лише після такої операції."
            .. memory_usage_text,
            nil, nil, nil, nil, true
        )
    end)
    reload_button:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    -- reset button

    local reset_button = CreateFrame("Button", "$parent.Reset", options_ui.frame, "UIPanelButtonTemplate")
    reset_button:SetPoint("TOPRIGHT", -46, -46)
    reset_button:SetText("Скинути")
    reset_button:SetSize(92, 24)
    reset_button:SetScript("OnClick", function()
        StaticPopup_Show("CLASSICUA_CONFIRM_SETTINGS_RESET")
    end)
    frames.add_tooltip_for_frame(reset_button, "ANCHOR_RIGHT",
        "Скинути всі налаштування за замовчуванням. Деякі зміни будуть помітні лише після перезавантаження інтерфейсу гри."
    )

    -- override_system_fonts

    options_ui.frame.override_system_fonts_checkbox = frames.create_checkbox_frame(
        options_ui.frame, "TOPLEFT", 24, -80,
        "Заміняти стандартні шрифти",
        options.account.override_system_fonts,
        "Заміняти стандартні шрифти на аналогічні з українськими літерами. Інакше деякі літери можуть відображатися некоректно.\n\nРекомендовано вимкнути при використанні іншого аддону для заміни шрифтів.",
        function (self) options.account.override_system_fonts = self:GetChecked() end
    )

    -- translate_nameplates

    options_ui.frame.translate_nameplates_checkbox = frames.create_checkbox_frame(
        options_ui.frame, "TOPLEFT", 24, -80-24,
        "Перекладати плаваючі фрейми",
        options.account.translate_nameplates,
        "Перекладати плаваючі фрейми ворожих та союзних цілей.\n\nНалаштування діє одразу для новостворених фреймів. Для існуючих (на екрані) просто наведіть на них мишкою або поверніть камеру так щоб гра їх оновила.",
        function (self) options.account.translate_nameplates = self:GetChecked() end
    )

    -- tabs

    options_ui.frame.current_tab = CreateFrame("Frame", "$parent.Current_Tab", options_ui.frame, "BackdropTemplate")
    options_ui.frame.current_tab:SetPoint("TOPLEFT", 24, -200)
    options_ui.frame.current_tab:SetSize(600, 364)
    frames.setup_frame_background_and_border(options_ui.frame.current_tab)
    frames.setup_frame_scrollbar_and_content(options_ui.frame.current_tab, {
        title = { font=fonts.header },
        text = { font=fonts.content },
    }, options_ui.frame.current_tab:GetWidth() - 16)

    options_ui.frame.current_tab_index = -1
    options_ui.frame.tab_buttons = {}
    options_ui.frame.tab_child_frames = {}

    -- todo: maybe reorganize tabs: "Статистика" should have sub tabs "Лічильники" and "Завдання"

    for tab_index, tab_data in ipairs({
        {
            title                   = "Персонаж",
            content_title           = "Персонаж: " .. UnitName("player"),
            content_text            = info.player_character_desc,
            child_frame_setup_func  = setup_player_name_cases_frame
        }, {
            title                   = "Розробка",
            content_title           = "Розробка",
            content_text            = info.dev_mode_desc:gsub("@GAME_SUB_DIR", utils.is_classic and "_classic_era_" or "_classic_"),
            child_frame_setup_func  = setup_dev_mode_frame
        }, {
            title                   = "Оновлення",
            content_title           = "Оновлення",
            content_text            = info.changelog
        }, {
            title                   = "Причетні",
            content_title           = "Причетні",
            content_text            = info.contributors
        }, {
            title                   = "Статистика",
            content_title           = "Статистика бази перекладів",
            child_frame_setup_func  = setup_stat_count_frame,
        }, {
            title                   = "Завдання",
            content_title           = "Прогрес перекладу завдань",
            child_frame_setup_func  = setup_stat_quest_frame,
        },
    }) do
        local f = CreateFrame("Button", "$parent.Tab_Button_" .. tab_index, options_ui.frame, "UIPanelButtonTemplate")
        options_ui.frame.tab_buttons[#options_ui.frame.tab_buttons + 1] = f
        f.tab_index = tab_index
        f.tab_data = tab_data
        f:SetSize(92, 32)
        f:SetPoint("BOTTOMLEFT", options_ui.frame.current_tab, "TOPLEFT", -68 + tab_index * f:GetWidth(), -8)
        f:SetText(f.tab_data.title)
        f:SetScript("OnClick", function (self)
            options_ui.select_tab(self.tab_index)
        end)

        options_ui.frame.tab_child_frames[tab_index] = nil
        if tab_data.child_frame_setup_func then
            options_ui.frame.tab_child_frames[tab_index] = tab_data.child_frame_setup_func(options_ui.frame.current_tab.content)
            options_ui.frame.tab_child_frames[tab_index]:Hide()
        end
    end

    options_ui.select_tab(1)

    -- setup options frame details

    options_ui.frame.name = "ClassicUA"
    options_ui.frame.default = options.reset
    options_ui.frame.refresh = function ()
        local of = options_ui.frame
        local oa = options.account
        of.override_system_fonts_checkbox:SetChecked(oa.override_system_fonts)
        of.translate_nameplates_checkbox:SetChecked(oa.translate_nameplates)
        of.dev_mode_checkbox:SetChecked(oa.dev_mode)
        of.dev_mode_notify_activity_checkbox:SetChecked(oa.dev_mode_notify_activity)
    end

    options_ui.frame.refresh()

    -- force tab reselection to fix font rendering issue on game cold start
    options_ui.frame.was_shown_once = false
    options_ui.frame:SetScript("OnShow", function (self)
        if not options_ui.frame.was_shown_once then
            options_ui.frame.was_shown_once = true
            options_ui.select_tab(options_ui.frame.current_tab_index, true)
        end
    end)
end

options_ui.prepare = function ()
    prepare_options_frame()
    register_static_popup_dialogs()
    register_game_options_category()
    register_slash_command()
end
