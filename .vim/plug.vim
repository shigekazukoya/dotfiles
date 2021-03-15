call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-expand-region'
Plug 'yuttie/comfortable-motion.vim'
"Plug 'brglng/vim-im-select'
" ファイルオープンを便利に
Plug 'Shougo/unite.vim'
" " Unite.vimで最近使ったファイルを表示できるようにする
Plug 'Shougo/neomru.vim'
Plug 'easymotion/vim-easymotion'
Plug 'thinca/vim-quickrun'
Plug 'pepo-le/win-ime-con.nvim'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim',{'branch':'release'}
" Plug 'itchyny/lightline.vim'
Plug 'tomtom/tcomment_vim'
Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons'
call plug#end()
