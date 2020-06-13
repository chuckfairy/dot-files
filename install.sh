#!/bin/bash

dir=$( dirname $0 )
cp $dir/.gdbinit $HOME/.gdbinit
cp $dir/.bash_profile $HOME/.bash_profile

cp $dir/.gitconfig $HOME/.gitconfig

# Vim Install
git clone https://github.com/chuckfairy/vim-files $HOME/.vim
$HOME/.vim/install.sh

# TMUX
git clone https://github.com/chuckfairy/tmux-files $HOME/.tmux
cp $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
