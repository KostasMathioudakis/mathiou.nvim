local keys = require("config.keys")

return {
    "stevearc/oil.nvim",
    lazy = false,

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    keys = {
        {
            keys.explorer.oil,
            "<cmd>Oil<cr>",
            desc = "Open Oil directory editor",
        },
    },

    opts = {
        default_file_explorer = true,
        view_options = {
            show_hidden = true,
        },
    },
}
