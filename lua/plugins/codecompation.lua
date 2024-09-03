return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- Optional
      {
        "stevearc/dressing.nvim", -- Optional: Improves the default Neovim UI
        opts = {},
      },
    },
    keys = {
      { "<leader>ci", "<CMD>CodeCompanionAction<CR>", { desc = "CodeCompanionAction" } },
    },
    opts = {
      strategies = {
        chat = {
          adapter = "ollama",
        },
        inline = {
          adapter = "ollama",
        },
        agent = {
          adapter = "ollama",
        },
      },
      -- adapters = {
      --   ollama = function()
      --     return require("codecompanion.adapters").extend("ollama", {
      --       env = {
      --         url = "127.0.0.1:11434",
      --       },
      --     })
      --   end,
      -- },
    },
    config = function(_, opts)
      require("codecompanion").setup(opts)
      local group = vim.api.nvim_create_augroup("CodeCompanionHooks", {})

      vim.api.nvim_create_autocmd({ "User" }, {
        pattern = "CodeCompanionInline*",
        group = group,
        callback = function(request)
          if request.match == "CodeCompanionInlineFinished" then
            -- Format the buffer after the inline request has completed
            require("conform").format { bufnr = request.buf }
          end
        end,
      })
    end,
  },
}
