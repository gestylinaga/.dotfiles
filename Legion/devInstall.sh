#!/usr/bin/sh

echo
echo "Installing dev tools: TypeScript, Sass, & live-server, pillow"
echo

# Base install
sudo -H pip install pillow # ranger image preview
sudo npm install -g typescript sass live-server # web dev

# Terminal candy
paru -S --needed pfetch cmatrix-git ttf-sourcecodepro-nerd

# Version check
echo "Installed:"
echo
echo "pillow $(pip show pillow | grep "Version")"
echo "TypeScript $(tsc -v)"
echo "Sass v$(sass --version)"
live-server -v

pfetch
echo "Done, $(whoami) 🤙"
