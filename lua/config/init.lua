-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load requirements
require("config.options")
require("config.remap")
require("config.lazy")
require("config.lsp")
require("config.set")
require("config.colors")

vim.cmd.colorscheme("carbonfox")
