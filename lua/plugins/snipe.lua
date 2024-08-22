-- Efficient targetted menu built for fast buffer navigation
return {
  "leath-dub/snipe.nvim",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
  config = function()
    local snipe = require "snipe"
    snipe.setup()
    vim.keymap.set("n", "gb", snipe.create_buffer_menu_toggler(), { desc = "Go to buffer" })
  end,
}
