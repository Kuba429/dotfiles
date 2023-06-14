local my_colors = {
	background         = '#121212',
	background_lighter = '#6f6f6f',
	foreground	     = '#FDFDFD',
	red                = '#D84B82',
	green              = '#D3F4AF',
	yellow             = '#EFDC89',
	blue               = '#ADF6ED',
	orange             = '#DE9C8A',
	purple             = '#BCB7E2',
}


vim.cmd([[
source ~/.dotfiles/nvim/themes/monokai_kuba.vim
]])
local Color, colors, Group, groups, styles = require('colorbuddy').setup()

Color.new('background',  my_colors.background)
Color.new('background_lighter',  my_colors.background_lighter)
--Color.new('background',  '#18191e')
--Color.new('background_lighter', '#2f303a')
Color.new('foreground',  my_colors.foreground)
Color.new('red',         my_colors.red)
Color.new('green',       my_colors.green)
Color.new('yellow',      my_colors.yellow)
Color.new('blue',		 my_colors.blue)
Color.new('orange',		 my_colors.orange)
Color.new('purple',		 my_colors.purple)

Group.new('Function', colors.green, nil, nil)
Group.new('@function.builtin', groups.Function, groups.Function, groups.Function)
Group.new('@function.call', groups.Function, groups.Function, groups.Function)
Group.new('@method.call', colors.blue, nil, nil)
Group.new('@number', colors.purple, nil , nil)
Group.new('@string', colors.yellow, nil , nil)
Group.new('@parameter', colors.foreground, nil , nil)
Group.new('@operator', colors.foreground, nil , nil)
Group.new('@punctuation.special', colors.foreground, nil , styles.bold)
Group.new('@punctuation.bracket', colors.foreground, nil , nil)
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
Group.new('@comment', colors.background_lighter, nil , nil)

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
-- Group.new("LineNrAbove", colors.background_lighter, nil, nil)
-- Group.new("LineNrBelow", colors.background_lighter, nil, nil)

Group.new("Pmenu", nil, colors.background:light(), nil)
Group.new("Normal", colors.foreground, colors.background, nil)
Group.new("NonText", groups.normal, groups.normal, groups.normal)
Group.new("EndOfBuffer", groups.LineNrAbove, groups.normal, groups.normal)

Group.new("TabLine", nil, colors.background:light(), nil)
Group.new("TabLineFill", nil, colors.background:light(), nil)

Group.new("FloatBorder", nil, colors.background, nil) -- uncomment when using borders with lsp stuff

Group.new("NvimTreeCursorLine", nil, colors.background, nil)
Group.new("NvimTreeNormal", colors.foreground, nil, nil)
Group.new("NvimTreeFolderName", colors.foreground, nil, nil)


Group.new("SignColumn", nil, colors.background, nil)
Group.new("StatusLineNC", nil, colors.background:light(), nil)

vim.cmd([[
hi Normal guibg=NONE
hi treesittercontext guibg=#161616
]])


return my_colors

