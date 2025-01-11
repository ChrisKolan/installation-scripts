#!/bin/bash

echo "Installing Neovim"
./shared-scripts/operation-date-time.sh
./scripts/install-neovim.sh

echo "Installing NvChad"
./shared-scripts/operation-date-time.sh
./scripts/install-nv-chad.sh
