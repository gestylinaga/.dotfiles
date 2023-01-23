#!/usr/bin/sh

echo
echo "!WARNING! This will overwrite configs for: kitty, neovim, & ranger...!"
echo
sleep 2

# Base install
sudo pacman -S --needed neovim kitty ranger python-pip neofetch nodejs npm exa bat bottom

# Version check
echo "Installed:"
echo
nvim -v | grep "NVIM"
kitty -v
ranger --version | grep "ranger"
pip -V
echo "NodeJS $(node -v)"
echo "NPM $(npm -v)"
echo "exa $(exa -v | grep 'v')"
bat --version
btm --version

## Config installs
cp -r ./.config/kitty ~/.config/
cp -r ./.config/nvim ~/.config/
cp -r ./.config/ranger ~/.config/
cat ./.bashrc >> ~/.bashrc

neofetch
echo "Done."
