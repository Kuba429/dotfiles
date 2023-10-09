local function map(mode, lhs, rhs, opts)
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

map("n", "<space>gg", ":LazyGit<CR>")

map("n", "<Cr>", ":noh<Cr>")
map("n", "<space>lf", ":lua vim.lsp.buf.format()<CR>")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-;>", ":execute 'set showtabline=' . (&showtabline ==# 0 ? 2 : 0)<CR>")
-- harpoon
map("n", "<C-m>", ":Telescope harpoon marks<CR>")
map("n", "<C-h>m", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
map("n", "<C-h>a", ":lua require('harpoon.mark').add_file()<CR>")
map("n", "<C-n>", ":lua require('harpoon.ui').nav_next()<CR>")
map("n", "<C-S-n>", ":lua require('harpoon.ui').nav_prev()<CR>")
map("n", "<C-h>1", ":lua require('harpoon.ui').nav_file(1)<CR>")
map("n", "<C-h>2", ":lua require('harpoon.ui').nav_file(2)<CR>")
map("n", "<C-h>3", ":lua require('harpoon.ui').nav_file(3)<CR>")
map("n", "<C-h>4", ":lua require('harpoon.ui').nav_file(4)<CR>")
map("n", "<C-`>", ":Lspsaga term_toggle<CR>")
map("t", "<C-`>", "<C-\\><C-n>:q<CR>")

-- tmux compatible
map("n", "<space>f", ":Telescope find_files<Cr>")
map("n", "<space>p", ":Telescope<Cr>")
map("n", "<space>e", ":NvimTreeToggle<Cr>")
map("n", "<space>ss", ":Telescope live_grep<Cr>")

map("n", "<C-\\>", ":Lspsaga term_toggle<CR>")
map("t", "<C-\\>", "<C-\\><C-n>:q<CR>")

map("n", "j", "gj")
map("n", "k", "gk")

