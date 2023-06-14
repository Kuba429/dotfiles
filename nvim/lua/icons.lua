require'nvim-web-devicons'.setup {
	--color_icons = false;
	--default = true;
	strict = true,
	override_by_extension = {
		["ts"] = {
			icon = "󰛦",
			color = "#81e043",
			name = "Typescript"
		}
	}
}
