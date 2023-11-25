vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- map("n", "<C-p>", ":Telescope find_files<Cr>")
-- map("n", "<C-S-p>", ":Telescope<Cr>")
-- map("n", "<C-b>", ":NvimTreeToggle<Cr>")
-- map("n", "<C-S-f>", ":Telescope live_grep<Cr>")
--
map("n", "<leader>gg", ":LazyGit<CR>")

map("n", "<Cr>", ":noh<Cr>")
map("n", "<leader>lf", ":lua vim.lsp.buf.format()<CR>")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
-- map("n", "<C-;>", ":execute 'set showtabline=' . (&showtabline ==# 0 ? 2 : 0)<CR>")
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
map("n", "-", ":Oil<CR>")
map("t", "<C-`>", "<C-\\><C-n>:q<CR>")

-- buffers
map("n", "H", ":bprevious<cr>")
map("n", "L", ":bnext<cr>")
map("n", "<leader>c", ":silent! bd<cr>")

-- tmux compatible
map("n", "<leader>f", ":Telescope find_files<Cr>")
map("n", "<leader>p", ":Telescope<Cr>")
map("n", "<leader>e", ":NvimTreeToggle<Cr>")
map("n", "<leader>ss", ":Telescope live_grep<Cr>")

map("n", "<C-\\>", ":Lspsaga term_toggle<CR>")
map("t", "<C-\\>", "<C-\\><C-n>:q<CR>")

map("n", "j", "gj")
map("n", "k", "gk")

function previewFile()
    local line = vim.api.nvim_get_current_line()
    local cursor_pos = vim.fn.col('.')
    local opening_pos_paren = string.find(string.sub(line, 1, cursor_pos), "%(")
    local closing_pos_paren = string.find(string.sub(line, cursor_pos), "%)")
    local opening_pos_bracket = string.find(string.sub(line, 1, cursor_pos), "%[")
    local closing_pos_bracket = string.find(string.sub(line, cursor_pos), "%]")
    
    local start_col, end_col
    
    if opening_pos_paren and closing_pos_paren then
        start_col = opening_pos_paren
        end_col = cursor_pos + closing_pos_paren - 1
    elseif opening_pos_bracket and closing_pos_bracket then
        start_col = opening_pos_bracket
        end_col = cursor_pos + closing_pos_bracket - 1
    else
        print("No text between parentheses or square brackets found")
        return
    end
    
    local file_path = string.sub(line, start_col + 1, end_col - 1)
    local command = string.format("qlmanage -p %s", file_path)
    vim.fn.system(command)
end

map("n", "<C-p>", ':lua previewFile()<CR>')
