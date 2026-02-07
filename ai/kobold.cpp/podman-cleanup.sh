#!/usr/bin/env bash

set -euo pipefail

echo "=== PODMAN CLEANUP RITUAL ==="

echo "[1] Stopping all running containers..."
podman ps -q | xargs -r podman stop

echo "[2] Removing all containers..."
podman ps -aq | xargs -r podman rm -f

echo "[3] Removing all images..."
podman images -aq | xargs -r podman rmi -f

echo "[4] Removing all unused volumes..."
podman volume prune -f

echo "[5] Removing all unused networks..."
podman network prune -f

echo "[6] Pruning build cache..."
podman system prune -af

echo "[7] Cleaning rootless Podman user directories..."
rm -rf ~/.local/share/containers
rm -rf ~/.config/containers
rm -rf ~/.cache/containers

echo "=== CLEANUP COMPLETE ==="
