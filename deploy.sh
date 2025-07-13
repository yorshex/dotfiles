#!/bin/sh

symlink() {
	echo "Symlink: '~/$2' -> './$1'"
	ln -sf "${PWD}/$1" "${HOME}/$2"
}

mkdir -p "${HOME}/bin"

if [ ! -f ./commands ]; then
	cp './commands.def' './commands'
	echo "'./commands.def' was copied to './commands'."
	echo "edit './commands' and uncomment configs you want to symlink"
	echo "and then run './deploy.sh' again."
	exit
fi

. ./commands
