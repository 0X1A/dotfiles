#dotfiles

Pacman package manager aliases, Archlinux Build System aliases, Apt aliases, vimrc and vim configurations.

####What's Included | Bash and ZSH Aliases
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

Apt:
    
    update = sudo apt-get udpate
    upgrade = sudo apt-get upgrade
    dist-upgrade = sudo apt-get dist-upgrade
    install = sudo apt-get install
    purge = sudo apt-get purge
	
The included .zshrc makes use of [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

Used Vim plugins:
* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Nerdtree](https://github.com/scrooloose/nerdtree)
* [Powerline](https://github.com/Lokaltog/powerline)
* [Solarized Color Scheme](https://github.com/altercation/vim-colors-solarized)

##How to install

    git clone https://github.com/0x1A/dotfiles && cd dotfiles
    bash install.sh
