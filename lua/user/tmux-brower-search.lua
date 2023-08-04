local M = {
  "voldikss/vim-browser-search",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
}

function M.config()
  local keymap = vim.keymap.set
  -- Silent keymap option
  local opts = { silent = true, noremap = true }

  keymap("n", "<C-s>", "<CMD>BrowserSearch<CR>", { silent = true, noremap = true })
  -- nmap <silent> <Leader>s <Plug>SearchNormal
  -- vmap <silent> <Leader>s <Plug>SearchVssual
end

return M
