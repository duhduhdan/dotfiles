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
      local h = require("null-ls.helpers")
      local methods = require("null-ls.methods")
      local fmt = null_ls.builtins.formatting
      -- local diag = null_ls.builtins.diagnostics

      local oxlint_formatter = h.make_builtin({
        name = "oxlint",
        method = methods.FORMATTING,
        filetypes = { "typescript", "tsx", "jsx", "javascript" },
        -- generator_opts = {
        --   command = "oxlint",
        --   args = {"--fix", "$FILENAME"},
        --   to_stdin = false,
        -- },
        factory = h.formatter_factory,
      })

      require("mason-null-ls").setup({
        ensure_installed = {
          "prettierd",
          -- "oxlint",
          -- "eslint_d"
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
          -- oxlint_formatter,
          -- diag.oxlint.with {
          --   filetypes = {
          --     "typescript",
          --     "tsx",
          --     "jsx",
          --     "javascript",
          --   },
          -- }
          -- require("none-ls.diagnostics.eslint_d").with {
          --   filetypes = {
          --     "typescript",
          --     "tsx",
          --     "jsx",
          --     "javascript",
          --   },
          -- },
        },
      })
    end
  }
}
