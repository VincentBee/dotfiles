require 'core.plugins'
require 'core.keymaps'
require 'core.search'
local packer = require "core.packer"

require 'plugins.autopairs'
require 'plugins.bufferline'
require 'plugins.cmp'
require 'plugins.comment'
require 'plugins.lspconfig'
require 'plugins.lualine'
require 'plugins.onedark'
require 'plugins.plenary'
require 'plugins.surround'
require 'plugins.telescope'
require 'plugins.tree'
require 'plugins.treesitter'
require 'plugins.which-key'

require "user.options"
require "user.keymaps"

packer.startPacker()

