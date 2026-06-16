return {
    "Erl-koenig/theme-hub.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        require("theme-hub").setup()
    end,
}
