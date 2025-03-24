return {
	'lewis6991/gitsigns.nvim',
	config = function()
		require('gitsigns').setup({
			-------------
			-- OPTIONS --
			-------------
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
				delay = 100,
				ignore_whitespace = false,
				virt_text_priority = 100,
				use_focus = true,
			},

			-------------
			-- KEYMAPS --
			-------------
			on_attach = function(bufnr)
				local gitsigns = require('gitsigns')

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- NAVIGATION --
				map('n', ']g', function()
					if vim.wo.diff then
						vim.cmd.normal({']g', bang = true})
					else
						gitsigns.nav_hunk('next')
					end
				end)
				map('n', '[g', function()
					if vim.wo.diff then
						vim.cmd.normal({'[g', bang = true})
					else
						gitsigns.nav_hunk('prev')
					end
				end)

				-- ACTIONS --
				map('n', '<leader>gs', gitsigns.stage_hunk)
				map('v', '<leader>gs', function()
					gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
				end)
				--map('n', '<leader>hr', gitsigns.reset_hunk)
				--map('v', '<leader>hr', function()
				--	gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
				--end)

				map('n', '<leader>gsb', gitsigns.stage_buffer)
				--map('n', '<leader>gR', gitsigns.reset_buffer)
				map('n', '<leader>gp', gitsigns.preview_hunk_inline)

				map('n', '<leader>gb', function()
					gitsigns.blame_line({ full = true })
				end)

				map('n', '<leader>gd', gitsigns.diffthis)

				--map('n', '<leader>hD', function()
				--	gitsigns.diffthis('~')
				--end)

				--map('n', '<leader>hQ', function() gitsigns.setqflist('all') end)
				--map('n', '<leader>hq', gitsigns.setqflist)

				-- TOGGLES --
				map('n', '<leader>gtb', gitsigns.toggle_current_line_blame)
				map('n', '<leader>gtd', gitsigns.toggle_deleted)
				map('n', '<leader>gtw', gitsigns.toggle_word_diff)
			end
		})
	end,
}
