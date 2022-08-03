_G.registerPlugin({
	'nvim-telescope/telescope.nvim',
	tag = '0.1.0',
	require = { 'nvim-lua/plenary.nvim' }
})

_G.addKeymap("<leader>ff", ":Telescope find_files<CR>", "Find files by name");



