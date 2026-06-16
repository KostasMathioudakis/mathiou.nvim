local keys = require("config.keys")

return {
    "saghen/blink.cmp",
    version = "1.*",

    opts = {
        keymap = {
            preset = "none",

            [keys.blink.previous] = {
                "select_prev",
                "fallback",
            },

            [keys.blink.next] = {
                "select_next",
                "fallback",
            },

            [keys.blink.accept] = {
                "select_and_accept",
                "fallback",
            },

            [keys.blink.hide] = {
                "hide",
                "fallback",
            },

            [keys.blink.snippet_forward] = {
                "snippet_forward",
                "fallback",
            },

            [keys.blink.snippet_backward] = {
                "snippet_backward",
                "fallback",
            },
        },

        appearance = {
            nerd_font_variant = "mono",
        },

        completion = {
            menu = {
                auto_show = true,
                border = "rounded",
            },

            list = {
                selection = {
                    preselect = true,
                    auto_insert = false,
                },
            },

            documentation = {
                auto_show = true,
                auto_show_delay_ms = 250,

                window = {
                    border = "rounded",
                },
            },
        },

        signature = {
            enabled = true,

            window = {
                border = "rounded",
            },
        },

        sources = {
            default = {
                "lsp",
                "path",
                "snippets",
                "buffer",
            },
        },

        cmdline = {
            enabled = true,

            keymap = {
                preset = "none",

                [keys.blink.previous] = {
                    "select_prev",
                    "fallback",
                },

                [keys.blink.next] = {
                    "select_next",
                    "fallback",
                },

                [keys.blink.accept] = {
                    "select_accept_and_enter",
                    "fallback",
                },

                [keys.blink.hide] = {
                    "hide",
                    "fallback",
                },
            },

            completion = {
                menu = {
                    auto_show = function()
                        return vim.fn.getcmdtype() == ":"
                    end,
                },
            },
        },

        fuzzy = {
            implementation = "prefer_rust_with_warning",
        },
    },

    opts_extend = {
        "sources.default",
    },
}
