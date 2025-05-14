return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons","catppuccin/nvim"  },
  config = function()
    require('lualine').setup {
      options = {
        theme = "catppuccin"
        -- ... the rest of your lualine config
      }
    }
  end
}
