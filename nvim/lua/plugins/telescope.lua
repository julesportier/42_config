return {
	'nvim-telescope/telescope.nvim', branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Telescope find_files' },
		{ '<leader>fa', '<cmd>Telescope find_files hidden=true<cr>', desc = 'Telescope find_files hidden' },
		{ '<leader>fs', '<cmd>Telescope live_grep<cr>', desc = 'Telescope live_grep' },
		{ '<leader>fw', '<cmd>Telescope grep_string<cr>', mode = {'n', 'v'}, desc = 'Telescope grep_string' },
		{ '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Telescope buffers' },
		{ '<leader>fhv', '<cmd>Telescope help_tags<cr>', desc = 'Telescope help_tags' },
		{ '<leader>fhm', '<cmd>Telescope man_pages<cr>', desc = 'Telescope man_pages' },
		{ '<leader>fhk', '<cmd>Telescope keymaps<cr>', desc = 'Telescope keymaps' },
		{ '<leader>fgs', '<cmd>Telescope git_status<cr>', desc = 'Telescope git_status' },
		{ '<leader>fgc', '<cmd>Telescope git_commits<cr>', desc = 'Telescope git_commits' },
		{ '<leader>fgbc', '<cmd>Telescope git_bcommits<cr>', desc = 'Telescope git_bcommits' },
		{ '<leader>flr', '<cmd>Telescope lsp_references<cr>', desc = 'Telescope lsp_references' },
		{ '<leader>fld', '<cmd>Telescope diagnostics<cr>', desc = 'Telescope diagnostics' },
	},
}
