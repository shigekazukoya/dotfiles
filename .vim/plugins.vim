call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-expand-region'
Plug 'yuttie/comfortable-motion.vim'
Plug 'easymotion/vim-easymotion'
Plug 'thinca/vim-quickrun'
Plug 'pepo-le/win-ime-con.nvim'
Plug 'plasticboy/vim-markdown'
Plug 'masukomi/vim-markdown-folding'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'tomtom/tcomment_vim'
Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jacquesbh/vim-showmarks'
Plug 'simeji/winresizer'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'


Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'kana/vim-niceblock'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'tpope/vim-surround'
Plug 'tyru/open-browser.vim'
Plug 'romgrk/doom-one.vim'

if has('nvim')
  Plug 'romgrk/barbar.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'hoob3rt/lualine.nvim'
endif

call plug#end()
