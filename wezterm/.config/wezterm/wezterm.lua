local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	--window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBlock",
	cursor_blink_rate = 800,
	cursor_blink_ease_in = "Linear",
	cursor_blink_ease_out = "Linear",
	animation_fps = 1,
	font = wezterm.font("FiraCode Nerd Font"),
	font_size = 19.0,
	--dpi = 2.0,
	bold_brightens_ansi_colors = "No",
	color_scheme = "Dracula (Official)",
	--colors = {
	--	background = ""
	--}
	window_background_opacity = 0.90,
	macos_window_background_blur = 10,
	--default_prog = { "/bin/zsh", "-c", "tmux attach -t base || tmux new -s base" },

	window_padding = {
		left = "2cell",
		right = "2cell",
		top = "1cell",
		bottom = "1cell",
	},

	colors = {
		background = "#0b0c0e",
		foreground = "#f7f8f2",
		selection_fg = "#434c56",

		cursor_bg = "#ff80bf",
	},

	keys = {
		{
			key = "Enter",
			mod = "OPT",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "Enter",
			mod = "ALT",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "Enter",
			mod = "META",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "h",
			mod = "OPT",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "j",
			mod = "OPT",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "k",
			mod = "OPT",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "l",
			mod = "OPT",
			action = wezterm.action.DisableDefaultAssignment,
		},
	},
}

return config
