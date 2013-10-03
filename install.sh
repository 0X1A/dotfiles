#!/bin/bash

ARCH=/etc/arch-release
DEB=/etc/lsb-release
ARCHDEPS="python2-setuptools git curl wget cmake clang"
DEBDEPS="curl clang cmake wget build-essential python-pip"
BIT=$(uname -m | sed 's/x86_//;s/i[3-6]86/32/')
VIMDIR=$HOME/.vim

cp .ycm_extra_conf.py $HOME

if [ -f $ARCH ]
then
    echo "Copying .zshrc for Arch"
    cp .zshrcarch ~/.zshrc
fi

if [ -f $DEB ]
then
    echo "Copying .zshrc for Deb"
    cp .zshrc ~/.zshrc
fi

mkdir $VIMDIR
mkdir $VIMDIR/bundle
mkdir $VIMDIR/autoload
mkdir $VIMDIR/colors

echo "Cloning oh-my-zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

echo "Cloning Vim plugins"
curl -Sso $VIMDIR/autoload/pathogen.vim \
    https://raw.github.com/tpop/vim-pathogen/master/autoload/pathogen.vim
cd $VIMDIR/bundle

echo "Cloning NerdTree..."
git clone https://github.com/scrooloose/nerdtree

echo "Cloning Solarized..."
git clone https://github.com/altercation/vim-colors-solarized
cp $VIMDIR/bundle/vim-colors-solarized/colors/solarized.vim $VIMDIR/colors/

echo "Cloning Syntastic..."
cd $VIMDIR/bundle
git clone https://github.com/scrooloose/syntastic

echo "Cloning YouCompleteMe..."
git clone https://github.com/Valloric/YouCompleteMe

mkdir $VIMDIR/bundle/ycm_build

GetLLVM () {
    return 0
}

if [ -f $ARCH ]
then
    echo Is Arch
    echo "Checking dependencies"
    TGT=$(pacman -T $ARCHDEPS)
    sudo pacman -S $TGT
    cd $VIMDIR/bundle/ycm_build/
    cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . $VIMDIR/bundle/YouCompleteMe/cpp
    make ycm_core
elif [ -f $DEB ]
then
    echo Is Debian based
    dpkg -s $DEBDEPS >/dev/null 2>&1
    if [ "$?" -ne "0" ]
    then
        echo "$DEBDEPS not installed, installing now"
        sudo apt-get install -y $DEBDEPS
    else
        echo "Dependencies met."
    fi
    GetLLVM
fi
