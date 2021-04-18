augroup CustomColorHighlight
  autocmd!
  autocmd ColorScheme * call s:set_color()
augroup END

function s:set_color()
  highlight Search guifg=#221392
  highlight IncSearch guifg=#221392
  highlight Vimstring guifg=#e5b49c
  highlight luastring guifg=ee5b49c

  call Set_color_barbar()
  call Set_telescope()
  call Set_indent_guides()
endfunc
