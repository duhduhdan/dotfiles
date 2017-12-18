" -----------------------------------------------------
" Colorschemes
" -----------------------------------------------------
Plug 'colepeters/spacemacs-theme.vim'
Plug 'nightsense/simplifysimplify'
Plug 'nightsense/vim-crunchbang'
Plug 'exitface/synthwave.vim'
Plug 'jonathanfilip/vim-lucius'
Plug 'junegunn/seoul256.vim'
Plug 'aereal/vim-colors-japanesque'
Plug 'raphamorim/lucario'
Plug 'tyrannicaltoucan/vim-deep-space'

" -----------------------------------------------------
" FZF Goodness
" -----------------------------------------------------
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

nnoremap <leader>f :Files<Cr>
nnoremap <leader>g :GFiles<Cr>
nnoremap <leader>fb :Buffers<Cr>
nnoremap <leader>l :Lines<Cr>
nnoremap <leader>bl :BLines<Cr>
nnoremap <leader>a :Ag<Cr>

" -----------------------------------------------------
" Language agnostic
" -----------------------------------------------------
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/splitjoin.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
  " use tab for completion
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

Plug 'w0rp/ale'
  let g:ale_lint_on_text_changed = 'always'
  let g:ale_linters = { 'javascript': ['jscs', 'jshint'] }

" -----------------------------------------------------
" External tools intergration plugins
" -----------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" -----------------------------------------------------
" Javascript
" -----------------------------------------------------
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'vim-scripts/JavaScript-Indent', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
  let g:jsx_ext_required = 0
Plug 'leafgarland/typescript-vim'

" -----------------------------------------------------
" HTML/CSS
" -----------------------------------------------------
Plug 'groenewege/vim-less', { 'for': 'less' }

" -----------------------------------------------------
" Interface improvement
" -----------------------------------------------------
Plug 'scrooloose/nerdtree'
  let g:NERDTreeMinimalUI = 1 " not so much cruft
  let g:NERDTreeShowHidden = 1 " Should hidden files
  let g:NERDTreeShowLineNumbers = 1
  let g:NERDTreeIgnore=['\.DS_Store']
  let g:NERDTreeShowBookmarks = 0
  hi def link NERDTreeRO Normal
  hi def link NERDTreePart StatusLine
  hi def link NERDTreeDirSlash Directory
  hi def link NERDTreeCurrentNode Search
  hi def link NERDTreeCWD Normal

Plug 'jistr/vim-nerdtree-tabs'
  nnoremap <leader>d :NERDTreeTabsToggle<CR>
  nnoremap <leader>D :NERDTreeTabsFind<CR>

Plug 'roman/golden-ratio'

Plug 'Yggdroot/indentLine'
  let g:indentLine_enabled = 0

Plug 'itchyny/lightline.vim'
  let g:lightline = {'colorscheme': 'Tomorrow_Night_Blue'}

Plug 'vimwiki/vimwiki'

Plug 'JamshedVesuna/vim-markdown-preview'
  let vim_markdown_preview_github=1

Plug 'junegunn/goyo.vim'

" -----------------------------------------------------
" Dependencies
" -----------------------------------------------------
Plug 'tpope/vim-repeat'
