local M = {}

function M.down()
  vim.cmd('normal! }')
end

function M.up()
  vim.cmd('normal! {')
end

function M.left()
  vim.cmd('normal! b')
end

function M.right()
  vim.cmd('normal! w')
end

return M
