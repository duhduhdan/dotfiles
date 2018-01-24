let g:fzf_colors = {
    \ 'fg':      [ 'fg', 'Normal' ],
    \ 'bg':      [ 'bg', 'Normal' ],
    \ 'hl':      [ 'fg', 'Comment' ],
    \ 'fg+':     [ 'fg', 'CursorLine', 'CursorColumn', 'Normal' ],
    \ 'bg+':     [ 'bg', 'CursorLine', 'CursorColumn' ],
    \ 'hl+':     [ 'fg', 'Statement' ],
    \ 'info':    [ 'fg', 'PreProc' ],
    \ 'border':  [ 'fg', 'Ignore' ],
    \ 'prompt':  [ 'fg', 'Conditional' ],
    \ 'pointer': [ 'fg', 'Exception' ],
    \ 'marker':  [ 'fg', 'Keyword' ],
    \ 'spinner': [ 'fg', 'Label' ],
    \ 'header':  [ 'fg', 'Comment' ]
    \ }

function! s:tags_sink(line)
  let parts = split(a:line, '\t\zs')
  let excmd = matchstr(parts[2:], '^.*\ze;"\t')
  execute 'silent e' parts[1][:-2]
  let [magic, &magic] = [&magic, 0]
  execute excmd
  let &magic = magic
endfunction

function! s:tags()
  if empty(tagfiles())
    echohl WarningMsg
    echom 'Preparing tags...'
    echohl None
    call system('ctags -R -f ./.git/tags --exclude=.git --exclude=node_modules')
  endif

  call fzf#run({
        \ 'source':  'cat '.join(map(tagfiles(), 'fnamemodify(v:val, ":S")')).
        \            '| grep -v -a ^!',
        \ 'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
        \ 'down':    '40%',
        \ 'sink':    function('s:tags_sink')})
endfunction

command! Tags call s:tags()
