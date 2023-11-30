local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "bashls",
  -- "yamlls",
  "terraformls",
  "lua_ls",
  "gopls",
  "golangci_lint_ls",
  "pylsp",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}
lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    yaml = {
      customTags = { "!reference sequence" },
    },
  },
}
