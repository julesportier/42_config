return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "night",
		light_style = "day",
		transparent = false,
	},
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme tokyonight]])
	end,
}
