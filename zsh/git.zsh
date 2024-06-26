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

alias gpo="git pull origin"
alias gpm="git pull origin main"
alias gpms="git pull origin master"

alias gmod="git merge origin/develop"

alias gsq="gsq(){ git reset --soft HEAD~${1} && git commit }; noglob gsq"

mergeWithoutFF(){
  local targetBranch=$1
  git merge --no-ff $targetBranch
}

alias gmnoff="mergeWithoutFF"
