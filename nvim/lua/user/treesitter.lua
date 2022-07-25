local status_ok, configs = pcall(require, "nvim-treesitter.config")
if not status_ok then
	return
end

configs.setup {
	highlight = {
		enable = true
	},
	indent = {
		enable = true
	}
}
