local status_ok, plugin = pcall(require, "nvim-treesitter.config")
if not status_ok then
	return
end

plugin.setup {
	highlight = {
		enable = true
	},
	autopair = {
		enabled = true
	},
	indent = {
		enable = true
	}
}
