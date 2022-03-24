local map = require("helpers").map

map("i", "jk", "<esc>")
map("n", "<leader>fs", ":w<cr>")
map("n", "<leader>qq", ":q<cr>")
map("n", "<leader>wc", ":close<cr>")
map("n", "<esc>", ":noh<cr>")

map("n", "<leader>wv", "<cmd>vsplit<cr>")
map("n", "<leader>ws", "<cmd>split<cr>")

map("n", "<C-t>", "<cmd>terminal<cr>")

map("n", "<leader>wl", "<C-w>l")
map("n", "<leader>wh", "<C-w>h")
map("n", "<leader>wk", "<C-w>k")
map("n", "<leader>wj", "<C-w>j")

map("t", "<leader>k", "<C-\\><C-n")

map("n", "<leader>b", "<cmd>ls<cr>")

map("n", "]b", "<cmd>bn<cr>")
map("n", "[b", "<cmd>bp<cr>")
map("n", "<leader>bk", "<cmd>bd<cr>")

map("n", "<leader>w=", "<c-w>=")

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>Telescope git_files<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
map("n", "<leader>ss", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>x", "<cmd>Telescope commands<cr>")

map("n", "<c-n>", "<cmd>NvimTreeToggle<cr>")
