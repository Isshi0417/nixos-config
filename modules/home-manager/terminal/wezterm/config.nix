{ pkgs, ... }:

{
  programs.wezterm.extraConfig = ''
    -- ~/.config/wezterm/wezterm.lua
-- See https://wezfurlong.org/wezterm/

-- Add config folder to watchlist for config reloads.
local wezterm = require 'wezterm';
wezterm.add_to_config_reload_watch_list(wezterm.config_dir)

function font_with_fallback(name, params)
    local names = { name, "emoji" }
    return wezterm.font_with_fallback(names, params)
end

local font_name = "monospace"

return {
    -- Font config
    font = font_with_fallback(font_name),
    font_rules = {
        {
            italic = true,
            font = font_with_fallback(font_name, { italic = true })
        },
        {
            italic = true,
            intensity = "Bold",
            font = font_with_fallback(font_name, { bold = true, italic = true })
        },
        {
            intensity = "Bold",
            font = font_with_fallback(font_name, { bold = true })
        }
    },
    font_size = 10,
    line_height = 1.0,
    default_cursor_style = "SteadyUnderline",

    -- Keys
    disable_default_key_bindings = true,
    keys = {
        {
            mods = "CTRL|SHIFT",
            key = [[\]],
            action = wezterm.action {
                SplitHorizontal = { domain = "CurrentPaneDomain" }
            }
        },
        {
            mods = "CTRL",
            key = [[\]],
            action = wezterm.action {
                SplitVertical = { domain = "CurrentPaneDomain" }
            }
        },
        {
            key = "t",
            mods = "CTRL",
            action = wezterm.action { SpawnTab = "CurrentPaneDomain" }
        },
        {
            key = "w",
            mods = "CTRL",
            action = wezterm.action { CloseCurrentTab = { confirm = false } }
        },
        {
            mods = "CTRL",
            key = "Tab",
            action = wezterm.action { ActivateTabRelative = 1 }
        },
        {
            mods = "CTRL|SHIFT",
            key = "Tab",
            action = wezterm.action { ActivateTabRelative = -1 }
        },
        { key = "x", mods = "CTRL", action = "ActivateCopyMode" },
        {
            key = "v",
            mods = "CTRL|SHIFT",
            action = wezterm.action { PasteFrom = "Clipboard" }
        },
        {
            key = "c",
            mods = "CTRL|SHIFT",
            action = wezterm.action { CopyTo = "ClipboardAndPrimarySelection" }
        },
        {
            key = "L",
            mods = "CTRL",
            action = wezterm.action.ShowDebugOverlay
        }
    },
    front_end = "WebGpu",
    enable_wayland = true,
    check_for_updates = false,
    color_scheme = "gruvbox-dark-medium",
    window_padding = { left = "30pt", right = "30pt", top = "30pt", bottom = "30pt" },
    inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
    enable_tab_bar = true,
    use_fancy_tab_bar = false,
    hide_tab_bar_if_only_one_tab = true,
    show_tab_index_in_tab_bar = false,
}
  '';
}