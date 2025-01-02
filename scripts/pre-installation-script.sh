#!/bin/bash

echo "System update and upgrade"
echo "###############################"

echo "Downloading required packages"
sudo apt install -y git
sudo apt install -y timeshift
sudo apt install -y xclip
sudo apt install -y findutils
echo "###############################"

echo "Setting E-Mail address and name"
echo "Enter E-Mail address"
read EMAIL
echo "Enter user.name"
read NAME
echo "###############################"

echo "Setting git global credentials:"
git config --global user.email "$EMAIL"
git config --global user.name "$NAME"
echo "###############################"

echo "Creating SSH-Key"
ssh-keygen -t ed25519 -C "$EMAIL"
echo "###############################"

echo "Copying SSH-Key to clipboard for GitHub"
xclip -sel clip < ~/.ssh/id_ed25519.pub
echo "###############################"

echo "Add key to GitHub. Redirecting now."
xdg-open https://github.com/settings/keys
