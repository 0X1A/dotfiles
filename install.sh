#!/bin/bash

# dotfile installation
# Copies .zshrc, .vimrc, clones pathogen and nerdtree

cp .ycm_extra_conf.py $HOME

echo "Checking dependencies"
DEPS="curl clang cmake wget build-essential"
VIMDIR=$HOME/.vim

dpkg -s $DEPS >/dev/null 2>&1
if [ "$?" -ne "0" ] ; then
    echo "$DEPS not installed, installing now"
    sudo apt-get install -y $DEPS
else
    echo "Dependencies met."
fi

echo "Copying .zshrc & .vimrc"
cp -v .zshrc $HOME/.zshrc
cp -v .vimrc $HOME/.vimrc

echo "Making .vim directories"
mkdir $VIMDIR
mkdir $VIMDIR/bundle
mkdir $VIMDIR/autoload
mkdir $VIMDIR/colors

echo "Cloning oh-my-zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

echo "Cloning Vim plugins"
curl -Sso $VIMDIR/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd $VIMDIR/bundle

echo "Cloning NerdTree..."
git clone https://github.com/scrooloose/nerdtree

echo "Cloning Solarized..."
git clone https://github.com/altercation/vim-colors-solarized
cp $VIMDIR/bundle/vim-colors-solarized/colors/solarized.vim $VIMDIR/colors/

echo "Cloning Syntastic..."
cd $VIMDIR/bundle
git clone https://github.com/scrooloose/syntastic

echo "Pulling LLVM to build YouCompleteMe..."
wget http://llvm.org/releases/3.3/clang+llvm-3.3-amd64-Ubuntu-12.04.2.tar.gz
tar -xf clang+llvm-3.3-amd64-Ubuntu-12.04.2.tar.gz
echo "Cloning YouCompleteMe..."
git clone https://github.com/Valloric/YouCompleteMe

mkdir ycm_build && cd ycm_build
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=$VIMDIR/bundle/clang+llvm-3.3-amd64-Ubuntu-12.04.2 . $VIMDIR/bundle/YouCompleteMe/cpp
make ycm_core

echo "Done"
