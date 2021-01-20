export PROMPT="%B%F{2}%n@%M%f%b %F{blue}%25<..<%~%<<%f %(?.%F{green}•%f.%F{red}•%f) " # Alternative: ◯, •
export RPROMPT="%BPython: %F{cyan}`pyenv version | cut -c 1-5`%b%f"
printf '\033[6 q'
