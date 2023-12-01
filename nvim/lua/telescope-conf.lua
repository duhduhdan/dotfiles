local actions = require("telescope.actions")
local lga_actions = require("telescope-live-grep-args.actions")

require("telescope").setup{
  defaults = {
    file_ignore_patterns = { 
      "node_modules",
      "__snapshots__",
      ".yarn",
      ".vscode"
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-u"] = false
      },
    },
  },
  extensions = {
    live_grep_args = {
      auto_quoting = true,
      mappings = {
        i = {
          ["<C-k>"] = lga_actions.quote_prompt(),
          ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
          ["<C-g>"] = lga_actions.quote_prompt({ postfix = " --iglob '*.graphql' " }),
        }
      }
    }
  }
}
