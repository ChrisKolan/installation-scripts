#!/bin/bash
# https://software.opensuse.org/download/package?package=anki&project=home%3Afusionfuture%3Aanki

sudo zypper install -y libgthread-2_0-0 # needed to resolve this error: https://forums.ankiweb.net/t/anki-24-06-3-linux-qt5-importerror-qt-cannot-open-shared-object-file-no-such-file-or-directory/52123
sudo zypper addrepo https://download.opensuse.org/repositories/home:fusionfuture:anki/openSUSE_Tumbleweed/home:fusionfuture:anki.repo
sudo zypper refresh
sudo zypper install -y anki