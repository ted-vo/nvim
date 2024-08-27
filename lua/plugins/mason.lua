return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
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
  },
}
