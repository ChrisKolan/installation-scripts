#!/bin/bash

echo "Installing required packages"
sudo zypper install -y git-core
sudo zypper install -y xclip
sudo zypper install -y findutils
echo "######################################"

echo "Installing codecs"
opi codecs

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
