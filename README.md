![dotfiles](http://i.imgur.com/w8KZCAs.png)


The included .zshrc makes use of [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

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

Note: In order to compile this on Arch you must first set the symbolic link `/bin/python` to `/bin/python2.7` or YCM will not compile correctly (no support for python3)
To do this you can run `sudo ln -sf /bin/python2.7 /bin/python`. Just make sure to set it back or any package dependent on `/bin/python` being python3.3 will fail.

## How to install
Just run `install.sh`. (`bash install.sh` or `./install.sh`)
### What it does
Clones Pathogen, Nerdtree, Solarized color scheme, oh-my-zsh, Syntastic, and YouCompleteMe. It also pulls LLVM 3.3
in order to build YouCompleteMe with C family semantic support.

### What it doesn't
Does not install zsh or Powerline. Both must be installed by the user.
