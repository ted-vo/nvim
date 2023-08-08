---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>qa"] = { "<cmd> qa <cr>", "quit all", opts = { silent = true } },
  },
}

-- more keybinds!

return M
