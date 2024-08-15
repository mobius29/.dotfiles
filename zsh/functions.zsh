searchInAllFiles() {
  echo $#
  if (( $# < 2 )) then
	echo usage: search "path" "text-to-find" "[grep-options]"
	return
  fi

  grep -rn $1 -e $2
}

findDirectory() {
  local dir
  dir=$(find ${1:-~/Documents} -path '*/\.*' -prune -maxdepth 3 -o -type d -print 2> /dev/null | fzf +m)
  cd "$dir"
}
