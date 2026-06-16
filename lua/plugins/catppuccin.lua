return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	opts = {
		flavour = "mocha",
		color_overrides = {
			mocha = {
				base = "#101010",
				mantle = "#0c0c0c",
				crust = "#080808",
			},
		},
		custom_highlights = function()
			return {
				CursorLineNr = {
					fg = "#ffffff",
					bold = true,
				},
			}
		end,
	},
}
