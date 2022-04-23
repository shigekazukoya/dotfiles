call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim'
Plug 'terryma/vim-expand-region'
Plug 'yuttie/comfortable-motion.vim'
Plug 'easymotion/vim-easymotion'
Plug 'thinca/vim-quickrun'
Plug 'plasticboy/vim-markdown'
Plug 'masukomi/vim-markdown-folding'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
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
Plug 'yuki-yano/fern-preview.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'kana/vim-niceblock'
Plug 'tpope/vim-surround'
Plug 'tyru/open-browser.vim'
Plug 'thinca/vim-scouter'
Plug 'preservim/tagbar'

Plug 'liuchengxu/vista.vim'
Plug 'cohama/lexima.vim'
Plug 'rust-lang/rust.vim'
Plug 'previm/previm'

Plug 'ferrine/md-img-paste.vim'
if has('nvim')
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'pepo-le/win-ime-con.nvim'
  " Plug 'neoclide/coc.nvim',{'branch':'release'}
  Plug 'romgrk/barbar.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzf-writer.nvim'
  Plug 'fannheyward/telescope-coc.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'folke/which-key.nvim'
  Plug 'kevinhwang91/nvim-bqf'
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'

  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'

  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0)  }  }
  Plug 'Shougo/defx.nvim', {'do': ':UpdateRemotePlugins'}
  Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  Plug 'romgrk/barbar.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'Xuyuanp/scrollbar.nvim'

endif

call plug#end()
