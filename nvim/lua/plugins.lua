vim.cmd [[packadd packer.nvim]]

return require"packer".startup(function()
    use "wbthomason/packer.nvim"
    use "tpope/vim-repeat"
    use "Shatur/neovim-ayu"
    use "folke/tokyonight.nvim"
    use "RRethy/nvim-base16"
    use "edeneast/nightfox.nvim"
    use "Shougo/denite.nvim"
    use "chemzqm/denite-git"
    use "tpope/vim-commentary"
    use "tpope/vim-surround"
    use "w0rp/ale"
    use {
        "prettier/vim-prettier",
        run = "yarn install",
    }
    use "tpope/vim-fugitive"
    use "airblade/vim-gitgutter"
    use "alvan/vim-closetag"
    use {
        "nvim-lualine/lualine.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            opt = true,
        }
    }
    use "jiangmiao/auto-pairs"
    use "windwp/nvim-ts-autotag"
    use "arithran/vim-delete-hidden-buffers"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "easymotion/vim-easymotion"
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
    use {
        "kyazdani42/nvim-tree.lua",
        requires = {
          "kyazdani42/nvim-web-devicons",
        },
        config = function() require"nvim-tree".setup {} end
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
end)
