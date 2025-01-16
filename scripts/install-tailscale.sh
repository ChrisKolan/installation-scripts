#!/bin/bash
# https://tailscale.com/download/linux

curl -fsSL https://tailscale.com/install.sh | sh

sudo systemctl enable tailscaled
sudo systemctl start tailscaled