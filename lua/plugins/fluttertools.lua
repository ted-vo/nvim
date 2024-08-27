return {
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
      "dart-lang/dart-vim-plugin",
    },
    ft = "dart",
    keys = {
      { "<leader>lf", "<CMD>Telescope flutter commands<CR>", { desc = "List flutter commands" } },
    },
    config = function()
      require("flutter-tools").setup {
        decorations = {
          statusline = {
            app_version = true,
            device = true,
            project_config = true,
          },
        },
        debugger = {
          enabled = false,
        },
      }
      local telescope = require "telescope"
      telescope.load_extension "flutter"
    end,
  },
  {
    "dart-lang/dart-vim-plugin",
  },
}
