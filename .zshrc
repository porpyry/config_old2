# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -i
_comp_options+=(globdots) # Include hidden files.

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Exports
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export EDITOR="vim"

# Alias
alias ls="exa --group-directories-first"
alias free="free -h"

# Alias - sudo commands
alias pQ="sudo pacman -Q"
alias pS="sudo pacman -S"
alias pR="sudo pacman -R"

# Alias - clipboard
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

# Alias - git
alias config="git --git-dir=$HOME/config.git --work-tree=$HOME"

# Plugin
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
