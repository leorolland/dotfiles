#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="vim"

# Custom variables
source ~/.profile

# Set keyboard repeat time
xset r rate 200

# Aliases
alias ll='ls -lha'
alias l.='ls -d *.'
alias ..='cd ..'
alias ...='cd ../..'
alias v='nvim'

