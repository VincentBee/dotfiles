local options = {
  tabstop = 2,
  shiftwidth = 2,
	autoindent = true,
	smartindent = true,
  number = true,
  relativenumber = true,
	cursorline = true,
	wrap = false,
	termguicolors = true,
	winblend = 0,
	background = 'dark',
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

