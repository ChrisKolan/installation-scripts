#!/bin/bash
# https://software.opensuse.org/download/package?package=anki&project=home%3Afusionfuture%3Aanki

sudo zypper addrepo https://download.opensuse.org/repositories/home:fusionfuture:anki/openSUSE_Tumbleweed/home:fusionfuture:anki.repo
sudo zypper refresh
sudo zypper install anki