function ColorMyPencils(color)
	color = color or 'kanagawa'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    vim.cmd([[
    highlight LineNr guibg=NONE
    highlight SignColumn guibg=NONE
    highlight FoldColumn guibg=NONE
    highlight NormalNC guibg=NONE
    highlight Normal guifg=#d8caca
    ]])
end

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        ColorMyPencils()
    end,
})

ColorMyPencils()
