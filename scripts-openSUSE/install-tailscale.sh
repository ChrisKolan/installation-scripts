#!/bin/bash
# https://software.opensuse.org/download/package?package=tailscale&project=openSUSE%3AFactory

sudo zypper install -y tailscale

sudo systemctl enable tailscaled
sudo systemctl start tailscaled