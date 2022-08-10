local plugins = require('core.plugins')

plugins.registerPlugin({
	'windwp/nvim-autopairs',
	config = function()
		local plugin = require('nvim-autopairs')

		plugin.setup {}
	end
})

plugins.registerPlugin('windwp/nvim-ts-autotag')

