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
      {
        "<leader>tq",
        "<cmd>Trouble quickfix toggle filter.buf=0<cr>",
        desc = "Buffer quickfix (Trouble)",
      },
    },
    opts = {},
  },
}
