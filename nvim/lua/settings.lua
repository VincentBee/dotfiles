-- display line number
vim.opt.number = true
vim.opt.relativenumber = true
-- use space as a the leader key
vim.g.mapleader = ' '
-- highlight the current line
vim.opt.cursorline = true
-- highlight trailing characters
vim.opt.listchars = { trail = '·' }

-- bindings
vim.api.nvim_set_keymap('n', '<space>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', 'q', ':bd<cr>', { noremap = true })

vim.cmd [[
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set expandtab
  set autoindent
  set smartindent
  set clipboard=unnamedplus
  set list listchars=tab:»·,trail:·
]]

