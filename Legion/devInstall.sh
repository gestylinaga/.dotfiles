#!/usr/bin/sh

echo
echo "Installing dev tools: TypeScript, Sass, & live-server, pillow"
echo

sudo -H pip install pillow # ranger image preview
npm install -g typescript sass live-server # web dev

# Version check
echo "Installed:"
echo
echo "pillow $(pip show pillow | grep "Version")"
echo "TypeScript $(tsc -v)"
echo "Sass v$(sass --version)"
live-server -v

# terminal candy
paru -S --needed pfetch cmatrix-git ttf-sourcecodepro-nerd
