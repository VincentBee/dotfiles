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

	for key, plugin in pairs(_G.registeredPlugins) do
		use (plugin)
	end

  if packer_bootstrap then
    require('packer').sync()
  end
end)

