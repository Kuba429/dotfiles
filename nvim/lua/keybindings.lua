function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-p>", ":FzfLua files<Cr>")
map("n", "<C-S-p>", ":FzfLua<Cr>")
map("n", "<Space>", ":noh<Cr>")
map("n", "<C-b>", ":NvimTreeToggle<Cr>")
map("n", "<C-S-f>", ":FzfLua grep<Cr>")
vim.cmd([[
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])
