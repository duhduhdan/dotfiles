"  =========================================
"     Dependencies
"  =========================================
Plug 'tpope/vim-repeat'


"  =========================================
"     Colorschemes
"  =========================================
Plug 'ghifarit53/tokyonight-vim'

Plug 'artanikin/vim-synthwave84'

Plug 'sainnhe/everforest'


"  =========================================
"     FZF Goodness
"  =========================================
" Plug '/usr/local/opt/fzf'

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
"   nnoremap <leader>g :GFiles<Cr>
"   nnoremap <leader>ss :Files<cr>

Plug 'mileszs/ack.vim'
  let g:ackprg = 'rg --vimgrep --type-not sql --smart-case --ignore'
  let g:ack_autoclose = 1
  let g:ack_use_cword_for_empty_search = 1
  let g:ackhighlight = 1

  cnoreabbrev Ack Ack!
  nnoremap <leader>/ :Ack!<Space>
  " nnoremap <silent> [q :cprevious<CR>
  " nnoremap <silent> ]q :cnext<CR>


"  =========================================
"     Denite and complete
"  =========================================
" Plug 'neoclide/coc.nvim', {'tag': 'v0.0.80', 'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'fannheyward/telescope-coc.nvim'
  nnoremap <leader>dd <cmd>Telescope coc document_symbols<cr>
  nnoremap <leader>ww <cmd>Telescope coc workspace_symbols<cr>

Plug 'Shougo/denite.nvim'

Plug 'chemzqm/denite-git'

Plug 'neoclide/coc-denite'


"  =========================================
"     Language agnostic
"  =========================================
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'

Plug 'w0rp/ale'
  let g:ale_linters = {
     \ 'javascript': ['eslint'],
     \ 'javascript.jsx': ['eslint'],
     \ 'javascriptreact': ['eslint'],
     \ 'typescript': ['eslint'],
     \ 'typescript.tsx': ['eslint'],
     \ 'typescriptreact': ['eslint'],
     \ }
  let g:ale_fixers = {
     \ 'javascript': ['eslint'],
     \ 'javascript.jsx': ['eslint'],
     \ 'javascriptreact': ['eslint'],
     \ 'typescript': ['eslint'],
     \ 'typescript.tsx': ['eslint'],
     \ 'typescriptreact': ['eslint']
     \ }

  let g:ale_cache_executable_check_failures = 1
  let g:ale_fix_on_save = 1
  let g:ale_pattern_options = {
      \ '.*\.d.ts$': {'ale_enabled': 0}
      \ }

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  let g:prettier#config#semi = 'true'
  let g:prettier#config#print_width = 80
  let g:prettier#config#jsx_bracket_same_line = 'false'
  let g:prettier#config#bracket_spacing = 'true'
  let g:prettier#config#single_quote = 'false'

  let g:prettier#exec_cmd_async = 1

  " let g:prettier#config#parser = 'typescript'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'alvan/vim-closetag'
  let g:closetag_filenames = '*.jsx,*.tsx,*.ts,*.js,*.jsx'
  let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'typescriptreact': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ 'javascriptreact': 'jsxRegion'
      \ }

Plug 'sheerun/vim-polyglot'

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
  nnoremap <leader>op <cmd>CHADopen<cr>


"  =========================================
"     Interface improvement
"  =========================================
Plug 'itchyny/lightline.vim'

Plug 'maximbaz/lightline-ale'

Plug 'jiangmiao/auto-pairs'

Plug 'arithran/vim-delete-hidden-buffers'
  nnoremap <leader>bv :DeleteHiddenBuffers<CR>

Plug 'sunjon/shade.nvim'

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'
  nnoremap <leader>ff <cmd>Telescope find_files<cr>
  nnoremap <leader>fg <cmd>Telescope git_files<cr>
  nnoremap <leader>fb <cmd>Telescope buffers<cr>
  nnoremap <leader>fh <cmd>Telescope help_tags<cr>
  nnoremap <leader>ss <cmd>Telescope live_grep<cr>
  nnoremap <leader>x <cmd>Telescope commands<cr>

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
