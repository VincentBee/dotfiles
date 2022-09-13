local ts = require 'nvim-treesitter.ts_utils'
local M = {}

M.getFunctionNode = function(node)
  local root = ts.get_root_for_node()
  local parent= node:parent()

  if parent == root then
    return nil
  end

  if node:type() == 'function_declaration' then
    return node
  end

  if node:type() == 'arrow_function' then
    return node:parent()
  end

  return M.getFunctionNode(parent)
end

M.selectFunction = function()
  local buffer = vim.api.nvim_get_current_buf()
  local node = M.getFunctionNode(ts.get_node_at_cursor())

  if node ~= nil then
    ts.update_selection(buffer, node)
  end
end

return M
