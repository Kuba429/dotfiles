vim.opt.termguicolors = true
require("plugins")
require("colorizer").setup()
require("navigation")
require("treesitter")
require("lsp")
-- require("colors")
require("keybindings")
require("statusline")
require("tabs")
require("tree")
require("icons")
require("files")
require("notes")

-- vim.cmd([[
-- colorscheme oxocarbon
-- hi FloatBorder guifg=1a1a1a
-- ]])

--vim.cmd([[
--colorscheme oh-lucy
--hi NonText guifg=#1e1d22
--hi NvimTreeEndOfBuffer guifg=#1e1d22
--]])

vim.cmd([[
NoMatchParen
hi NvimTreeCursorLine guifg=NONE
set ignorecase smartcase
]])


vim.opt.mouse = 'a'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
--vim.opt.scrolloff=8
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.smartcase = true
vim.wo.number = true
vim.cmd([[
let g:vim_svelte_plugin_use_typescript = 1                                  
let g:vim_svelte_plugin_use_sass = 1
]])

vim.cmd([[
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1
]])

vim.cmd([[
function! ExportColors(scheme_name, ...)

    " Save registers we will use
    let l:a=@a


    redir @a
    silent! hi
    redir END
    new

    " paste in the results of the :hi command, and process it into
    " valid :hi ... commands
    normal gg"ap
    silent! %s/\(\w*\)\s*xxx\s*links to \(\w*\)/hi link \1 \2/ge
    silent! %s/\(\w*\)\s*\(\w*\)\s*cleared/hi clear \1/ge
    silent! %s/\(\w*\)\s*xxx\s*\(.*\)/hi \1 \2/ge

    " Write the colorscheme preamble
    normal gg
    if a:0 > 0
        let @a = a:1
    else
        let @a = "dark"
    endif
    normal iset background="apa
    normal ihi clear
    normal iif exists("syntax_on")
    normal i    syntax reset
    normal iendif

    let @a=a:scheme_name
    normal ilet g:colors_name=""apa"

    " Restore registers we used
    let @a = l:a

endfunction

command! -nargs=+ ExportColors call ExportColors(<q-args>)
]])


