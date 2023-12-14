#!/usr/bin/sh

echo
echo "Installing dev tools: TypeScript, Sass, & live-server"
echo

# Base install
sudo npm install -g typescript sass live-server # web dev

echo
echo "Installing terminal candy: pfetch, cmatrix, patched nerd font, & pillow"
echo

# Terminal candy
paru -S --needed pfetch cmatrix-git ttf-sourcecodepro-nerd python-pillow

# Version check
echo "Installed Versions:"
echo
echo "pillow $(pip show pillow | grep "Version")"
echo "TypeScript $(tsc -v)"
echo "Sass v$(sass --version)"
live-server -v

pfetch
echo "Done, $(whoami) 🤙"
