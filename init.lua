vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,

  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  {  "catppuccin/nvim", name = "catppuccin", priority = 1000  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}

local opts ={}
 
require("lazy").setup(plugins, opts)


local config = require("nvim-treesitter.configs")

config.setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "Java", },
  highlight = { enable = true  },
  indent = { enable = true  }
})

local builtin = require("telescope.builtin")
vim.keymap.set('n','<C-p>', builtin.find_files, {})
vim.keymap.set('n','fg',builtin.live_grep, {})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

