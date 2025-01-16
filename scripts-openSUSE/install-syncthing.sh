#!/bin/bash
# https://software.opensuse.org/download/package?package=syncthing&project=openSUSE%3AFactory

sudo zypper install -y syncthing

sudo systemctl enable syncthing@chris.service
sudo systemctl start syncthing@chris.service