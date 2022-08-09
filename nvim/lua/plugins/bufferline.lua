local plugins = require('core.plugins')

plugins.registerPlugin({
	'akinsho/bufferline.nvim',
	tag = "v2.*",
	requires = 'kyazdani42/nvim-web-devicons',
	config = function()
		local plugin = require('bufferline')

		plugin.setup {
			options = {
				show_buffer_icons = false,
				show_buffer_close_icons = false,
				show_buffer_default_icon = false,
				show_close_icon = false,
			}
		}
	end
})

