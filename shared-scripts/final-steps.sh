#!/bin/bash

echo "Disabling anonymous analytics in Homebrew"
source ~/.bashrc
brew analytics off
sleep 3s

echo "Opening browser for Syncting and GitHub configuration"
xdg-open http://127.0.0.1:8384
sleep 5s
xdg-open https://github.com/settings/keys
sleep 3s

echo "Opening credentials file."
echo "Paste ssh public key into the file and use the data for GitHub configuration."
kate ~/.ssh/data.txt
echo "Finish configuration of Tailscale by running:"
echo "sudo tailscale up --accept-routes"
