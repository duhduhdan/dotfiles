return {
  "kndndrj/nvim-dbee",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  build = function()
    require("dbee").install()
  end,
  config = function()
    require("dbee").setup({
      sources = {
        -- require("dbee.sources").FileSource:new(vim.fn.getenv("HOME") .. "/" .. ".local/state/nvim/dbee/persistence.json"),
        require("dbee.sources").FileSource:new(vim.fn.stdpath("state") .. "/dbee/persistence.json"),
      },
    })

    vim.keymap.set("n", "<leader>dbo", require("dbee").open)
    vim.keymap.set("n", "<leader>dbc", require("dbee").close)
  end,
}
