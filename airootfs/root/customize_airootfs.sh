#!/usr/bin/env bash
# Skrypt uruchamiany przy pierwszym starcie systemu live:
# dodaje Flathub do sklepu Discover.
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
systemctl enable --now firewalld
systemctl enable sddm
systemctl enable NetworkManager
