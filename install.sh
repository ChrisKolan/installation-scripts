#!/bin/bash
clear

echo "Performing system update and upgrade"
./shared-scripts/operation-date-time.sh
./shared-scripts/system-update-and-upgrade.sh

echo "Invoking pre-installation-script"
./shared-scripts/operation-date-time.sh
./scripts/pre-installation-script.sh

echo "Installing system packages"
./shared-scripts/operation-date-time.sh
sudo xargs -a package-list/packages-to-install.txt apt install -y --ignore-missing

echo "Installing fonts"
./shared-scripts/operation-date-time.sh
./scripts/install-fonts.sh

echo "Installing wezterm"
./shared-scripts/operation-date-time.sh
./scripts/install-wezterm.sh

echo "Installing starship"
./shared-scripts/operation-date-time.sh
./scripts/install-starship.sh

echo "Installing SSHS"
./shared-scripts/operation-date-time.sh
./scripts/install-sshs.sh

echo "Installing syncthing"
./shared-scripts/operation-date-time.sh
./scripts/install-syncthing.sh

echo "Installing tailscale"
./shared-scripts/operation-date-time.sh
./scripts/install-tailscale.sh

echo "Getting AppImages"
./shared-scripts/operation-date-time.sh
./scripts/get-app-images.sh

echo "Installing flatpaks"
./shared-scripts/operation-date-time.sh
./scripts/install-flatpaks.sh