require("keybindings")
require("packer-plugins")
require("tree")
require("treesitter")
require("lsp")
vim.o.relativenumber = true

vim.cmd("colorscheme minimal")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
vim.cmd("hi CocFloating guibg=#262627")
vim.cmd("set clipboard=unnamedplus")

vim.o.ls = 0
vim.o.ch = 0
vim.opt.mouse = 'a'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff=8
vim.cmd([[
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:vim_svelte_plugin_use_typescript = 1                                  
let g:vim_svelte_plugin_use_sass = 1
au BufWritePre *.css,*.svelte,*.pcss,*.html,*.ts,*.js,*.jsx,*.tsx,*.json PrettierAsync
]])
