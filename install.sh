#! /bin/bash

sudo apt update -y

# cscope, curl
sudo apt install cscope curl -y
# vim: Youcompleteme
sudo apt install build-essential cmake vim-nox python3-dev -y
#sudo apt install mono-complete golang nodejs default-jdk npm -y

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ~/.vim/.vimrc ~/

# We need to run :PlugInstall in vim to install all plugins
# Run PlugInstall non-interactively from command line
vim +'PlugInstall --sync' +qa
