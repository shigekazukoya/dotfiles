let NERDTreeShowHidden=1
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
let NERDTreeShowHidden=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
autocmd BufWritePre * :FixWhitespace
augroup NERD
	au!
  autocmd VimEnter * nested if @% == ''| NERDTree |endif
	autocmd VimEnter * wincmd p
  autocmd VimEnter * nested if @% == '' | e $MYVIMRC| endif
augroup END

nnoremap <Leader>dir <Cmd>NERDTreeFind %<CR>
nnoremap <Leader>dvim <Cmd>NERDTree ~/dotfiles/.vim/plugins<CR>
nnoremap <Leader>didd <Cmd>NERDClose<CR>
nnoremap <Leader>dot <Cmd>NERDTree ~/dotfiles<CR>
