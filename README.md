![dotfiles](http://i.imgur.com/7zsMP5D.png?1)

The included .zshrc makes use of [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Git Aliases
For more detailson git aliases, view the [git.md](https://github.com/0x1A/dotfiles/blob/master/git.md)

Used Vim plugins:
* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Nerdtree](https://github.com/scrooloose/nerdtree)
* [Vim-Airline](https://github.com/bling/vim-airline)
* [Solarized Color Scheme](https://github.com/altercation/vim-colors-solarized)
* [Syntastic](https://github.com/scrooloose/syntastic)
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

### YouCompleteMe
YouCompleteMe needs `.ycm_extra_conf.py` for semantic support, a default is installed in the home directory.
This particular configuration is set with C++ flags.

## How to install
Run `install --<distro>`, where distro can be `arch, fed, or deb`.
### What it does
Clones Pathogen, Nerdtree, Solarized color scheme, oh-my-zsh, Syntastic, and YouCompleteMe. It also pulls LLVM 3.3
in order to build YouCompleteMe with C family semantic support.

### What it doesn't
Does not install zsh, this must be installed by the user.
