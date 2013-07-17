ZSH=$HOME/.oh-my-zsh

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' insert-tab pending

CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"

export UPDATE_ZSH_DAYS=14

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/qt4/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl

# Not needed if installing Powerline with AUR package
#export PATH=$HOME/.local/bin:$PATH
#
#    . $HOME/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#
# Uncomment to needs
#

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
