local keys = require("config.keys")

local function toggle_current_line()
    require("Comment.api").toggle.linewise.current()
end

local function toggle_visual_lines()
    local esc = vim.api.nvim_replace_termcodes("<Esc>", true, false, true)
    vim.api.nvim_feedkeys(esc, "nx", false)
    require("Comment.api").toggle.linewise(vim.fn.visualmode())
end

local function line_comment_keys(lhs)
    return {
        {
            lhs,
            toggle_current_line,
            mode = "n",
            desc = "Toggle line comment",
        },
        {
            lhs,
            toggle_visual_lines,
            mode = "x",
            desc = "Toggle line comments for selection",
        },
    }
end

local plugin_keys = line_comment_keys(keys.comment.line)
vim.list_extend(plugin_keys, line_comment_keys(keys.comment.line_terminal))

return {
    "numToStr/Comment.nvim",
    opts = {
        mappings = false,
    },
    keys = plugin_keys,
}
