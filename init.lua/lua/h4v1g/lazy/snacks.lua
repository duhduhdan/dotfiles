return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = {
        sections = {
          {
            { section = "header" },
            {
              section = "keys",
              gap = 1,
              padding = 1,
            },
            { section = "startup" },
          },
        },
      },
      notifier = {
        timeout = 3000,
        style = "compact",
      },
      picker = {
        sources = {
          grep = {
            win = {
              input = {
                keys = {
                  ["<c-e>"] = { "exclude_noise", mode = { "i", "n" } }
                }
              }
            },
            actions = {
              exclude_noise = function(picker)
                picker.opts.glob = {
                  "!**/__tests__/**",
                  "!**/cypress/**",
                  "!**/translations/**",
                  "!**/scripts/**",
                  "!**/ios/**",
                  "!**/android/**",
                  "!**/docs/**",
                  "!**/examples/**",
                  "!**/node_modules/**",
                  "!**/.yarn/**",
                  "!*.md",
                  "!*eslint*",
                }
                picker:find()
              end
            }
          }
        }
      },
      statuscolumn = {
        left = { "mark", "sign" },
        right = { "fold", "git" },
        folds = {
          open = false,
          git_hl = false,
        },
        git = {
          patterns = { "MiniDiffSign" }
        },
        refresh = 50
      },
      indent = { enabled = true },
      scroll = { enabled = true },
      words = { enabled = true },
      input = { enabled = true },
      zen = { enabled = true },
    },
    keys = {
      { "<leader>tt",  function() Snacks.terminal() end,                  desc = "Toggle Terminal" },
      { "<leader>un",  function() Snacks.notifier.hide() end,             desc = "Dismiss All Notifications" },
      { "<leader>zz",  function() Snacks.zen() end,                       desc = "Toggle Zen" },
      { "<leader>e",   function() Snacks.explorer() end,                  desc = "File Explorer" },
      { "<leader>ff",  function() Snacks.picker.smart() end,              desc = "Smart Find Files" },
      { "<leader>ss",  function() Snacks.picker.grep() end,               desc = "Grep" },
      { "<leader>fb",  function() Snacks.picker.buffers() end,            desc = "List buffers" },
      { "<leader>bf",  function() Snacks.picker.lines() end,              desc = "Find in buffer" },
      { "<leader>sf",  function() Snacks.picker.lsp_symbols() end,        desc = "Document symbols" },
      { "<leader>x",   function() Snacks.picker.commands() end,           desc = "List commands" },
      { "<leader>fh",  function() Snacks.picker.help() end,               desc = "Neovim docs" },
      { "<leader>su",  function() Snacks.picker.undo() end,               desc = "Undo history" },
      { "<leader>pws", function() Snacks.picker.grep_word() end,          desc = "Visual selection or word", mode = { "n", "x" } },
      { "<leader>td",  function() Snacks.picker.diagnostics() end,        desc = "Diagnostics" },
      { "<leader>tb",  function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer diagnostics" },
    },
    init = function()
      local progress = vim.defaulttable()
      vim.api.nvim_create_autocmd("LspProgress", {
        callback = function(ev)
          local client = vim.lsp.get_client_by_id(ev.data.client_id)
          local value = ev.data.params.value
          if not client or type(value) ~= "table" then
            return
          end
          local p = progress[client.id]

          for i = 1, #p + 1 do
            if i == #p + 1 or p[i].token == ev.data.params.token then
              p[i] = {
                token = ev.data.params.token,
                msg = ("[%3d%%] %s%s"):format(
                  value.kind == "end" and 100 or value.percentage or 100,
                  value.title or "",
                  value.message and (" **%s**"):format(value.message) or ""
                ),
                done = value.kind == "end",
              }
              break
            end
          end

          local msg = {}
          progress[client.id] = vim.tbl_filter(function(v)
            return table.insert(msg, v.msg) or not v.done
          end, p)

          local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
          vim.notify(table.concat(msg, "\n"), "info", {
            id = "lsp_progress",
            title = client.name,
            opts = function(notif)
              notif.icon = #progress[client.id] == 0 and " "
                  or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
            end,
          })
        end,
      })
    end
  }
}
