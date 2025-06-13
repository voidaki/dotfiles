-- ~/.config/nvim/after/plugin/lsp.lua
require("mason").setup()

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

require("lspconfig").jedi_language_server.setup {
  capabilities = capabilities,
}

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

require("lspconfig").rust_analyzer.setup {
  capabilities = capabilities,
}

