#!/bin/bash

echo "/mnt/ /home/chris/.config/autofs/auto.cifs --ghost --timeout=60" | sudo tee -a /etc/auto.master

sudo systemctl enable autofs
sudo systemctl start autofs
sudo systemctl status autofs