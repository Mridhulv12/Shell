#!/bin/bash
if [ "$EUID" -eq 0 ]; then
    echo "You are running as root."
else
    echo "You are NOT root. Please run as root if required."
fi

