#!/bin/bash
# https://software.opensuse.org/download/package?package=rclone&project=openSUSE%3AFactory

sudo zypper addrepo https://download.opensuse.org/repositories/openSUSE:Factory/standard/openSUSE:Factory.repo
sudo zypper refresh
sudo zypper install -y rclone