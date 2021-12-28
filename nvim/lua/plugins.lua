vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
  use "savq/paq-nvim"
  use "ghifarit53/tokyonight-vim"
  use "mileszs/ack.vim"
  use {"neoclide/coc.nvim", branch = "release"}
  use "Shougo/denite.nvim"
  use "chemzqm/denite-git"
  use "neoclide/coc-denite"
  use "tpope/vim-commentary"
  use "tpope/vim-surround"
  use "w0rp/ale"
  use {"prettier/vim-prettier", run = "yarn install"}
  use "tpope/vim-fugitive"
  use "airblade/vim-gitgutter"
  use "alvan/vim-closetag"
  use "sheerun/vim-polyglot"
  use {"ms-jpq/chadtree", branch = "chad", run = "python3 -m chadtree deps"}
  use "itchyny/lightline.vim"
  use "maximbaz/lightline-ale"
  use "jiangmiao/auto-pairs"
  use "arithran/vim-delete-hidden-buffers"
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"
end)
