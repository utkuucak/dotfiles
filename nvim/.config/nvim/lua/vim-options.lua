-- always copy to system clipboard
vim.api.nvim_set_option("clipboard", "unnamed")

-- tab and spaces stuff
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set expandtab")
vim.g.mapleader = " "

-- line numbering
vim.cmd("set number")
vim.cmd("set relativenumber")
