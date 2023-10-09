local telescope = require("telescope")
telescope.load_extension('harpoon')
telescope.setup {
	pickers = {
		colorscheme = {
			enable_preview = true
		}
	}
}
