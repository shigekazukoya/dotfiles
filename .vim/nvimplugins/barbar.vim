let bufferline = get(g:, 'bufferline', {})
let bufferline.closable=v:false
let bufferline.icon_custom_colors = v:true

nnoremap <nowait> < <Cmd>BufferPrevious<CR>
nnoremap <nowait> > <Cmd>BufferNext<CR>

nnoremap <Leader>dd <Cmd>BufferClose<CR>

function Set_color_barbar()
   highlight BufferCurrent guifg=#59b2e9 guibg=#133552
   highlight BufferCurrentSign guifg=#59b2e9 guibg=#133552
   highlight BufferCurrentIndex guifg=#59b2e9 guibg=#133552
   highlight BufferCurrentIcon guifg=#59b2e9 guibg=#133552
   highlight BufferCurrentMod guifg=#c0d1f1 guibg=#133552
   highlight BufferCurrentTarget guifg=#c0d1f1 guibg=#133552
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
