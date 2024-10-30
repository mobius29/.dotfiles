#!/bin/sh

# install brew
if test ! "$(which brew)"; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# execute Brewfile
brew update
brew tap homebrew/bundle
brew bundle --file="$HOME"/.dotfiles/Brewfile
brew cleanup
brew cask cleanup

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# link .zshrc
ln -nfs "$HOME"/.dotfiles/cfg/.zshrc "$HOME"/.zshrc
source "$HOME"/.zshrc
