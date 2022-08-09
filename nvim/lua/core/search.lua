local M = {}

M.searchWordUnderCursor = function()
	local telescope = require('telescope.builtin')
	telescope.grep_string({
		search_dirs = ['./src']
	})
end

keymaps.addKeymap(
	require'user.keymaps'.searchWordUnderCursor,
	function() require('core.search').searchWordUnderCursor() end,
	"Under cursor"
);

return M
