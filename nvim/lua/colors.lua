vim.cmd([[
source ~/.dotfiles/nvim/monokai_kuba.vim
]])
local Color, colors, Group, groups, styles = require('colorbuddy').setup()

Color.new('background',  '#18191e')
Color.new('foreground',  '#FDFDFD')
Color.new('red',         '#D84B82')
Color.new('green',       '#D3F4AF')
Color.new('yellow',      '#EFDC89')
Color.new('blue',		 '#ADF6ED')
Color.new('orange',		 '#DE9C8A')
Color.new('purple',		 '#BCB7E2')
Color.new('background_comp', '#262830')

Group.new('Function', colors.green, nil, nil)
Group.new('@function.builtin', groups.Function, groups.Function, groups.Function)
Group.new('@function.call', groups.Function, groups.Function, groups.Function)
Group.new('@method.call', colors.blue, nil, nil)
Group.new('@number', colors.purple, nil , nil)
Group.new('@string', colors.yellow, nil , nil)
Group.new('@parameter', colors.foreground, nil , nil)
Group.new('@operator', colors.foreground, nil , nil)
Group.new('@punctuation.special', colors.foreground, nil , styles.bold)
Group.new('@punctuation.bracket', colors.orange, nil , nil)
Group.new('@punctuation.delimiter', colors.foreground, nil , nil)
Group.new('@function.macro', colors.red, nil , styles.bold)
Group.new('@constructor', colors.foreground, nil, styles.bold)
Group.new('@property', colors.foreground, nil, nil)
Group.new('@property.class', colors.red, nil, nil)
Group.new('@property.id', colors.red, nil, nil)
Group.new('@keyword', colors.red, nil, nil)
Group.new('@variable', colors.foreground, nil , nil)
Group.new('@conditional', groups["@keyword"], groups["@keyword"], groups["@keyword"])
Group.new('@include', colors.purple, nil , nil)

Group.new('@constant', colors.blue, nil, styles.bold)
Group.new('@constant.builtin', groups["@constant"], groups["@constant"], groups["@constant"])

Group.new('@tag', colors.red, nil, nil)
Group.new('@tag.delimiter', colors.white, nil, nil)
Group.new('@tag.attribute', colors.green, nil, nil)

--Group.new("@type", colors.red, nil, nil)
Group.new("@type.tag", colors.red, nil, nil)
--Group.new("@namespace", colors.blue, nil, styles.bold)

Group.new('Error', colors.red:light(), nil, styles.bold)

Group.new("LineNr", colors.yellow, nil, styles.bold)
Group.new("LineNrAbove", colors.background:light(), nil, nil)
Group.new("LineNrBelow", colors.background:light(), nil, nil)

Group.new("Normal", colors.foreground, colors.background, nil)
Group.new("NonText", groups.normal, groups.normal, groups.normal)
Group.new("EndOfBuffer", groups.LineNrAbove, groups.normal, groups.normal)
Group.new("Visual", nil, colors.background:light(), nil)
--Group.new("FloatBorder", nil, colors.foreground, nil) -- uncomment when using borders with lsp stuff
--Group.new("NvimTreeNormal", groups.normal, colors.background_comp, nil)

vim.cmd([[
hi Normal guibg=NONE
]])

--vim.cmd("colorscheme monokai_ristretto")
--vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
--vim.cmd("hi LineNr guibg=NONE ctermbg=NONE")
--vim.cmd("hi NvimTreeNormal guibg=NONE")
--vim.cmd("hi TabLineFill guibg=NONE")
--vim.cmd("hi TabLineSel guibg=NONE")
--vim.cmd("hi TelescopeNormal guibg=NONE")
--vim.cmd("hi TabLine guibg=#2e2e2e")
--vim.cmd("hi Visual guibg=#27292c")
--vim.cmd("hi FloatBorder guibg=ffffff")
--vim.cmd("hi NormalFloat guibg=#212121")
--vim.cmd("hi Pmenu guibg=#212121")
--vim.cmd("hi PmenuSel guibg=#202020")
--vim.cmd("hi PmenuThumb guibg=#cfd0d7")

