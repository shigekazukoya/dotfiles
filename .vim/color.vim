set termguicolors
let &t_8f = "\<esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<esc>[48;2;%lu;%lu;%lum"

augroup CustomColorHighlight
  autocmd!
  autocmd ColorScheme * call s:set_color()
augroup END

function s:set_color()
  highlight Search guifg=#221392
  highlight IncSearch guifg=#221392
  highlight Vimstring guifg=#e5b49c
  highlight luastring guifg=#e5b49c
  highlight luastring guifg=#e5b49c
  " highlight mkdNonListItemBlock guifg=#b0c8db

  highlight Cursor guifg=white guibg=#581b2d
  highlight iCursor guifg=white guibg=#f7d4df
  set guicursor=n-v-c:block-Cursor
  set guicursor+=i:ver100-iCursor
  set guicursor+=n-v-c:blinkon0
  set guicursor+=i:blinkwait10

  if has('nvim')
    call Set_color_barbar()
    call Set_telescope()
    call Set_indent_guides()
  endif

endfunc
