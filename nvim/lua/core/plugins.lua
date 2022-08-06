local M = {};

M.registeredPlugins = {}

function M.registerPlugin(pluginToRegister)
	table.insert(M.registeredPlugins, pluginToRegister)
end

return M

