return {
	'echasnovski/mini.files',
	dependencies = { 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
	version = false,
	opts = {
		options = {
			permanent_delete = false
		},
	},
	keys = {
		{
			'<leader>es', '<cmd>lua MiniFiles.open()<cr>',
			desc = 'Open mini-files in last used state'
		},
		{
			'<leader>ed', '<cmd>lua MiniFiles.open(nil, false)<cr>',
			desc = 'Open mini-files in cwd'
		},
		{
			'<leader>ee', '<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0), false)<cr>',
			desc = 'Open mini-files in current buffer dir'
		}
	}
 }
