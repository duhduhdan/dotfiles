let g:lightline = {}

let g:lightline.component_expand = {
    \ 'linter_checking': 'lightline#ale#checking',
    \ 'linter_warnings': 'lightline#ale#warnings',
    \ 'linter_errors': 'lightline#ale#errors',
    \ 'linter_ok': 'lightline#ale#ok',
    \ 'buffers': 'lightline#bufferline#buffers',
    \ }

let g:lightline.component_type = {
    \ 'linter_checking': 'left',
    \ 'linter_warnings': 'warning',
    \ 'linter_errors': 'error',
    \ 'linter_ok': 'left',
    \ 'buffers': 'tabsel',
    \ }

let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#unnamed = '(⌐■_■)'
let g:lightline#bufferline#number_map = {
    \ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
    \ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'
    \ }
let g:lightline#bufferline#unicode_symbols = 1

let g:lightline.tabline = { 'left': [['buffers']], 'right': [['close']] }

let g:lightline.active = {
    \ 'right': [
    \           [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
    \           [ 'percent' ],
    \           [ 'fileformat', 'fileencoding', 'filetype' ] ],
    \ 'left': [ [ 'mode', 'paste' ],
    \           [ 'lineinfo' ],
    \           [ 'gitbranch', 'readonly', 'modified' ] ]
    \ }

let g:lightline.component_function = {
      \ 'gitbranch': 'LightlineFugitive',
      \ 'cocstatus': 'coc#status'
      \ }

let g:lightline.colorscheme = 'nord'

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? ''.branch : ''
  endif
  return ''
endfunction
