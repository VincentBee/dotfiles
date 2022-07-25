local lspconfig = require("lspconfig")

require("mason").setup()

lspconfig.tsserver.setup{}

