local status_ok, nvim_tmux_navigation = pcall(require, "nvim-tmux-navigation")
if not status_ok then
  return
end

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
