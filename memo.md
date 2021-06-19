rm ~/.config/fish/functions/fish_user_key_bindings.fish
ln ~/dotfiles/.fish/fish_user_key_bindings.fish ~/.config/fish/functions/fish_user_key_bindings.fish


# install
sudo apt install tmux
sudo apt install ripgrep
sudo apt install fzf
sudo apt install make
sudo apt install pip
sudo apt install fd-find
sudo apt install bat
sudo apt install ranger
ranger --copy-config=all

wslttyの場合
  set preview_images true
  set preview_images_method iterm2
  set preview_images true

<!-- for nvim  -->
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf
automake cmake g++ pkg-config unzip

# link
git clone https://github.com/shigekazukoya/dotfiles
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.vim/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim/.vimrc ~/.config/nvim/init.vim
ln -s ~/dotfiles/.fish/config.fish ~/.config/fish/config.fish

ln -s ~/dotfiles/.vim ~/data/vim

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nvim build
make CMAKE_BUILD_TYPE=Release
sudo make install

# font
HackgenNerd Console

# node
for coc.nvim
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh |
bash
nvm install -lts

## packer nvim
git clone https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/opt/packer.nvim

# tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
* [【tmux】tpmでplugin管理して快適ターミナル生活 -
Qiita](https://qiita.com/izumin5210/items/5b7f4c01fb6fe6064a05)

C-w I でInstall

# fish
sudo apt install fish
curl -sL https://git.io/fisher | source && fisher install
jorgebucaran/fisher
chsh -s /usr/bin/fish

fisher install oh-my-fish/theme-bobthefish
fisher install jethrokuan/fzf
fisher install decors/fish-ghq
fisher install jethrokuan/z


* [fish shellが結構良かった話 -
Qiita](https://qiita.com/hennin/items/33758226a0de8c963ddf)

# windowsTerminal

# その他
<!-- for clipboard -->
sudo apt upgrade vim
sudo apt-get install vim-gtk

zenhanのinstall


# terminal

# Windows10
* [Windows 10 スナップ機能を無効にす
る](https://www.tipsfound.com/windows10/04003)



