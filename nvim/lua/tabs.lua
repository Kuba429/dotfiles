local bufferline = require("bufferline")
bufferline.setup({
	options={
		mode = 'tabs',
		style_preset = bufferline.style_preset.default,
        always_show_bufferline = false,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "left",
				separator = true
			}
		},
		indicator = {
			style = "none"
		},
		separator_style =  "thin",
	}
})
