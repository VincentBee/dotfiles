local M = {}
local n = vim.api

function M.undoAll()
  vim.cmd('undo 1000')
end

function M.saveCurrent()
  vim.notify('save current')
  vim.cmd('silent! write!')
end

function M.saveAll()
  vim.notify('save all')
  vim.cmd('silent! wall!')
end

function M.nextFile()
  vim.notify('next file')
  vim.cmd('bnext')
end

function M.previousFile()
  vim.notify('previous file')
  vim.cmd('bprev')
end

function M.closeOther()
  -- get all buffers with file
  local otherBuffers = vim.tbl_filter(function(buffer)
    return n.nvim_buf_is_valid(buffer) and n.nvim_buf_get_option(buffer, 'buflisted') and buffer ~= n.nvim_get_current_buf()
  end, n.nvim_list_bufs())

  -- preserve all windows by focusing the current buffer
  local windows = n.nvim_list_wins()
  for _, win in ipairs(windows) do
    n.nvim_win_set_buf(win, n.nvim_get_current_buf())
  end

  -- delete other buffers
  for _, bufferId in pairs(otherBuffers) do
    n.nvim_buf_delete(bufferId, { force = true })
  end
end

function M.closeAll()
  -- get all buffers with file
  local buffers = vim.tbl_filter(function(buffer)
    return n.nvim_buf_is_valid(buffer) and n.nvim_buf_get_option(buffer, 'buflisted')
  end, n.nvim_list_bufs())

  local windows = n.nvim_list_wins()
  local newBuffer = n.nvim_create_buf(true, false)
  for _, win in ipairs(windows) do
    n.nvim_win_set_buf(win, newBuffer)
  end

  for _, bufferId in pairs(buffers) do
    n.nvim_buf_delete(bufferId, { force = true })
  end
end

function M.closeCurrent()
  local bufferId = n.nvim_get_current_buf()
  local currentBufferType = n.nvim_buf_get_option(bufferId, 'filetype')

  -- we close the window when the current buffer is not a file
  if currentBufferType == 'help' or currentBufferType == 'qf' then
    vim.cmd('close')
    return
  end

  -- get all buffers with file
  local buffers = vim.tbl_filter(function(buffer)
    return n.nvim_buf_is_valid(buffer) and n.nvim_buf_get_option(buffer, 'buflisted')
  end, n.nvim_list_bufs())

  -- we close nvim if the current buffer is the last opnend file
  if #buffers < 2 then
    vim.cmd('quitall!')
    return
  end

  -- for each window, if the buffer is the deleted buffer, focus the next buffer
  -- in order to prevent it from closing and keep the layout intact
  local windows = n.nvim_list_wins()
  for index, buffer in ipairs(buffers) do
    if buffer == bufferId then
      local new_focus_index = index + 1 > #buffers and #buffers - 1 or index + 1
      for _, win in ipairs(windows) do
        n.nvim_win_set_buf(win, buffers[new_focus_index])
      end
    end
  end

  n.nvim_buf_delete(bufferId, { force = true })
end

return M
