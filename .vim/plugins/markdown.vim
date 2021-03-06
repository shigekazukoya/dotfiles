set foldlevelstart=2

"plasticboy/vim-markdown
"vim-markdownのfoldを使用しない
" let g:vim_markdown_folding_disabled=0

" masukomi/vim-markdown-folding
set nocompatible

vmap m I*<Space><Esc>:noh<CR>w
vnoremap M :s/*\+<Space>//e<CR>:noh<CR>w

augroup NestedMarkdownFolds
  autocmd!
  filetype plugin indent on
  " autocmd FileType markdown set foldexpr=NesteMarkdownFolds()
augroup END

nnoremap <C-k><C-j> zR

nnoremap t0 :s/#\+<Space>//e<CR>
nnoremap t1 :s/#\+<Space>//e<CR>I#<Space><Esc>:noh<CR>w
nnoremap t2 :s/#\+<Space>//e<CR>I##<Space><Esc>:noh<CR>w
nnoremap t3 :s/#\+<Space>//e<CR>I###<Space><Esc>:noh<CR>w
nnoremap t4 :s/#\+<Space>//e<CR>I####<Space><Esc>:noh<CR>w

command -nargs=1 InsertPng call s:pngPaste(<f-args>)
nnoremap <Leader>png :InsertPng<Space>

augroup folding
  autocmd!
  autocmd BufWritePost,BufWinLeave,BufLeave *.md if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
  autocmd BufEnter,BufWinEnter,BufRead *.md if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif
augroup END
set viewoptions-=options

function s:pngPaste(name)
  let insertText = '![](resource/'.a:name.'.png)'
  exec ':normal i'.insertText
  :!mkdir resource
  let pngSaveCommand = '!powershell.exe ''(Get-Clipboard -Format Image).Save("resource\' .a:name .'.png")'''
  exec pngSaveCommand
endfunc
