bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

autoload -Uz compinit && compinit
zmodload -i zsh/complist

setopt auto_pushd
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

LS_COLORS='di=0;32:fi=0;31:ex=1;34:ln=0;93'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
