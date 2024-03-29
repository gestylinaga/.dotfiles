#!/usr/bin/sh

echo "Updating .dotfiles GitHub repo..."
cp -vf ~/.bashrc ~/github/.dotfiles/Legion/
cp -vf ~/pacList.md ~/github/.dotfiles/Legion/
cp -vf ~/logJournal.md ~/github/.dotfiles/Legion/
echo "Done 🤙"

cd ~/github/.dotfiles/
if [[ $(git status | grep 'nothing to commit') == "" ]]; then
  git add .
  git commit -m "$(date +'%C%y-%m-%d') Update";
  echo "Git Commit Completed!..."
  echo "...Don't Forget to 'git push'"
else
  echo "$(date +'%C%y-%m-%d') No Change";
  echo "Nothing to Commit";
fi
