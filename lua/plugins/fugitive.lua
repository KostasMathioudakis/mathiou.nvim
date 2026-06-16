local keys = require("config.keys")

return {
    "tpope/vim-fugitive",

    cmd = {
        "Git",
        "G",
        "Gdiffsplit",
        "Gvdiffsplit",
        "Gedit",
        "Gread",
        "Gwrite",
        "Ggrep",
        "GMove",
        "GRename",
        "GDelete",
    },

    keys = {
        {
            keys.git.status,
            "<cmd>Git<cr>",
            desc = "Git status",
        },
        -- {
        --     keys.git.stage_file,
        --     "<cmd>Gwrite<cr>",
        --     desc = "Stage current file",
        -- },
        -- {
        --     keys.git.stage_all,
        --     "<cmd>Git add -A<cr>",
        --     desc = "Stage all repository changes",
        -- },
        -- {
        --     keys.git.restore_file,
        --     "<cmd>Gread<cr>",
        --     desc = "Restore current file from index",
        -- },
        -- {
        --     keys.git.diff,
        --     "<cmd>Gdiffsplit<cr>",
        --     desc = "Diff current file against index",
        -- },
        -- {
        --     keys.git.stash,
        --     "<cmd>Git stash<cr>",
        --     desc = "Git stash",
        -- },
        -- {
        --     keys.git.mergetool,
        --     "<cmd>Git mergetool<cr>",
        --     desc = "Open Git merge conflicts",
        -- },
        -- {
        --     keys.git.commit,
        --     "<cmd>Git commit<cr>",
        --     desc = "Git commit",
        -- },
        -- {
        --     keys.git.push,
        --     "<cmd>Git! push<cr>",
        --     desc = "Git push",
        -- },
        -- {
        --     keys.git.pull,
        --     "<cmd>Git pull<cr>",
        --     desc = "Git pull",
        -- },
        -- {
        --     keys.git.blame,
        --     "<cmd>Git blame<cr>",
        --     desc = "Git blame current file",
        -- },
        -- {
        --     keys.git.log,
        --     "<cmd>Git log<cr>",
        --     desc = "Git log",
        -- },
    },
}
