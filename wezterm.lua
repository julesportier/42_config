local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

-------------------
--- Colorscheme ---
-------------------
-- Override default Ef_Deuteranopia_Light colorscheme background to be whiter
local Ef_Deuteranopia_Light_Custom = wezterm.color.get_builtin_schemes()['Ef-Deuteranopia-Light']
Ef_Deuteranopia_Light_Custom.background = '#f9f9ff'
config.color_schemes = {
	['Ef-Deuteranopia-Light-Custom'] = Ef_Deuteranopia_Light_Custom,
}
local light_theme = 'Ef-Deuteranopia-Light-Custom'
local dark_theme = 'Ef-Deuteranopia-Dark'

--- System theme following ---
function scheme_for_appearance(appearance)
	if appearance:find 'Dark' then
		return dark_theme
	else
		return light_theme
	end
end

wezterm.on('window-config-reloaded', function(window, pane)
	local overrides = window:get_config_overrides() or {}
	local appearance = window:get_appearance()
	local scheme = scheme_for_appearance(appearance)
	if overrides.color_scheme ~= scheme then
		overrides.color_scheme = scheme
		window:set_config_overrides(overrides)
	end
end)

-------------
--- Fonts ---
-------------
config.font_size = 16
--config.font = wezterm.font 'Fira Code'
---- Firacode variants
--config.harfbuzz_features = {
--	-- alpha
--	'cv01', 'cv02', 'ss01',
--	-- special
--	'ss05', 'ss03', 'cv31', 'cv29', 'cv30',
--	-- ligatures
--	'ss02',
--}

---------------
--- Tab bar ---
---------------
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

--------------
--- Window ---
--------------
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 3,
	right = 3,
	top = 3,
	bottom = 3,
}

-----------------------------
--- Inactive pane dimming ---
-----------------------------
config.inactive_pane_hsb = {
	saturation = 1,
	brightness = 0.95,
}

-------------------
--- Keybindings ---
-------------------
config.keys = {
	-- Pane switching
	{
		key = 'h', mods = 'ALT',
		action = act.ActivatePaneDirection 'Left',
	},
	{
		key = 'l', mods = 'ALT',
		action = act.ActivatePaneDirection 'Right',
	},
	{
		key = 'k', mods = 'ALT',
		action = act.ActivatePaneDirection 'Up',
	},
	{
		key = 'j', mods = 'ALT',
		action = act.ActivatePaneDirection 'Down',
	},
	-- Pane switching with auto zoom on selected pane
	{
		key = 'k', mods = 'ALT|SHIFT',
		action = act.Multiple{
			act.ActivatePaneDirection 'Up',
			act.SetPaneZoomState(true),
		},
	},
	{
		key = 'j', mods = 'ALT|SHIFT',
		action = act.Multiple{
			act.ActivatePaneDirection 'Down',
			act.SetPaneZoomState(true),
		},
	},
	-- Pane resizing
	{ key = 'h', mods = 'CTRL|SHIFT|ALT', action = act.AdjustPaneSize { 'Left', 3 } },
	{ key = 'l', mods = 'CTRL|SHIFT|ALT', action = act.AdjustPaneSize { 'Right', 3 } },
	{ key = 'k', mods = 'CTRL|SHIFT|ALT', action = act.AdjustPaneSize { 'Up', 3 } },
	{ key = 'j', mods = 'CTRL|SHIFT|ALT', action = act.AdjustPaneSize { 'Down', 3 } },
	-- Tab switching
	{ key = 'h', mods = 'SHIFT|ALT', action = act.ActivateTabRelative(-1) },
	{ key = 'l', mods = 'SHIFT|ALT', action = act.ActivateTabRelative(1) },
	-- New tab
	{ key = 'c', mods = 'SHIFT|ALT', action = act.SpawnTab 'CurrentPaneDomain' },
}

return config
