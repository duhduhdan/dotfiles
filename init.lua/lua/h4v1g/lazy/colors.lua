return {
  "Shatur/neovim-ayu",
  "folke/tokyonight.nvim",
  "sainnhe/everforest",
  "edeneast/nightfox.nvim",
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "main"
      })
    end
  }
}
