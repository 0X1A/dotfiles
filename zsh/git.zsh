#!/bin/bash

alias gst='git status'
alias gch='git checkout'
alias gpl='git pull'
alias gcl='git clone'
alias grt='git remote'
alias gmr='git merge'
alias gfch='git fetch'
alias gbr='git branch'
alias gpsh='git push'
alias gci='git commit'
alias gcism='git commit -S -s -m'
alias gcis='git commit -s'
alias gciss='git commit -S -s'
alias gad='git add'
alias gadp='git add -p'
alias grm='git rm'
alias grst='git reset'
alias gdf='git diff'
alias glg='git log'
alias glss='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --show-signature'
alias gls='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
alias glds='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short'
alias glgg='git log --graph --oneline --decorate --all'

galias() {
	echo "Git aliases:"
	echo
	cat $HOME/.zsh/git
}

# Add repo with rw+
grtap() {
	git remote add $1 git@$2
}