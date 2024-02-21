# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#    _           _           
#   | |_ ___ ___| |_ ___ ___  by:
#  _| . | .'|_ -|   |  _|  _| Gesty Linaga
# |_|___|__,|___|_|_|_| |___| for Desktop Arch Build

pfetch    # sys info
set -o vi # sets vi keybinds in terminal

export TERMINAL='kitty'
export EDITOR='nvim'
export VISUAL='nvim'
export MANPAGER='nvim +Man!'
export BROWSER='firefox'
export HISTCONTROL=ignoreboth

alias ls='eza --group-directories-first --icons'
alias ll='eza -l --group-directories-first --icons'
alias la='eza -a --icons'
alias lla='eza -la --group-directories-first --icons'

alias cat='bat'

alias clean='clear && pfetch && eza -l --group-directories-first --icons && echo "in: $(pwd)"'

alias surf='nvim'
alias ZZ='exit'
alias :q='exit'
alias vimcheck='head ~/.config/nvim/CHANGELOG'

alias ssd='cd /mnt/SSD'
alias hdd='cd /mnt/HDD'

# remapping CapsLock to Escape
function uncap {
  if [[ $XDG_SESSION_TYPE == "x11" ]]; then
    # for X11
    if [[ $(setxkbmap -query | grep "caps:escape") == "" ]]; then
      setxkbmap -option caps:escape;
    else
      setxkbmap -option
    fi
  elif [[ $XDG_SESSION_TYPE == "wayland" ]]; then
    # for Wayland
    gsettings set org.gnome.desktop.input-sources xkb-options "['caps:ctrl_modifier']"
  else 
    echo "Cannot detect XDG Session Type"
  fi
}

# Boring old PS1
#PS1='[\u@\h \W]\$ '

# Colorful PS1
PS1='\[\e[38;5;98m\][\[\e[38;5;68m\]\u\[\e[38;5;38m\]@\[\e[38;5;176m\]\h\[\e[38;5;98m\]]\[\e[0m\] \[\e[38;5;38m\]\W\[\e[0m\] \[\e[38;5;214m\]\\$\[\e[0m\] '
