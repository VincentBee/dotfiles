local opts = { noremap = true, silent = true }
local imediate = { noremap = true, silent = true, nowait = true }
local key = vim.keymap.set
local file = require 'utils.file'
local refactoring = require 'utils.refactoring'
local config = require 'utils.config'
local screen = require 'utils.screen'

key('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- window change
key('n', 'sh', '<C-w>h', opts)
key('n', 'sj', '<C-w>j', opts)
key('n', 'sk', '<C-w>k', opts)
key('n', 'sl', '<C-w>l', opts)
key('n', 'dh', file.previousFile, opts)
key('n', 'dl', file.nextFile, opts)
key('n', 'vj', screen.splitBelow, opts)
key('n', 'vk', screen.splitAbove, opts)
key('n', 'vl', screen.splitRight, opts)
key('n', 'vh', screen.splitLeft, opts)
key('n', 'vv', screen.closeScreen, opts)

-- fast moves
key('', 'fj', '<C-d>', imediate)
key('', 'fjj', 'G', imediate)
key('', 'fk', '<C-u>', imediate)
key('', 'fkk', 'gg', imediate)
key('', 'fh', 'B', imediate)
key('', 'fhh', '^', imediate)
key('', 'fl', 'w', imediate)
key('', 'fll', '$', imediate)

-- identation
key('n', '<', '<<', opts)
key('n', '>', '>>', opts)
key('v', '<', '<gv', opts)
key('v', '>', '>gv', opts)

key('n', '<leader>p', ':TSPlayground<CR>', opts)
key('n', '<leader>hh', ':noh<CR>', opts)

key('n', 'fe', ':Telescope file_browser path=%:p:h<CR>', opts)
key('n', 'fd', ':Telescope find_files<CR>', opts)
key('n', 'fw', ':Telescope live_grep<CR>', opts)
key('n', 'pr', config.reload, opts)

key('n', 'w', file.saveCurrent, opts)
key('n', 'ww', file.saveAll, opts)
key('n', 'qo', file.closeOther, opts)
key('n', 'qq', file.closeAll, opts)
key('n', 'q', file.closeCurrent, opts)

key('n', 'vx', refactoring.selectFunction, opts)

key('n', '<space>e', vim.diagnostic.open_float, opts)
key('n', '[d', vim.diagnostic.goto_prev, opts)
key('n', ']d', vim.diagnostic.goto_next, opts)
key('n', '<space>q', vim.diagnostic.setloclist, opts)
