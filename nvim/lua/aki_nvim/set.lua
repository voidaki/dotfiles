vim.opt.guicursor = ""

vim.cmd([[
  highlight LineNr guibg=NONE
  highlight SignColumn guibg=NONE
  highlight FoldColumn guibg=NONE
  highlight NormalNC guibg=NONE
]])

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 5

vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
