return {
  "alexghergh/nvim-tmux-navigation",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
  config = function()
    local nvim_tmux_navigation = require("nvim-tmux-navigation")
    -- Shorten function name
    local keymap = vim.keymap.set
    -- Silent keymap option
    local opts = { silent = true, noremap = true }

    keymap("n", "<C-h>", "<CMD>NvimTmuxNavigateLeft<CR>", opts)
    keymap("n", "<C-j>", "<CMD>NvimTmuxNavigateDown<CR>", opts)
    keymap("n", "<C-k>", "<CMD>NvimTmuxNavigateUp<CR>", opts)
    keymap("n", "<C-l>", "<CMD>NvimTmuxNavigateRight<CR>", opts)
    keymap("n", "<C-\\>", "<CMD>NvimTmuxNavigateLastActive<CR>", opts)
    keymap("n", "<C-Sp", "e> <CMD>NvimTmuxNavigateNext<CR>", opts)

    nvim_tmux_navigation.setup({
      disable_when_zoomed = true, -- defaults to false
    })
  end,
}
