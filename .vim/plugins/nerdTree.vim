let NERDTreeShowHidden=1
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 30
let NERDTreeShowHidden=1
augroup NERD
	au!
  autocmd BufWritePre * :FixWhitespace
  autocmd VimEnter * nested if @% == ''| NERDTree |endif
	autocmd VimEnter * wincmd p
augroup END

nnoremap <Leader>dir <Cmd>NERDTreeFind %<CR>
nnoremap <Leader>dvim <Cmd>NERDTree ~/dotfiles/.vim/plugins<CR>
nnoremap <Leader>nvim <Cmd>NERDTree ~/dotfiles/.vim/nvimplugins<CR>
nnoremap <Leader>hvim <Cmd>NERDTree ~/dotfiles/.vim<CR>
nnoremap <Leader>didd <Cmd>NERDTreeClose<CR>
nnoremap <Leader>dot <Cmd>NERDTree ~/dotfiles<CR>


