ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

export UPDATE_ZSH_DAYS=14

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/qt4/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl

# Pacman 
alias pac='sudo pacman'
alias pacs='sudo pacman -S'
alias pacsyy='sudo pacman -Syy'
alias pacsyyu='sudo pacman -Syyu'
alias pacq='sudo pacman -Q'
alias pacu='sudo pacman -U'
alias pacupkg='sudo pacman -U *.xz'

# ABS
alias makes='makepkg -s'