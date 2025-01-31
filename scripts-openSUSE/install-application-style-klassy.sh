#!/bin/bash
# https://github.com/paulmcauley/klassy?tab=readme-ov-file#installation

sudo zypper addrepo https://download.opensuse.org/repositories/home:paul4us/openSUSE_Tumbleweed/home:paul4us.repo
sudo zypper refresh
sudo zypper install -y klassy