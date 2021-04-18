let bufferline = get(g:, 'bufferline', {})
let bufferline.closable=v:false
let bufferline.auto_hide = v:true
let bufferline.icon_custom_colors = v:true

nnoremap < :BufferPrevious<CR>zz
nnoremap > :BufferNext<CR>zz

nnoremap <Leader>dd <Cmd>BufferClose<CR>


