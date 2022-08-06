local plugins = require('core.plugins')

plugins.registerPlugin({
	'terrortylor/nvim-comment',
	config = function()
		local plugin = require('nvim_comment')

		plugin.setup({
			line_mapping = "gcc",
		})
	end
})

