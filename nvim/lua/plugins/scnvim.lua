return {
	"davidgranstrom/scnvim",
	lazy = false,
	enabled = true,
	opts = {
		editor = {
			highlight = {
				color = 'grey',
				type = 'fade',
					flash = {
					duration = 30,
					repeats = 0,
				},
				fade = {
					duration = 200,
				},
			},
		},
		statusline = {
			poll_interval = 0.1,
		},
		--snippet = {
		--	engine = {
		--		name = 'luasnip',
		--	},
		--},
		-- To open scdoc in vim, needs an installed document converter 
		--		documentation = {
		--			cmd = "C:/Program Files/Pandoc/pandoc.exe",
		--	},
	}
}
