#
umask 022
cd "$HOME"
DEFAULT_USER=`whoami`

[[ -d "${HOME}/.zfunc" ]] || mkdir -p ${HOME}/.zfunc
fpath+=~/.zfunc
#
autoload -Uz compinit
compinit
autoload -Uz bashcompinit
bashcompinit
#
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats "%b"
#
#
setopt promptsubst
source ~/.zsh/themes/agnoster.zsh-theme

alias "gs=git status"
alias "gd=git diff"
alias "ls=ls -aFG"
alias "ll=ls -lh"

#
[[ -s "$HOME/.zshrc.local" ]] && . "$HOME/.zshrc.local"
