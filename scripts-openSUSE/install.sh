#!/bin/bash

source ./shared-scripts/display-message.sh

current_task "Invoking pre-installation-script"
./scripts-openSUSE/pre-installation-script.sh

current_task "Installing System Packages"
sudo xargs -a package-list/packages-to-install-openSUSE.txt zypper install -y

current_task "Installing codecs"
./scripts-openSUSE/install-codecs.sh

current_task "Installing Fonts"
./shared-scripts/install-fonts.sh

current_task "Installing Syncthing"
./scripts-openSUSE/install-syncthing.sh

current_task "Installing Tailscale"
./scripts-openSUSE/install-tailscale.sh

current_task "Installing homebrew"
./shared-scripts/install-homebrew.sh

current_task "Installing homebrew packages"
./shared-scripts/install-homebrew-packages.sh

current_task "Installing Visual Studio Code"
./scripts-openSUSE/install-vs-code.sh

current_task "Installing Anki"
./scripts-openSUSE/install-anki.sh

current_task "Installing application style Klassy"
./scripts-openSUSE/install-application-style-klassy.sh

current_task "Installing NvChad"
./shared-scripts/install-nv-chad.sh

current_task "Installing tmux plugins"
./shared-scripts/install-tmux-plugins.sh

current_task "Installalling dotfiles"
./shared-scripts/install-dotfiles.sh

current_task "Configuring autofs"
./shared-scripts/configure-autofs.sh

current_task "Setting Zsh as the Default Shell"
chsh -s $(which zsh)

echo "========================================================="
echo "Installation complete. Check output for potential errors."
echo "========================================================="

current_task "Final steps"
./shared-scripts/final-steps.sh
