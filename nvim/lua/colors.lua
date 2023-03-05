-- chaotic colorschemes
if false then
	vim.cmd([[
	source ~/.dotfiles/nvim/monokai_kuba.vim
	]])
	local Color, colors, Group, groups, styles = require('colorbuddy').setup()

	-- Color.new('background',  '#1e1e1e')
	-- Color.new('background_lighter',  '#6f6f6f')
	Color.new('background',  '#18191e')
	Color.new('background_lighter', '#2f303a')
	Color.new('foreground',  '#FDFDFD')
	Color.new('red',         '#D84B82')
	Color.new('green',       '#D3F4AF')
	Color.new('yellow',      '#EFDC89')
	Color.new('blue',		 '#ADF6ED')
	Color.new('orange',		 '#DE9C8A')
	Color.new('purple',		 '#BCB7E2')

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
	Group.new('@keyword', colors.blue, nil, nil)
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
	Group.new("Visual", nil, colors.background:light(), nil)

	Group.new("TabLine", nil, colors.background:light(), nil)
	Group.new("TabLineFill", nil, colors.background:light(), nil)

	Group.new("FloatBorder", nil, colors.background, nil) -- uncomment when using borders with lsp stuff

	Group.new("NvimTreeCursorLine", colors.foreground, colors.background:light(), nil)
	Group.new("NvimTreeNormal", colors.foreground, nil, nil)
	Group.new("NvimTreeFolderName", colors.foreground, nil, nil)

	Group.new("SignColumn", nil, colors.background, nil)
	Group.new("StatusLineNC", nil, colors.background:light(), nil)
	vim.cmd([[
	hi Normal guibg=NONE
	]])
else
	vim.cmd([[ 
		source ~/.dotfiles/nvim/hydroxy-port.vim
	]])
	local Color, colors, Group, groups, styles = require('colorbuddy').setup()
	Color.new('background',  '#161616')
	Color.new('background_lighter', '#888888')
	Color.new('foreground',  '#F6F6F6')
	Color.new('red',         '#D64969')
	Color.new('green',       '#B7D96E')
	Color.new('yellow',      '#FFD363')
	Color.new('blue',		 '#5BD4E6')
	Color.new('orange',		 '#EF8F5C')
	Color.new('purple',		 '#9797EB')

	Group.new("Visual", nil, colors.background:light(),nil)

	Group.new('Function', colors.green, nil, nil)
	Group.new('@function.builtin', groups.Function, groups.Function, groups.Function)
	Group.new('@function.call', groups.Function, groups.Function, groups.Function)
	Group.new('@method.call', colors.green, nil, nil)
	Group.new('@number', colors.purple, nil , nil)
	Group.new('@string', colors.yellow, nil , nil)
	Group.new('@parameter', colors.orange, nil , nil)
	Group.new('@operator', colors.red, nil , nil)
	Group.new('@punctuation.special', colors.background_lighter, nil , styles.bold)
	Group.new('@punctuation.bracket', colors.background_lighter, nil , nil)
	Group.new('@punctuation.delimiter', colors.background_lighter, nil , nil)
	Group.new('@function.macro', colors.red, nil , styles.bold)
	Group.new('@constructor', colors.blue, nil, styles.bold)
	Group.new('@property', colors.foreground, nil, nil)
	Group.new('@property.class', colors.red, nil, nil)
	Group.new('@property.id', colors.red, nil, nil)
	Group.new('@keyword', colors.blue, nil, nil)
	Group.new('@keyword.return', colors.red, nil, nil)
	Group.new('@keyword.export', colors.red, nil, nil)
	Group.new('@variable', colors.foreground, nil , nil)
	Group.new('@conditional', colors.red, groups["@keyword"], groups["@keyword"])
	Group.new('@include', colors.red, nil , nil)
	Group.new('@comment', colors.background_lighter, nil , nil)

	Group.new('@constant', colors.purple, nil, styles.bold)
	Group.new('@constant.builtin', groups["@constant"], groups["@constant"], groups["@constant"])

	Group.new('@tag', colors.red, nil, nil)
	Group.new('@tag.delimiter', colors.white, nil, nil)
	Group.new('@tag.attribute', colors.green, nil, nil)

	Group.new("@repeat", colors.red, nil,nil)

	Group.new("@type", colors.foreground,nil,nil)
	Group.new("@type.builtin", colors.blue,nil,nil)
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
	Group.new("Visual", nil, colors.background:light(), nil)

	Group.new("TabLine", nil, colors.background:light(), nil)
	Group.new("TabLineFill", nil, colors.background:light(), nil)

	Group.new("FloatBorder", nil, colors.background, nil) -- uncomment when using borders with lsp stuff

	Group.new("NvimTreeCursorLine", colors.foreground, colors.background:light(), nil)
	Group.new("NvimTreeNormal", colors.foreground, nil, nil)
	Group.new("NvimTreeFolderName", colors.foreground, nil, nil)

	Group.new("SignColumn", nil, colors.background, nil)
	Group.new("StatusLineNC", nil, colors.background:light(), nil)
	vim.cmd([[
	hi Normal guibg=NONE
	]])
end


