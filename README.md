      __          __          ____  ___                    
     /\ \        /\ \__  __  / ___\/\_ \                   
     \_\ \    ___\ \  _\/\_\/\ \__/\//\ \     ____   ____  
     / _  \  / __`\ \ \/\/\ \ \  __\ \ \ \   / __ \ /  __\ 
    /\ \ \ \/\ \ \ \ \ \_\ \ \ \ \_/  \_\ \_/\  __//\__   \
    \ \_____\ \____/\ \__\\ \_\ \_\   /\____\ \____\/\____/
     \/_____/\/___/  \/__/ \/_/\/_/   \_____/\/____/\/___/ 
                                                           
                                                           

Apt aliases, vimrc and vim configurations.

#### What's Included | ZSH Aliases
Apt package manager:

	update = sudo apt-get update
	upgrade = sudo apt-get upgrade
	dist-upgrade = sudo apt-get dist-upgrade
	install = sudo apt-get install
	remove = sudo apt-get remove
    purge = sudo apt-get purge

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
Just run `install.sh`
### What it does
Clones Pathogen, Nerdtree, Solarized color scheme, oh-my-zsh, Syntastic, and YouCompleteMe. It also pulls LLVM 3.3
in order to build YouCompleteMe with C family semantic support.

### What it doesn't
Does not install zsh or Powerline. Both must be installed by the user.

##### Note: This script works for Ubunutu 12.04+ only.
