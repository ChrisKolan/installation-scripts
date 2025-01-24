#!/bin/bash
clear

# echo "Performing system update and upgrade"
# ./shared-scripts/operation-date-time.sh
# ./shared-scripts/system-update-and-upgrade.sh

# echo "Getting AppImages"
# ./shared-scripts/operation-date-time.sh
# ./shared-scripts/get-app-images.sh

# echo "Installing flatpaks"
# ./shared-scripts/operation-date-time.sh
# ./shared-scripts/install-flatpaks.sh

# echo "Installing homebrew"
# ./shared-scripts/operation-date-time.sh
# ./shared-scripts/install-homebrew.sh

echo "Creating directories"
./shared-scripts/operation-date-time.sh
./shared-scripts/create-directories.sh

# Detect Linux distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
else
    echo "Unable to detect the operating system."
    exit 1
fi

echo "Detected distribution: $DISTRO"
echo "Performing installation..."
echo "################################"

if [ "$DISTRO" == "debian" ] || [ "$DISTRO" == "ubuntu" ] || [ "$DISTRO" == "tuxedo" ]; then
    ./scripts/install.sh
elif [ "$DISTRO" == "opensuse-tumbleweed" ] || [ "$DISTRO" == "suse" ]; then
    ./scripts-openSUSE/install.sh
else
    echo "Unsupported distribution: $DISTRO"
    exit 1
fi