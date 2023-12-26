#!/usr/bin/sh

echo
echo "Installing web dev tools: TypeScript, Sass, & live-server"
echo

# Base install
#sudo npm install -g typescript sass live-server # web dev

# Version check
echo "Installed Versions:"
echo
echo "TypeScript $(tsc -v)"
echo "Sass v$(sass --version)"
live-server -v

echo
echo "Installing terminal candy: pfetch & cmatrix"
echo

# Terminal candy
if [[ "$(which paru)" == "/usr/bin/paru" ]]; then
  echo "Paru detected"
  paru -S --needed pfetch cmatrix-git
  pfetch
  echo "Done, $(whoami) 🤙"
elif [[ "$(which yay)" == "/usr/bin/yay" ]]; then
  echo "Yay detected"
  yay -S --needed  pfetch cmatrix-git
  pfetch
  echo "Done, $(whoami) 🤙"
else
  echo "No AUR helper detected"
  echo "Install aborted"
fi
