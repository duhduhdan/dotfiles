local g = require("helpers").g

g.ale_linters.javascript = { "prettier" }
g.ale_linters["javascript.jsx"] = { "prettier" }
g.ale_linters.javascriptreact = { "prettier" }
g.ale_linters.typescript = { "prettier" }
g.ale_linters["typescript.tsx"] = { "prettier" }
g.ale_linters.typescriptreact = { "prettier" }

g.ale_fixers.javascript = { "prettier" }
g.ale_fixers["javascript.jsx"] = { "prettier" }
g.ale_fixers.javascriptreact = { "prettier" }
g.ale_fixers.typescript = { "prettier" }
g.ale_fixers["typescript.tsx"] = { "prettier" }
g.ale_fixers.typescriptreact = { "prettier" }

g.ale_cache_executable_check_failures = 1
g.ale_fix_on_save = 1
g.ale_pattern_options[".*\\.d.ts$"].ale_enabled = 0
