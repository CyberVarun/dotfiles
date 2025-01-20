-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("MesloLGM Nerd Font Mono")
config.font_size = 13

config.color_scheme = "Brogrammer (Gogh)"

config.default_prog = { "/bin/tmux", "-u" }

config.initial_rows = 32
config.initial_cols = 122

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
-- config.enable_wayland = false   -- Uncomment for WezTerm support on Hyprland.

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

-- and finally, return the configuration to wezterm
return config
