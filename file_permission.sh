#!/bin/bash

# Read filename from user
read -p "Enter the filename: " file

# Check if file exists
if [ ! -e "$file" ]; then
    echo "File does not exist"
    exit 1
fi

# Print permissions in symbolic notation
ls -l "$file" | awk '{print $1}'

