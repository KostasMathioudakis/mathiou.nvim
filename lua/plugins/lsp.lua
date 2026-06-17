return {
    {
        "mason-org/mason.nvim",
        cmd = "Mason",
        opts = {},
    },

    {
        "neovim/nvim-lspconfig",
        event = {
            "BufReadPre",
            "BufNewFile",
        },
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
                        inlayHints = {
                            bindingModeHints = {
                                enable = true,
                            },
                            chainingHints = {
                                enable = true,
                            },
                            closingBraceHints = {
                                enable = true,
                                minLines = 1,
                            },
                            closureCaptureHints = {
                                enable = true,
                            },
                            closureReturnTypeHints = {
                                enable = "always",
                            },
                            discriminantHints = {
                                enable = "always",
                            },
                            expressionAdjustmentHints = {
                                enable = "always",
                                hideOutsideUnsafe = false,
                                mode = "prefix",
                            },
                            genericParameterHints = {
                                const = {
                                    enable = true,
                                },
                                lifetime = {
                                    enable = true,
                                },
                                type = {
                                    enable = true,
                                },
                            },
                            implicitDrops = {
                                enable = true,
                            },
                            implicitSizedBoundHints = {
                                enable = true,
                            },
                            lifetimeElisionHints = {
                                enable = "always",
                                useParameterNames = true,
                            },
                            maxLength = nil,
                            parameterHints = {
                                enable = true,
                                missingArguments = {
                                    enable = true,
                                },
                            },
                            rangeExclusiveHints = {
                                enable = true,
                            },
                            reborrowHints = {
                                enable = "always",
                            },
                            renderColons = true,
                            typeHints = {
                                enable = true,
                                hideClosureInitialization = false,
                                hideClosureParameter = false,
                                hideInferredTypes = false,
                                hideNamedConstructor = false,
                            },
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
