local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  -- must have
  clangd = {},
  bashls = {},
  yamlls = {
    settings = {
      yaml = {
        customTags = { "!reference sequence" },
      },
    },
  },
  lua_ls = {},

  -- web
  html = {},
  cssls = {},
  tsserver = {},

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
for lsp, opts in ipairs(servers) do
  opts.on_attach = on_attach
  opts.on_init = on_init
  opts.capabilities = capabilities

  lspconfig[lsp].setup(opts)
end
