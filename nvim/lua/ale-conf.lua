local g = require("helpers").g

g.ale_linters = {
    javascript = {"eslint"},
    ["javascript.jsx"] = {"eslint"},
    javascriptreact = {"eslint"},
    typescript = {"eslint"},
    ["typescript.jsx"] = {"eslint"},
    typescriptreact = {"eslint"}
}

g.ale_fixers = {
    javascript = {"prettier", "eslint"},
    ["javascript.jsx"] = {"prettier", "eslint"},
    javascriptreact = {"prettier", "eslint"},
    typescript = {"prettier", "eslint"},
    ["typescript.jsx"] = {"prettier", "eslint"},
    typescriptreact = {"prettier", "eslint"}
}

g.ale_cache_executable_check_failures = 1

g.ale_fix_on_save = 1
