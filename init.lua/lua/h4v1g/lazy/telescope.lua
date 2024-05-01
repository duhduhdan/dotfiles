return {
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.5",
    dependencies = {
      "nvim-telescope/telescope-live-grep-args.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local actions = require("telescope.actions")
      local builtin = require("telescope.builtin")
      local lga = require("telescope-live-grep-args.actions")

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
              ["<esc>"] = actions.close,
              ["<C-u"] = false,
            },
          },
        },
        extensions = {
          live_grep_args = {
            auto_quoting = true,
            mappings = {
              i = {
                ["<C-k>"] = lga.quote_prompt(),
                ["<C-i>"] = lga.quote_prompt({ postfix = " --iglob " }),
                ["<C-g>"] = lga.quote_prompt({ postfix = " --iglob '*.graphql' " }),
                ["<C-t>"] = lga.quote_prompt({ postfix = " --iglob '*.ts' " }),
                ["<C-j>"] = lga.quote_prompt({ postfix = " --iglob '*.tsx' " }),
              },
            },
          },
        },
      })

      vim.keymap.set("n", "<leader>pws", function()
        local word = vim.fn.expand("<cword>")
        builtin.grep_string({ search = word })
      end)

      vim.keymap.set("n", "<leader>pWs", function()
        local word = vim.fn.expand("<cWORD>")
        builtin.grep_string({ search = word })
      end)

      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
      vim.keymap.set("n", "<leader>bf", builtin.current_buffer_fuzzy_find, {})
      vim.keymap.set("n", "<leader>x", builtin.commands, {})
      vim.keymap.set("n", "<leader>ss", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>")
    end
  },
}
