vim.api.nvim_create_user_command("CopyPath", function()
  local path = vim.fn.expand("%:p")
  local home = os.getenv("HOME")
  if home and vim.startswith(path, home) then
    path = path:sub(#home + 1)
  end
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})
