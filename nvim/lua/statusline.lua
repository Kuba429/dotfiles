--vim.o.ls = 0
--vim.o.ch = 0
local colors = {
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
local theme = {
  normal = {
    a = {bg = nil, fg = colors.foreground, gui = 'bold'},
    b = {bg = colors.background, fg = colors.foreground},
    c = {bg = colors.background, fg = colors.foreground}
  },
  insert = {
    a = {bg = colors.foreground, fg = colors.background, gui = 'bold'},
    b = {bg = colors.background, fg = colors.foreground},
    c = {bg = colors.background, fg = colors.foreground}
  },
  visual = {
    a = {bg = colors.foreground, fg = colors.background, gui = 'bold'},
    b = {bg = colors.background, fg = colors.foreground},
    c = {bg = colors.background, fg = colors.foreground}
  },
  replace = {
    a = {bg = colors.foreground, fg = colors.background, gui = 'bold'},
    b = {bg = colors.background, fg = colors.foreground},
    c = {bg = colors.background, fg = colors.foreground}
  },
  command = {
    a = {bg = colors.blue, fg = colors.background, gui = 'bold'},
    b = {bg = colors.background, fg = colors.foreground},
    c = {bg = colors.background, fg = colors.foreground}
  },
  inactive = {
    a = {bg = colors.foreground, fg = colors.background, gui = 'bold'},
    b = {bg = colors.background, fg = colors.foreground},
    c = {bg = colors.background, fg = colors.foreground}
  }
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = theme,
    component_separators = { left = ' ', right = ' '},
    section_separators = { left = ' ', right = ' '},
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {'branch', 'diff', 'diagnostics'},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {"mode"},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
