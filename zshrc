# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# Completion
autoload -Uz compinit
compinit

# Editing
bindkey -v

# Prompt
PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '

# Colors
autoload -Uz colors
colors

# Aliases
alias ,zrc='vim ~/.zshrc'
alias ,sz='source ~/.zshrc'

# Create a directory and enter it
mkcd() {
mkdir -p -- "$1" && cd -- "$1"
}

