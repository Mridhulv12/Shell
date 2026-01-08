#!/bin/bash

# Prompt user for directory name
read -p "Enter the directory name: " dir

# Create main directory if it doesn't exist
mkdir -p "$dir"

# Create subdirectories Monday to Friday
for day in Monday Tuesday Wednesday Thursday Friday
do
    mkdir -p "$dir/$day"
done

echo "Subdirectories Monday to Friday created inside '$dir'"

