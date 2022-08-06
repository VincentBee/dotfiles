require('core.plugins').registerPlugin({
	'navarasu/onedark.nvim',
	config = function()
		local theme = require('onedark')

		theme.setup {
			style = 'light',
			transparent = true
		}

		theme.load()
	end
})

