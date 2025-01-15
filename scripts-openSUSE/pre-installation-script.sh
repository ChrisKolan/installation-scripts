#!/bin/bash

echo "System update and package installation"
echo "######################################"

# Update the system and refresh repositories
sudo zypper refresh
sudo zypper update -y

echo "Installing required packages"
sudo zypper install -y git-core
sudo zypper install -y xclip
sudo zypper install -y findutils
echo "######################################"

echo "Setting E-Mail address and name for git"
echo "Enter E-Mail address:"
read EMAIL
echo "Enter user.name:"
read NAME
echo "######################################"

echo "Configuring git global credentials"
git config --global user.email "$EMAIL"
git config --global user.name "$NAME"
echo "######################################"

echo "Creating SSH key"
ssh-keygen -t ed25519 -C "$EMAIL"
echo "######################################"

echo "Copying SSH key to clipboard for GitHub"
xclip -sel clip < ~/.ssh/id_ed25519.pub
echo "######################################"

echo "Opening GitHub to add SSH key"
xdg-open https://github.com/settings/keys