#!/usr/bin/env bash

DIR=$(dirname $0)
FDIR="$HOME/.config/fish"
FCONF="config.fish"
ARCHDEPS="vim git rust cargo"
FEDDEPS="vim-enhanced git"
DEBDEPS="vim-nox git"
NC='\e[0m'
WHT='\e[1;37m'
GRN='\e[0;32m'

case "$1" in
	'--arch')
		OS="arch"
		;;
	'--fed')
		OS="fed"
		;;
	'--deb')
		OS="deb"
		;;
esac

set_fish() {
	mkdir -p ~/.config/fish
	cp -r $DIR/fish/* $FDIR
	if [ -f $FDIR/$FCONF ] ; then
		echo -e $WHT"Copy config.fish and backup local copy?"$NC
		echo -e $GRN"\t1) Backup and copy\n\t2) Copy and replace\n\t3) Skip"$NC
		read ANS
	fi
	if [[ $ANS == '1' ]] ; then
		echo -e $WHT"Copying and backing up config.fish to config.fish.bak"$NC
		mv $FIDR/$FCONF $FDIR/config.fish.bak
		cp $DIR/fish/config.fish $FDIR/$FCONF
	elif [[ $ANS == '2' ]] ; then
		echo -e $WHT"Copying and replacing"$NC
		cp $DIR/fish/config.fish $FDIR/$FCONF
	elif [[ $ANS == '3' ]] ; then
		echo -e $WHT"Skipping..."$NC
	fi
	if [ ! -f $FDIR/$FCONF ] ; then
		cp $DIR/fish/config.fish $FDIR/$FCONF
	fi
}

inst_rust() {
	curl -sf https://raw.githubusercontent.com/brson/multirust/master/blastoff.sh | sh
	multirust default stable
}

inst_plugins() {
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
}

setup() {
	inst_plugins
}

inst_color() {
	git clone https://github.com/chriskempson/base16-shell $HOME/.config/base16-shell
	git clone https://github.com/chriskempson/base16-gnome-terminal
	bash base16-gnome-terminal/base16-ocean.dark.sh
}

install() {
	cp $DIR/vimrc $HOME/.vimrc
	inst_color
	set_fish
	case "$OS" in
		'arch')
			TGT=`pacman -T $ARCHDEPS`
			sudo pacman -S $TGT
			setup
			;;
		'fed')
			sudo yum install $RPMDEPS -y
			setup
			;;
		'deb')
			dpkg -s $DEBDEPS >/dev/null 2>&1
			if [ "$?" -ne "0" ] ; then
				sudo apt-get install -y $DEBDEPS
			fi
			setup
			;;
	esac
	vim +NeoBundleInstall +qall
}

usage() {
	echo -e "usage: install --[distro]\n"
	echo -e "Distros:"
	echo -e "\t--arch\tInstall Arch dotfiles"
	echo -e "\t--deb\tInstall Debian dotfiles"
	echo -e "\t--fed\tInstall Fedora dotfiles"
	echo -e "\t--help\tDisplay this"
	exit
}

case "$1" in
	'--arch'|'--deb'|'--fed')
		install
		;;
	*)
		usage
		;;
esac
