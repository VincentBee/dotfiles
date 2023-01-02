local M = {}
local ts = require 'nvim-treesitter.ts_utils'

local mainTypes = {
  "export_statement",
  "lexical_declaration",
  "interface_declaration",
  "function_declaration",
}

InArray = function(arr, val)
  for _, value in ipairs(arr) do
    if value == val then
      return true
    end
  end

  return false
end

GetOnOfThisNode = function(node, types)
end

local function getMainNode(node)
  local root = ts.get_root_for_node()
  local parent = node:parent()

  if parent == root then
    return node
  end

  if InArray(mainTypes, node:type()) then
    return node
  end

  return getMainNode(parent)
end

local function getNextMainNode(node)
  local nextNode = ts.get_next_node(node, true, true)
  while nextNode ~= nil and not InArray(mainTypes, nextNode:type()) do
    nextNode = ts.get_next_node(nextNode, true, true)
  end
  return nextNode
end

local function getPreviousMainNode(node)
  local previousNode = ts.get_previous_node(node, true, true)
  while previousNode ~= nil and not InArray(mainTypes, previousNode:type()) do
    previousNode = ts.get_previous_node(previousNode, true, true)
  end
  return previousNode
end

function M.down()
  require'config.debug'.log('test')
  local node = getMainNode(ts.get_node_at_cursor())
  local nextNode = getNextMainNode(node)
  if nextNode then ts.goto_node(nextNode, false, true) end
end

function M.up()
  local node = getMainNode(ts.get_node_at_cursor())
  local previousNode = getPreviousMainNode(node)
  if previousNode then ts.goto_node(previousNode, false, true) end
end

function M.left()
  vim.cmd('normal! b')
  -- if parent if function then to the function
  -- if parent is interface then go to the interface
end

function M.right()
  vim.cmd('normal! w')
  -- if current is function then go to first statement un block
  -- if current is interface then go to the first attribute
end

return M
