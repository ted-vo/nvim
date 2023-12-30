local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier.with {
    filetypes = {
      "html",
      "markdown",
      "css",
      "json",
      "javascript",
      "jsx",
      "markdown",
      "scss",
      "typescript",
      "vue",
      "yaml",
    },
  }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,
  -- cpp
  b.formatting.clang_format,
  -- sh
  b.formatting.shfmt,
  -- go
  b.formatting.goimports,
  -- terraform
  b.formatting.terraform_fmt,
  -- json
  b.formatting.jq,
  -- python
  b.formatting.autoflake,
  -- sql
  b.formatting.sqlfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
