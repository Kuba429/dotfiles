vim.opt.termguicolors = true
require("plugins")
require("colorizer").setup()
require("navigation")
require("treesitter")
require("lsp")
--require("colors")
require("keybindings")
require("statusline")
require("tabs")
require("tree")
require("icons")

vim.cmd([[
colorscheme oxocarbon
hi FloatBorder guifg=1a1a1a
]])

vim.opt.mouse = 'a'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
--vim.opt.scrolloff=8
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.wo.number = true
vim.cmd([[
let g:vim_svelte_plugin_use_typescript = 1                                  
let g:vim_svelte_plugin_use_sass = 1
]])

vim.cmd([[
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1
]])
