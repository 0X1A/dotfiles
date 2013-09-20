ZSH=$HOME/.oh-my-zsh

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' insert-tab pending

CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"

export UPDATE_ZSH_DAYS=14

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/lib/qt4/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl

# Not needed if installing Powerline with AUR package
#export PATH=$HOME/.local/bin:$PATH
#
#    . $HOME/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias dist-upgrade='sudo apt-get dist-upgrade'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias purge='sudo apt=get purge'
