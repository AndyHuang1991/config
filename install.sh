#!/bin/sh

BASEDIR=`dirname $0`

#
umask 077


# submodule init
git submodule update --init

#
cp ${BASEDIR}/.zshrc ~/
if [ ! -e ~/.zshrc.local ]; then
    cp ${BASEDIR}/.zshrc.local ~/
fi


# nvim
mkdir -p ~/.config || true
ln -fs ../.vim ~/.config/nvim

# vim
mkdir -p ~/.vim/ || true
rsync -a ${BASEDIR}/.vim/ ~/.vim/
chmod 700 ~/.vim/
vim +PlugUpdate +PlugClean\! +q +q
