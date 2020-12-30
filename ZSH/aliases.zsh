alias ls='exa'
alias la='exa -a'
alias ll='exa -l'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias iip='ipconfig getifaddr en1'
alias eip='curl ifconfig.me'

alias ql='qlmanage -p'

alias weather='ansiweather -l Dubai -a false -s true'

alias wolfram='wolframalpha'

alias pipes='pipes.sh'

alias clock='tty-clock -s'
alias timer='ttimer'

alias news='newsboat'

alias map='mapscii'

alias virtenv='python3 -m venv ./venv'
alias virtact='source ./venv/bin/activate'
alias python="python3"
alias pip="python3 -m pip"
alias pip2="python2 -m pip"
alias pip3="python3 -m pip"
alias pipupgradeall="sudo pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U"
alias pytop='bpytop'

alias rm='trash'

alias temp='istats all'

alias ta='tmux attach -t'
alias tn='tmux new-session -s'
alias tl='tmux list-sessions'

alias cal='calcurse'

alias color='npx colortest'

alias excuses='sh ~/Documents/Vim-Startup'
alias startup='sh ~/Documents/Zsh-Startup'

alias vtop='vtop -t nord'

alias outdaed='/usr/local/bin/brew update > /dev/null && /usr/local/bin/brew outdated'
alias mutt='neomutt'
alias tts='gtts-cli'
alias benchmark='cd ~/.binaries/vtebench; cargo run --release; cd -'
alias vtg='function video_to_gif(){ ffmpeg -i $-1 output.gif && gifsicle -O3 output.gif -o output.gif && terminal-notifier -message "Video is ready"};video_to_gif'
alias spotify="spt"
alias please="sudo"


alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias emacs="emacs -nw"

alias ping="prettyping"
alias o="fuck"

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index
