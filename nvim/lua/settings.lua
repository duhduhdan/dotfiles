local opt = require("helpers").opt
local cmd = require("helpers").cmd
local g = require("helpers").g

g.mapleader = "<space>"

--opt.nocompatible = true
opt.autoread = true
opt.title = true
opt.ruler = true
opt.history = 500

opt.autoindent = true
opt.softtabstop = 2
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.expandtab = true

opt.clipboard = opt.clipboard + "unnamed"

opt.list = false
opt.tabpagemax = 30
opt.showcmd = true

opt.showtabline = 0

--opt.foldmethod = "indent"
--opt.nofoldenable = true

opt.inccommand = "split"

opt.timeoutlen = 500
opt.ttimeoutlen = 500

opt.wildmenu = true
opt.wildignore="*.DS_Store, */node_modules/*, */__snapshots__/*, */tmp/**, */.jest/*"

opt.hidden = true
opt.scrolloff = 5
--opt.shell = os.getenv("$SHELL")

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.showmatch = true
opt.mat = 2

--opt.noerrorbells = true
--opt.visualbell = true

--opt.noshowmode = true        -- lightline is prettier, don't need this

vim.cmd [[
  au BufRead,BufNewFile *.tag set filetype=html
  au BufRead,BufNewFile *.bash_profile set filetype=sh
  au BufRead,BufNewFile *.bashrc set filetype=sh
  au BufRead,BufNewFile Fastfile set filetype=ruby
  au BufRead,BufNewFile *.tsx set filetype=typescriptreact

  au FileType json syntax match Comment +\/\/.\+$+
]]

opt.encoding = "utf8"
opt.number = true

--opt.noswapfile = true
--opt.nowritebackup = true
--opt.nobackup = true

opt.laststatus = 2
opt.updatetime = 300
opt.signcolumn = "yes"
opt.linespace = 3
opt.cmdheight = 2

opt.rnu = true

-- UI
opt.termguicolors = true

vim.cmd [[syntax on]]

--g.tokyonight_style = "storm"
--g.tokyonight_enable_italic = 1

vim.cmd [[colorscheme tokyonight]]
