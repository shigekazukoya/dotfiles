let bufferline = get(g:, 'bufferline', {})
let bufferline.closable=v:false

nnoremap < :BufferPrevious<CR>zz
nnoremap > :BufferNext<CR>zz
