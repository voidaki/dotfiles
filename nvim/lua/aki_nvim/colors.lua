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
    ]])

end

ColorMyPencils()
