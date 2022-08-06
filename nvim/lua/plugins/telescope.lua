local plugins = require('core.plugins')
local keymaps = require('core.keymaps')

plugins.registerPlugin({
	'nvim-telescope/telescope.nvim',
	tag = '0.1.0',
	require = { 'nvim-lua/plenary.nvim' }
})

keymaps.addKeymap("<leader>ff", ":Telescope find_files<CR>", "Find files by name");
keymaps.addKeymap("<leader>fg", ":Telescope live_grep<CR>", "Find files by name");


