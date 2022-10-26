local opts = { noremap = true, silent = true }
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

keymap("n", "<leader>p", ":TSPlayground<CR>", opts)
keymap("n", "<leader>ww", ":w<CR>", opts)
keymap("n", "<leader>hh", ":noh<CR>", opts)
keymap("n", "H", ":bprev<CR>", opts)
keymap("n", "L", ":bnext<CR>", opts)

keymap('n', '<leader>fe', ':Telescope file_browser path=%:p:h<CR>', opts)
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>fw', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fd', ':Telescope help_tags<CR>', opts)
keymap('n', '<leader>pr', '<cmd>lua ReloadConfig()<CR>', { noremap = true, silent = false })

vim.keymap.set('n', '<space>co', require'utils.close-buffer'.closeOther, opts)
-- keymap("n", "<leader>co", "<cmd>lua require('utils.close-buffer').closeOther()<CR>", opts)
keymap("n", "<leader>CC", "<cmd>lua require('utils.close-buffer').closeAll()<CR>", opts)
keymap("n", "<leader>cc", "<cmd>lua require('utils.close-buffer').closeCurrent()<CR>", opts)

keymap("n", "vx", "<cmd>lua require('utils.refactoring').selectFunction()<CR>", opts)
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
