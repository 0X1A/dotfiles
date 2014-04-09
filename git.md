## Git Aliases
```
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
alias grm='git rm'
alias grst='git reset'
alias gdf='git diff'
alias glss='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --show-signature'
alias gls='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
alias glds='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short'
alias glg='git log --graph --oneline --decorate --all'
```

## Why bash aliases instead of using .gitconfig?

Because the point of aliases is to make things more concise and having to type `git *command*` is not concise.
