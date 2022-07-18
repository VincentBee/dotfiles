local options = {
  tabstop = 2,
  shiftwidth = 2,

  number = true,
  relativenumber = true,
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

