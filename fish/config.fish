#!/usr/bin/fish

set fish_path $HOME/.oh-my-fish
set config $HOME/.config/fish

set fish_theme agnoster

. $fish_path/oh-my-fish.fish
. $config/git.fish

set PATH $PATH $HOME/.config/scripts $HOME/.config/bspwm/panel (ruby -rubygems -e "puts Gem.user_dir")/bin

alias c="clear"
