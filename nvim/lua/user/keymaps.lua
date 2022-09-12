local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<", "<<", opts)
keymap("n", ">", ">>", opts)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>ww", ":w<CR>", opts)
keymap("n", "<leader>hh", ":noh<CR>", opts)
keymap("n", "H", ":bprev<CR>", opts)
keymap("n", "L", ":bnext<CR>", opts)

keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>fw', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fn', ':Telescope notify<CR>', opts)
keymap('n', '<leader>fd', ':Telescope help_tags<CR>', opts)
keymap('n', '<leader>pr', '<cmd>lua ReloadConfig()<CR>', { noremap = true, silent = false })

keymap("n", "<leader>co", "<cmd>lua require('utils.close-buffer').closeOther()<CR>", opts)
keymap("n", "<leader>ca", "<cmd>lua require('utils.close-buffer').closeAll()<CR>", opts)
keymap("n", "<leader>cc", "<cmd>lua require('utils.close-buffer').closeCurrent()<CR>", opts)
-- keymap("n", "<leader>cc", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

keymap("n", "vx", "<cmd>lua require('utils.refactoring').selectFunction()<CR>", opts)
