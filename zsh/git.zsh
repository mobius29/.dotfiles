alias lg="lazygit"

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
alias gfap="git fetch --all --prune"

gsa() {
	git stash apply stash@{${1:-0}}
}

alias gpo="git pull origin"
alias gpm="git pull origin main"
alias gpms="git pull origin master"

function gpcb() {
	local cur_branch=$(git branch | grep \* | cut -d ' ' -f2)
	
	git push origin ${cur_branch}
}
