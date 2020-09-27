#!/bin/sh

BASEDIR=`dirname $0`

#
umask 077

# nvim
mkdir -p ~/.config || true
ln -fs ../.vim ~/.config/nvim

# vim
mkdir -p ~/.vim/ || true
rsync -a ${BASEDIR}/.vim/ ~/.vim/
chmod 700 ~/.vim/
vim +PlugUpdate +PlugClean\! +q +q
