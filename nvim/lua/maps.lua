local map = require("helpers").map

map("i", "jk", "<esc>")
map("n", "<leader>fs", ":w<cr>")
map("n", "<leader>qq", ":q<cr>")
map("n", "<leader>wc", ":close<cr>")
map("n", "<esc>", ":noh<cr>")

map("n", "<leader>wv", "<cmd>vsplit<cr>")
map("n", "<leader>ws", "<cmd>split<cr>")

map("n", "<leader>wl", "<C-w>l")
map("n", "<leader>wh", "<C-w>h")
map("n", "<leader>wk", "<C-w>k")
map("n", "<leader>wj", "<C-w>j")

map("n", "<leader>d", "d0kJ")

map("n", "[b", "<cmd>bn<cr>")
map("n", "]b", "<cmd>bp<cr>")
map("n", "<leader>bk", "<cmd>bd<cr>")

map("n", "<leader>w=", "<c-w>=")

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>Telescope git_files<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
map("n", "<leader>bf", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
map("n", "<leader>bt", "<cmd>Telescope current_buffer_tags<cr>")
-- map("n", "<leader>ss", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>ss", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>")
map("n", "<leader>x", "<cmd>Telescope commands<cr>")

map("n", "<c-n>", "<cmd>NvimTreeToggle<cr>")
map("n", "<c-N>", "<cmd>NvimTreeFindFileToggle<cr>")

map("n", "<leader>lg", "<cmd>:LazyGit<cr>")

map("n", "<leader>dh", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
map("n", "<c-K>", "<cmd>lua require'dap'.step_out()<cr>")
map("n", "<c-l>", "<cmd>lua require'dap'.step_into()<cr>")
map("n", "<c-j>", "<cmd>lua require'dap'.step_over()<cr>")
map("n", "<leader>c", "<cmd>lua require'dap'.continue()<cr>")
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.open({}, 'vsplit')<cr><c-w>l")
map("n", "<leader>dc", "<cmd>lua require'dap'.terminate()<cr>")
map("n", "<leader>di", "<cmd>lua require'dap.ui.widgets'.hover()<cr>")
map("n", "<leader>do", "<cmd>lua require'dapui'.toggle()<cr>")
map("n", "<leader>de", "<cmd>lua require'dap'.set_exception_breakpoints({'all'})<cr>")
map("n", "<leader>da", "<cmd>lua require'debugHelper'.attach()<cr>")
map("n", "<leader>ds", "<cmd>Telescope dap frames<cr>")
map("n", "<leader>db", "<cmd>Telescope dap list_breakpoints<cr>")
