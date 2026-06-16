local keys = require("config.keys")

return {
    "mbbill/undotree",

    cmd = {
        "UndotreeToggle",
        "UndotreeShow",
        "UndotreeHide",
        "UndotreeFocus",
    },

    keys = {
        {
            keys.undotree.toggle,
            "<cmd>UndotreeToggle<cr>",
            desc = "Toggle UndoTree",
        },
    },
}
