vim.opt.termguicolors = true
require("colorizer").setup()
require("navigation")
require("keybindings")
require("treesitter")
require("packer-plugins")
require("tree")
require("lsp")
require("colors")

vim.o.ls = 0
--vim.o.ch = 0
vim.opt.mouse = 'a'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff=8
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.wo.number = true
vim.cmd([[
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:vim_svelte_plugin_use_typescript = 1                                  
let g:vim_svelte_plugin_use_sass = 1
au BufWritePre *.css,*.svelte,*.pcss,*.html,*.ts,*.js,*.jsx,*.tsx,*.astro,*.json PrettierAsync
]])

vim.cmd([[
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1
]])

