return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
      opts = {
  },
  config = function()
    vim.keymap.set('n','<A-1>', ':Neotree filesystem reveal left toggle<CR>', {})
  end
}


