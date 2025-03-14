return {
	"davidgranstrom/scnvim",
	lazy = false,
	enabled = true,
	keys = {
		{
			'<leader>ss',
			function() require('scnvim').start() end,
			desc = 'SCNvimStart',
		},
		{
			'<leader>sq',
			function() require('scnvim').stop() end,
			desc = 'SCNvimStop',
		},
		-- Same mapping as scide default <cmd + .> keybinding
		{
			'<M-f>',
			mode = {'i', 'n'},
			function()
				require('scnvim.sclang').send('TempoClock.cmdPeriod; s.freeAll;')
			end,
			desc = 'Supercollider freeAll & free TempoClock',
		},
		{
			'<M-e>',
			mode = {'i', 'n'},
			function() require('scnvim.editor').send_line() end,
			desc = 'Supercollider send_line',
		},
		{
			'<C-e>',
			mode = {'i', 'n'},
			function() require('scnvim.editor').send_block() end,
			desc = 'Supercollider send_block',
		},
		{
			'<C-e>',
			mode = {'x'},
			function() require('scnvim.editor').send_selection() end,
			desc = 'Supercollider send_selection',
		},
		--['<CR>'] = scnvim.map('postwin.toggle'),
		--['<M-CR>'] = scnvim.map('postwin.toggle', 'i'),
		--['<M-l>'] = scnvim.map('postwin.clear', {'n', 'i'}),
		--['<C-k>'] = scnvim.map('signature.show', {'n', 'i'}),
		--['<F12>'] = scnvim.map('sclang.hard_stop', {'n', 'x', 'i'}),
		--['<leader>sc'] = scnvim.map(scnvim.recompile),
		-- ['<F1>'] = scnvim.map_expr('s.boot'),
		-- ['<F2>'] = scnvim.map_expr('s.meter'),
	},
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
