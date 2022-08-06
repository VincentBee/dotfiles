local M = {}

M.keymaps = {}

function M.addKeymap(keymap, command, description)
	M.keymaps[keymap] = { command, description }
end

return M

