local lspconfig = require("lspconfig")

lspconfig.tsserver.setup{
  on_attach = function(client, bufnr)
		local bufopts = { noremap=true, silent=true, buffer=bufnr } 
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	end,
}
