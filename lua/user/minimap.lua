local M = {
  "wfxr/minimap.vim",
  -- cmd = "cargo install --locked code-minimap",
  event = "VeryLazy",
}

function M.config()
  local set = vim.g

  set.minimap_width = 20
  set.minimap_git_colors = 1
  -- set.minimap_auto_start = 1
  set.minimap_auto_start_win_enter = 1
end

return M
