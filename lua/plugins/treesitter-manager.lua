return {
    "romus204/tree-sitter-manager.nvim",
    dependencies = {}, -- ensure tree-sitter CLI is installed on your system
    config = function()
        require("tree-sitter-manager").setup({
            ensure_installed = {
                "lua",
                "java",
                "xml",
                "javascript",
                "typescript",
                "html",
                "toml",
                "json",
                "rust",
                "wgsl",
            },
            auto_install = false,
            highlight = true,
        })
    end,
}
