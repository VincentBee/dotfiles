local status_ok, plugin = pcall(require, "nvim-tree")
if not status_ok then
	return
end

plugin.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
