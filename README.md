# Neovim Config

Base on [NvChad](https://github.com/NvChad/NvChad) configuration.

## LSP & Conform configured

LSP

```lua
local servers = {
  -- must have
  clangd = {},
  bashls = {},
  yamlls = {
    settings = {
      yaml = {
        customTags = { "!reference sequence" },
      },
    },
  },
  jsonls = {},
  lua_ls = {},

  ast_grep = {},

  -- web
  html = {},
  cssls = {},
  tsserver = {
    single_file_support = true,
  },
  tailwindcss = {},

  --
  terraformls = {},

  -- golang
  gopls = {},
  golangci_lint_ls = {},

  -- python
  pylsp = {},

  -- sql
  sqlls = {},
}
```

Conform

```lua
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
  }
}
```

## Plugins

- Telescope. [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- Telescope project [nvim-telescope/telescope-project.nvim](https://github.com/nvim-telescope/telescope-project.nvim) 
- Treesitter parser. [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Tmux navigation. [alexghergh/nvim-tmux-navigation](https://github.com/alexghergh/nvim-tmux-navigation)
- Markdown preview. [OXY2DEV/markview](https://github.com/OXY2DEV/markview.nvim)  
- Go to buffers. [leath-dub/snipe.nvim](https://github.com/leath-dub/snipe.nvim)  

## Mappings

- Leader: `space`
