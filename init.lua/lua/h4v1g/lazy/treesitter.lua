return {
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
        },
        sync_install = false,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
      })
    end
  },
}
