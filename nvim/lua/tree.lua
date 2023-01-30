vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		hide_root_folder = true,
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
		icons = {
			show = {
				folder_arrow = false
			},
			glyphs = {
				folder = {
					default = '',
					open = '',
					symlink = '',
				},
			}
		}

	},
	filters = {
		dotfiles = true,
	},
	actions = {
		open_file = {
			quit_on_open = true
		}
	}
})
