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
  "sqlls",
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
  settings = {
    yaml = {
      customTags = { "!reference sequence" },
    },
  },
}

lspconfig.helm_ls.setup {
  settings = {
    ["helm-ls"] = {
      yamlls = {
        diagnosticsLimit = 0,
        path = "yaml-language-server",
        schemas = {
          kubernetes = "helm-charts/**/templates/**",
        },
      },
    },
  },
}
