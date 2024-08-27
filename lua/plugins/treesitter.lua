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
        "hurl",
        "make",
        "toml",
        "yaml",
        "xml",

        --- git family
        "diff",
        "git_config",
        "git_rebase",
        "gitcommit",
        "gitignore",

        --- go family
        "go",
        "gomod",
        "gosum",
        "gowork",

        --- c/cpp
        "c",
        "cpp",
        "cmake",

        -- js family
        "javascript",
        "typescript",
        "tsx",

        -- java family
        "java",
        "kotlin",
        "groovy",

        --- otherwise
        "css",
        "html",
        "css",
        "bash",
        "dockerfile",
        "dot",
        "terraform",
        "helm",
        "ruby",
        "python",
        "sql",
        "dart",
        "zig",
      },
    },
  },
}
