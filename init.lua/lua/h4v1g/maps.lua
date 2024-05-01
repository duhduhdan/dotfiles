vim.keymap.set("i", "jk", "<esc>")                     -- get back to normal mode
vim.keymap.set("n", "<leader>fs", ":w<cr>")            -- save file
vim.keymap.set("n", "<leader>qq", ":q<cr>")            -- quit
vim.keymap.set("n", "<leader>wc", ":close<cr>")        -- close split window
vim.keymap.set("n", "<esc>", ":noh<cr>")               -- clear search highlight

vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<cr>")   -- vertical split
vim.keymap.set("n", "<leader>ws", "<cmd>split<cr>")    -- horizontal split

vim.keymap.set("n", "<leader>wl", "<C-w>l")            -- move to right split
vim.keymap.set("n", "<leader>wh", "<C-w>h")            -- move to left split
vim.keymap.set("n", "<leader>wk", "<C-w>k")            -- move to top split
vim.keymap.set("n", "<leader>wj", "<C-w>j")            -- move to bottom split

vim.keymap.set("n", "<leader>d", "d0kJ")               -- remove leading space, join two lines

vim.keymap.set("n", "[b", "<cmd>bn<cr>")               -- next buffer
vim.keymap.set("n", "]b", "<cmd>bp<cr>")               -- previous buffer
vim.keymap.set("n", "<leader>bk", "<cmd>bd<cr>")       -- kill buffer

vim.keymap.set("n", "<leader>w=", "<c-w>=")            -- balance splits

vim.keymap.set("n", "<leader>cp", "<cmd>CopyPath<cr>") -- copy path to clipboard
