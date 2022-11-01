local ts = require 'nvim-treesitter.ts_utils'
local M = {}

M.getFunctionNode = function(node)
  local root = ts.get_root_for_node()
  local parent= node:parent()

  if parent == root then
    return nil
  end

  if node:type() == 'function_declaration' then
    -- find optional export_statement in the same line
    local optionalExport = M.getExportNode(node)

    if optionalExport == nil then
      return node
    else
      return optionalExport
    end
  end

  if node:type() == 'arrow_function' then
    -- find the lexical_declaration
    -- find the optional export_statement
    return node:parent()
  end

  return M.getFunctionNode(parent)
end

M.getExportNode = function(node)
  local root = ts.get_root_for_node()
  local parent= node:parent()
  local line = node:start()
  local parentLine = parent:start()

  if parent == root then
    return nil
  end

  if parentLine ~= line then
    return nil
  end

  if node:type() == 'export_statement' then
    return node;
  end

  return M.getExportNode(parent)
end

M.selectFunction = function()
  local buffer = vim.api.nvim_get_current_buf()
  local node = M.getFunctionNode(ts.get_node_at_cursor())

  if node ~= nil then
    ts.update_selection(buffer, node)
  end
end

return M
