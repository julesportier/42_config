return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function () 
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"lua", "vim", "vimdoc",
				"gitcommit", "gitignore", "git_config", "git_rebase", "diff",
				"c", "make",
				"bash",
				"markdown", "markdown_inline",
				"tmux"
			},
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = false },  
		})
	end
 }
