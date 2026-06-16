return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
        flavour = "mocha",
        color_overrides = {
            mocha = {
                base = "#080808",
                mantle = "#050505",
                crust = "#020202",
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
