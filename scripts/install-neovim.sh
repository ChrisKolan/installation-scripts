#!/bin/bash
# https://github.com/neovim/neovim/blob/master/INSTALL.md#linux

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz &&
sudo rm -rf /opt/nvim &&
sudo tar -C /opt -xzf nvim-linux64.tar.gz

EXPORT_PATH='export PATH="$PATH:/opt/nvim-linux64/bin"' 
echo "$EXPORT_PATH" >> ~/.bashrc
echo "$EXPORT_PATH" >> ~/.zshrc

source ~/.bashrc
source ~/.zshrc
