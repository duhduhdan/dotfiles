"  =========================================
"     Dependencies
"  =========================================
Plug 'tpope/vim-repeat'


"  =========================================
"     Colorschemes
"  =========================================
Plug 'ryuta69/elly.vim'

Plug 'embark-theme/vim', { 'as': 'embark' }

Plug 'ghifarit53/tokyonight-vim'

Plug 'romgrk/doom-one.vim'

Plug 'artanikin/vim-synthwave84'


"  =========================================
"     FZF Goodness
"  =========================================
" Plug '/usr/local/opt/fzf'

" Plug 'junegunn/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
  nnoremap <leader>g :GFiles<Cr>

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
Plug 'neoclide/coc.nvim', {'tag': 'v0.0.80', 'branch': 'release'}

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
  let g:prettier#config#print_width = 120
  let g:prettier#config#jsx_bracket_same_line = 'false'
  let g:prettier#config#bracket_spacing = 'true'
  let g:prettier#config#single_quote = 'true'

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


"  =========================================
"     Interface improvement
"  =========================================
Plug 'tpope/vim-vinegar'

Plug 'itchyny/lightline.vim'

Plug 'maximbaz/lightline-ale'

Plug 'vimwiki/vimwiki'

Plug 'jiangmiao/auto-pairs'

Plug 'mgee/lightline-bufferline'
  nmap <Leader>1 <Plug>lightline#bufferline#go(1)
  nmap <Leader>2 <Plug>lightline#bufferline#go(2)
  nmap <Leader>3 <Plug>lightline#bufferline#go(3)
  nmap <Leader>4 <Plug>lightline#bufferline#go(4)
  nmap <Leader>5 <Plug>lightline#bufferline#go(5)
  nmap <Leader>6 <Plug>lightline#bufferline#go(6)
  nmap <Leader>7 <Plug>lightline#bufferline#go(7)
  nmap <Leader>8 <Plug>lightline#bufferline#go(8)
  nmap <Leader>9 <Plug>lightline#bufferline#go(9)
  nmap <Leader>0 <Plug>lightline#bufferline#go(10)

Plug 'arithran/vim-delete-hidden-buffers'
  nnoremap <leader>v :DeleteHiddenBuffers<CR>
