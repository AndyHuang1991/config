#
umask 022
cd "$HOME"

if [ -d "${HOME}/.oh-my-zsh" ]; then
    # Path to your oh-my-zsh installation.
    export ZSH=$HOME/.oh-my-zsh
    
    # Set name of the theme to load. Optionally, if you set this to "random"
    # it'll load a random theme each time that oh-my-zsh is loaded.
    # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
    ZSH_THEME="agnoster"
    source $ZSH/oh-my-zsh.sh
fi

#
[[ -s "$HOME/.zshrc.local" ]] && . "$HOME/.zshrc.local"
