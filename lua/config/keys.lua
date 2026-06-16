local M = {}

M.explorer = {
    oil = "<leader>pv",
    tree_toggle_reveal = "<leader>pt",
    tree_float = "<leader>pf",
}

M.telescope = {
    git_files = "<leader>ff",
    find_files = "<leader>fa",
    live_grep = "<leader>fg",
    buffers = "<leader>fb",
    help_tags = "<leader>fh",
}

M.harpoon = {
    add = "<M-a>",
    menu = "<M-e>",
    file1 = "<M-1>",
    file2 = "<M-2>",
    file3 = "<M-3>",
    file4 = "<M-4>",
    remove = "<M-d>",
}

M.undotree = {
    toggle = "<leader>u",
}

M.git = {
    status = "<leader>gs",
    -- stage_file = "<leader>ga",
    -- stage_all = "<leader>gA",
    -- restore_file = "<leader>gr",
    -- diff = "<leader>gd",
    -- stash = "<leader>gz",
    -- mergetool = "<leader>gm",
    -- commit = "<leader>gc",
    -- push = "<leader>gp",
    -- pull = "<leader>gl",
    -- blame = "<leader>gb",
    -- log = "<leader>gL",
}

M.lsp = {
    definition = "gd",
    declaration = "gD",
    references = "gr",
    implementation = "gi",
    hover = "K",
    rename = "<leader>lr",
    code_action = "<leader>la",
    diagnostics = "<leader>ld",
}

M.blink = {
    previous = "<Up>",
    next = "<Down>",
    accept = "<CR>",
    hide = "<Esc>",
    snippet_forward = "<Tab>",
    snippet_backward = "<S-Tab>",
}

return M
