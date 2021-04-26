#! /bin/bash

# cscope, curl
sudo apt install cscope curl -y
# vim: Youcompleteme
sudo apt install build-essential cmake vim-nox python3-dev -y

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ~/.vim/.vimrc ~/
