local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Gruvbox dark, medium (base16)'
config.font = wezterm.font 'GohuFont 14 Nerd Font Mono'

return config