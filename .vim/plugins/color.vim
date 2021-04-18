augroup CustomColorHighlight
  autocmd!
  autocmd ColorScheme * call s:set_color()
augroup END

function s:set_color()

  highlight  Search guifg=#221392
  highlight  IncSearch guifg=#221392

  call s:set_color_barbar()
  call s:set_telescope()
endfunc

function s:set_color_barbar()
   highlight BufferCurrent guifg=#59b2e9 guibg=#222546
   highlight BufferCurrentSign guifg=#59b2e9 guibg=#222546
   highlight BufferCurrentIndex guifg=#59b2e9 guibg=#222546
   highlight BufferCurrentIcon guifg=#59b2e9 guibg=#222546
   highlight BufferCurrentMod guifg=#c0d1f1 guibg=#222546
   highlight BufferCurrentTarget guifg=#c0d1f1 guibg=#222546
   " highlight BufferVisible guifg=# guibg=#
   " highlight BufferVisibleIndex guifg=# guibg=#
   highlight BufferVisibleMod guifg=# guibg=#5f6174
   " highlight BufferVisibleSign guifg=# guibg=#
   " highlight BufferVisibleTarget guifg=# guibg=#
   " highlight BufferInactive guifg=# guibg=#
   " highlight BufferInactiveIndex guifg=# guibg=#
   " highlight BufferInactiveSign guifg=# guibg=#
   " highlight BufferInactiveTarget guifg=# guibg=#
   highlight BufferInactiveIndexMod guifg=#4a6f7c guibg=#
   highlight BufferInactiveMod guifg=#4a6f7c guibg=#
   " highlight BufferTabpages guifg=# guibg=#
   " highlight BufferTabpageFill guifg=# guibg=#
   " highlight BufferVisibleIcon guifg=# guibg=#
   " highlight BufferInactiveIcon guifg=# guibg=#
endfunc

function s:set_telescope()
  highlight TelescopeSelection      guifg=#4883d5 gui=bold " selected item
  highlight TelescopeSelectionCaret guifg=#CC241D " selection caret
  highlight TelescopeMultiSelection guifg=#928374 " multisections
  highlight TelescopeNormal         guibg=#00000  " floating windows created by telescope.

  " Border highlight groups.
  highlight TelescopeBorder         guifg=#ffffff
  highlight TelescopePromptBorder   guifg=#ffffff
  highlight TelescopeResultsBorder  guifg=#ffffff
  highlight TelescopePreviewBorder  guifg=#ffffff

  " Used for highlighting characters that you match.
  highlight TelescopeMatching       guifg=#ff368f

  " Used for the prompt prefix
  highlight TelescopePromptPrefix   guifg=red
endfunc

