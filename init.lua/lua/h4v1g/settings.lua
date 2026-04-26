vim.g.mapleader = " "
vim.g.localmapleader = " "

-- editing behavior
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.backspace = "indent,eol,start"
vim.opt.hidden = true
vim.opt.autoread = true
vim.opt.autowrite = false

-- display and ui
vim.opt.title = true
vim.opt.ruler = true
vim.opt.number = true
vim.opt.rnu = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.cmdheight = 2
vim.opt.linespace = 3
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.showtabline = 0
vim.opt.scrolloff = 5
vim.opt.winborder = "rounded"
vim.opt.list = false

-- search behavior
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.showmatch = true
vim.opt.mat = 2

-- clipboard and registers
vim.opt.clipboard = vim.opt.clipboard + "unnamedplus"

-- file and backup management
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")

-- perf
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 0

-- cli and completion
vim.opt.wildmenu = true
vim.opt.wildignore = "*.DS_Store, */node_modules/*, */__snapshots__/*, */tmp/**, */.jest/*, '*/.next/*'"
vim.opt.inccommand = "split"

-- history and session
vim.opt.history = 500

-- theme + aesthetics
vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.opt.conceallevel = 1

-- misc
vim.opt.encoding = "utf8"
vim.opt.tabpagemax = 30
