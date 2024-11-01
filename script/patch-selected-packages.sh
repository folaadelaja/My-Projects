#!/bin/bash

# List of packages to update
PACKAGES=("docker.io" "libexpat1" "busybox-static" "git")

echo "Updating package list with --fix-missing option..."
sudo apt update --fix-missing

echo "Applying system upgrades with --fix-missing option..."
sudo apt upgrade --fix-missing -y

echo "Installing python3-pip (if not already installed)..."
sudo apt update
sudo apt install -y python3-pip

echo "Upgrading certifi using pip3..."
pip3 install --upgrade certifi

echo "Patching specific packages..."
for package in "${PACKAGES[@]}"; do
    echo "Upgrading $package..."
    sudo apt install --only-upgrade -y "$package"
done

echo "Cleaning up unnecessary packages and cache..."
sudo apt autoremove -y
sudo apt clean

echo "Selected packages have been patched successfully."
