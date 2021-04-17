let bufferline = get(g:, 'bufferline', {})
let bufferline.closable=v:false
let bufferline.auto_hide = v:true

nnoremap < :BufferPrevious<CR>zz
nnoremap > :BufferNext<CR>zz

nnoremap <Leader>dd <Cmd>BufferClose<CR>
