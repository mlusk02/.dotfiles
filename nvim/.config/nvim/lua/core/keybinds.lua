vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Find and center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Prevent pasting from yanking
vim.keymap.set("x", "<leader>p", [["_dP]])
