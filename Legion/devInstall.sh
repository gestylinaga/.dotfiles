#!/usr/bin/sh

echo "\nInstalling dev tools\n"
pip install pillow # ranger image preview
npm install -g typescript sass live-server # web dev

# term candy
paru -S --needed pfetch cmatrix-git ttf-sourcecodepro-nerd
