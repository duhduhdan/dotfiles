return {
  "nvim-treesitter/nvim-treesitter-refactor",
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "typescript",
          "rust",
          -- "lua",
          "css",
          "html",
          "javascript",
          "json",
          "markdown",
          "markdown_inline",
          "go",
          "graphql",
          "tsx",
          "vimdoc",
          "zig",
          "c",
          "cpp",
          "glsl",
          "odin"
        },
        sync_install = false,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
        refactor = {
          highlight_definitions = {
            enable = true,
          },
          smart_rename = {
            enable = true,
            keymaps = {
              smart_rename = "grr"
            }
          }
        }
      })
    end
  },
}
