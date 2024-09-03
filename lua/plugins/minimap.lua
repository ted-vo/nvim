return {
  ---@module "neominimap.config.meta"
  {
    "Isrothy/neominimap.nvim",
    enabled = true,
    lazy = false, -- NOTE: NO NEED to Lazy load
    -- Optional
    keys = {
      { "<leader>mt", "<cmd>Neominimap toggle<cr>", desc = "Toggle minimap" },
      { "<leader>mo", "<cmd>Neominimap on<cr>", desc = "Enable minimap" },
      { "<leader>mc", "<cmd>Neominimap off<cr>", desc = "Disable minimap" },
      { "<leader>mf", "<cmd>Neominimap focus<cr>", desc = "Focus on minimap" },
      { "<leader>mu", "<cmd>Neominimap unfocus<cr>", desc = "Unfocus minimap" },
      { "<leader>ms", "<cmd>Neominimap toggleFocus<cr>", desc = "Toggle focus on minimap" },
      { "<leader>mwt", "<cmd>Neominimap winToggle<cr>", desc = "Toggle minimap for current window" },
      { "<leader>mwr", "<cmd>Neominimap winRefresh<cr>", desc = "Refresh minimap for current window" },
      { "<leader>mwo", "<cmd>Neominimap winOn<cr>", desc = "Enable minimap for current window" },
      { "<leader>mwc", "<cmd>Neominimap winOff<cr>", desc = "Disable minimap for current window" },
      { "<leader>mbt", "<cmd>Neominimap bufToggle<cr>", desc = "Toggle minimap for current buffer" },
      { "<leader>mbr", "<cmd>Neominimap bufRefresh<cr>", desc = "Refresh minimap for current buffer" },
      { "<leader>mbo", "<cmd>Neominimap bufOn<cr>", desc = "Enable minimap for current buffer" },
      { "<leader>mbc", "<cmd>Neominimap bufOff<cr>", desc = "Disable minimap for current buffer" },
    },
    init = function()
      vim.opt.wrap = false -- Recommended
      vim.opt.sidescrolloff = 36 -- It's recommended to set a large value

      vim.g.neominimap = {
        auto_enable = false,

        layout = "split",

        buf_filter = function(bufnr)
          local line_count = vim.api.nvim_buf_line_count(bufnr)
          return line_count < 4096
        end,

        window_border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
      }
    end,
  },
}
