ZSH=$HOME/.oh-my-zsh

CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"

export UPDATE_ZSH_DAYS=14

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/qt4/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl

#
# Uncomment to needs
#

# Pacman 
#alias pac='sudo pacman'
#alias pacs='sudo pacman -S'
#alias pacsyy='sudo pacman -Syy'
#alias pacsyyu='sudo pacman -Syyu'
#alias pacq='sudo pacman -Q'
#alias pacu='sudo pacman -U'
#alias pacupkg='sudo pacman -U *.xz'

# ABS
#alias makes='makepkg -s'

# Apt
#alias update='sudo apt-get update'
#alias upgrade='sudo apt-get upgrade'
#alias dist-upgrade='sudo apt-get dist-upgrade'
#alias install='sudo apt-get install'
#alias purge='sudo apt-get purge'
