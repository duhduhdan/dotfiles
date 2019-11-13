"  =========================================
"     Dependencies
"  =========================================
Plug 'tpope/vim-repeat'


"  =========================================
"     Colorschemes
"  =========================================
Plug 'arcticicestudio/nord-vim'


"  =========================================
"     FZF Goodness
"  =========================================
Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf.vim'
  nnoremap <leader>g :GFiles<Cr>


"  =========================================
"     Denite and complete
"  =========================================
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

Plug 'Shougo/denite.nvim'

Plug 'chemzqm/denite-git'

Plug 'neoclide/coc-denite'


"  =========================================
"     Language agnostic
"  =========================================
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'

Plug 'w0rp/ale'
  let g:ale_cache_executable_check_failures = 1
  let g:ale_fix_on_save = 1
  let g:ale_linters = {
      \ 'javascript': ['eslint', 'prettier'],
      \ 'javascript.jsx': ['eslint', 'prettier'],
      \ 'typescript': ['eslint', 'prettier'],
      \ 'typescript.tsx': ['eslint', 'prettier'],
      \ 'typescriptreact': ['eslint', 'prettier'],
      \ }
  let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint'],
      \ 'javascript.jsx': ['prettier', 'eslint'],
      \ 'typescript': ['prettier', 'eslint'],
      \ 'typescript.tsx': ['prettier', 'eslint'],
      \ 'typescriptreact': ['prettier', 'eslint']
      \ }
  let g:ale_pattern_options = {
      \ '.*\.d.ts$': {'ale_enabled': 0}
      \ }

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  let g:prettier#config#semi = 'false'
  let g:prettier#config#print_width = 80
  let g:prettier#config#jsx_bracket_same_line = 'false'
  let g:prettier#config#bracket_spacing = 'true'
  let g:prettier#config#single_quote = 'true'

  let g:prettier#config#parser = 'typescript'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'alvan/vim-closetag'
  let g:closetag_filenames = '*.jsx,*.tsx,*.ts,*.js,*.jsx'

Plug 'ianding1/leetcode.vim'
  let g:leetcode_solution_filetype='javascript'
  let g:leetcode_username=$U
  let g:leetcode_password=$PW

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
