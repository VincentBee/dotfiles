local M = {}

function M.down()
  vim.notify('move down text')
  vim.cmd('normal! }')
end

function M.up()
  vim.notify('move up text')
  vim.cmd('normal! {')
end

function M.left()
  vim.notify('move left text')
  vim.cmd('normal! b')
end

function M.right()
  vim.notify('move right text')
  vim.cmd('normal! w')
end

return M
