require("obsidian").setup({
	event = {
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		-- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		"BufReadPre /Users/kuba/Documents/vpj_v/**.md",
		"BufNewFile /Users/kuba/Documents/vpj_v/**.md",
	},
	detect_cwd = true,
	daily_notes = {
		-- Optional, if you keep daily notes in a separate directory.
		folder = "",
		-- Optional, if you want to change the date format for the ID of daily notes.
		-- date_format = "j/MMM-YY/DD-dddd/dddd-DD-MM-YY",
		date_format = "j/%b-%y/d%d-%A/%A-%d-%m-%Y",
		-- Optional, if you want to change the date format of the default alias of daily notes.
		alias_format = "%B %-d, %Y",
		-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
		template = nil
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/Documents/vpj_v",
			},
			{
				name = "school",
				path = "~/Documents/szk",
			},
		},

	},
	disable_frontmatter = true
})
