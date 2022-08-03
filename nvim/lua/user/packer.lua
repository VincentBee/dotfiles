local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	}
}


return packer.startup(function(use)
	-- Utils
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-surround'

	-- Interface
	use 'navarasu/onedark.nvim'
	use {
  	'kyazdani42/nvim-tree.lua',
  	requires = {
  	  'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use {
		'akinsho/bufferline.nvim',
		tag = "v2.*",
		requires = 'kyazdani42/nvim-web-devicons'
  }
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use { 'folke/which-key.nvim' }

	-- LSP
	use {
    "neovim/nvim-lspconfig",
  }

	-- Treesitter
	use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	for key, plugin in pairs(_G.registeredPlugins) do
		use (plugin)
	end

  if packer_bootstrap then
    require('packer').sync()
  end
end)

