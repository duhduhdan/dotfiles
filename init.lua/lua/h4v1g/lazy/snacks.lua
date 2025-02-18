return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      terminal = {
        bo = {
          filetype = "snacks_terminal",
        },
        wo = {},
        keys = {
          q = "hide",
          gf = function(self)
            local f = vim.fn.findfile(vim.fn.expand("<cfile>"), "**")
            if f == "" then
              Snacks.notify.warn("No file under cursor")
            else
              self:hide()
              vim.schedule(function()
                vim.cmd("e " .. f)
              end)
            end
          end,
          term_normal = {
            "<esc>",
            function(self)
              self.esc_timer = self.esc_timer or (vim.uv or vim.loop).new_timer()
              if self.esc_timer:is_active() then
                self.esc_timer:stop()
                vim.cmd("stopinsert")
              else
                self.esc_timer:start(200, 0, function() end)
                return "<esc>"
              end
            end,
            mode = "t",
            expr = true,
            desc = "Double escape to normal mode",
          },
        },
      },
      dashboard = {
        enabled = true,
        sections = {
          {
            section = "terminal",
            cmd = "chafa $HOME/Pictures/spike2.jpg --format symbols --symbols vhalf --size 60x36; sleep .1",
            height = 36,
            padding = 1,
          },
          {
            pane = 2,
            { section = "header" },
            { section = "keys",   gap = 1, padding = 1 },
            { section = "startup" },
          },
        },
      },
      notifier = { enabled = true },
    },
    keys = {
      { "<leader>tt", function() Snacks.terminal() end,      desc = "Toggle Terminal" },
      { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
    }
  }
}
