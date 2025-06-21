return {
  ---@module "neominimap.config.meta"
  {
    "Isrothy/neominimap.nvim",
    enabled = true,
    lazy = false, -- NOTE: NO NEED to Lazy load
    -- Optional
    keys = {
      { "<leader>mt", "<cmd>Neominimap Toggle<cr>", desc = "Toggle minimap" },
      { "<leader>mo", "<cmd>Neominimap Enable<cr>", desc = "Enable minimap" },
      { "<leader>mc", "<cmd>Neominimap Disable<cr>", desc = "Disable minimap" },
      { "<leader>mf", "<cmd>Neominimap Focus<cr>", desc = "Focus on minimap" },
      { "<leader>mu", "<cmd>Neominimap Unfocus<cr>", desc = "Unfocus minimap" },
      { "<leader>ms", "<cmd>Neominimap ToggleFocus<cr>", desc = "Toggle focus on minimap" },
      { "<leader>mwt", "<cmd>Neominimap WinToggle<cr>", desc = "Toggle minimap for current window" },
      { "<leader>mwr", "<cmd>Neominimap WinRefresh<cr>", desc = "Refresh minimap for current window" },
      { "<leader>mwo", "<cmd>Neominimap WinOn<cr>", desc = "Enable minimap for current window" },
      { "<leader>mwc", "<cmd>Neominimap WinOff<cr>", desc = "Disable minimap for current window" },
      { "<leader>mbt", "<cmd>Neominimap BufToggle<cr>", desc = "Toggle minimap for current buffer" },
      { "<leader>mbr", "<cmd>Neominimap BufRefresh<cr>", desc = "Refresh minimap for current buffer" },
      { "<leader>mbo", "<cmd>Neominimap BufEnable<cr>", desc = "Enable minimap for current buffer" },
      { "<leader>mbc", "<cmd>Neominimap BufDisable<cr>", desc = "Disable minimap for current buffer" },
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
