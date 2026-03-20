#!/bin/bash

# Create user
sudo useradd developer

# Create directory
sudo mkdir -p /opt/project_alpha

# Change ownership
sudo chown developer:developer /apt/project_alpha

# Set Permissions
sudo chmod 700 /opt/project_alpha

# Switch user and setup SSH
sudo su - developer
mkdir -p ~/.ssh
mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys



