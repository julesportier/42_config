local function map(mode, key, cmd, opts)
	opts = opts or {}
	vim.keymap.set(mode, key, cmd, opts)
end

local scnvim = require('scnvim')
local postwin = require('scnvim.postwin')
local function sclang_send(cmd)
	require('scnvim.sclang').send(cmd)
end
local function editor_send(cmd)
	require('scnvim.sclang').send(cmd)
end

---------------------
-- SCNvim commands --
---------------------
map('n', '<leader>ss', scnvim.start, {desc = 'SCNvimStart'})
map('n', '<leader>sq', scnvim.stop, {desc = 'SCNvimStop'})

-------------
-- Postwin --
-------------
map('n', '<leader>s<CR>', postwin.toggle, {desc = 'SCNvim postwin toggle'})

------------
-- Server --
------------
map(
	'n', '<M-f>',
	function() sclang_send('TempoClock.cmdPeriod; s.freeAll;') end,
	{desc = 'Supercollider freeAll & free TempoClock'}
)
map('n', '<M-q>', function() sclang_send('s.quit') end, {desc = 's.quit'})

---------------
-- Send code --
---------------
map(
	'n', '<M-e>',
	function() editor_send.send_line() end,
	{desc = 'Supercollider send_line'}
)
map(
	'n', '<C-e>', 
	function() editor_send.send_block() end,
	{desc = 'Supercollider send_block'}
)
map(
	'x', '<C-e>', 
	function() editor_send.send_selection() end,
	{desc = 'Supercollider send_selection'}
)
--['<M-l>'] = scnvim.map('postwin.clear', {'n', 'i'}),
--['<C-k>'] = scnvim.map('signature.show', {'n', 'i'}),
--['<F12>'] = scnvim.map('sclang.hard_stop', {'n', 'x', 'i'}),
--['<leader>sc'] = scnvim.map(scnvim.recompile),
-- ['<F1>'] = scnvim.map_expr('s.boot'),
-- ['<F2>'] = scnvim.map_expr('s.meter'),
