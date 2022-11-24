local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

treesitter.setup {
  ensure_installed = {
    "typescript",
    "javascript",
    "html",
    "css",
  },
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
  },
  autopair = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  playground = {
    enabled = true,
  }
}
