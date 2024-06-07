-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- buffers
vim.keymap.set("n", "<S-q>", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
