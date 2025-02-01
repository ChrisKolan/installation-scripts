#!/bin/bash
clear
source ./shared-scripts/display-message.sh

current_task "Performing system update and upgrade"
./shared-scripts/system-update-and-upgrade.sh

current_task "Creating directories"
./shared-scripts/create-directories.sh

current_task "Getting AppImages"
./shared-scripts/get-app-images.sh

current_task "Installing flatpaks"
./shared-scripts/install-flatpaks.sh

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
