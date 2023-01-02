local common = require 'user.lsp.common'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require 'lspconfig'.cssmodules_ls.setup {
  on_attach = function(client, bufnr)
    -- avoid accepting `definitionProvider` responses from this LSP
    client.server_capabilities.definitionProvider = false
    common.on_attach(client, bufnr)
  end,
  init_options = {
    camelCase = 'dashes',
  },
}
