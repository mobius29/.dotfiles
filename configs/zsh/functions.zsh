findDirectory() {
  local dir
  dir=$(find ${1:-~/Documents} -path '*/\.*' -prune -maxdepth 3 -o -type d -print 2> /dev/null | fzf +m)
  cd "$dir"
}
