#!/bin/bash
clear

echo "Performing system update and upgrade"
./shared-scripts/operation-date-time.sh
./shared-scripts/system-update-and-upgrade.sh

echo "Invoking pre-installation-script"
./shared-scripts/operation-date-time.sh
./scripts/pre-installation-script.sh

echo "Installing System Packages"
./shared-scripts/operation-date-time.sh
sudo xargs -a package-list/packages-to-install.txt apt install -y --ignore-missing

echo "Installing Fonts"
./shared-scripts/operation-date-time.sh
./scripts/install-fonts.sh

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

echo "Getting AppImages"
./shared-scripts/operation-date-time.sh
./scripts/get-app-images.sh

echo "Installing Flatpaks"
./shared-scripts/operation-date-time.sh
./scripts/install-flatpaks.sh

echo "Installing Visual Studio Code"
./shared-scripts/operation-date-time.sh
./scripts/install-vs-code.sh

echo "Installing Chezmoi"
./shared-scripts/operation-date-time.sh
./scripts/install-chezmoi.sh