#!/bin/bash

# Detect Linux distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
else
    echo "Unable to detect the operating system."
    exit 1
fi

echo "Detected distribution: $DISTRO"
echo "Updating and upgrading the system"
echo "################################"

if [ "$DISTRO" == "debian" ] || [ "$DISTRO" == "ubuntu" ]; then
    sudo apt update
    sudo apt upgrade -y
elif [ "$DISTRO" == "opensuse-tumbleweed" ] || [ "$DISTRO" == "suse" ]; then
    sudo zypper refresh
    sudo zypper update -y
else
    echo "Unsupported distribution: $DISTRO"
    exit 1
fi

echo "System update and upgrade completed."