_G.registerPlugin({
	'terrortylor/nvim-comment',
	config = function()
		require('nvim_comment').setup({
			line_mapping = "gcc",
		})
	end
})

