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

local wk = require("which-key")
wk.register({
  ["<leader>c"] = { ":bdelete<CR>", "Close buffer" },
  ["<leader>e"] = { ":Lexplore<CR>", "Open file explorer" },
  ["<leader>w"] = { ":w<CR>", "Save file" },
  ["<leader>ps"] = { ":PackerSync<CR>", "Download plugins" },
  ["<leader>pw"] = { ":luafile $MYVIMRC<CR>", "Save configuration" },
});

