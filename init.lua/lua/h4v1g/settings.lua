vim.g.mapleader = " "
vim.g.localmapleader = " "

vim.opt.autoread = true
vim.opt.title = true
vim.opt.ruler = true
vim.opt.history = 500

vim.opt.autoindent = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.clipboard = vim.opt.clipboard + "unnamedplus"

vim.opt.list = false
vim.opt.tabpagemax = 30
vim.opt.showcmd = true

vim.opt.showtabline = 0

vim.opt.inccommand = "split"

vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 0

vim.opt.wildmenu = true
vim.opt.wildignore = "*.DS_Store, */node_modules/*, */__snapshots__/*, */tmp/**, */.jest/*, '*/.next/*'"

vim.opt.hidden = true
vim.opt.scrolloff = 5

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.showmatch = true
vim.opt.mat = 2

vim.opt.encoding = "utf8"
vim.opt.number = true

vim.opt.laststatus = 2
vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.linespace = 3
vim.opt.cmdheight = 2

vim.opt.rnu = true

vim.opt.background = "dark"
vim.opt.termguicolors = true

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.autoread = true
vim.opt.autowrite = false

vim.opt.backspace = "indent,eol,start"

vim.opt.conceallevel = 1
