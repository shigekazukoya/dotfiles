  source ~/dotfiles/.vim/plug.vim
  source ~/dotfiles/.vim/airline.vim
  source ~/dotfiles/.vim/unit.vim
  source ~/dotfiles/.vim/indTexObj.vim
  source ~/dotfiles/.vim/easymotion.vim
  source ~/dotfiles/.vim/neadTree.vim
  source ~/dotfiles/.vim/expand_region.vim
  source ~/dotfiles/.vim/ime.vim
  source ~/dotfiles/.vim/coc.vim
  source ~/dotfiles/.vim/tcomment.vim
  source ~/dotfiles/.vim/color.vim
  source ~/dotfiles/.vim/incsearch.vim
  source ~/dotfiles/.vim/winresizer.vim
  source ~/dotfiles/.vim/gitgutter.vim
  source ~/dotfiles/.vim/mark.vim

"system
set clipboard&
set clipboard^=unnamedplus
set mouse=a

" Windows Subsystem for Linux で、ヤンクでクリップボードにコピー
if system('uname -a | grep Microsoft') != ''
augroup myYank
autocmd!
  autocmd TextYankPost * :call system('clip.exe', @")
augroup END
endif


" variables
let mapleader="\<Space>"

"search
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
nnoremap <Esc><Esc> :noh<CR><Esc>

nnoremap n nzz
nnoremap N Nzz
vnoremap n nzz
vnoremap N Nzz

" カーソル下の単語を、置換後の文字列の入力を待つ状態にする
nnoremap <Leader>re :%s;\<<C-R><C-W>\>;g<Left><Left>;
nnoremap gs  :<C-u>%s///ig<Left><Left><Left>
vnoremap gs  :s///g<Left><Left><Left>

"editor
set encoding=utf-8
scriptencoding utf-8
set wrapscan
set number
set ts=4
set shiftwidth=4
set noswapfile
set nobackup

"status
set visualbell t_vb=
set laststatus=2
set wildmenu
set noerrorbells

"IME
set iminsert=0
set imsearch=0

"window
set splitbelow
set splitright

nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>H <C-w>H
nnoremap <Leader>J <C-w>J
nnoremap <Leader>K <C-w>K
nnoremap <Leader>L <C-w>L

nnoremap <Leader>sp :sp<CR><C-w>w
nnoremap <Leader>vs :vs<CR><C-w>w
map <leader>sl <Plug>(easymotion-bd-jk)

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap ! :!

"Tab
nnoremap <silent> tt gt
nnoremap <silent> tr gT
nnoremap te :tab new<Space>

"buffer
nnoremap > :bn<CR>
nnoremap < :bp<CR>
nnoremap <Leader>dd :bd<CR>
nnoremap <Leader>file :Files<CR>

augroup vimrc-checktime
  autocmd!
autocmd WinEnter * checktime
augroup END


"補完
set infercase

"cursor
set cursorline
"ターミナル上のVimのカーソル用
if has('vim_starting')
	let &t_SI .="\e[6 q"
	let &t_EI .="\e[2 q"
	let &t_SR .="\e[4 q"
endif

"mode
inoremap <silent> jj <ESC>:w<CR>
inoremap <C-j> <ESC>

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

"cursolMove
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

nnoremap k gk
nnoremap j gj
vnoremap k gk
vnoremap j gj
nnoremap <silent>J 15j
nnoremap <silent>K 15k

"edit
nnoremap x "_x
vnoremap x "_x
vnoremap p "_dp
nnoremap Y y$

"editor-indent
nnoremap <Leader>, <}
nnoremap <Leader>. >}
vnoremap <Leader>, <<
vnoremap <Leader>. >>

"terminal
"set termwinkey=<C-q>
"tnoremap <silent> <Esc><Esc> <C-q>w

"utility
nnoremap <Leader>vim :e ~/.vimrc<CR>
nnoremap <Leader>so :source ~/.vimrc<CR>
nnoremap <Leader>go :QuickRun<CR>
nnoremap <Leader>dir :NERDTreeFind %<CR>
nnoremap <Leader>dot :NERDTreeToggle ~/dotfiles/.vim<CR>
nnoremap <Leader>ter :vertical terminal<CR>
nnoremap <Leader>zz :Goyo<CR>
nnoremap <Leader>buf :Buffers<CR>
nnoremap <Leader>new :e<Space>

