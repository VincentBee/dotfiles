local status_ok, theme = pcall(require, 'onedark')
if not status_ok then
	return
end

require('lualine').setup()

theme.setup {
	style = 'light',
	transparent = true
}

theme.load()

