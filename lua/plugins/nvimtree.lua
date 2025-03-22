return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      local conf = require "nvchad.configs.nvimtree"
      conf.filters.dotfiles = true
      conf.renderer.root_folder_label = ":~:s?$?/..?"
      conf.view.width = 50

      return conf
    end,
  },
}
