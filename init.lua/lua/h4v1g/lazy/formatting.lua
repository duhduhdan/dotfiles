return {
  {
    "jay-babu/mason-null-ls.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      local fmt = null_ls.builtins.formatting

      require("mason-null-ls").setup({
        ensure_installed = {
          "prettierd",
        },
        handlers = {}
      })

      null_ls.setup({
        sources = {
          fmt.prettierd.with {
            filetypes = {
              "typescript",
              "tsx",
              "jsx",
              "javascript",
              "astro"
            },
          },
        },
      })
    end
  }
}
