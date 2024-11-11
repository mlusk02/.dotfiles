vim.wo.number = true
vim.o.relativenumber = true
vim.o.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim
vim.o.wrap = false
vim.o.linebreak = true
vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.scrolloff = 8
vim.o.smartindent = true
vim.wo.signcolumn = "yes"

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.cc = "80"

vim.o.termguicolors = true

local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

autocmd({"BufWritePre"}, {
    group = vim.api.nvim_create_augroup('delete-whitespace-on-save', {}),
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
