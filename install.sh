#!/bin/bash

SRC=$(pwd)

# update submodule
git submodule init
git submodule update

# backup original configurations
if [ -f ~/.vimrc]; then
	# TODO: backup
	mv ~/.vimrc ~/.vimrc-org
fi

if [ -d ~/.vim] ||[ -f ~/.vim]; then
	mv ~/.vim ~/.vim-org
fi

# make symbolic link
ln -s $SRC/.vimrc ~/.vimrc
ln -s $SRC/.vim ~/.vim

echo "Enjoy your life!"

echo "Starting your VIM..."

vim +BundleInstall
