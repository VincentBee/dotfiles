local common = require'user.lsp.common'

require'lspconfig'.tsserver.setup {
  on_attach = common.on_attach,
  flags = common.lsp_flags,
  capabilities = common.capabilities,
}
