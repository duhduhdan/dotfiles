local harpoon = require("harpoon")

vim.keymap.set("i", "jk", "<esc>") -- get back to normal mode
vim.keymap.set("n", "<leader>fs", ":w<cr>") -- save file
vim.keymap.set("n", "<leader>qq", ":q<cr>") -- quit
vim.keymap.set("n", "<leader>wc", ":close<cr>") -- close split window
vim.keymap.set("n", "<esc>", ":noh<cr>") --clear search highlight

vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<cr>") -- vertical split
vim.keymap.set("n", "<leader>ws", "<cmd>split<cr>") -- horizontal split

vim.keymap.set("n", "<leader>wl", "<C-w>l") -- move to right split
vim.keymap.set("n", "<leader>wh", "<C-w>h") -- move to left split
vim.keymap.set("n", "<leader>wk", "<C-w>k") -- move to top split
vim.keymap.set("n", "<leader>wj", "<C-w>j") -- move to bottom split

vim.keymap.set("n", "<leader>d", "d0kJ") -- remove leading space, join two lines

vim.keymap.set("n", "[b", "<cmd>bn<cr>") -- next buffer
vim.keymap.set("n", "]b", "<cmd>bp<cr>") -- previous buffer
vim.keymap.set("n", "<leader>bk", "<cmd>bd<cr>") -- kill buffer

vim.keymap.set("n", "<leader>w=", "<c-w>=") -- balance splits

vim.keymap.set("n", "<leader>cp", "<cmd>CopyPath<cr>") -- copy path to clipboard

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>") -- find git files
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- find buffers
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- find help tags
vim.keymap.set("n", "<leader>bf", "<cmd>Telescope current_buffer_fuzzy_find<cr>") -- find in current buffer
vim.keymap.set("n", "<leader>bt", "<cmd>Telescope current_buffer_tags<cr>") -- find tags in current buffer
vim.keymap.set("n", "<leader>ss", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>") -- search with args
vim.keymap.set("n", "<leader>ll", ":lua require('telescope-conf').grep_staged_unstaged()<cr>") -- search staged/unstaged files
vim.keymap.set("n", "<leader>x", "<cmd>Telescope commands<cr>") -- find commands to exec

vim.keymap.set("n", "<c-n>", "<cmd>NvimTreeToggle<cr>") -- toggle file tree
vim.keymap.set("n", "<c-N>", "<cmd>NvimTreeFindFileToggle<cr>") -- find file in tree

vim.keymap.set("n", "<leader>lg", "<cmd>LazyGitCurrentFile<cr>") -- lazygit current file

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>wq", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>ww", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>we", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>wr", function() harpoon:list():select(4) end)

-- vim.keymap.set("n", "<leader>td", "<cmd>Trouble document_diagnostics<cr>")
-- vim.keymap.set("n", "<leader>tw", "<cmd>Trouble workspace_diagnostics<cr>")
-- vim.keymap.set("n", "<leader>tf", "<cmd>Trouble quickfix<cr>")
