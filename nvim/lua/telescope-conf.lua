local actions = require("telescope.actions")

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
}
