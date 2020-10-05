#
umask 022
cd "$HOME"
DEFAULT_USER=`whoami`

[[ -d "${HOME}/.zfunc" ]] || mkdir -p ${HOME}/.zfunc
fpath+=~/.zfunc

autoload -Uz compinit
compinit
autoload -Uz bashcompinit
bashcompinit

setopt promptsubst
source ~/.zsh/themes/agnoster.zsh-theme

alias "gs=git status"
alias "gd=git diff"
alias "la=ls -al"
alias "ll=ls -l"

#
[[ -s "$HOME/.zshrc.local" ]] && . "$HOME/.zshrc.local"
