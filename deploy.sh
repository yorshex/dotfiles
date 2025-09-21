#!/bin/sh

basedir() {
	echo "$1" | sed 's=/[^/]*$=='
}

symlink() {
	echo "Symlink: '~/$2' -> './$1'"
	mkdir -p `basedir "${HOME}/$2"`
	ln -sf "${PWD}/$1" "${HOME}/$2"
}

if [ ! -f ./commands ]; then
	cp './commands.def' './commands'
	echo "'./commands.def' was copied to './commands'."
	echo "edit './commands' and uncomment configs you want to symlink"
	echo "and then run './deploy.sh' again."
	exit
fi

mkdir -p "${HOME}/bin"

. ./commands
