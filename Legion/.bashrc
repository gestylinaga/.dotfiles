# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#    _           _           
#   | |_ ___ ___| |_ ___ ___  by:
#  _| . | .'|_ -|   |  _|  _| Gesty Linaga
# |_|___|__,|___|_|_|_| |___| for Legion Laptop Arch Build

pfetch    # sys info
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

alias cat='bat'

alias clean='clear && pfetch && exa -l --group-directories-first --icons && echo "in: $(pwd)"'

alias surf='nvim'
alias ZZ='exit'
alias :q='exit'
alias vimcheck='head ~/.config/nvim/CHANGELOG'

alias stor='cd /mnt/Storage'

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
export PS1="\[\033[38;5;93m\][\[$(tput sgr0)\]\[\033[38;5;39m\]\u\[$(tput sgr0)\]\[\033[38;5;93m\]@\[$(tput sgr0)\]\[\033[38;5;78m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;215m\]\W\[$(tput sgr0)\]\[\033[38;5;93m\]]\[$(tput sgr0)\]\[\033[38;5;215m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
