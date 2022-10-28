local M = {}
local n = vim.api

M.saveCurrent = function()
  vim.notify('save current')
  vim.cmd('silent! write!')
end

M.saveAll = function()
  vim.notify('save all')
  vim.cmd('silent! wall!')
end

M.nextFile = function()
  vim.notify('next file')
  vim.cmd('bnext')
end

M.previousFile = function()
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
  local bufferId = n.nvim_get_current_buf()
  local currentBufferName = n.nvim_buf_get_name(bufferId)
  local currentBufferType = n.nvim_buf_get_option(bufferId, 'filetype')
  -- local buffers = n.nvim_list_bufs();
  vim.notify(currentBufferName)
  vim.notify(currentBufferType)

  -- we close the window when the current buffer is not a file
  if currentBufferType == 'help' or currentBufferType == 'qf' then
    vim.cmd('close')
    return
  end

  local buffers = vim.tbl_filter(function(buffer)
    return n.nvim_buf_is_valid(buffer) and n.nvim_buf_get_option(buffer, 'buflisted')
  end, n.nvim_list_bufs())

  -- we close nvim if the current buffer is the last opnend file
  if #buffers < 2 then
    vim.cmd('quitall')
    return
  end

  local windows = n.nvim_list_wins()
  vim.notify(vim.inspect(buffers))
  vim.notify(vim.inspect(windows))

  for index, buffer in ipairs(buffers) do
    if buffer == bufferId then
      local new_focus_index = index + 1 > #buffers and #buffers - 1 or index + 1
      for _, win in ipairs(windows) do
        n.nvim_win_set_buf(win, buffers[new_focus_index])
      end
    end
  end

  n.nvim_buf_delete(bufferId, {})
  --
  -- for _, bufferId in pairs(buffers) do
  --   local bufferName = n.nvim_buf_get_name(bufferId)
  --   local bufferType = n.nvim_buf_get_option(bufferId, 'filetype')
  --   vim.notify(bufferName)
  --   vim.notify(bufferType)
  --   if currentBufferName == bufferName then
  --     -- n.nvim_buf_delete(0, {})
  --     vim.notify('currend buffer found in open files')
  --   else
  --     -- vim.cmd("close")
  --     vim.notify('curr buf not file')
  --   end
  -- end
end

return M
