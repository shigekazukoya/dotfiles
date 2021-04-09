let g:vim_markdown_folding_disabled=1

nnoremap <C-k><C-j> zR

nnoremap t0 :s/#\+<Space>//e<CR>
nnoremap t1 :s/#\+<Space>//e<CR>I#<Space><Esc>:noh<CR>w
nnoremap t2 :s/#\+<Space>//e<CR>I##<Space><Esc>:noh<CR>w
nnoremap t3 :s/#\+<Space>//e<CR>I###<Space><Esc>:noh<CR>w
nnoremap t4 :s/#\+<Space>//e<CR>I####<Space><Esc>:noh<CR>w

