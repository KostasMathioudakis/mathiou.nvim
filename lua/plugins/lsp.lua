return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
        },

        config = function()
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {
                                "vim",
                            },
                        },

                        workspace = {
                            library = {
                                vim.env.VIMRUNTIME,
                            },
                        },
                    },
                },
            })

            vim.lsp.config("rust_analyzer", {
                settings = {
                    ["rust-analyzer"] = {
                        check = {
                            command = "clippy",
                        },
                    },
                },
            })

            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "ts_ls",
                    "html",
                    "cssls",
                    "jsonls",
                    "rust_analyzer",
                },
                automatic_enable = true,
            })
        end,
    },
}
