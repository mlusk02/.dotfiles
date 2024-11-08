require "core.options"
require "core.keybinds"

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- in the future use require "plugins.pluginname"
    { import = "plugins.colortheme",    cond = (function() return not vim.g.vscode end) },
    { import = "plugins.telescope",    cond = (function() return not vim.g.vscode end) },
    { import = "plugins.neo-tree",    cond = (function() return not vim.g.vscode end) },
    { import = "plugins.treesitter",    cond = (function() return not vim.g.vscode end) },
    { import = "plugins.lsp",    cond = (function() return not vim.g.vscode end) },
    { import = "plugins.snippets", cond = (function() return not vim.g.vscode end) },
    { import = "plugins.vim-tmux-navigator", cond = (function() return not vim.g.vscode end) }
})
