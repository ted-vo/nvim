local spectre = require "spectre"

-- Shorten function name
local keymap = vim.keymap.set

-- Silent keymap option
local opts = { silent = true, noremap = true }

keymap("n", "<leader>F", '<cmd>lua require("spectre").toggle()<cr>', { noremap = true, desc = "Find and Replace" })
keymap(
  "n",
  "<leader>Fw",
  '<cmd>lua require("spectre").open_visual({select_word=true})<cr>',
  { desc = "Search current word" }
)
keymap("v", "<leader>Fw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word",
})
keymap("n", "<leader>Fp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file",
})
