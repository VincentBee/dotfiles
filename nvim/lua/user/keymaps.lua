local wait = { noremap = true, silent = true }
local nowait = { noremap = true, silent = true, nowait = true }
local key = vim.keymap.set
local file = require 'core.file'
local refactoring = require 'core.refactoring'
local config = require 'config'
local move = require 'core.move'
local screen = require 'core.screen'
local debug = require 'config.debug'

key('', '<Space>', '<Nop>', wait)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- move to the next window on the left
key('n', 'sh', '<C-w>h', wait)
-- move to the next window below
key('n', 'sj', '<C-w>j', wait)
-- move to the next window above
key('n', 'sk', '<C-w>k', wait)
-- move to the next window on the right
key('n', 'sl', '<C-w>l', wait)
-- open the previous file on the window
key('n', 'dh', file.previousFile, wait)
-- open the next file on the window
key('n', 'dl', file.nextFile, wait)
-- create a new window on the left
key('n', 'vh', screen.splitLeft, wait)
-- create a new window below
key('n', 'vj', screen.splitBelow, wait)
-- create a new window above
key('n', 'vk', screen.splitAbove, wait)
-- create a new window on the right
key('n', 'vl', screen.splitRight, wait)
-- close the current window without closing a file
key('n', 'vv', screen.closeScreen, wait)
-- undo all modification on a file
key('n', 'U', file.undoAll, wait)
-- go to the bottom
key('n', 'fj', move.down, wait)
-- go to the top
key('', 'fk', move.up, wait)
-- go to the left
key('', 'fh', move.left, wait)
-- go to the right
key('', 'fl', move.right, wait)

key('', 'fJ', 'G', wait)
key('', 'fK', 'gg', wait)
key('', 'fH', '^', wait)
key('', 'fL', '$', wait)

-- identation
key('n', '<', '<<', wait)
key('n', '>', '>>', wait)
key('v', '<', '<gv', wait)
key('v', '>', '>gv', wait)

key('n', '<leader>pg', ':TSPlayground<CR>', wait)
key('n', '<leader>hh', ':noh<CR>', wait)
key('n', '<leader>pr', config.reload, wait)
key('n', '<leader>pl', debug.toggle, wait)

key('n', 'fe', ':Telescope file_browser path=%:p:h<CR>', wait)
key('n', 'fd', ':Telescope find_files<CR>', wait)
key('n', 'fw', ':Telescope live_grep<CR>', wait)
key('n', 'ff', ':Telescope help_tags<CR>', wait)
key('n', 'fW', ':Telescope grep_string<CR>', wait)

key('n', 'w', file.saveCurrent, nowait)
key('n', 'W', file.saveAll, nowait)
key('n', 'Q', file.closeOther, wait)
-- key('n', 'QQ', file.closeAll, wait)
key('n', 'q', file.closeCurrent, nowait)

key('n', 'vx', refactoring.selectFunction, wait)

key('n', '<space>e', vim.diagnostic.open_float, wait)
key('n', '[d', vim.diagnostic.goto_prev, wait)
key('n', ']d', vim.diagnostic.goto_next, wait)
key('n', '<space>q', vim.diagnostic.setloclist, wait)
