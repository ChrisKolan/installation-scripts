#!/bin/bash

source ~/.bashrc
chezmoi init https://github.com/ChrisKolan/dotfiles.git
chezmoi apply -v