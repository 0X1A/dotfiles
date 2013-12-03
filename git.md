## Git Aliases
```
gst = git status
gch = git checkout
gpl = git pull
gcl = git clone
grt = git remote
gpsh = git push
gci = git commit
gcis = git commit -S -s -m
gad = git add
grm = git rm
gdf = git diff
gls = git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --show-signature
gls = git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate
gll = git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat
glds = git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short
glg = git log --graph --oneline --decorate --all
```

## Why bash aliases instead of using .gitconfig?

Because the point of aliases is to make things more concise and having to type `git *command*` is not concise.
