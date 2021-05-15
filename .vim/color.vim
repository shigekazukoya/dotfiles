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

  if has('nvim')
    call Set_color_barbar()
    call Set_telescope()
    call Set_indent_guides()
  endif

endfunc
