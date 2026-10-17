local _, addon_table = ...

local entries   = addon_table.use("entries") ---@class entries_class
local options   = addon_table.use("options") ---@class options_class
local subtitles = addon_table.use("subtitles") ---@class subtitles_class
local utils     = addon_table.use("utils") ---@class utils_class

local math_min          = _G.math.min
local string_format     = _G.string.format
local string_trim       = _G.string.trim
local table_sort        = _G.table.sort
local C_CVar            = _G.C_CVar
local C_Timer           = _G.C_Timer
local CreateFrame       = _G.CreateFrame
local Enum              = _G.Enum
local GetTime           = _G.GetTime
local IsMoviePlayable   = _G.IsMoviePlayable
local OpeningCinematic  = _G.OpeningCinematic
local UnitClass         = _G.UnitClass
local UnitLevel         = _G.UnitLevel
local UnitRace          = _G.UnitRace
local UnitXP            = _G.UnitXP
local hooksecurefunc    = _G.hooksecurefunc

local movie_id          -- of the movie that plays; nil for in-engine cinematics
local started_at        -- of the movie or the cinematic
local line_number = 0   -- of the game's subtitle line, counted from the start
local intro_lines       -- our timed lines of the race intro that plays; the game's own lines are hidden meanwhile
local intro_ticker
local shown_intro_text  -- of our timed lines, the one shown now

-- our line takes the box and the font of the game's one; the game's subtitle code is never called
local subtitle_label, subtitle_background

-- ------------
-- [ subtitle line ]
-- ------------

local function update_subtitle_background()
    local background_type = tonumber(C_CVar.GetCVar("movieSubtitleBackground")) -- 1 no background, 2 dark, 3 light

    -- off in the settings, or hidden in the wide aspect ratio (copying clients' UI logic)
    if not background_type or background_type < 2
            or _G.SubtitlesFrame.forcedAspectRatio == Enum.CameraModeAspectRatio.Cinemascope_2_Dot_4_X_1 then
        subtitle_background:Hide()
        return
    end

    local brightness = background_type == 2 and 0 or 1
    subtitle_background:SetColorTexture(brightness, brightness, brightness)
    subtitle_background:SetAlpha((tonumber(C_CVar.GetCVar("movieSubtitleBackgroundAlpha")) or 100) / 100)
    subtitle_background:SetSize(math_min(subtitle_label:GetStringWidth() + 20, 800), math_min(subtitle_label:GetStringHeight() + 15, 138))
    subtitle_background:Show()
end

local function set_subtitle_text(text)
    if not text then
        subtitle_label:Hide()
        subtitle_background:Hide()
        return
    end

    subtitle_label:SetText(text)
    update_subtitle_background()
    subtitle_label:Show()
end

local function show_game_subtitle(is_shown)
    local frame = _G.SubtitlesFrame
    frame.Subtitle1:SetAlpha(is_shown and 1 or 0)
    if not is_shown then
        frame.SubtitleBackground:SetAlpha(0)
    end
end

-- ---------
-- [ intro ]
-- ---------

local function get_intro_lines()
    local data = addon_table.subtitle and addon_table.subtitle.intro
    local _, class_file = UnitClass("player")
    local _, race_file = UnitRace("player")
    local lines = data and (data[class_file] or data[race_file])

    -- the intro plays only to a new character: at its starting level, without experience
    if lines and UnitLevel("player") == (lines.level or 1) and UnitXP("player") == 0 then
        return lines
    end
end

local function update_intro_subtitle()
    -- intro lines are { from, to, text }, in seconds since the cinematic started
    local elapsed = GetTime() - started_at
    local text
    for _, line in ipairs(intro_lines) do
        if elapsed >= line[1] and elapsed < line[2] then
            text = entries.make_text(line[3])
            break
        end
    end

    if text ~= shown_intro_text then
        shown_intro_text = text
        set_subtitle_text(text)
    end
end

-- ----------
-- [ events ]
-- ----------

local function can_translate()
    return options.can_translate("translate_subtitles") and C_CVar.GetCVarBool("movieSubtitle")
end

local function on_stop()
    if intro_ticker then
        intro_ticker:Cancel()
    end
    intro_lines, intro_ticker, shown_intro_text = nil, nil, nil
    movie_id = nil

    set_subtitle_text(nil)
    show_game_subtitle(true)
end

local function on_start(new_movie_id)
    on_stop()

    movie_id = new_movie_id
    started_at = GetTime()
    line_number = 0
end

local function on_cinematic_start(can_be_cancelled)
    on_start()

    -- one that can't be cancelled the usual way is a vehicle's or a scene's (Skyborne intro in Forever Beta), not a race intro
    intro_lines = can_be_cancelled and can_translate() and get_intro_lines()

    if intro_lines then
        intro_ticker = C_Timer.NewTicker(0.1, update_intro_subtitle)
        show_game_subtitle(false)
    end
end

local function find_translation(message)
    local data = addon_table.subtitle
    if not data then
        return
    end

    -- movie lines by their order, the rest by text
    local movie = movie_id and data.movie[movie_id]
    return movie and movie[line_number] or data.text[string_trim(message)]
end

local function on_show_subtitle(message, sender)
    line_number = line_number + 1

    if utils.is_secret(message) or utils.is_secret(sender) or not can_translate() then
        return
    end

    if intro_lines then
        show_game_subtitle(false)
        return
    end

    local text_uk = find_translation(message)
    if text_uk then
        text_uk = entries.make_text(text_uk)
        if sender then
            text_uk = string_format(_G.SUBTITLE_FORMAT, utils.cap(entries.get_glossary_text(sender, sender)), text_uk)
        end
    end

    show_game_subtitle(not text_uk)
    set_subtitle_text(text_uk)
end

local function on_hide_subtitle()
    if not intro_lines then
        set_subtitle_text(nil)
    end
end

-- for the settings: the race intro while the game can replay it, and the client's movies
subtitles.get_cinematics = function ()
    local cinematics = {}

    -- server replays race intro until character gains any experience; death knights can't replay theirs
    if OpeningCinematic and UnitLevel("player") == 1 and UnitXP("player") == 0 then
        cinematics[1] = { name = "Вступ вашої раси", play = OpeningCinematic }
    end

    local movies = addon_table.subtitle and addon_table.subtitle.movie or {}
    local movie_ids = {}
    for id in pairs(movies) do
        movie_ids[#movie_ids + 1] = id
    end

    table_sort(movie_ids, function (a, b)
        local position_a, position_b = movies[a].position, movies[b].position
        return position_a < position_b or position_a == position_b and a < b
    end)

    -- one entry per movie (some ids replay the same one)
    local listed = {}
    for _, id in ipairs(movie_ids) do
        local movie = movies[id]
        if not listed[movie] and (not IsMoviePlayable or IsMoviePlayable(id)) then
            listed[movie] = true
            cinematics[#cinematics + 1] = {
                name = movie.name,
                play = function () _G.MovieFrame_PlayMovie(_G.MovieFrame, id) end,
            }
        end
    end

    return cinematics
end

subtitles.prepare = function ()
    local subtitles_frame = _G.SubtitlesFrame
    subtitle_label = subtitles_frame:CreateFontString(nil, "OVERLAY", "MovieSubtitleFont")
    subtitle_label:SetAllPoints(subtitles_frame.Subtitle1)
    subtitle_background = subtitles_frame:CreateTexture(nil, "ARTWORK")
    subtitle_background:SetPoint("CENTER", subtitle_label)

    -- a movie started by the function itself fires no PLAY_MOVIE, e.g. /run MovieFrame_PlayMovie(MovieFrame, 2)
    hooksecurefunc("MovieFrame_PlayMovie", function (_, id)
        on_start(id)
    end)

    local event_frame = CreateFrame("Frame")
    event_frame:RegisterEvent("PLAY_MOVIE")
    event_frame:RegisterEvent("STOP_MOVIE")
    event_frame:RegisterEvent("CINEMATIC_START")
    event_frame:RegisterEvent("CINEMATIC_STOP")
    event_frame:RegisterEvent("SHOW_SUBTITLE")
    event_frame:RegisterEvent("HIDE_SUBTITLE")
    event_frame:SetScript("OnEvent", function (_, event, ...)
        if event == "PLAY_MOVIE" then
            on_start(...)
        elseif event == "CINEMATIC_START" then
            on_cinematic_start(...)
        elseif event == "STOP_MOVIE" or event == "CINEMATIC_STOP" then
            on_stop()
        elseif event == "SHOW_SUBTITLE" then
            on_show_subtitle(...)
        else
            on_hide_subtitle()
        end
    end)
end
