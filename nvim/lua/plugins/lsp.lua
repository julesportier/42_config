return {
	{
		"williamboman/mason.nvim",
		opts = {}
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "clangd" }
		}
	},
	{
		"neovim/nvim-lspconfig",
	}
}
