#!/bin/bash

dir=$( dirname $0 )
ln -s $dir/.gdbinit ~/.gdbinit
ln -s $dir/.bash_profile ~/.bash_profile

ln -s $dir/.gitconfig ~/.gitconfig

# Vim Install
git clone https://github.com/chuckfairy/vim-files ~/.vim
~/.vim/install.sh
