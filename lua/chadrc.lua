local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = false,
}

M.nvdash = {
  load_on_startup = true,

  header = {
    "                            ",
    "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
    "   ▄▀███▄     ▄██ █████▀    ",
    "   ██▄▀███▄   ███           ",
    "   ███  ▀███▄ ███           ",
    "   ███    ▀██ ███           ",
    "   ███      ▀ ███           ",
    "   ▀██ █████▄▀█▀▄██████▄    ",
    "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
    "                            ",
    "     Powered By  eovim    ",
    "                            ",
    "         =              ",
    "         =               ",
    "         =           ",
    "                            ",
  },

  buttons = {
    { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    { txt = "󰈚  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
    { txt = "  Bookmarks", keys = "Spc m a", cmd = "Telescope marks" },
    { txt = "  Projects", keys = "Spc p l", cmd = "Telescope project" },
    { txt = "  Themes", keys = "Spc t h", cmd = "Telescope themes" },
    { txt = "  Config", keys = "c", cmd = "" },
    { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },

    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
    },
  },
}

M.ui = {
  ------------------------------- base46 -------------------------------------
  telescope = { style = "bordered" },

  ------------------------------- nvchad_ui modules -----------------------------
  term = {
    winopts = { number = false, relativenumber = false },
    sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
    float = {
      relative = "editor",
      row = 0.3,
      col = 0.25,
      width = 0.5,
      height = 0.5,
      border = "single",
    },
  },

  mason = {
    cmd = true,
    pkgs = {
      -- general
      "masksman",
      "prettier",

      -- lua stuff
      "lua-language-server",
      "stylua",

      -- web dev stuff
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      "tailwindcss-language-server",

      -- c/cpp stuff
      "clangd",
      "clang-format",
      "cmakelang",
      -- Ensure C/C++ debugger is installed
      "codelldb",

      -- zig
      "zls",

      -- go stuff
      "gopls",
      "goimports",
      "golangci-lint-langserver",

      -- shell stuff
      "bash-language-server",
      "shfmt",

      -- config files stuff
      "yaml-language-server",

      -- helm
      "helm-ls",

      -- terraform
      "terraform-ls",

      -- python
      "python-lsp-server",
      "autoflake",
      "pyflakes",

      -- sql
      "sqlls",
    },
  },
}

return M
