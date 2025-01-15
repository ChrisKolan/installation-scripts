#!/bin/bash
# https://chatgpt.com/share/67781a45-6704-8003-a41f-028525836c5c

mkdir -p ~/Downloads/nerd-fonts
cd ~/Downloads/nerd-fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip
unzip FiraCode.zip -d FiraCode
mkdir -p ~/.local/share/fonts/nerd-fonts
cp FiraCode/*.ttf ~/.local/share/fonts/nerd-fonts
fc-cache -fv