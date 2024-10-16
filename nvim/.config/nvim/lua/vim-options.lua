-- always copy to system clipboard
vim.api.nvim_set_option("clipboard", "unnamed")

-- tab and spaces stuff
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set expandtab")
vim.g.mapleader = " "

-- Navigate vim panes
vim.keymap.set('n', 'c-k>', ':wincmd k<CR>')
vim.keymap.set('n', 'c-j>', ':wincmd j<CR>')
vim.keymap.set('n', 'c-h>', ':wincmd h<CR>')
vim.keymap.set('n', 'c-l>', ':wincmd l<CR>')

-- line numbering
vim.cmd("set number")
vim.cmd("set relativenumber")
