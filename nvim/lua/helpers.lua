local helpers = {}

helpers["cmd"] = vim.cmd
helpers["fn"] = vim.fn
helpers["g"] = vim.g
helpers["opt"] = vim.opt
helpers["bo"] = vim.bo
helpers["call"] = vim.call

function helpers.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return helpers
