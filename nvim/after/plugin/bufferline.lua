local bufferline = require('bufferline')
vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        style_preset = bufferline.style_preset.default,
        themable = true,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true,
            },
        },
        separator_style = "thin",
    },
}
