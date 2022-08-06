local keymaps = require('core.keymaps')
local plugins = require('core.plugins')

plugins.registerPlugin({
	'kyazdani42/nvim-tree.lua',
	requires = {
		'kyazdani42/nvim-web-devicons', -- optional, for file icons
	},
	tag = 'nightly', -- optional, updated every week. (see issue #1193)
	config = function()

		require('nvim-tree').setup({
			sort_by = "case_sensitive",
			view = {
				adaptive_size = true,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})

	end
})

keymaps.addKeymap('<leader>e', ":NvimTreeToggle<CR>", "Open file explorer")
