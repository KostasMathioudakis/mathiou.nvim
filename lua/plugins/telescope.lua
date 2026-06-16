local keys = require("config.keys")

return {
    "nvim-telescope/telescope.nvim",
    version = "*",

    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
    },

    config = function()
        require("telescope").load_extension("fzf")
    end,

    keys = {
        {
            keys.telescope.git_files,
            function()
                require("telescope.builtin").git_files()
            end,
            desc = "(f)ind in git (f)iles",
        },
        {
            keys.telescope.find_files,
            function()
                require("telescope.builtin").find_files()
            end,
            desc = "(f)ind in (a)ll files",
        },
        {
            keys.telescope.live_grep,
            function()
                require("telescope.builtin").live_grep()
            end,
            desc = "(f)ind with (g)rep",
        },
        {
            keys.telescope.buffers,
            function()
                require("telescope.builtin").buffers()
            end,
            desc = "(f)ind in (b)uffers",
        },
        {
            keys.telescope.help_tags,
            function()
                require("telescope.builtin").help_tags()
            end,
            desc = "(f)ind in (h)elp tags",
        },
    },
}
