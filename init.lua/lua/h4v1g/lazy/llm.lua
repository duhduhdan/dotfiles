return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",
    {
      "stevearc/dressing.nvim",
      opts = {},
    },
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("codecompanion").setup({
      adapters = {
        anthropic = function()
          local ant = vim.fn.getenv("HOME") .. "/" .. ".secrets/anthropic"
          local ant_content = vim.fn.readfile(ant)[1]

          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = ant_content
            }
          })
        end
      },
      strategies = {
        chat = {
          adapter = "anthropic"
        },
        inline = {
          adapter = "anthropic"
        },
        agent = {
          adapter = "anthropic"
        },
      },
      tools = {
        "code_runner",
        "buffer_editor",
        "rag",
        "vitest"
      }
    })
  end
}
