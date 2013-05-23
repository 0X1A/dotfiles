#dotfiles
##Summary

Pacman package manager aliases, Archlinux Build System aliases, vimrc and vim configurations.

##What's Included | Bash and ZSH Aliases
Pacman package manager:

	pac = sudo pacman
	pacs = sudo pacman -S
	pacsyy = sudo pacman -Syy
	pacsyyu = sudo pacman -Syyu
	pacu = sudo pacman -U
	pacupkg = sudo pacman -U *.xz (Installs any package in the directory)
	pacq = sudo pacman -Q
	
Arch Linux build system:

	makes = makepkg -s
	
The included .zshrc makes use of [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), and is set to use the 'agnoster' theme by default.

Used Vim plugins:
* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Nerdtree](https://github.com/scrooloose/nerdtree)
* [Powerline](https://github.com/Lokaltog/powerline)
* [Solarized Color Scheme](https://github.com/altercation/vim-colors-solarized)
