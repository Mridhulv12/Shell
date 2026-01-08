#!/bin/bash

# Prompt user for username
read -p "Enter the username: " username

# Check if user exists
if id "$username" &>/dev/null; then
    echo "User exists"
else
    echo "User does not exist"
fi

