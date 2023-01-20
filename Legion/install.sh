#!/usr/bin/sh

echo "!WARNING! This will overwrite configs for: kitty, neovim, & ranger...!"

# Base install
sudo pacman -S --needed git neovim kitty ranger python-pip neofetch nodejs npm exa bat

# Config installs
cp -r ./.config/kitty ~/.config/
cp -r ./.config/nvim ~/.config/
cp -r ./.config/ranger ~/.config/
cat ./.bashrc >> ~/.bashrc

echo "Don't forget to ':PackerSync' & ':Mason' inside neovim"
