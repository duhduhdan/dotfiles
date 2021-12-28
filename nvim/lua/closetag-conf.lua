local g = require("helpers").g

g.closetag_filenames = "*.jsx,*.tsx,*.ts,*.js,*.jsx"
g.closetag_regions["typescript.tsx"] = "jsxRegion,tsxRegion"
g.closetag_regions.typescriptreact = "jsxRegion,tsxRegion"
g.closetag_regions["javascript.tsx"] = "jsxRegion"
g.closetag_regions.javascriptreact = "jsxRegion"
