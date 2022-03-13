let mapleader="\<Space>"

"plugins==========================================
 source ~/dotfiles/.vim/local.vim
 source ~/dotfiles/.vim/plugins.vim
 set runtimepath+=~/dotfiles/.vim
 runtime! plugins/*.vim

 if has('nvim')
   lua require('plugins')
   runtime! nvimplugins/*.vim
 else
   runtime! vimplugins/*.vim
 endif


nnoremap <Leader>vim <Cmd>e $MYVIMRC<CR>
"color============================================
source ~/dotfiles/.vim/color.vim
colorscheme nord

"system===========================================
 set clipboard&
"  set clipboard^=unnamedplus
 set mouse=a

" if system('uname -a | grep Microsoft') != ''
 augroup myYank
   autocmd!
    autocmd TextYankPost * :call system('clip.exe', @")
  augroup END
" endif

"editor===========================================
set encoding=utf-8
scriptencoding utf-8
set number
set relativenumber
set visualbell t_vb=
set noerrorbells
set infercase
filetype on

"cursol===========================================
set cursorline
"ターミナル上のVimのカーソル用
if has('vim_starting')
	let &t_SI .="\e[6 q"
	let &t_EI .="\e[2 q"
	let &t_SR .="\e[4 q"
endif

nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L g_
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk
nnoremap <silent>J 15j
nnoremap <silent>K 15k
nnoremap <Leader>a ^
vnoremap <Leader>a ^
nnoremap <Leader>e $
vnoremap <Leader>e $h

"カーソル位置の記憶
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

"mode=============================================
set iminsert=0
set imsearch=0

inoremap <silent> jj <ESC><Cmd>w<CR>
inoremap <C-j> <ESC>
tnoremap <ESC> <C-\><C-n>
tnoremap jj <C-\><C-n>
nnoremap gr :%s;\<<C-R><C-W>\>;g<Left><Left>;

"window===========================================
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
nnoremap fh <C-w>h
nnoremap fj <C-w>j
nnoremap fk <C-w>k
nnoremap fl <C-w>l
nnoremap fH <C-w>H
nnoremap fJ <C-w>J
nnoremap fK <C-w>K
nnoremap fL <C-w>L
nnoremap fs :sp<CR><C-w>w
nnoremap fv :vs<CR><C-w>w

"buffer===========================================
set hidden
set autoread
set autochdir
set nobackup
set noswapfile
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/swap
set undofile
set undodir=$HOME/.vim/undo_dir

if !isdirectory(&backupdir)
	call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
	call mkdir(&directory, "p")
endif
if has('persistent_undo')
	if !isdirectory(&undodir)
		call mkdir(&undodir, "p")
	endif
endif

"barbar.vimで設定
" nnoremap < <Cmd>bp<CR>
" nnoremap > <Cmd>bn<CR>
nnoremap t, <Cmd>bp<CR>
nnoremap t. <Cmd>bn<CR>

augroup createFile
  autocmd! BufWritePre *
        \if !isdirectory(expand("%:p:h")) |
        \  call mkdir(expand("%:p:h"), "p") |
        \endif
augroup END

"Tab==============================================
" nnoremap <silent> tt gt
" nnoremap <silent> tr gT

"command==========================================
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
set showcmd
set history=10000

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap ! :!
nnoremap <CR> :
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>

"search===========================================
set ignorecase
set smartcase
set incsearch
set hlsearch
set wrapscan
set showmatch
set shortmess-=S
set noexpandtab

nnoremap <silent><C-l> <C-l><Cmd>nohlsearch<CR>
nnoremap n nzz
nnoremap N Nzz
vnoremap n nzz
vnoremap N Nzz

"grep=============================================
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
augroup QuickFix
	autocmd!
	autocmd QuickFixCmdPost *grep* cwindow
	autocmd filetype qf wincmd L
augroup END

"yank=============================================
nnoremap x "_x
vnoremap x "_x
vnoremap p "_dp
nnoremap <Leader>p "+p
nnoremap Y y$
nnoremap <M-Up> "qdd<Up>"qP
nnoremap <M-Down> "qdd"qp
vnoremap <M-Up> "qx<Up>"qP`[V`]
vnoremap <M-Down> "qx"qp`[V`]

"indent===========================================
set breakindent
set expandtab
set autoindent
set ts=2
set shiftwidth=2

nnoremap <Leader>, <}
nnoremap <Leader>. >}
vnoremap <Leader>, <<
vnoremap <Leader>. >>

"syntax===========================================
syntax enable

"statusLine=======================================
set laststatus=2

"utility==========================================
nnoremap + <C-a>
nnoremap - <C-x>
inoremap <C-t> <Esc><Left>"qx"qpa
nnoremap <C-CR> mzo<ESC>`z

"settings-Utility=================================
nnoremap <Leader>vim <Cmd>e $MYVIMRC<CR>
nnoremap <Leader>so :source $MYVIMRC<CR>:noh<CR>
nnoremap <Leader>tmux <Cmd>e ~/.tmux.conf<CR>
nnoremap <Leader>fish <Cmd>e ~/.config/fish/config.fish<CR>
nnoremap <Leader>exp <Cmd>!explorer.exe .<CR>

nnoremap <leader>hi <Cmd>echo synIDattr(synID(line("."), col("."), 1), "name")<CR>

"set filetype=====================================
augroup SetFileType
  autocmd!
  autocmd BufNewFile,BufRead *.fish setf fish
augroup end

