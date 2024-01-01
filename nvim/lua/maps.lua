local map = require("helpers").map

map("i", "jk", "<esc>") -- get back to normal mode
map("n", "<leader>fs", ":w<cr>") -- save file
map("n", "<leader>qq", ":q<cr>") -- quit
map("n", "<leader>wc", ":close<cr>") -- close split window
map("n", "<esc>", ":noh<cr>") --clear search highlight

map("n", "<leader>wv", "<cmd>vsplit<cr>") -- vertical split
map("n", "<leader>ws", "<cmd>split<cr>") -- horizontal split

map("n", "<leader>wl", "<C-w>l") -- move to right split
map("n", "<leader>wh", "<C-w>h") -- move to left split
map("n", "<leader>wk", "<C-w>k") -- move to top split
map("n", "<leader>wj", "<C-w>j") -- move to bottom split

map("n", "<leader>d", "d0kJ") -- remove leading space, join two lines

map("n", "[b", "<cmd>bn<cr>") -- next buffer
map("n", "]b", "<cmd>bp<cr>") -- previous buffer
map("n", "<leader>bk", "<cmd>bd<cr>") -- kill buffer

map("n", "<leader>w=", "<c-w>=") -- balance splits

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files
map("n", "<leader>fg", "<cmd>Telescope git_files<cr>") -- find git files
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- find buffers
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- find help tags
map("n", "<leader>bf", "<cmd>Telescope current_buffer_fuzzy_find<cr>") -- find in current buffer
map("n", "<leader>bt", "<cmd>Telescope current_buffer_tags<cr>") -- find tags in current buffer
map("n", "<leader>ss", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>") -- search with args
map("n", "<leader>x", "<cmd>Telescope commands<cr>") -- find commands to exec

map("n", "<c-n>", "<cmd>NvimTreeToggle<cr>") -- toggle file tree
map("n", "<c-N>", "<cmd>NvimTreeFindFileToggle<cr>") -- find file in tree

map("n", "<leader>lg", "<cmd>LazyGitCurrentFile<cr>") -- lazygit current file
