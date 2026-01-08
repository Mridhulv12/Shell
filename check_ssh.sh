#!/bin/bash

# Check if SSH service is running
if systemctl is-active --quiet ssh; then
    echo "SSH service is running"
else
    echo "SSH service is not running"
    echo "Starting SSH service..."
    sudo systemctl start ssh

    # Verify again
    if systemctl is-active --quiet ssh; then
        echo "SSH service started"
    else
        echo "Failed to start SSH service"
    fi
fi

