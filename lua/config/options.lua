local undo_dir = vim.fn.stdpath("state") .. "/undo"

if vim.fn.isdirectory(undo_dir) == 0 then
    vim.fn.mkdir(undo_dir, "p", "0700")
end

vim.opt.undofile = true
vim.opt.undodir = undo_dir
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildoptions = "pum"
