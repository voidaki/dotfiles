require("aki_nvim")

vim.opt.termguicolors = true

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.defer_fn(function()
      ColorMyPencils()
    end, 100) -- Delay 100ms
  end,
})
