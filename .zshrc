#
umask 022
cd "$HOME"
source ~/.zsh/themes/agnoster.zsh-theme

fpath+=~/.zfunc

compinit

#
[[ -s "$HOME/.zshrc.local" ]] && . "$HOME/.zshrc.local"
