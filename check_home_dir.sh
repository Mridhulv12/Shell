#!/bin/bash

# Get the current user's home directory
home_dir="$HOME"

# Check if it starts with /home
if [[ "$home_dir" == /home/* ]]; then
    echo "Home directory standard"
else
    echo "Home directory non-standard"
fi

