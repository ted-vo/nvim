return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        --- general
        "lua",
        "comment",
        "markdown",
        "markdown_inline",
        "vim",
        "vimdoc",
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
    },
  },
}
