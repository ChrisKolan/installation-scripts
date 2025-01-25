#!/bin/bash

echo "Invoking pre-installation-script"
./shared-scripts/operation-date-time.sh
./scripts/pre-installation-script.sh

echo "Installing System Packages"
./shared-scripts/operation-date-time.sh
sudo xargs -a package-list/packages-to-install.txt apt install -y --ignore-missing

echo "Installing Fonts"
./shared-scripts/operation-date-time.sh
./shared-scripts/install-fonts.sh

echo "Installing Wezterm"
./shared-scripts/operation-date-time.sh
./scripts/install-wezterm.sh

echo "Installing Starship"
./shared-scripts/operation-date-time.sh
./scripts/install-starship.sh

echo "Installing SSHS"
./shared-scripts/operation-date-time.sh
./scripts/install-sshs.sh

echo "Installing Syncthing"
./shared-scripts/operation-date-time.sh
./scripts/install-syncthing.sh

echo "Installing Tailscale"
./shared-scripts/operation-date-time.sh
./scripts/install-tailscale.sh

echo "Installing homebrew"
./shared-scripts/operation-date-time.sh
./shared-scripts/install-homebrew.sh

echo "Installing homebrew packages"
./shared-scripts/operation-date-time.sh
./shared-scripts/install-homebrew-packages.sh

echo "Installing Visual Studio Code"
./shared-scripts/operation-date-time.sh
./scripts/install-vs-code.sh

echo "Installing Chezmoi"
./shared-scripts/operation-date-time.sh
./shared-scripts/install-chezmoi.sh

echo "Installing Rclone"
./shared-scripts/operation-date-time.sh
./scripts/install-rclone.sh

echo "Setting Zsh as the Default Shell"
./shared-scripts/operation-date-time.sh
chsh -s $(which zsh)

echo "Installing Neovim"
./shared-scripts/operation-date-time.sh
./scripts/install-neovim.sh

echo "Installing NvChad"
./shared-scripts/operation-date-time.sh
./shared-scripts/install-nv-chad.sh

echo "Installation complete. Check output for potential errors."
echo "Close this console and open a new one."
echo "Continue with the installation of the dotfiles"
echo "cd ~/bin"
echo "./chezmoi init https://github.com/ChrisKolan/dotfiles.git"
echo "./chezmoi apply -v"