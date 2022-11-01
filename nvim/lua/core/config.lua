local M = {}

M.reload = function ()
  for name,_ in pairs(package.loaded) do
    if name:match('^user') and not name:match('nvim-tree') then
      package.loaded[name] = nil
    end
    if name:match('^core') and not name:match('nvim-tree') then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
  vim.notify('Nvim configuration reloaded!')
end

return M