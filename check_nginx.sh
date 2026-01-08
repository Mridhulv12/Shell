#!/bin/bash

# Check if nginx is installed
if command -v nginx &>/dev/null; then
    echo "Nginx is installed"
else
    echo "Nginx is not installed"
    echo "Installing Nginx..."

    sudo apt update
    sudo apt install -y nginx

    # Verify installation
    if command -v nginx &>/dev/null; then
        echo "Nginx installed successfully"
    else
        echo "Failed to install Nginx"
    fi
fi

