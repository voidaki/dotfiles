require("bufferline").setup{
    options = {
        mode = "buffers",
        diagnostics = "nvim_lsp",
        themable = true,
        indicator = {
            style = "underline",
            sp = "#c70039",
        },
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true,
            },
        },
        separator_style = "",
    },
    highlights = {
        buffer_selected = {
            italic = true,
            bold = true,
        },
        diagnostic_selected = {
            bold = true,
            italic = true,
        }
    }
}
