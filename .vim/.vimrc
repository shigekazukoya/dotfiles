let mapleader="\<Space>"
let $VIMRUNTIME="/usr/share/nvim/runtime"
set runtimepath+=/usr/share/nvim/runtime

"plugins
source ~/dotfiles/.vim/plugins.vim
set runtimepath+=~/dotfiles/.vim
runtime! plugins/*.vim

if has('nvim')
  runtime! nvimplugins/*.vim
  lua require('plugins')
endif

"system
set clipboard&
set clipboard^=unnamedplus
set mouse=a

if system('uname -a | grep Microsoft') != ''
	augroup myYank
		autocmd!
		autocmd TextYankPost * :call system('clip.exe', @")
	augroup END
endif

"search
set ignorecase
set smartcase
set incsearch
set hlsearch
set wrapscan
set showmatch
set shortmess-=S
set noexpandtab
nnoremap <Esc><Esc> <Cmd>noh<CR>
nnoremap n nzz
nnoremap N Nzz
vnoremap n nzz
vnoremap N Nzz

"grep
nnoremap tn <Cmd>cn<CR>
nnoremap tN <Cmd>cp<CR>
augroup QuickFix
	autocmd!
	autocmd QuickFixCmdPost *grep* cwindow
	autocmd filetype qf wincmd L
augroup END

"editor
set encoding=utf-8
scriptencoding utf-8
set number
set visualbell t_vb=
set noerrorbells

nnoremap <C-k><C-j> zR
nnoremap + <C-a>
nnoremap - <C-x>

"statusLine
set laststatus=2

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

"Command
set wildmenu
set showcmd
set history=10000

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap ! :!
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

"Tab
nnoremap <silent> tt gt
nnoremap <silent> tr gT
nnoremap te :tab new<Space>

"buffer
set hidden
set autoread
set backup
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/swap
set undofile
set undodir=$HOME/.vim/undo_dir

nnoremap <Leader>dd <Cmd>bd<CR>
nnoremap <Leader>bd <Cmd>bd<CR>

if has('persistent_undo')
	if !isdirectory(&undodir)
		call mkdir(&undodir, "p")
	endif
endif
if !isdirectory(&backupdir)
	call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
	call mkdir(&directory, "p")
endif

augroup vimrc-checktime
	autocmd!
	autocmd InsertEnter,WinEnter * checktime
augroup END

"syntax
syntax enable

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
inoremap <silent> jj <ESC><Cmd>w<CR>
inoremap <C-j> <ESC>

"terminal
tnoremap <ESC> <C-\><C-n>

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
nnoremap <Leader>a ^
vnoremap <Leader>a ^
nnoremap <Leader>e $
vnoremap <Leader>e $h

"yank
nnoremap x "_x
vnoremap x "_x
vnoremap p "_dp
nnoremap <Leader>p "+p
nnoremap Y y$
nnoremap <M-Up> "qddk"qP
nnoremap <M-Down> "qdd"qp

"indent
set expandtab
set autoindent
set ts=2
set shiftwidth=2
nnoremap <Leader>, <}
nnoremap <Leader>. >}
vnoremap <Leader>, <<
vnoremap <Leader>. >>

"utility
nnoremap <Leader>vim <Cmd>e $MYVIMRC<CR>
nnoremap <Leader>so <Cmd>source $MYVIMRC<CR>
nnoremap <Leader>new :e<Space>
nnoremap <Leader>ter <Cmd>vertical terminal<CR>

