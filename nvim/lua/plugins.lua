vim.cmd [[packadd packer.nvim]]

return require"packer".startup(function()
    use "savq/paq-nvim"
    use "tpope/vim-repeat"
    use "Shatur/neovim-ayu"
    use "shaunsingh/nord.nvim"
    use "bluz71/vim-nightfly-guicolors"
    use "bkegley/gloombuddy"
    use "Yagua/nebulous.nvim"
    use "folke/tokyonight.nvim"
    use "mileszs/ack.vim"
    use "Shougo/denite.nvim"
    use "chemzqm/denite-git"
    use "neoclide/coc-denite"
    use "tpope/vim-commentary"
    use "tpope/vim-surround"
    use "w0rp/ale"
    use {
        "prettier/vim-prettier",
        run = "yarn install"
    }
    use "tpope/vim-fugitive"
    use "airblade/vim-gitgutter"
    use "alvan/vim-closetag"
    use "sheerun/vim-polyglot"
    use {
        "ms-jpq/chadtree",
        branch = "chad",
        run = "python3 -m chadtree deps",
    }
    use {
        "nvim-lualine/lualine.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true
        }
    }
    use "jiangmiao/auto-pairs"
    use "arithran/vim-delete-hidden-buffers"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "fannheyward/telescope-coc.nvim"
    use "nvim-treesitter/nvim-treesitter"
    use "neovim/nvim-lspconfig"
    use {
    "hrsh7th/nvim-cmp",
        requires = {
          "L3MON4D3/LuaSnip",
          "hrsh7th/cmp-nvim-lsp",
          "hrsh7th/cmp-path",
          "hrsh7th/cmp-buffer",
          "saadparwaiz1/cmp_luasnip",
        }
  }
end)
