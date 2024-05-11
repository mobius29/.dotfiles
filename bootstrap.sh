#!/bin/sh

# install brew
if test ! $(which brew); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# execute Brewfile
brew update
brew tap homebrew/bundle
brew bundle --file=$HOME/.dotfiles/Brewfile
brew cleanup
brew cask cleanup

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# link .zshrc
ln -nfs $HOME/.dotfiles/cfg/.zshrc $HOME/.zshrc
source $HOME/.zshrc

# link .vimrc
sudo ln -nfs $HOME/.dotfiles/cfg/.vimrc
[ ! -d $HOME/.config || ! -d $HOME/.config/nvim ] && mkdir -p $HOME/.config/nvim
ln -nfs $HOME/.dotfiles/cfg/.vimrc $HOME/.config/nvim/init.vim

# install vimPlug
[ ! -f $HOME/.local/share/nvim/site/autoload/plug.vim ] && sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install plugin
vim +PlugInstall +qall
