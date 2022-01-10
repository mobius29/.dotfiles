rm -r ~/.vimrc | sudo ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
rm -r ~/.bashrc | sudo ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc
rm -rf ~/.config | mkdir ~/.config | mkdir ~/.config/nvim | sudo ln -s ~/.dotfiles/vim/.vimrc ~/.config/nvim/init.vim
