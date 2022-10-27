local M = {}
local n = vim.api

M.saveCurrent = function ()
  vim.notify('save current')
  vim.cmd('silent! write!')
end

M.saveAll = function ()
  vim.notify('save all')
  vim.cmd('silent! wall!')
end

M.nextFile = function ()
  vim.notify('next file')
  vim.cmd('bnext')
end

M.previousFile = function ()
  vim.notify('previous file')
  vim.cmd('bprev')
end

M.closeOther = function()
  local buffers = n.nvim_list_bufs()
  local currentBuffer = n.nvim_buf_get_name(0)

  for _, bufferId in pairs(buffers) do
    local bufferName = n.nvim_buf_get_name(bufferId)
    local is_ok = true

    if '' == bufferName then
      is_ok = false
    end

    if not n.nvim_buf_is_loaded(bufferId) then
      is_ok = false
    end

    if (currentBuffer == bufferName) then
      is_ok = false
    end

    if string.match(bufferName, 'NvimTree') then
      is_ok = false
    end

    if is_ok then
      n.nvim_buf_delete(bufferId, {})
    end
  end
end

M.closeAll = function()
  local buffers = n.nvim_list_bufs()

  for _, bufferId in pairs(buffers) do
    local bufferName = n.nvim_buf_get_name(bufferId)
    local is_ok = true

    if '' == bufferName then
      is_ok = false
    end

    if not n.nvim_buf_is_loaded(bufferId) then
      is_ok = false
    end

    if string.match(bufferName, 'NvimTree') then
      is_ok = false
    end

    if is_ok then
      n.nvim_buf_delete(bufferId, {})
    end
  end
end

M.closeCurrent = function()
  n.nvim_buf_delete(0, {})
end

return M
