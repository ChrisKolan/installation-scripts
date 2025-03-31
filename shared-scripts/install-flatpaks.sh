#!/bin/bash

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user -y flathub info.portfolio_performance.PortfolioPerformance
flatpak install --user -y flathub org.freeciv.gtk322
flatpak install --user -y flathub io.gitlab.librewolf-community
flatpak install --user -y flathub org.musicbrainz.Picard
flatpak install --user -y flathub org.fooyin.fooyin
flatpak install --user -y flathub com.calibre_ebook.calibre
