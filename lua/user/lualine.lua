local M = {
  "nvim-lualine/lualine.nvim",
  commit = "0050b308552e45f7128f399886c86afefc3eb988",
  event = { "VimEnter", "InsertEnter", "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
}

function M.config()
  local lualine = require("lualine")

  local hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end

  -- +-------------------------------------------------+
  -- | A | B | C                             X | Y | Z |
  -- +-------------------------------------------------+

  -- lualine a
  local mode = {
    "mode",
    icons_enabled = true, -- Enables the display of icons alongside the component.
    separator = { left = "" },
    right_padding = 2,
  }

  -- lualine b
  local branch = {
    "branch",
  }
  local diff = {
    "diff",
    colored = true,
    symbols = { added = "  ", modified = "  ", removed = "  " }, -- changes diff symbols
    cond = hide_in_width,
  }
  local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn" },
    symbols = { error = " ", warn = " " },
    colored = true,
    always_visible = true,
  }

  -- lualine c
  local filename = {
    "filename",
    file_status = true,   -- Displays file status (readonly status, modified status)
    newfile_status = false, -- Display new file status (new file means no write after created)
    path = 1,             -- 0: Just the filename
    -- 1: Relative path
    -- 2: Absolute path
    -- 3: Absolute path, with tilde as the home directory

    shorting_target = 40, -- Shortens path to leave 40 spaces in the window
    -- for other components. (terrible name, any suggestions?)
    symbols = {
      modified = "[+]",   -- Text to show when the file is modified.
      readonly = "[-]",   -- Text to show when the file is non-modifiable or readonly.
      unnamed = "[No Name]", -- Text to show for unnamed buffers.
      newfile = "[New]",  -- Text to show for new created file before first writting
    },
  }

  -- lualine x
  local spaces = function()
    return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
  end

  local filetype = {
    "filetype",
    icons_enabled = true,
    colored = true,           -- Displays filetype icon in color if set to true
    icon_only = false,        -- Display only an icon for filetype
    icon = { align = "right" }, -- Display filetype icon on the right hand side
  }

  -- lualine y
  local location = {
    "location",
    padding = 1,
  }

  -- lualine z
  local progress = {
    "progress",
    separator = { right = "" },
    left_padding = 2,
  }

  lualine.setup({
    options = {
      globalstatus = true,
      icons_enabled = true,
      theme = "auto",
      component_separators = "|",
      section_separators = { left = "", right = "" },
      disabled_filetypes = { "alpha", "dashboard" },
      always_divide_middle = true,
    },
    sections = {
      lualine_a = { mode },
      lualine_b = { branch, diff, diagnostics },
      lualine_c = { filename },
      lualine_x = { spaces, "encoding", filetype },
      lualine_y = { location },
      lualine_z = { progress },
    },
  })
end

return M
