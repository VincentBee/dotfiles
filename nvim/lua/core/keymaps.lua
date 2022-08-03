_G.keymaps = {
	["<leader>c"] = { ":bdelete<CR>", "Close buffer" },
	["<leader>h"] = { ":noh<CR>", "Clear highlight" },
	["<leader>e"] = { ":NvimTreeToggle<CR>", "Open file explorer" },
	["<leader>w"] = { ":w<CR>", "Save file" },
	["<leader>ps"] = { ":PackerSync<CR>", "Download plugins" },
	["<leader>pw"] = { ":so %<CR>", "Save configuration" },
}

function _G.addKeymap(keymap, command, description)
	_G.keymaps[keymap] = { command, description }
end

