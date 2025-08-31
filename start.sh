#!/bin/bash
set -e
echo "[*] Updating packages..."
sudo apt update -y
echo "[*] Installing Docker + Compose..."
sudo apt install -y docker.io docker-compose
echo "[*] Starting Windows container..."
sudo docker-compose -f .devcontainer/docker-compose.yml up -d
while true; do
  echo "Codespace alive at $(date)" >> keepalive.log
  sleep 300
done
