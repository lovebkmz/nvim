return {
  { 
    "williamboman/mason.nvim",
    config = function()
     require("mason").setup() 
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})

      vim.keymap.set('n', '<A-q>', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, {})
    end
  }
}
