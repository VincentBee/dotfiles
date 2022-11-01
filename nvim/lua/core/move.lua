local M = {}
local typescript = require'core.move.typescript'
local text = require'core.move.text'

function M.down()
  local type = vim.bo.filetype
  if type == "typescript"      then typescript.down() end
  if type == "typescriptreact" then typescript.down()
  else                              text.down() end
end

function M.up()
  require'core.debug'.log('up' .. vim.bo.filetype)
  local type = vim.bo.filetype
  if type == "typescript"      then typescript.up() end
  if type == "typescriptreact" then typescript.up()
  else                              text.up() end
end

function M.left()
  local type = vim.bo.filetype
  if type == "typescript"      then typescript.left() end
  if type == "typescriptreact" then typescript.left()
  else                              text.left() end
end

function M.right()
  local type = vim.bo.filetype
  if type == "typescript"      then typescript.right() end
  if type == "typescriptreact" then typescript.right()
  else                              text.right() end
end

return M
