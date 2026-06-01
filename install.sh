#!/bin/bash
set -e

echo "🚀 Ubuntu Bootstrap Starting..."

sudo apt update && sudo apt upgrade -y

bash system.sh
bash apps.sh
bash dev.sh
bash ui.sh
bash gnome.sh

echo "✅ Done. Please reboot."