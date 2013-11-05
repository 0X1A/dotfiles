      __            __       ___       ___                      
     /\ \          /\ \__  / ___\  __ /\_ \                     
     \_\ \     ___ \ \  _\/\ \__/ /\_\\//\ \       __     ____  
     / _  \   / __ \\ \ \/\ \  __\\/\ \ \ \ \    / __ \  /  __\ 
    /\ \_\ \ /\ \_\ \\ \ \_\ \ \_/ \ \ \ \_\ \_ /\  __/ /\__   \
    \ \_____\\ \____/ \ \__\\ \_\   \ \_\/\____\\ \____\\/\____/
     \/___ / \/___ /   \/__/ \/_/    \/_/\/____/ \/____/ \/___/ 
                    

Apt & Pacman aliases, zshrc, vimrc and vim configurations.

![dotfiles](http://i.imgur.com/w8KZCAs.png)

#### What's Included | ZSH Aliases
Apt package manager:

	update = sudo apt-get update
	upgrade = sudo apt-get upgrade
	dist-upgrade = sudo apt-get dist-upgrade
	install = sudo apt-get install
	remove = sudo apt-get remove
    purge = sudo apt-get purge

Pacman:

    pacs = sudo pacman -S
    pacu = sudo pacman -U
    pacsyy = sudo pacman -Syy
    pacsyyu = sudo pacman -Syyu
    pacr = sudo pacman -R
    pacupkg = sudo pacman -U *.tar.xz

The included .zshrc makes use of [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

Used Vim plugins:
* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Nerdtree](https://github.com/scrooloose/nerdtree)
* [Powerline](https://github.com/Lokaltog/powerline)
* [Solarized Color Scheme](https://github.com/altercation/vim-colors-solarized)
* [Syntastic](https://github.com/scrooloose/syntastic)
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

### YouCompleteMe
YouCompleteMe needs `.ycm_extra_conf.py` for semantic support, a default is installed in the home directory.
This particular configuration is set with C++ flags.

## How to install
Just run the `install.sh` that coincides with your distribution (ubt == Ubuntu).
### What it does
Clones Pathogen, Nerdtree, Solarized color scheme, oh-my-zsh, Syntastic, and YouCompleteMe. It also pulls LLVM 3.3
in order to build YouCompleteMe with C family semantic support.

### What it doesn't
Does not install zsh or Powerline. Both must be installed by the user.
