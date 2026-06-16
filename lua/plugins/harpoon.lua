local keys = require("config.keys")

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        require("harpoon"):setup()
    end,

    keys = {
        {
            keys.harpoon.add,
            function()
                require("harpoon"):list():add()
            end,
            desc = "Add file to Harpoon",
        },
        {
            keys.harpoon.menu,
            function()
                local harpoon = require("harpoon")
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end,
            desc = "Open Harpoon menu",
        },
        {
            keys.harpoon.file1,
            function()
                require("harpoon"):list():select(1)
            end,
            desc = "Harpoon file 1",
        },
        {
            keys.harpoon.file2,
            function()
                require("harpoon"):list():select(2)
            end,
            desc = "Harpoon file 2",
        },
        {
            keys.harpoon.file3,
            function()
                require("harpoon"):list():select(3)
            end,
            desc = "Harpoon file 3",
        },
        {
            keys.harpoon.file4,
            function()
                require("harpoon"):list():select(4)
            end,
            desc = "Harpoon file 4",
        },
        {
            keys.harpoon.remove,
            function()
                require("harpoon"):list():remove()
            end,
            desc = "Remove current file from Harpoon",
        },
    },
}
