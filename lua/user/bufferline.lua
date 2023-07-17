local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true, noremap = true }
vim.opt.termguicolors = true

bufferline.setup({
  options = {
    close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions" right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
    offsets = {
      {
        filetype = "NvimTree",
        padding = 1,
        text = function()
          return vim.fn.getcwd()
        end,
        -- highlight = "Directory",
        text_align = "left",
      },
    },
    separator_style = "slant", -- | "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
  },
})

keymap("n", "<leader>1", "<CMD>BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "<leader>2", "<CMD>BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "<leader>3", "<CMD>BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "<leader>4", "<CMD>BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "<leader>5", "<CMD>BufferLineGoToBuffer 5<CR>", opts)
keymap("n", "<leader>7", "<CMD>BufferLineGoToBuffer 7<CR>", opts)
keymap("n", "<leader>6", "<CMD>BufferLineGoToBuffer 6<CR>", opts)
keymap("n", "<leader>8", "<CMD>BufferLineGoToBuffer 8<CR>", opts)
keymap("n", "<leader>9", "<CMD>BufferLineGoToBuffer 9<CR>", opts)

keymap("n", "gb", "<CMD>BufferLinePick<CR>", opts)
keymap("n", "gD", "<CMD>BufferLinePickClose<CR>", opts)
