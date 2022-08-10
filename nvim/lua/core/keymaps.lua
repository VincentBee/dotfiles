local M = {}

M.keymaps = {}

function M.addKeymap(keymap, command, description)
	M.keymaps[keymap] = { command, description }
end

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move panel
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Easy move in file
keymap("n", "<S-h>", "b", opts)
keymap("n", "<S-j>", ")", opts)
keymap("n", "<S-k>", "(", opts)
keymap("n", "<S-l>", "w", opts)

keymap("v", "<S-h>", "b", opts)
keymap("v", "<S-j>", ")", opts)
keymap("v", "<S-k>", "(", opts)
keymap("v", "<S-l>", "w", opts)

-- Indent lines
keymap("n", "<", "<<", opts)
keymap("n", ">", ">>", opts)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

M.addKeymap('<leader>c', ":bdelete<CR>", "Close buffer")
M.addKeymap('<leader>h', ":noh<CR>", "Clear highlight")
M.addKeymap('<leader>w', ":w<CR>", "Save file")
M.addKeymap('<leader>c', ":bdelete<CR>", "Close buffer")

M.addKeymap('ww', "viw", "Select word")


return M
