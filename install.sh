#! /bin/bash

# cscope
sudo apt install cscope -y
# vim: Youcompleteme
sudo apt install build-essential cmake vim-nox python3-dev -y

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp .vimrc ~/
