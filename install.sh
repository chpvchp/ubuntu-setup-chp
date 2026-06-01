#!/bin/bash

echo "🚀 Ubuntu Bootstrap Starting..."

run() {
  echo "▶ Running: $1"
  bash -c "$1"

  if [ $? -ne 0 ]; then
    echo "❌ FAILED: $1"
  else
    echo "✅ OK: $1"
  fi
}

sudo apt update && sudo apt upgrade -y

run "bash system.sh"
run "bash apps.sh"
run "bash dev.sh"
run "bash ui.sh"
run "bash gnome.sh"
run "bash background.sh"

echo "✅ Done. Please reboot."