require('core.plugins').registerPlugin({
	'folke/which-key.nvim',
	config = function()
		local wk = require("which-key")
		local coreKeymaps = require('core.keymaps')
		wk.register(coreKeymaps.keymaps)
	end
})

