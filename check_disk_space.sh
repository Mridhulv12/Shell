#!/bin/bash

# Get available disk space in /home in MB
available=$(df -m /home | awk 'NR==2 {print $4}')

# 1 GB = 1024 MB
if [ "$available" -lt 1024 ]; then
    echo "Warning: Disk space is less than 1GB"
else
    echo "Disk space is sufficient"
fi

