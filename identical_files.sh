#!/bin/bash

# Ask user for the filename
read -p "Enter the filename to compare: " input_file

# Check if file exists
if [ ! -f "$input_file" ]; then
    echo "File does not exist"
    exit 1
fi

found=false

# Loop through files in the current directory
for file in *; do
    # Skip if it's the same file or not a regular file
    if [ "$file" != "$input_file" ] && [ -f "$file" ]; then
        if diff -q "$input_file" "$file" > /dev/null; then
            echo "Identical file found: $file"
            found=true
        fi
    fi
done

# If no identical file found
if [ "$found" = false ]; then
    echo "No identical files found"
fi

