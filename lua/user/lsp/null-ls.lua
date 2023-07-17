local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
  sources = {
    formatting.terraform_fmt,
    formatting.markdown_toc,
    -- formatting.yamlfmt,
    formatting.shfmt,
    formatting.stylua,

    -- Golang
    formatting.gofumpt,
    formatting.goimports_reviser,
    formatting.golines,

    diagnostics.eslint,

    completion.spell,
  },
})
