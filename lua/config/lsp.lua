local keys = require("config.keys")

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = {
            buffer = event.buf,
            silent = true,
        }

        vim.keymap.set("n", keys.lsp.definition, vim.lsp.buf.definition, {
            buffer = event.buf,
            desc = "Go to definition",
        })

        vim.keymap.set("n", keys.lsp.declaration, vim.lsp.buf.declaration, {
            buffer = event.buf,
            desc = "Go to declaration",
        })

        vim.keymap.set("n", keys.lsp.references, vim.lsp.buf.references, {
            buffer = event.buf,
            desc = "Find references",
        })

        vim.keymap.set("n", keys.lsp.implementation, vim.lsp.buf.implementation, {
            buffer = event.buf,
            desc = "Go to implementation",
        })

        vim.keymap.set("n", keys.lsp.hover, vim.lsp.buf.hover, {
            buffer = event.buf,
            desc = "Show documentation",
        })

        vim.keymap.set("n", keys.lsp.rename, vim.lsp.buf.rename, {
            buffer = event.buf,
            desc = "Rename symbol",
        })

        vim.keymap.set({ "n", "v" }, keys.lsp.code_action, vim.lsp.buf.code_action, {
            buffer = event.buf,
            desc = "Code action",
        })

        vim.keymap.set("n", keys.lsp.diagnostics, vim.diagnostic.open_float, {
            buffer = event.buf,
            desc = "Show diagnostics",
        })
    end,
})
