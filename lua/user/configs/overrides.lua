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
    "sql",
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

    -- python
    "python-lsp-server",
    "autoflake",
    "pyflakes",

    -- sql
    "sqlls",
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

--- NVTerm
M.nvterm = {
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = "editor",
        row = 0.5,
        col = 0.25,
        width = 0.6,
        height = 0.7,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = 0.5 },
      vertical = { location = "rightbelow", split_ratio = 0.5 },
    },
  },
  behavior = {
    autoclose_on_quit = {
      enabled = false,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = true,
  },
}

return M
