-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load requirements
require("config.options")
require("config.remap")
require("config.lazy")
require("config.lsp")
require("config.set")
-- Toggle for transparent background
--require("config.colors")

vim.cmd.colorscheme("carbonfox")
