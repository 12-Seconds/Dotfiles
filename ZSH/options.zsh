setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt share_history

export EDITOR='nvim'
export BAT_THEME="TwoDark"
export TERM=xterm-256color

export PATH="/usr/local/opt/llvm/bin/lldb:$PATH"
export PATH="/usr/local/sbin:$PATH"

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias)
