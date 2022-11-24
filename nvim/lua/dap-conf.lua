local dap = require("dap")

dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = {os.getenv("HOME") .. "/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js"},
}

dap.configurations.typescript = {
  {
    name = "Launch TS",
    type = "node2",
    request = "launch",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    console = "integratedTerminal",
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = "Attach to process",
    type = "node2",
    request = "attach",
    processId = require"dap.utils".pick_process,
  },
  {
    command = "npm run dev:consumer",
    name = "dev:consumer",
    request = "attach",
    type = "node2",
    skipFiles = { "<node_internals>/**" },
    cwd = vim.fn.getcwd()
  },
  {
    command = "npm run dev:crawler",
    name = "dev:crawler",
    request = "attach",
    type = "node2",
    skipFiles = { "<node_internals>/**" },
    cwd = "${workspaceFolder}/packages/indexer"
  }
}