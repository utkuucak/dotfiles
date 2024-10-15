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

-- Lazy
require("config.lazy")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')

-- Treesitter
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "c"},
  highlight = {enable = true},
  indent = {enable = true},
})

-- Theme stuff
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
