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

echo "Installing syncthing"
./shared-scripts/operation-date-time.sh
./scripts/install-syncthing.sh