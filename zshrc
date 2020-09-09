if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/USER/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

ENABLE_CORRECTION="true"

plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
z
sudo
wakatime
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zshi
source /Users/USER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias iip='ipconfig getifaddr en1'
alias eip='curl ifconfig.me'
alias ql='qlmanage -p'
alias weather='ansiweather -l CITY -a false -s true'
alias wolfram='wolframalpha'
alias pytop='bpytop'
alias pipes='pipes.sh'
alias clock='tty-clock -s'
alias timer='ttimer'
alias news='newsboat'
alias tron='ssh sshtron.zachlatta.com'
alias map='mapscii'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC --intf ncurses'
alias music='cmus'
alias virtualenv='python3 -m venv ./venv'
alias virtualact='source ./venv/bin/activate'
alias rm='trash'
alias temp='istats all'
alias :q='exit'
alias vim='nvim'
alias reddit='ttrv'
export PATH="/usr/local/sbin:$PATH"
