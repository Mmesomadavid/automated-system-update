#!/bin/bash

# Update package list and upgrade installed packages
sudo apt update && sudo apt upgrade -y

# Clean up unnecessary files
sudo apt autoremove -y
sudo apt clean

echo "System update and upgrade completed successfully."
