#!/bin/bash
# new vm install script

# Update package index and install the necessary dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install htop fish git flatpak apt-transport-https wget -y

# Add the flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install flathub apps
flatpak install flathub com.visualstudio.code flathub com.google.Chrome flathub com.brave.Browser -y
