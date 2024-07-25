local options = {
  formatters_by_ft = {
    c = { "clang-format" },
    h = { "clang-format" },
    cpp = { "clang-format" },
    lua = { "stylua" },
    bash = { "shfmt" },
    sh = { "shfmt" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    go = { "goimports", "gofmt" },
    php = { "pretty-php" },
    yaml = { "prettier" },
    tf = { "terraform_fmt" },
    javascript = { "prettier" },
    typescript = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
