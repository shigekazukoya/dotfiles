"plasticboy/vim-markdown
let g:vim_markdown_folding_disabled=1

" masukomi/vim-markdown-folding
set nocompatible

augroup NestedMarkdownFolds
  autocmd!
  autocmd FileType markdown set foldexpr=NestedMarkdownFolds()
  filetype plugin indent on
augroup END

nnoremap <C-k><C-j> zR

nnoremap t0 :s/#\+<Space>//e<CR>
nnoremap t1 :s/#\+<Space>//e<CR>I#<Space><Esc>:noh<CR>w
nnoremap t2 :s/#\+<Space>//e<CR>I##<Space><Esc>:noh<CR>w
nnoremap t3 :s/#\+<Space>//e<CR>I###<Space><Esc>:noh<CR>w
nnoremap t4 :s/#\+<Space>//e<CR>I####<Space><Esc>:noh<CR>w

augroup folding
  autocmd!
  autocmd BufWritePost *.md if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
  autocmd BufRead *.md if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif
augroup END
set viewoptions-=options
