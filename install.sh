#!/bin/bash

# dotfile installation
# Copies .zshrc, .vimrc, clones pathogen and nerdtree

echo "Copying .zshrc & .vimrc"
cp -v .zshrc ~/.zshrc
cp -v .vimrc ~/.vimrc

echo "Making .vim directories"
mkdir ~/.vim/
mkdir ~/.vim/bundle
mkdir ~/.vim/autoload
mkdir ~/.vim/colors

echo "Cloning Vim plugins"
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree

echo "Done"
