-- ~/.config/nvim/after/plugin/lsp.lua
require("mason").setup()
require('mason-lspconfig').setup()

-- Python
vim.lsp.enable('pyright')

-- Lua
vim.lsp.enable('lua_ls')

-- Rust
vim.lsp.enable('rust_analyzer')

