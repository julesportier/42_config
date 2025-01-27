-------------
-- OPTIONS --
-------------
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Always keep 5 lines below and above the cursor
vim.opt.scrolloff = 5

-- Create splits to the right and below
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.breakindent = true
vim.opt.showbreak = '++> '
-- Set tabulation length to 4 !! induce autoindent bugs
--vim.opt.tabstop = 4
--vim.opt.shiftwidth = 4
-- Show non printable chars
--vim.opt.list = true

-- Save undo history
vim.opt.undofile = true
-- Decrease swap file update time (when nothing is typed)
vim.opt.updatetime = 500
-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  See `:help 'clipboard'`
vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)


--------------------
-- CUSTOM KEYMAPS --
--------------------
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')


-------------
-- PLUGINS --
-------------
require("config.lazy")
-- set colorsheme after config
vim.cmd.colorscheme "catppuccin"


----------------
-- LSP CONFIG --
----------------
vim.opt.signcolumn = 'yes'
--vim.api.nvim_create_autocmd('LspAttach', {
--	desc = 'LSP actions',
--	callback = function(event)
--		local opts = {buffer = event.buf}
--
--		-- Defaults keybindings --
--		vim.keymap.set('n', '<C-]>', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
--		vim.keymap.set({'n', 'x'}, 'gq', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
--		vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
--		vim.keymap.set('n', 'grn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
--		vim.keymap.set('n', 'gra', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
--		vim.keymap.set('n', 'grr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
--		vim.keymap.set('n', 'gri', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
--		vim.keymap.set('n', 'gO', '<cmd>lua vim.lsp.buf.document_symbol()<cr>', opts)
--		vim.keymap.set('i', '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
--		--------------------------
--		--vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
--		--vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
--		--vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
--	end,
--})


---------------------
-- PLUGINS KEYMAPS --
---------------------
-- Telescope bindings
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
--vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
