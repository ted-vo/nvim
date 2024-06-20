return {
  {
    "nvim-telescope/telescope-project.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local conf = require "nvchad.configs.telescope"
      --     --     -- local project_actions = require "telescope._extensions.project.actions"
      table.insert(conf.extensions_list, "project")
      table.insert(conf.extensions, {
        project = {
          base_dirs = {
            "~/data",
          },
          hidden_files = true, -- default: false
          theme = "dropdown",
          order_by = "asc",
          search_by = "title",
          sync_with_nvim_tree = true, -- default false
        },
      })

      return conf
    end,
  },
}
