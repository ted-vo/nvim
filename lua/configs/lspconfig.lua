local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

local servers = {
  -- must have
  clangd = require "configs.lang.clangd",
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
  ts_ls = {
    single_file_support = true,
  },
  tailwindcss = {},

  --
  terraformls = {},

  -- golang
  gopls = {},
  golangci_lint_ls = {},

  -- zig
  zls = {},

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
