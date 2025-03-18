return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		-- flavour = "auto", -- latte, frappe, macchiato, mocha
		-- background = { -- :h background. ``:set background=light``
		-- 	light = "latte",
		-- 	dark = "mocha",
		-- },
		transparent_background = false,
		styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
			-- comments = { "italic" },
			-- conditionals = { "italic" },
			-- loops = {},
			-- functions = {},
			-- keywords = {},
			-- strings = {},
			-- variables = {},
			-- numbers = {},
			-- booleans = {},
			-- properties = {},
			-- types = {},
			-- operators = {},
			-- miscs = {}, -- Uncomment to turn off hard-coded styles
		},
		-- https://catppuccin.com/palette
		color_overrides = {
			mocha = { -- more contrast
				rosewater = "#efc9c2",
				flamingo = "#ebb2b2",
				pink = "#f2a7de",
				mauve = "#b889f4",
				red = "#ea7183",
				maroon = "#ea838c",
				peach = "#f39967",
				yellow = "#eaca89",
				green = "#96d382",
				teal = "#78cec1",
				sky = "#91d7e3",
				sapphire = "#68bae0",
				blue = "#739df2",
				lavender = "#a0a8f6",
				text = "#b5c1f1",
				subtext1 = "#a6b0d8",
				subtext0 = "#959ec2",
				overlay2 = "#848cad",
				overlay1 = "#717997",
				overlay0 = "#63677f", --comments
				surface2 = "#505469",
				surface1 = "#3e4255",
				surface0 = "#2c2f40",
				base = "#1a1c2a",
				mantle = "#141620",
				crust = "#0e0f16",
			},
			-- latte = { --more contrast
			-- 	text = "#3c3e52",
			-- 	peach = "#f45a01",
			-- 	green = "#3a9127",
			-- 	blue = "#0b59f4",
			-- 	lavender = "#5f77fa",
			-- 	--base = "#ffffff", --background
			-- 	--mantle = "#ffffff", --status bar
			-- 	--crust = "#ffffff",
			-- },
			latte = { --more contrast
				-- HSL's Lightness - 10%
				rosewater = "#d26851",
				flamingo = "#d35050",
				pink = "#e34aba",
				mauve = "#6d12e2",
				red = "#a20b2c",
				maroon = "#dc1e2e",
				peach = "#d54f01",
				yellow = "#b07017",
				green = "#307920",
				teal = "#179299",
				sky = "#0382b5",
				sapphire = "#187a8b",
				blue = "#0a4ed6",
				--lavender = "#5d72ea", -- S-20,L-8
				lavender = "#4340fc", -- H+10,L-10
				text = "#36384a",
				subtext1 = "#454759",
				subtext0 = "#555768",
			 	overlay2 = "#636679",
				overlay1 = "#707489",
				overlay0 = "#808599",
				-- colors above not modified
				surface2 = "#acb0be",
				surface1 = "#bcc0cc", -- selection bg, line numbers
				surface0 = "#ccd0da",
				base = "#fcfcfd", -- L+4
				mantle = "#e9ecf1",
				crust = "#dce0e8",
			},
		},
	},
}
