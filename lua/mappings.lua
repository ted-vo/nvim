require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

-- general
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>qq", "<CMD>qa<CR>", { desc = "Quit all", silent = true })
-- map("n", "<leader>pl", "<CMD>Telescope project<CR>", { desc = "Project management", silent = true })
map(
  "n",
  "<leader>pl",
  ":lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>",
  { desc = "Project management", silent = true }
)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- tabufline
map("n", "<S-L>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-H>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<S-q>", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

--- tmux :: nagivation
map("n", "<C-h>", "<CMD>NvimTmuxNavigateLeft<CR>", { silent = true, noremap = true })
map("n", "<C-j>", "<CMD>NvimTmuxNavigateDown<CR>", { silent = true, noremap = true })
map("n", "<C-k>", "<CMD>NvimTmuxNavigateUp<CR>", { silent = true, noremap = true })
map("n", "<C-l>", "<CMD>NvimTmuxNavigateRight<CR>", { silent = true, noremap = true })
map("n", "<C-\\>", "<CMD>NvimTmuxNavigateLastActive<CR>", { silent = true, noremap = true })
-- map("n", "<C-Space>", "e> <CMD>NvimTmuxNavigateNext<CR>", { silent = true, noremap = true })

-- terminal
map("n", "<leader>gg", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "lazygit",
    cmd = "lazygit",
    float_opts = {
      width = 0.6,
      height = 0.8,
    },
  }
end, { desc = "Lazygit" })
