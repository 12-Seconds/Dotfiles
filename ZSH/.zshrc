# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /Users/Matei/antigen.zsh

antigen use oh-my-zsh
antigen bundle sobolevn/wakatime-zsh-plugin

antigen apply

# Exports Zsh variable
export ZSH="/Users/Matei/.oh-my-zsh"

# Changes default terminal editor to Neovim
export EDITOR='nvim'

# Zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(

git                         # Version control system
zsh-autosuggestions         # Suggestions for Zsh
zsh-syntax-highlighting     # Highlights syntax
z                           # Cd to commonly used directories
sudo                        # Press escape twice to add sudo to the start of the last command
vscode                      # Open VS Code and items in VS Code

)

# History ignores duplicate entries
setopt hist_ignore_all_dups

# Stops blank lines from being added to history
setopt hist_reduce_blanks

# Shares history between sessions
setopt share_history

# Sources oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Sources fzf
source ~/.fzf.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zshi

if [[ ! -d ~/.zsh-autopair ]]; then
  git clone https://github.com/hlissner/zsh-autopair ~/.zsh-autopair
fi

source ~/.zsh-autopair/autopair.zsh
autopair-init

# Exports Fuzzy finder default searcher
export FZF_DEFAULT_COMMAND='ag -g ""'

# Aliases
alias iip='ipconfig getifaddr en1'                                                                                                              # Gets private IP
alias eip='curl ifconfig.me'                                                                                                                    # Gets public IP
alias ql='qlmanage -p'                                                                                                                          # Quick Look
alias weather='ansiweather -l Dubai -a false -s true'                                                                                           # Weather
alias wolfram='wolframalpha'                                                                                                                    # Quickly search Wolfram Alpha
alias pytop='bpytop'                                                                                                                            # Python Bashtop
alias pipes='pipes.sh'                                                                                                                          # Pipes in your terminal
alias clock='tty-clock -s'                                                                                                                      # Terminal Clock
alias timer='ttimer'                                                                                                                            # Terminal timer
alias news='newsboat'                                                                                                                           # Terminal RSS news reader
alias tron='ssh sshtron.zachlatta.com'                                                                                                          # SSH to Tron server
alias map='mapscii'                                                                                                                             # Terminal map
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC --intf ncurses'                                                                             # Ncurses vlc interface
alias virtualenv='python3 -m venv ./venv'                                                                                                       # Starts virtual Python environment
alias virtualact='source ./venv/bin/activate'                                                                                                   # Activates virtual Python environment
alias rm='trash'                                                                                                                                # Aliases rm to trash
alias temp='istats all'                                                                                                                         # Gets temperature from command line
alias :q='exit'                                                                                                                                 # Aliases vim's :q to exit
alias vim='nvim'                                                                                                                                # Aliases vim to Neovim
alias tmux-attach='tmux attach -t'                                                                                                              # Easy Tmux attach session
alias tmux-new='tmux new-session -s'                                                                                                            # East Tmux new session
alias tmux-list='tmux list-sessions'                                                                                                            # Easy Tmux list sessions
alias cal='calcurse'                                                                                                                            # Aliases cal to calcurse, a terminal calender
alias color='npx colortest'                                                                                                                     # Aliases color to a npm colortest
alias excuses='sh ~/Documents/Vim-Startup'                                                                                                      # Curls developer excuses
alias vtop='vtop -t nord'                                                                                                                       # Vtop with Nord theme
alias startup='sh ~/Documents/Zsh-Startup'                                                                                                      # Runs the startup script
alias outdated='/usr/local/bin/brew update > /dev/null && /usr/local/bin/brew outdated'                                                         # Checks for outdated brew formulae
alias mutt='neomutt'                                                                                                                            # Mutt aliased to newer version of Mutt
alias tts='gtts-cli'                                                                                                                            # Text to speech
alias benchmark='cd ~/.binaries/vtebench; cargo run --release; cd -'                                                                            # Runs CLI benchmark
alias vtg='function video_to_gif(){ ffmpeg -i $1 output.gif && gifsicle -O3 output.gif -o output.gif && terminal-notifier -message "Video is ready"};video_to_gif'    # Converts a video to a gif
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}' --reverse"                                                             # Fuzzy Finder
alias spotify="spt"
alias please="sudo"
alias python="python3"

# Exports PATH
export PATH="/usr/local/sbin:$PATH"

# Changes Bat theme to Nord
export BAT_THEME="Nord"

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

actions () {

    echo
    echo 'Hide File: setfile -a V'
    echo
    echo 'Youtube-dl batch download: youtube-dl -ci -x --audio-format mp3 --batch-file= $File1'
    echo
    echo 'Youtube-dl single file download: youtube-dl -x --audio-format mp3 $File1'
    echo
    echo 'List local snapshots: tmutil listlocalsnapshots /'
    echo
    echo 'Delete local snapshots: for d in $(tmutil listlocalsnapshotdates | grep "-"); do sudo tmutil deletelocalsnapshots $d; done'
    echo
    echo 'Reload Quick Look plugins: qlmanage -r'
    echo
    echo 'CDR tp ISO: hdiutil makehybrid -iso -joliet -o $File.iso $File.cdr'
    echo
    echo 'Create floppy: dd if=/dev/zero of=$floppy.img bs=1024 count=1440'
    echo
    echo "Thin Dock spacer: defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"small-spacer-tile\";}'; killall Dock"
    echo
    echo 'Pandoc convert document formats: pandoc $File1 -f $OriginalFormat -t $DesiredFormat -s -o $File2'
    echo
    echo 'wget -r -np -c $url'

}
#sh ~/Documents/Zsh-Startup

export PATH="$PATH:/Users/Matei/.local/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
