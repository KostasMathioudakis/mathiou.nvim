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

M.format = {
    format = "<M-f>",
}

M.comment = {
    line = "<C-/>",
    line_terminal = "<C-_>",
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

M.rust = {
    run = "<M-c>r",
    check = "<M-c>c",
    watch = "<M-c>w",
    test = "<M-c>t",
    close_task = "<M-q>",
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
    inlay_hints = "<M-x>",
}

M.blink = {
    previous = "<Up>",
    next = "<Down>",
    accept = "<Tab>",
    hide = "<Esc>",
    snippet_backward = "<S-Tab>",
}

return M
