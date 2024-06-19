---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>qa"] = { "<cmd> qq <cr>", "quit all", opts = { silent = true } },
    ["<leader>mm"] = { "<cmd> MinimapToggle <cr>", "Show/Hide Minimap", opts = { silent = true } },
  },
}

-- more keybinds!

return M
