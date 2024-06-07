return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  enabled = true,
  init = false,
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
  ████████╗███████╗██████╗ ██╗   ██╗ ██████╗
  ╚══██╔══╝██╔════╝██╔══██╗██║   ██║██╔═══██╗
     ██║   █████╗  ██║  ██║██║   ██║██║   ██║
     ██║   ██╔══╝  ██║  ██║╚██╗ ██╔╝██║   ██║
     ██║   ███████╗██████╔╝ ╚████╔╝ ╚██████╔╝
     ╚═╝   ╚══════╝╚═════╝   ╚═══╝   ╚═════╝

                 =   
                 =  
                 =      
    ]]

    dashboard.section.header.val = vim.split(logo, "\n")
    return dashboard
  end,
}
