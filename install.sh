#!/bin/bash

DIST=/etc/os-release
DIR=$(dirname $0)
ARCHDEPS="git curl wget cmake clang ctags python2"
DEBDEPS="curl cmake wget build-essential python-dev ctags"
RPMDEPS="wget curl cmake clang llvm"
BIT=$(uname -m | sed 's/x86_//;s/i[3-6]86/32/')
VIMDIR=$HOME/.vim
LLVM32=clang+llvm-3.3-i386-debian6.tar.bz2
LLVM64=clang+llvm-3.3-amd64-debian6.tar.bz2

ZSHPRMPT() {
	if [ -f $HOME/.zshrc ] ; then
		echo "Copy .zshrc and backup local copy?"
		echo "Enter 1) backup and copy 2) copy and replace 3) skip"
		read ANS
	fi
}

SetZSHRC() {
	if grep Arch -c $DIST &>/dev/null ; then
		ZSHPRMPT
		if [[ $ANS == '1' ]] ; then
			echo "Copying and backing up .zshrc to .zshrcbak"
			mv $HOME/.zshrc $HOME/.zshrcbak
			cp $DIR/.zshrcarch $HOME/.zshrc
		elif [[ $ANS == '2' ]] ; then
			echo "Copying and replacing"
			cp $DIR/.zshrcarch $HOME/.zshrc
		elif [[ $ANS == '3' ]] ; then
			echo "Skipping..."
		fi
	else cp $DIR/.zshrcarch $HOME/.zshrc
	fi
	if grep Debian -c $DIST &>/dev/null ; then
		ZSHPRMPT
		if [[ $ANS == '1' ]] ; then
			echo "Copying and backing up .zshrc to $HOME/zshrcbak"
			mv $HOME/.zshrc $HOME/zshrcbak
			cp $DIR/.zshrcdeb $HOME/.zshrc
		elif [[ $ANS == '2' ]] ; then
			echo "Copying and replacing"
			cp $DIR/.zshrcdeb $HOME/.zshrc
		elif [[ $ANS == '3' ]] ; then
			echo "Skipping..."
		fi
	else cp $DIR/.zshrcdeb $HOME/.zshrc
	fi
	if grep Fedora -c $DIST &>/dev/null ; then
		ZSHPRMPT
		if [[ $ANS == '1' ]] ; then
			echo "Copying and backing up .zshrc to $HOME/zshrcbak"
			mv $HOME/.zshrc $HOME/zshrcbak
			cp $DIR/.zshrcrpm $HOME/.zshrc
		elif [[ $ANS == '2' ]] ; then
			echo "Copying and replacing"
			cp $DIR/.zshrcrpm $HOME/.zshrc
		elif [[ $ANS == '3' ]] ; then
			echo "Skipping..."
		fi
	else cp $DIR/.zshrcdeb $HOME/.zshrc
	fi
}

SetZSHRC

cp $DIR/.ycm_extra_conf.py $HOME
cp $DIR/.vimrc $HOME
cp $DIR/.Xresources $HOME
xrdb -merge $HOME/.Xresources
mkdir $HOME/.zsh
cp $DIR/git $HOME/.zsh
cp $DIR/functions $HOME/.zsh

mkdir $VIMDIR
mkdir $VIMDIR/bundle
mkdir $VIMDIR/autoload
mkdir $VIMDIR/colors

echo "Cloning oh-my-zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

echo "Cloning Vim plugins..."

echo "Cloning Pathogen..."
curl -Sso $VIMDIR/autoload/pathogen.vim \
	https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd $VIMDIR/bundle

echo "Cloning Fugitive..."
git clone git://github.com/tpope/vim-fugitive.git

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

echo "Cloning Vim-Airline..."
git clone https://github.com/bling/vim-airline

mkdir $VIMDIR/bundle/ycm_build

GetLLVM () {
	cd $VIMDIR/bundle
	if [ $BIT == '32' ]
	then
		if [ ! -f "$LLVM32" ]
		then
			echo "Downloading LLVM..."
			wget llvm.org/releases/3.3/clang+llvm-3.3-i386-debian6.tar.bz2
			tar -xvf clang+llvm-3.3-i386-debian6.tar.bz2
		fi
		echo "LLVM tar exists."
	else [ $BIT == '64' ]
		if [ ! -f "$LLVM64" ]
		then
			echo "Downloading LLVM..."
			wget llvm.org/releases/3.3/clang+llvm-3.3-amd64-debian6.tar.bz2
			tar -xvf clang+llvm-3.3-amd64-debian6.tar.bz2
		fi
		echo "LLVM tar exists."
	fi
	return 0
}

BuildYCM () {
	cd $VIMDIR/bundle/YouCompleteMe
	git submodule update --init --recursive
	cd $VIMDIR/bundle/ycm_build
	if [ $BIT == '32' ]
	then
		cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=$VIMDIR/bundle/clang+llvm-3.3-i386-debian6 . $VIMDIR/bundle/YouCompleteMe/cpp
	else [ $BIT == '64' ]
		cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=$VIMDIR/bundle/clang+llvm-3.3-amd64-debian6 . $VIMDIR/bundle/YouCompleteMe/cpp
	fi
	make ycm_core
	make
}

AltBuildYCM () {
	cd $VIMDIR/bundle/YouCompleteMe
	git submodule update --init --recursive
	cd $VIMDIR/bundle/ycm_build
	cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . $VIMDIR/bundle/YouCompleteMe/cpp
	make ycm_core
	make
}

if grep Arch -c $DIST &>/dev/null ; then
	echo "Checking dependencies"
	TGT=$(pacman -T $ARCHDEPS)
	sudo pacman -S $TGT
	AltBuildYCM
fi
if grep Debian -c $DIST &>/dev/null ; then
	dpkg -s $DEBDEPS >/dev/null 2>&1
	if [ "$?" -ne "0" ]
	then
		echo "$DEBDEPS not installed, installing now"
		sudo apt-get install -y $DEBDEPS
	else
		echo "Dependencies met."
	fi
	GetLLVM
	BuildYCM
fi
if grep Fedora -c $DIST &>/dev/null ; then
	sudo yum groupinstall "Development Tools" "Development Libraries" -y
	sudo yum install $RPMDEPS -y
	AltBuildYCM
fi
