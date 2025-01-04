#!/bin/bash
# https://github.com/starship/starship?tab=readme-ov-file#step-1-install-starship

curl -sS https://starship.rs/install.sh | sh

echo 'eval "$(starship init bash)"' >> ~/.bashrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

source ~/.bashrc
source ~/.zshrc
