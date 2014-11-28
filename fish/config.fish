#!/usr/bin/fish

set fish_path $HOME/.oh-my-fish
set config $HOME/.config/fish

set fish_theme agnoster

. $fish_path/oh-my-fish.fish
. $config/git.fish

set PATH $PATH $HOME/.config/scripts $HOME/.config/bspwm/panel

set -x PANEL_FIFO /tmp/panel-fifo
set -x PANEL_HEIGHT 20
set -x NOTIFY_PIPE /tmp/notify-pipe

alias c="clear"
