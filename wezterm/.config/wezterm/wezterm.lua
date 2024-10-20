local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	--window_decoration = "RESIZE",
	default_cursor_style = "BlinkingBlock",
	font = wezterm.font("FiraCode Nerd Font"),
	font_size = 16.0,
	color_scheme = "Dracula",
}

return config
