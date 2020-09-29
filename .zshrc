#
umask 022
cd "$HOME"
DEFAULT_USER=`whoami`

fpath+=~/.zfunc

autoload -Uz compinit
compinit

setopt promptsubst
source ~/.zsh/themes/agnoster.zsh-theme
#
[[ -s "$HOME/.zshrc.local" ]] && . "$HOME/.zshrc.local"
