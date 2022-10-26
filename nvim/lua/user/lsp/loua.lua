local common = require'user.lsp.common'

require'lspconfig'.sumneko_lua.setup {
  on_attach = common.on_attach,
  flags = common.lsp_flags,
  capabilities = common.capabilities,
}
