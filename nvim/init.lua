-- env
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
  "tpope/vim-commentary",
  "tpope/vim-surround",
  "tpope/vim-fugitive",
  "Shatur/neovim-ayu",
  "folke/tokyonight.nvim",
  "sainnhe/everforest",
  "edeneast/nightfox.nvim",
  "kylechui/nvim-surround",
  "alvan/vim-closetag",
  "kdheepak/lazygit.nvim",
  "jiangmiao/auto-pairs",
  "windwp/nvim-ts-autotag",
  "arithran/vim-delete-hidden-buffers",
  "easymotion/vim-easymotion",
  "Exafunction/codeium.vim",
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup({ icons = false })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    version = '0.1.x',
    dependencies = {
      "nvim-telescope/telescope-live-grep-args.nvim",
      "nvim-lua/plenary.nvim"
    },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = { 
            "node_modules",
            "__snapshots__",
            ".yarn",
            ".vscode",
          },
          mappings = {
            i = {
              ["<esc>"] = require("telescope.actions").close,
              ["<C-u"] = false,
            },
          },
        },
        extensions = {
          live_grep_args = {
            auto_quoting = true,
            mappings = {
              i = {
                ["<C-k>"] = require("telescope-live-grep-args.actions").quote_prompt(),
                ["<C-i>"] = require("telescope-live-grep-args.actions").quote_prompt({ postfix = " --iglob " }),
                ["<C-g>"] = require("telescope-live-grep-args.actions").quote_prompt({ postfix = " --iglob '*.graphql' " }),
                ["<C-t>"] = require("telescope-live-grep-args.actions").quote_prompt({ postfix = " --iglob '*.ts' " }),
                ["<C-j>"] = require("telescope-live-grep-args.actions").quote_prompt({ postfix = " --iglob '*.tsx' " }),
              },
            },
          },
        },
      })
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup()
    end
  },
  {
    "prettier/vim-prettier",
    build = "yarn install",
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      lazy = true,
    },
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          component_separators = {
              left = "",
              right = ""
          },
          section_separators = {
              left = "",
              right = ""
          },
          disabled_filetypes = {},
          always_divide_middle = true
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { "filename" },
          lualine_x = { "encoding", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" }
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        extensions = {}
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "typescript",
          "rust",
          "lua",
          "yaml",
          "vim",
          "dockerfile",
          "css",
          "scss",
          "html",
          "javascript",
          "json",
          "markdown",
          "go",
          "graphql",
        },
        sync_install = false,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        autotag = {
          enable = true
        },
      })
    end
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup()
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = "true",
          auto_trigger = "true",
          debounce = 75,
          keymap = {
            accept = "<C-l>",
            accept_word = "true",
            accept_line = "false",
            next = "<C-]>",
            prev = "<C-[>",
            dismiss = "<C-c>",
          }
        }
      })
      end,
    },
    {
      "VonHeikemen/lsp-zero.nvim",
      branch = 'v2.x',
      dependencies = {
        "neovim/nvim-lspconfig",
        {
          "williamboman/mason.nvim",
          config = function()
            require("mason").setup()
          end,
        },
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
      }
    },
})

-- core
require "settings"
require "maps"
require "closetag-conf"
require "prettier-conf"

-- custom 
require "cmp-conf"
require "lsp-conf"

vim.cmd [[filetype plugin on]]

vim.g.copilot_assume_mapped = true
