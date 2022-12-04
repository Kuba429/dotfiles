function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-p>", ":Telescope find_files<Cr>")
map("n", "<C-S-p>", ":Telescope<Cr>")
map("n", "<C-b>", ":NvimTreeToggle<Cr>")
map("n", "<C-S-f>", ":Telescope live_grep<Cr>")
map("n", "y", '"+y')
map("n", "<Cr>", ":noh<Cr>")
map("n", "<space-f>", ":lua vim.lsp.buf.formatting()")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
