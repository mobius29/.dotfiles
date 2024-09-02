findDirectory() {
  local dir
  dir=$(find ${1:-~/Desktop} -path '*/\.*' -prune -maxdepth 3 -o -type d -print 2> /dev/null | fzf +m)
  cd "$dir"
}

jd() {
  if ! $(command -v dasel &> /dev/null); then
    echo "dasel is not installed. Please install dasel first"
    echo "dasel can be installed by homebrew. 'brew install dasel'"

    return 1
  fi
  
  local pretty_json
  pretty_json=$(dasel -r json $1)

  echo $pretty_json
}

jd_test() {
  source ~/.zshrc

  echo '{ "name": { "first": "seongjin", "last": "lee" } }' | jd
}
