local status_ok, nvimTree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvimTree.setup {
  view = {
    adaptive_size = true,
  },
  update_focused_file = {
    enable = true,
  },
  diagnostics = {
    enable = false,
  }
}
