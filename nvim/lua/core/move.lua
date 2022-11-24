local M = {}
local typescript = require'core.move.typescript'
local text = require'core.move.text'

local group = vim.api.nvim_create_augroup("move", { clear = true })

-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = group,
--   callback = function()
--     vim.notify('BufEnter')
--   end
-- })

vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = 'lua',
  callback = function ()
    local data = {
      buf = vim.fn.expand('<abuf>'),
      file = vim.fn.expand('<afile>'),
      -- type = vim.fn.expand('<amatch>'),
    }
    vim.notify("FileType lua")
    vim.notify(data)
  end
})

function M.down()
  local type = vim.bo.filetype
  vim.notify('move down ' .. type)
  if type == "typescript"      then typescript.down() end
  if type == "typescriptreact" then typescript.down()
  else                              text.down() end
end

function M.up()
  local type = vim.bo.filetype
  vim.notify('move up ' .. type)
  if type == "typescript"      then typescript.up() end
  if type == "typescriptreact" then typescript.up()
  else                              text.up() end
end

function M.left()
  local type = vim.bo.filetype
  vim.notify('move left ' .. type)
  if type == "typescript"      then typescript.left() end
  if type == "typescriptreact" then typescript.left()
  else                              text.left() end
end

function M.right()
  local type = vim.bo.filetype
  vim.notify('move right  ' .. type)
  if type == "typescript"      then typescript.right() end
  if type == "typescriptreact" then typescript.right()
  else                              text.right() end
end

return M
