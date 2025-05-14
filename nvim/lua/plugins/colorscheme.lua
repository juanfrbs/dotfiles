return
{
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  enabled = true,
  config = function()
    require("catppuccin").setup {
      color_overrides = {
        mocha = {
          base = "#11111b",
          mantle = "#11111b",
          crust = "#11111b",
        },
      },
      highlight_overrides = {
        mocha = function(C)
          return {
            NvimTreeNormal = { bg = C.none },
            CmpBorder = { fg = C.surface2 },
            Pmenu = { bg = C.none },
            NormalFloat = { bg = C.none },
            TelescopeBorder = { link = "FloatBorder" }
          }
        end
      },
      integrations = {
        barbar = true,
        cmp = true,
        gitsigns = true,
        native_lsp = { enabled = true },
        nvimtree = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true
      }
    }
    vim.cmd.colorscheme("catppuccin")
  end
}
