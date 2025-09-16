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
mkdir -p ~/.zsh/ || true
rsync -a ${BASEDIR}/.zsh/ ~/.zsh/
chmod 700 ~/.zsh/


# nvim
mkdir -p ~/.config || true
ln -fs ../.vim ~/.config/nvim

# vim
mkdir -p ~/.vim/ || true
rsync -a ${BASEDIR}/.vim/ ~/.vim/
chmod 700 ~/.vim/
vim +PlugUpdate +PlugClean\! +q +q

# git
cp ${BASEDIR}/git/.gitconfig ~/
if [ ! -e ~.gitconfig.local ]; then
    cp ${BASEDIR}/git/.gitconfig.local ~/
fi

