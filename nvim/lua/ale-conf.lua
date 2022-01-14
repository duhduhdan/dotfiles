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
    javascript = {"prettier"},
    ["javascript.jsx"] = {"prettier"},
    javascriptreact = {"prettier"},
    typescript = {"prettier"},
    ["typescript.jsx"] = {"prettier"},
    typescriptreact = {"prettier"}
}

g.ale_cache_executable_check_failures = 1

g.ale_fix_on_save = 1
