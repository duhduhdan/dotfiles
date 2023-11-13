local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "tpope/vim-repeat",
  "Shatur/neovim-ayu",
  "folke/tokyonight.nvim",
  "folke/trouble.nvim",
  "sainnhe/everforest",
  "edeneast/nightfox.nvim",
  "tpope/vim-commentary",
  "tpope/vim-surround",
  "kylechui/nvim-surround",
  "w0rp/ale",
  "tpope/vim-fugitive",
  "alvan/vim-closetag",
  "kdheepak/lazygit.nvim",
  "lewis6991/gitsigns.nvim",
  {
    "prettier/vim-prettier",
    build = "yarn install",
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
      -- lazy = true,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring"
    },
  },
  {
    "karb94/neoscroll.nvim",
    config = require("neoscroll").setup(),
  },
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = "InsertEnter",
      config = function()
        require("copilot").setup()
      end,
      -- lazy = true,
    },
    {
      "zbirenbaum/copilot-cmp",
      after = "copilot.lua",
      config = function()
        require("copilot_cmp").setup()
      end,
      -- lazy = true,
    },
    {
      "VonHeikemen/lsp-zero.nvim",
      branch = 'v2.x',
      dependencies = {
        -- LSP support
        "neovim/nvim-lspconfig",
        {
          "williamboman/mason.nvim",
          config = require("mason").setup()
        },
		    "williamboman/mason-lspconfig.nvim",
        -- Autocompletion
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
        {
          "zbirenbaum/copilot-cmp",
          after = "copilot.lua",
          config = function()
            require("copilot_cmp").setup({
              suggestion = { enabled = false },
              panel = { enabled = false },
            })
          end,
        },
      }
    },
})
