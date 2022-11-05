vim.opt.termguicolors = true
require( 'colorizer' ).setup()
require("keybindings")
require("treesitter")
require("packer-plugins")
require("tree")
require("lsp")
vim.o.relativenumber = true

vim.cmd("colorscheme tokyonight-night") -- for some reason treesitter highlighting doesn't work properly in some files (svelte, vue) and setting colorscheme to tokyo fixes it. Idk what's that about 🤷
vim.cmd("colorscheme monokai_pro")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
vim.cmd("hi NvimTreeNormal guibg=NONE")
vim.cmd("hi Pmenu guibg=#2b232b")
--vim.cmd("hi PmenuSel guibg=#202020")
--vim.cmd("hi PmenuThumb guibg=#cfd0d7")
vim.cmd("hi TelescopeNormal guibg=NONE")




--vim.g.material_style = "darker"
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
