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

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)

M.addKeymap('<leader>c', ":bdelete<CR>", "Close buffer")
M.addKeymap('<leader>h', ":noh<CR>", "Clear highlight")
M.addKeymap('<leader>w', ":w<CR>", "Save file")
M.addKeymap('<leader>c', ":bdelete<CR>", "Close buffer")

M.addKeymap('ww', "viw", "Select word")


return M
