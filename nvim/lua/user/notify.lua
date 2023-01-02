M = {}
local debug = require'config.debug'

M.notify = function(msg)
  -- print(vim.inspect(msg))
  debug.log(vim.inspect(msg))
end

vim.notify = M.notify

