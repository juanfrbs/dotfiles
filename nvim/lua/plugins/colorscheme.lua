return {
  "Mofiqul/dracula.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function ()
     local dracula = require("dracula")
     dracula.setup({
     -- customize dracula color palette
      colors = {
         bg = "#11111b",
         menu = "#11111b",
         green = "#a6e3a1",
         purple = "#cba6f7",
         pink = "#f5bde6",
         cyan = "#b4befe",
         bright_cyan = "#ca9ee6",
         yellow = "#f9e2af",
         orange = "#fab387",
      },
      -- set custom lualine background color
      lualine_bg_color = "#11111b", -- default nil
     })
     vim.cmd[[colorscheme dracula]]
     vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#bac2de' })
     vim.api.nvim_set_hl(0, 'LineNr', { fg='#cba7fb', bold = true })
     vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#bac2de' })
  end,
}
