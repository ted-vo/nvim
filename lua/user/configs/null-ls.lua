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
      "markdown",
      "scss",
      "typescript",
    },
  }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  -- b.formatting.clang_format,

  -- sh
  b.formatting.shfmt,

  -- go
  b.formatting.goimports,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
