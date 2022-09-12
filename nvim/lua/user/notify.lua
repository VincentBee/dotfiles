M = {}

M.notify = function(msg)
  print(vim.inspect(msg))
end

vim.notify = M.notify


