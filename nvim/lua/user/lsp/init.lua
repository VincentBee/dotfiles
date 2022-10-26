require'mason'.setup()
require'mason-lspconfig'.setup({
  ensure_installed = { 'sumneko_lua', 'html', 'cssls', 'tsserver' },
  automatic_installation = true,
})

require'user.lsp.loua'
require'user.lsp.html'
require'user.lsp.css'
require'user.lsp.typescript'
