alias ga="git add"
alias gaa="git add --all"

alias gc="git checkout"
alias gcb="git checkout -b"
alias gcm="git commit -m"

alias gs="git status"

alias gsu="git stash -u"
alias gsl="git stash list"
alias gsp="git stash pop"

alias gf="git fetch"
alias gfa="git fetch --all"

gsa() {
	git stash apply stash@{${1:-0}}
}
