local function attach()
  print("attaching...")

  dap.run({
    type = 'node2',
    request = 'attach',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    processId = require'dap.utils'.pick_process,
    skipFiles = {'<node_internals>/**/*.js'}
  })
end
