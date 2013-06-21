#!/bin/bash

# dotfile installation
# Copies .zshrc, .vimrc, clones pathogen and nerdtree

echo "Copying .zshrc & .vimrc"
cp -v .zshrc $HOME/.zshrc
cp -v .vimrc $HOME/.vimrc

echo "Making .vim directories"
mkdir $HOME/.vim/
mkdir $HOME/.vim/bundle
mkdir $HOME/.vim/autoload
mkdir $HOME/.vim/colors

echo "Cloning oh-my-zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

echo "Cloning Vim plugins"
curl -Sso $HOME/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd $HOME/.vim/bundle
git clone https://github.com/scrooloose/nerdtree

echo "Done"
