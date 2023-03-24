alias cls="clear"
alias sozsh="source ~/.zshrc"

alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"

alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"

alias cmcpp="g++ main.cpp -o main --std=c++17"

alias ndev="npm run dev"

fzfStudy() {
  local dir
  dir=$(find ${1:-~/Desktop/Study} -path '*/\.*' -prune -maxdepth 3 \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

fzfHome() {
  local dir
  dir=$(find ${1:-~/Desktop/Study} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

