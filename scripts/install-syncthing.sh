#!/bin/bash
# https://apt.syncthing.net/

# Add the release PGP keys:
sudo curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
# Add the "stable" channel to your APT sources:
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

sudo apt-get update
sudo apt-get install -y syncthing

mkdir -p ~/Sync/Password-Managers/
mkdir -p ~/Sync/Portfolio-Performance/
mkdir ~/Obsidian/
