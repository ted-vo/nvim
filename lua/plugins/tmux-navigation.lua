return {
  {
    "alexghergh/nvim-tmux-navigation",
    event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
    config = function()
      local nvim_tmux_nav = require "nvim-tmux-navigation"
      nvim_tmux_nav.setup {
        disable_when_zoomed = true, -- defaults to false
      }
    end,
  },
}
