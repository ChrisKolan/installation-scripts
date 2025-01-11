#!/bin/bash
# https://wezfurlong.org/wezterm/install/linux.html#__tabbed_1_3

sudo mkdir /etc/apt/keyrings

curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/etc/apt/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list

sudo apt-get update
sudo apt-get install -y wezterm
