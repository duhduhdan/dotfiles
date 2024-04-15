return {
  {
    "folke/trouble.nvim",
    branch = "dev",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      {
        "<leader>td",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>tb",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer diagnostics (Trouble)",
      },
      -- {
      --   "<leader>tw",
      --   "<cmd>Trouble workspace_diagnostics<cr>",
      --   desc = "Workspace diagnostics (Trouble)",
      -- },
      -- {
      --   "<leader>tf",
      --   "<cmd>Trouble quickfix<cr>",
      --   desc = "Quickfix list (Trouble)",
      -- },
    },
    opts = {},
  },
}
