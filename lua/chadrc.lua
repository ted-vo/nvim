-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = false,
}

M.ui = {
  ------------------------------- base46 -------------------------------------
  telescope = { style = "bordered" },

  ------------------------------- nvchad_ui modules -----------------------------
  nvdash = {
    load_on_startup = true,

    header = {
      "  ████████╗███████╗██████╗ ██╗   ██╗ ██████╗   ",
      "  ╚══██╔══╝██╔════╝██╔══██╗██║   ██║██╔═══██╗  ",
      "     ██║   █████╗  ██║  ██║██║   ██║██║   ██║  ",
      "     ██║   ██╔══╝  ██║  ██║╚██╗ ██╔╝██║   ██║  ",
      "     ██║   ███████╗██████╔╝ ╚████╔╝ ╚██████╔╝  ",
      "     ╚═╝   ╚══════╝╚═════╝   ╚═══╝   ╚═════╝   ",
      "                                               ",
      "                 =                         ",
      "                 =                          ",
      "                 =                      ",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Projects", "Spc p l", "Telescope project" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Config", "c", "" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },

  term = {
    -- hl = "Normal:term,WinSeparator:WinSeparator",
    float = {
      relative = "editor",
      row = 0.1,
      col = 0.045,
      width = 0.9,
      height = 0.8,
      border = "single",
    },
  },
}

return M
