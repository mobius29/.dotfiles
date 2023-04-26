alias cls="clear"
alias sozsh="source ~/.zshrc"

alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"

alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"

alias cmcpp="g++ main.cpp -o main --std=c++17"

alias ndev="npm run dev"
alias nbdev="npm run build:dev"
alias ndevl="npm run dev:local"

ffd() {
  local dir
  dir=$(find ${1:-~/Desktop} -path '*/\.*' -prune -maxdepth 4 \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

