return {
	'nvim-telescope/telescope.nvim', branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Telescope find_files' },
		{ '<leader>fa', '<cmd>Telescope find_files hidden=true<cr>', desc = 'Telescope find_files hidden' },
		{ '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Telescope live_grep' },
		{ '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Telescope buffers' },
		{ '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Telescope help_tags' },
		{ '<leader>fm', '<cmd>Telescope man_pages<cr>', desc = 'Telescope man_pages' },
		{ '<leader>fk', '<cmd>Telescope keymaps<cr>', desc = 'Telescope keymaps' },
		{ '<leader>fr', '<cmd>Telescope lsp_references<cr>', desc = 'Telescope lsp_references' },
		{ '<leader>fd', '<cmd>Telescope diagnostics<cr>', desc = 'Telescope diagnostics' },
	},
}
