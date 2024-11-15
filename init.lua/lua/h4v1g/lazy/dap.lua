return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-neotest/nvim-nio",
    "williamboman/mason.nvim",
    "jay-babu/mason-nvim-dap.nvim",
    "leoluz/nvim-dap-go",
  },
  config = function()
    local dap = require("dap")
    local ui = require("dapui")

    local function get_arguments(service, env)
      local filename = "work/tally/.tally/" .. service .. "-args-" .. env
      local fn = vim.fn.getenv("HOME") .. "/" .. filename
      local file_content = vim.fn.readfile(fn)
      return vim.split(file_content[1] or "", " ")
    end

    require("dapui").setup()
    require("nvim-dap-virtual-text").setup()
    require("dap-go").setup({
      delve = {
        detached = vim.fn.has 'win32' == 0,
      },
    })

    dap.adapters.codelldb = {
      type = "server",
      port = "1300",
      executable = {
        command = "codelldb",
        args = { "--port", "1300" }
      }
    }

    dap.adapters.chrome = {
      type = "executable",
      command = "node",
      args = { os.getenv("HOME") .. "/dev/vscode-chrome-debug/out/src/chromeDebug.js" }
    }

    -- dap.adapters.go = {
    --   type = "executable",
    --   command = "dlv",
    --   args = { "dap", "-l", "127.0.0.1:38697" },
    -- }

    dap.configurations.zig = {
      {
        name = "debug zig",
        type = "codelldb",
        request = "launch",

        program = function()
          return vim.fn.input('', vim.fn.getcwd(), 'file')
        end,

        projectDir = "${workspaceFolder}",
        stopOnEntry = false,
        exitAfterTaskReturns = false,
        debugAutoInterpetAllModules = false,
        terminal = "integrated"
      }
    }

    dap.configurations.typescriptreact = {
      {
        name = "debug typescriptreact chrome",
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}",
        skipFiles = { "**/node_modules/**" }
      }
    }

    dap.configurations.typescript = {
      {
        name = "debug typescriptchrome",
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}",
        skipFiles = { "**/node_modules/**" }
      }
    }

    dap.configurations.go = {
      {
        name = "Debug Package",
        type = "go",
        request = "launch",
        program = "${fileDirname}",
        exitAfterTaskReturns = false,
      },
      {
        name = "Debug Package (Arguments)",
        type = "go",
        request = "launch",
        program = "${fileDirname}",
        args = get_arguments,
        exitAfterTaskReturns = false,
      },
      {
        name = "Debug tally API local",
        type = "go",
        request = "launch",
        program = "${fileDirname}",
        args = get_arguments("api", "local"),
        logOutput = "dap",
        showLog = true,
      },
      {
        name = "Debug tally API staging",
        type = "go",
        request = "launch",
        program = "${fileDirname}",
        args = get_arguments("api", "staging")
      },
      {
        name = "Debug tally API prod",
        type = "go",
        request = "launch",
        program = "${fileDirname}",
        args = get_arguments("api", "prod")
      },
    }

    vim.keymap.set("n", "<leader>bb", dap.toggle_breakpoint)

    vim.keymap.set("n", "<leader>h", dap.continue)
    vim.keymap.set("n", "<leader>j", dap.step_into)
    vim.keymap.set("n", "<leader>k", dap.step_over)
    vim.keymap.set("n", "<leader>l", dap.step_out)
    vim.keymap.set("n", "<leader>;", dap.step_back)
    vim.keymap.set("n", "<leader><leader>h", dap.restart)

    vim.fn.sign_define('DapBreakpoint', { text = "", texthl = '', linehl = 'LspInlayHint', numhl = '' })

    dap.listeners.before.attach.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      ui.close()
    end
    dap.listeners.before.event_existed.dapui_config = function()
      ui.close()
    end
  end
}
