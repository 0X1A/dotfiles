#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

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