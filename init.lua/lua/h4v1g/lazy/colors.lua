return {
  "Shatur/neovim-ayu",
  "folke/tokyonight.nvim",
  "sainnhe/everforest",
  "edeneast/nightfox.nvim",
  "shaunsingh/nord.nvim",
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavor = "mocha"
      })
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "main",
        styles = {
          italic = false
        }
      })
    end
  }
}
