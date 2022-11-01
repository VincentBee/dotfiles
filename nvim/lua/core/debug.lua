local M = {}
local windowId = nil
local bufferId = nil
local n = vim.api

local entries = {}

function M.log(message)
  table.insert(entries, message)
  if M.isOpen() then
    n.nvim_buf_set_lines(bufferId, 0, #entries, false, entries)
  end
end

function M.toggle()
  if M.isOpen() then
    M.close()
  else
    M.open()
  end
end

function M.open()
  vim.cmd('botright vsplit')
  windowId = n.nvim_get_current_win()
  bufferId = n.nvim_create_buf(false, true)
  n.nvim_win_set_buf(windowId, bufferId)
  n.nvim_buf_set_lines(bufferId, 0, #entries, false, entries)
end

function M.close()
  n.nvim_buf_delete(bufferId, { force = true })
  -- n.nvim_win_close(windowId, true)
  windowId = nil
  bufferId = nil
end

function M.isOpen()
  return bufferId ~= nil and windowId ~= nil
end

return M
