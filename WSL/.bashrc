#  ┌─┐┌─┐┌─┐┌┬┐┌─┐┬─┐┌─┐┌┬┐┌─┐┌─┐┌─┐
#  │ ┬├┤ └─┐ │ ├┤ ├┬┘├─┤ │ │ │├─┘└─┐ WSL
#  └─┘└─┘└─┘ ┴ └─┘┴└─┴ ┴ ┴ └─┘┴  └─┘ .bashrc
pfetch    # sys info
set -o vi # sets vi keybinds in terminal

export EDITOR='nvim'
export VISUAL='nvim'
export MANPAGER='less'
export HISTCONTROL=ignoreboth

alias ls='exa --icons'
alias ll='exa -l --group-directories-first --icons'
alias la='exa -a --icons'

alias clean='clear && pfetch && exa -l --group-directories-first --icons'

alias wingo='cd /mnt/c/Users/gesteratops'
alias winvim='cd /mnt/c/Users/gesteratops/AppData/Local/nvim'
alias surf='nvim'
alias ZZ='exit'

alias pyactivate='source ./bin/activate'
alias runserver='python manage.py runserver'
