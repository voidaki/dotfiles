vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", "\"_dp")

vim.keymap.set("n", "<leader>y", "\"+y")

vim.keymap.set('n', '<leader><Tab>', '<C-W>g<Tab>')


local tree_api = require 'nvim-tree.api'
vim.keymap.set('n', "<leader>e", tree_api.tree.toggle)

vim.keymap.set('n', '<leader>w', function()
    tree_api.tree.resize({relative=20})
end)

vim.keymap.set('n', '<leader>s', function()
    tree_api.tree.resize({relative=-20})
end)

vim.keymap.set("n", "<C-/>", function()
    local line = vim.api.nvim_get_current_line()
    if vim.startswith(vim.trim(line), "#") then
        line = line:gsub("^(%s*)#%s?", "%1")
    else
        line = line:gsub("^(%s*)", "%1# ")
    end
    vim.api.nvim_set_current_line(line)
end, { noremap = true, desc = "Toggle # comment" })

-- Visual mode: toggle '#' for each selected line
vim.keymap.set("v", "<C-/>", function()
    -- Get visual selection range
    local start_line = vim.fn.line("v")      -- start of visual selection
    local end_line = vim.fn.line(".")

    -- Make sure start_line <= end_line
    if start_line > end_line then
        start_line, end_line = end_line, start_line
    end

    -- Process lines one by one
    for line_num = start_line, end_line do
        local line = vim.fn.getline(line_num)
        if line:find("^%s*#") then
            -- Uncomment
            line = line:gsub("^(%s*)#%s?", "%1")
        else
            -- Comment
            line = line:gsub("^(%s*)", "%1# ")
        end
        vim.fn.setline(line_num, line)
    end

    -- Reselect the visual block (linewise)
    vim.cmd(string.format("normal! %dGV%dG", start_line, end_line))
end, { noremap = true, desc = "Toggle # comment on visual selection" })
