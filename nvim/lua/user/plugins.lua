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
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-surround'
	use 'terrortylor/nvim-comment'
	use {
		'folke/which-key.nvim',
		config = function()
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
	`	end
	}
  if packer_bootstrap then
    require('packer').sync()
  end
end)

