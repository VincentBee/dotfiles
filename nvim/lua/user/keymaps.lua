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
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>c", ":bdelete<CR>", opts)
keymap("n", "<leader>h", ":noh<CR>", opts)
keymap("n", "H", ":bprev<CR>", opts)
keymap("n", "L", ":bnext<CR>", opts)

keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>fw', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fn', ':Telescope notify<CR>', opts)
keymap('n', '<leader>pr', '<cmd>lua ReloadConfig()<CR>', { noremap = true, silent = false })
