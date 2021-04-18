# TODO
tpope/vim-fugitive
lualine
barbar.vim
gitignore

# 見直し
fish
tmux

# shell
awk
tmuxでフォルダとファイルを固定できるので、それで毎回保持しておけば、buildを楽にすることができる

sharepointとの兼ね合いについても考える

# problem
openbrowserがうまく機能しない
luaのインデントの設定
telescopeの設定

# install
nvim
python3
ripgrep
bat
bd-find
fzf

bat
  sudo apt install bat
  sudo apt install bd-find

ripgrep
  # 依存ファイルのインストール（基本デフォルトのまま進んでOK）
  curl https://sh.rustup.rs -sSf | sh
  sudo apt-get install debhelper
  sudo apt-get install devscripts
  sudo apt-get install quilt

  # cargoのパスを通す
  source $HOME/.cargo/env

  # ripgrepのインストール
  cargo install ripgrep



# coc
coc-vimlsp
coc-fish
coc-lua
coc-omnisharp
coc-python
coc-xml
coc-json
