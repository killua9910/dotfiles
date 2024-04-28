-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

require("events.right-status").setup()

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.color_scheme = "Poimandres"

config.font_size = 19.0
config.line_height = 1.2
config.font = wezterm.font("MonaspiceNe Nerd Font")
config.harfbuzz_features = { "calt", "dlig", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08" }
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.show_new_tab_button_in_tab_bar = true

config.window_padding = {
	left = 30,
	right = 30,
	top = 20,
	bottom = 10,
}
config.native_macos_fullscreen_mode = true
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.7
config.macos_window_background_blur = 10
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.65,
}
config.default_cursor_style = "BlinkingBar"
-- key bindings
config.keys = {
	{
		key = "d",
		mods = "SUPER|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "SUPER",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{ key = "k", mods = "SUPER|SHIFT", action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = "SUPER|SHIFT", action = act.ActivatePaneDirection("Down") },
	{ key = "h", mods = "SUPER|SHIFT", action = act.ActivatePaneDirection("Left") },
	{ key = "l", mods = "SUPER|SHIFT", action = act.ActivatePaneDirection("Right") },
	-- close tab
	{ key = "w", mods = "SUPER|SHIFT", action = act.CloseCurrentTab({ confirm = false }) },
	-- close pane
	{ key = "w", mods = "SUPER", action = act.CloseCurrentPane({ confirm = false }) },
}

-- and finally, return the configuration to wezterm
return config
