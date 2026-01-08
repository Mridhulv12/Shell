#!/bin/bash

# Prompt user for filename
read -p "Enter the filename: " file

# Check if file exists
if [ ! -e "$file" ]; then
    echo "File does not exist"
    exit 1
fi

# Check if file is executable
if [ -x "$file" ]; then
    echo "File is executable"
else
    echo "File is not executable"
fi

