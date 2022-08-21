local opt = require("helpers").opt
local cmd = require("helpers").cmd
local g = require("helpers").g

g.mapleader = " "
g.localmapleader = " "

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

opt.inccommand = "split"

opt.timeoutlen = 500
opt.ttimeoutlen = 500

opt.wildmenu = true
opt.wildignore = "*.DS_Store, */node_modules/*, */__snapshots__/*, */tmp/**, */.jest/*"

opt.hidden = true
opt.scrolloff = 5

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.showmatch = true
opt.mat = 2

opt.encoding = "utf8"
opt.number = true

opt.laststatus = 2
opt.updatetime = 300
opt.signcolumn = "yes"
opt.linespace = 3
opt.cmdheight = 2

opt.rnu = true

opt.background = "dark"
opt.termguicolors = true

g.swapfile = false
g.noswapfile = true

cmd [[syntax on]]

cmd [[colorscheme terafox]]
