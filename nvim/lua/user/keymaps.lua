local opts = { noremap = true, silent = true }
local key = vim.keymap.set
local file = require 'core.file'
local refactoring = require 'core.refactoring'
local config = require 'core.config'
local move = require 'core.move'
local screen = require 'core.screen'
local debug = require 'core.debug'

key('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- move to the next window on the left
key('n', 'sh', '<C-w>h', opts)
-- move to the next window below
key('n', 'sj', '<C-w>j', opts)
-- move to the next window above
key('n', 'sk', '<C-w>k', opts)
-- move to the next window on the right
key('n', 'sl', '<C-w>l', opts)
-- open the previous file on the window
key('n', 'dh', file.previousFile, opts)
-- open the next file on the window
key('n', 'dl', file.nextFile, opts)
-- create a new window on the left
key('n', 'vh', screen.splitLeft, opts)
-- create a new window below
key('n', 'vj', screen.splitBelow, opts)
-- create a new window above
key('n', 'vk', screen.splitAbove, opts)
-- create a new window on the right
key('n', 'vl', screen.splitRight, opts)
-- close the current window without closing a file
key('n', 'vv', screen.closeScreen, opts)
-- undo all modification on a file
key('n', 'U', file.undoAll, opts)
-- go to the bottom
key('n', 'gj', move.down, opts)
-- go to the top
key('', 'gk', move.up, opts)
-- go to the left
key('', 'gh', move.left, opts)
-- go to the right

key('', 'fJ', 'G', opts)
key('', 'fK', 'gg', opts)
key('', 'fH', '^', opts)
key('', 'fL', '$', opts)

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
key('n', 'ff', ':Telescope help_tags<CR>', opts)
key('n', 'pr', config.reload, opts)
key('n', 'pl', debug.toggle, opts)

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
