require('core.plugins').registerPlugin({
	'nvim-treesitter/nvim-treesitter',
	run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	config = function()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = {
				"typescript",
				"javascript",
				"html",
				"css",
				"lua"
			},
			sync_install = true,
			auto_install = true,
			highlight = {
				enable = true
			},
			autopair = {
				enable = true
			},
			autotag = {
				enable = true,
			},
			indent = {
				enable = true
			}
		}
	end

})

