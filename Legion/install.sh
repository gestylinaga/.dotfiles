#!/usr/bin/sh

echo "\n!WARNING! This will overwrite configs for: kitty, neovim, & ranger...!\n"
sleep 2

# Base install
sudo pacman -S --needed neovim kitty ranger python-pip neofetch nodejs npm exa bat bottom

# Config installs
cp -r ./.config/kitty ~/.config/
cp -r ./.config/nvim ~/.config/
cp -r ./.config/ranger ~/.config/
cat ./.bashrc >> ~/.bashrc
