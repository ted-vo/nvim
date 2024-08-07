local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

local servers = {
  -- must have
  clangd = {
    keys = {
      { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
    },
    root_dir = function(fname)
      return require("lspconfig.util").root_pattern(
        "Makefile",
        "configure.ac",
        "configure.in",
        "config.h.in",
        "meson.build",
        "meson_options.txt",
        "build.ninja"
      )(fname) or require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt")(fname) or require(
        "lspconfig.util"
      ).find_git_ancestor(fname)
    end,
    capabilities = {
      offsetEncoding = { "utf-16" },
    },
    cmd = {
      "clangd",
      "--background-index",
      "--clang-tidy",
      "--header-insertion=iwyu",
      "--completion-style=detailed",
      "--function-arg-placeholders",
      "--fallback-style=llvm",
    },
    init_options = {
      usePlaceholders = true,
      completeUnimported = true,
      clangdFileStatus = true,
    },
  },
  bashls = {},
  yamlls = {
    settings = {
      yaml = {
        customTags = { "!reference sequence" },
      },
    },
  },
  jsonls = {},
  lua_ls = {},

  ast_grep = {},
  marksman = {},

  -- web
  html = {},
  cssls = {},
  tsserver = {
    single_file_support = true,
  },
  tailwindcss = {},

  --
  terraformls = {},

  -- golang
  gopls = {},
  golangci_lint_ls = {},

  -- python
  pylsp = {},

  -- sql
  sqlls = {},
}

-- lsps with default config
for name, opts in pairs(servers) do
  opts.on_attach = on_attach
  opts.on_init = on_init
  opts.capabilities = capabilities

  lspconfig[name].setup(opts)
end
