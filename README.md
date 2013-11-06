![dotfiles](http://i.imgur.com/w8KZCAs.png)


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
Just run the `install.sh` that coincides with your distribution (deb == Debian).
### What it does
Clones Pathogen, Nerdtree, Solarized color scheme, oh-my-zsh, Syntastic, and YouCompleteMe. It also pulls LLVM 3.3
in order to build YouCompleteMe with C family semantic support.

### What it doesn't
Does not install zsh or Powerline. Both must be installed by the user.
