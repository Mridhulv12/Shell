#!/bin/bash

# Check if the current user can run sudo without a password prompt
if sudo -l &>/dev/null; then
    echo "User has sudo access"
else
    echo "User does not have sudo access"
fi

