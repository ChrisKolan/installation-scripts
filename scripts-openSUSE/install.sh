#!/bin/bash

echo "Invoking pre-installation-script"
./shared-scripts/operation-date-time.sh
./scripts-openSUSE/pre-installation-script.sh

echo "Installing System Packages"
./shared-scripts/operation-date-time.sh
sudo xargs -a package-list/packages-to-install-openSUSE.txt zypper install -y

echo "Installing Fonts"
./shared-scripts/operation-date-time.sh
./shared-scripts/install-fonts.sh

echo "Installing Syncthing"
./shared-scripts/operation-date-time.sh
./scripts-openSUSE/install-syncthing.sh

echo "Installing Tailscale"
./shared-scripts/operation-date-time.sh
./scripts-openSUSE/install-tailscale.sh

echo "Installing homebrew"
./shared-scripts/operation-date-time.sh
./shared-scripts/install-homebrew.sh

echo "Installing homebrew packages"
./shared-scripts/operation-date-time.sh
./shared-scripts/install-homebrew-packages.sh

echo "Installing Visual Studio Code"
./shared-scripts/operation-date-time.sh
./scripts-openSUSE/install-vs-code.sh

echo "Installing NvChad"
./shared-scripts/operation-date-time.sh
./shared-scripts/install-nv-chad.sh

echo "Installalling dotfiles"
./shared-scripts/operation-date-time.sh
./shared-scripts/install-dotfiles.sh

echo "Setting Zsh as the Default Shell"
./shared-scripts/operation-date-time.sh
chsh -s $(which zsh)

echo "Installation complete. Check output for potential errors."
echo "========================================================="
echo "Opening credentials file."
echo "Paste ssh public key into the file and use it after login."
kate ~/.ssh/data.txt
echo "Finish configuration of Tailscale by running:"
echo "sudo tailscale up --accept-routes"