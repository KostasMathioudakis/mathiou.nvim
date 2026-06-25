local keys = require("config.keys")

local function cargo_root()
    local path = vim.api.nvim_buf_get_name(0)

    if path == "" then
        path = vim.fn.getcwd()
    elseif vim.fn.filereadable(path) == 1 then
        path = vim.fs.dirname(path)
    end

    local manifests = vim.fs.find("Cargo.toml", {
        path = path,
        upward = true,
        limit = math.huge,
    })

    if #manifests == 0 then
        return vim.fn.getcwd()
    end

    local nearest = vim.fs.dirname(manifests[1])
    local workspace

    for _, manifest in ipairs(manifests) do
        local ok, lines = pcall(vim.fn.readfile, manifest)
        if ok then
            for _, line in ipairs(lines) do
                if line:match("^%s*%[workspace%]") then
                    workspace = vim.fs.dirname(manifest)
                    break
                end
            end
        end
    end

    return workspace or nearest
end

local function run_cargo_task(name, args)
    local overseer = require("overseer")
    local task = overseer.new_task({
        name = name,
        cmd = "cargo",
        args = args,
        cwd = cargo_root(),
    })

    task:start()
    task:open_output("horizontal")
    vim.cmd.wincmd("J")

    local bufnr = task:get_bufnr()
    if bufnr then
        local stop_and_close = function()
            task:stop()
            vim.cmd.close()
        end

        vim.keymap.set({ "n", "t" }, keys.rust.close_task, function()
            stop_and_close()
        end, {
            buffer = bufnr,
            desc = "Stop task and close output",
        })
    end
end

return {
    "stevearc/overseer.nvim",
    opts = {
        output = {
            use_terminal = true,
        },
        task_list = {
            keymaps = {
                [keys.rust.close_task] = { "close", desc = "Close task list" },
            },
        },
    },
    keys = {
        {
            keys.rust.run,
            function()
                run_cargo_task("cargo run", { "run" })
            end,
            mode = "n",
            desc = "Cargo run",
        },
        {
            keys.rust.check,
            function()
                run_cargo_task("cargo check", { "check" })
            end,
            mode = "n",
            desc = "Cargo check",
        },
        {
            keys.rust.build,
            function()
                run_cargo_task("cargo build", { "build" })
            end,
            mode = "n",
            desc = "Cargo build",
        },
        {
            keys.rust.watch,
            function()
                run_cargo_task("cargo watch -x run", { "watch", "-x", "run" })
            end,
            mode = "n",
            desc = "Cargo watch",
        },
        {
            keys.rust.test,
            function()
                run_cargo_task("cargo test", { "test" })
            end,
            mode = "n",
            desc = "Cargo test",
        },
    },
}
