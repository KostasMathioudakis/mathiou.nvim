local keys = require("config.keys")

local function path_to_reveal()
    local path = vim.fn.expand("%:p")

    if path == "" then
        return vim.fn.getcwd()
    end

    local file = io.open(path, "r")
    if file then
        file:close()
        return path
    end

    return vim.fn.getcwd()
end

local function open_filesystem(position, toggle)
    require("neo-tree.command").execute({
        action = "focus",
        source = "filesystem",
        position = position,
        toggle = toggle,
        reveal_file = path_to_reveal(),
        reveal_force_cwd = true,
    })
end

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,

    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },

    keys = {
        {
            keys.explorer.tree_toggle_reveal,
            function()
                open_filesystem("left", true)
            end,
            desc = "Toggle Neo-tree at current file",
        },
        {
            keys.explorer.tree_float,
            function()
                open_filesystem("float", false)
            end,
            desc = "Open Neo-tree floating explorer",
        },
    },

    opts = {
        close_if_last_window = true,
        filesystem = {
            follow_current_file = {
                enabled = true,
            },
            hijack_netrw_behavior = "disabled",
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_ignored = false,
                hide_hidden = false,
            },
        },
    },
}
