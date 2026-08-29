# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# Path
typeset -U path PATH
path=(
  "$HOME/bin"
  "$HOME/.local/share/npm/bin"
  $path
)

# Completion
autoload -Uz compinit
compinit

# Editing
bindkey -v

# Prompt and Git branch
autoload -Uz add-zsh-hook vcs_info
setopt PROMPT_SUBST
zstyle ':vcs_info:git:*' formats ' %F{yellow}(%b)%f'

update_vcs_info() {
  vcs_info
}

add-zsh-hook precmd update_vcs_info
PROMPT='%F{green}%n@%m%f %F{blue}%~%f${vcs_info_msg_0_} %# '

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
