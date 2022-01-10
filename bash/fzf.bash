function ff {
	directory=`fd -i -td . ~/home | fzf -i +m --reverse`
	cd $directory
}
