#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update the system
echo "Updating the system..."
apt update && apt upgrade -y

# Install prerequisites
echo "Installing prerequisites..."
apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Add Docker's official GPG key
echo "Adding Docker's GPG key..."
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Add Docker repository
echo "Adding Docker repository..."
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# Update apt package index
echo "Updating package index..."
apt update

# Install Docker
echo "Installing Docker..."
apt install -y docker-ce

# Enable Docker to start on boot
echo "Enabling Docker to start on boot..."
systemctl enable docker

# Start Docker
echo "Starting Docker..."
systemctl start docker

# Install Portainer
echo "Installing Portainer..."
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  portainer/portainer-ce:latest

# Get the IP address
IP_ADDRESS=$(ip -4 addr show scope global | grep inet | awk '{print $2}' | cut -d / -f 1 | head -n 1)

echo "Installation complete!"
echo "You can now access Portainer at https://$IP_ADDRESS:9443"
echo "Please set up your admin account on the initial login screen."

