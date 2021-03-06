#!/bin/sh
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Exports
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export EDITOR="vim"

# Alias
alias ls="exa -a --group-directories-first"
alias free="free -h"

# Alias - sudo commands
alias pQ="sudo pacman -Q"
alias pS="sudo pacman -S"
alias pR="sudo pacman -R"
alias systemctl="sudo systemctl"

# Alias - clipboard
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

# Alias - git
alias config="git --git-dir=$HOME/config.git --work-tree=$HOME"

# Completes
complete -cf sudo
complete -c man
