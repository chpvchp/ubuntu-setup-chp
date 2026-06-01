#!/bin/bash

echo "📦 Installing apps..."

# VS Code
wget -O code.deb "https://update.code.visualstudio.com/latest/linux-deb-x64/stable"
sudo apt install -y ./code.deb
rm code.deb

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Flatpak (optional)
sudo apt install -y flatpak