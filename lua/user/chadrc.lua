---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "user.highlights"

M.ui = {
  theme = "palenight",
  theme_toggle = { "palenight", "onedark" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = true,
}

M.plugins = "user.plugins"

-- check core.mappings for table structure
M.mappings = require "user.mappings"

return M