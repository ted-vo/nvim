return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "prettier",

        -- c/cpp stuff
        "clangd",
        "clang-format",

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
  },
}
