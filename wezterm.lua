local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

------------------------------
--- System theme following ---
------------------------------
local light_theme = 'Ef-Deuteranopia-Light'
local dark_theme = 'Ef-Deuteranopia-Dark'

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
config.font_size = 15

---------------
--- Tab bar ---
---------------
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-------------------
--- Keybindings ---
-------------------

config.keys = {
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
	{ key = 'h', mods = 'SHIFT|ALT', action = act.ActivateTabRelative(-1) },
	{ key = 'l', mods = 'SHIFT|ALT', action = act.ActivateTabRelative(1) },
}

return config
