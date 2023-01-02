local M = {}

local windowId = nil
local bufferId = nil
local n = vim.api
local namespace = n.nvim_create_namespace("vincent")
local entries = {}

function M.log(message)
  local lastMessage = #entries
  for s in message:gmatch("[^\r\n]+") do
    table.insert(entries, s)
  end
  if M.isOpen() then
    n.nvim_buf_set_lines(bufferId, 0, #entries, false, entries)
    local newIndicator = {"new", "vincent"};
    n.nvim_buf_set_extmark(bufferId, namespace, lastMessage, 0, {
      virt_text = {newIndicator},
      virt_text_pos = "right_align",
    })
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
  windowId = nil
  bufferId = nil
end

function M.isOpen()
  return bufferId ~= nil and windowId ~= nil
end

return M
