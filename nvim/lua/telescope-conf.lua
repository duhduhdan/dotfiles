local actions = require("telescope.actions")
local lga = require("telescope-live-grep-args.actions")

require("telescope").setup{
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
}
