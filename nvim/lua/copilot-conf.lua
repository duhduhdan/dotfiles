vim.cmd[[highlight CopilotSuggestion guifg=#555555 ctermfg=8]]

require('copilot_cmp').setup({
  suggestion = { enabled = false },
  panel = { enabled = false },
})
