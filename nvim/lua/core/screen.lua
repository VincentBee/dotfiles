local M = {}

M.splitRight = function ()
  vim.notify('split right')
  vim.cmd('rightbelow vsplit')
end
M.splitLeft = function ()
  vim.notify('split left')
  vim.cmd('leftabove vsplit')
end
M.splitAbove = function ()
  vim.notify('split above')
  vim.cmd('leftabove split')
end
M.splitBelow = function ()
  vim.notify('split below')
  vim.cmd('rightbelow split')
end
M.closeScreen = function ()
  vim.notify('close screen')
  vim.cmd('quit')
end

return M
