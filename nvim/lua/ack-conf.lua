local g = require("helpers").g
local cmd = require("helpers").cmd
local map = require("helpers").map

g.ackprg = "rg --vimgrep --type-not sql --smart-case --ignore"
g.ack_autoclose = 1
g.ack_use_cword_for_empty_search = 1
g.ackhighlight = 1

cmd("cnoreabbrev Ack Ack!")
map("n", "<leader>/", "<cmd>Ack!<Space>")
