#!/bin/bash

# Update the yum package index
sudo yum update -y

# Install packages to allow yum to use a repository over HTTPS
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Set up the Docker repository
sudo amazon-linux-extras install docker

# Install Docker
sudo yum install -y docker

# Start Docker
sudo service docker start

# Enable Docker service to start on boot
sudo chkconfig docker on

# Verify Docker installation by printing the Docker version
docker --version

echo "Docker installation and setup completed."
