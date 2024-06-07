return {

  -- add any tools you want to have installed below
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
        "shellcheck",
        "bash-language-server",
        "shfmt",

        -- config files stuff
        "yaml-language-server",

        -- helm
        "helm-ls",

        -- terraform
        "terraform-ls",

        -- python
        "flake8",
        "python-lsp-server",
        "autoflake",
        "pyflakes",

        -- sql
        "sqlls",
      },
    },
  },
}
