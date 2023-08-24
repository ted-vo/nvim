local M = {}

M.treesitter = {
  ensure_installed = {
    --- general
    "lua",
    "comment",
    "markdown",
    "markdown_inline",
    "vim",
    "json",
    "http",
    "make",
    "toml",
    "yaml",

    --- git family
    "diff",
    "git_rebase",
    "gitcommit",
    "gitignore",

    --- go family
    "go",
    "gomod",
    "gosum",
    "gowork",

    --- otherwise
    "c",
    "css",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "bash",
    "dockerfile",
    "dot",
    "terraform",
    "ruby",
    "python",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
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

    -- terraform
    "terraform-ls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
