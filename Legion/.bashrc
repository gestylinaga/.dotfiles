# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#    _           _           
#   | |_ ___ ___| |_ ___ ___  by:
#  _| . | .'|_ -|   |  _|  _| Gesty Linaga
# |_|___|__,|___|_|_|_| |___| for Legion Laptop Arch Build

#pfetch    # sys info
set -o vi # sets vi keybinds in terminal

export TERMINAL='kitty'
export EDITOR='nvim'
export VISUAL='nvim'
export MANPAGER='nvim +Man!'
export BROWSER='firefox'
export HISTCONTROL=ignoreboth

alias ls='exa --group-directories-first --icons'
alias ll='exa -l --group-directories-first --icons'
alias la='exa -a --icons'
alias lla='exa -la --group-directories-first --icons'

# remapping CapsLock to Escape for X11
alias uncap='setxkbmap -option caps:escape'
alias recap='setxkbmap -option'

# remapping CapsLock to Escape for Wayland
#alias uncap="gsettings set org.gnome.desktop.input-sources xkb-options \"['caps:ctrl_modifier']\""

alias clean='clear && pfetch && exa -l --group-directories-first --icons && echo "in:" && pwd'

alias surf='nvim'
alias ZZ='exit'

alias stor='cd /mnt/Storage'

#PS1='[\u@\h \W]\$ '

# Custom PS1
export PS1="\[\033[38;5;93m\][\[$(tput sgr0)\]\[\033[38;5;39m\]\u\[$(tput sgr0)\]\[\033[38;5;93m\]@\[$(tput sgr0)\]\[\033[38;5;78m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;215m\]\W\[$(tput sgr0)\]\[\033[38;5;93m\]]\[$(tput sgr0)\]\[\033[38;5;215m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
