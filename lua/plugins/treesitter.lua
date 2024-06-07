return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        --- general
        "bash",
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
        "regex",

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

        -- frontend family
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",

        --- otherwise
        "c",
        "dockerfile",
        "dot",
        "terraform",
        "ruby",
        "python",
        "sql",
      },
    },
  },
}
