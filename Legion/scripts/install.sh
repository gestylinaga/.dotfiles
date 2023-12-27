#!/usr/bin/sh

# Base install
echo "Installing Base Packages:"
echo "neovim kitty ranger python-pip neofetch nodejs npm exa bat bottom ttf-sourcecodepro-nerd python-pillow"
sudo pacman -S --needed neovim kitty ranger python-pip neofetch nodejs npm exa bat bottom ttf-sourcecodepro-nerd python-pillow

echo
echo "Updating kitty & ranger configs"
echo "This will also append new changes to your .bashrc"
echo "!WARNING! This will overwrite existing configs for kitty & ranger!"
echo
echo "Continue? (y/N)"
read answer
if [[ "$answer" == "y" ]]; then
  ## Config installs
  cp -r ../.config/kitty ~/.config/
  cp -r ../.config/ranger ~/.config/
  cat ../.bashrc >> ~/.bashrc
else
  echo "Config update cancelled"
fi

# Version check
echo "Versions Installed:"
echo
nvim -v | grep "NVIM"
kitty -v
ranger --version | grep "ranger"
pip -V
echo "pillow $(pip show pillow | grep "Version")"
echo "NodeJS $(node -v)"
echo "NPM $(npm -v)"
echo "exa $(exa -v | grep 'v')"
bat --version
btm --version

neofetch
echo "Done, $(whoami) 🤙"
