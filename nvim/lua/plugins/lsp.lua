return {
	{
		"williamboman/mason.nvim",
		opts = {}
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "clangd" },
			handlers = {
				function(clangd)
					require('lspconfig').clangd.setup{}
				end,
			}
		}
	},
	{
		"neovim/nvim-lspconfig",
	}
}
